.class final Lcom/android/server/ReactiveService$AtCmdHandlingProcess;
.super Ljava/lang/Object;
.source "ReactiveService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ReactiveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AtCmdHandlingProcess"
.end annotation


# static fields
.field private static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final AT_COMMAND_REACTIVE:Ljava/lang/String; = "+REACTIVE"

.field private static final AT_RESPONSE_END:Ljava/lang/String; = "\r\n\r\nOK\r\n"

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG(INVALID_PARAM)"

.field private static final AT_RESPONSE_SOLUTION_GOOGLE_FRP:Ljava/lang/String; = "Google FRP"

.field private static final AT_RESPONSE_SOLUTION_NOT_SUPPORT:Ljava/lang/String; = "Not Support"

.field private static final AT_RESPONSE_SOLUTION_NWD_SAMSUNG:Ljava/lang/String; = "Non TZ SRL"

.field private static final AT_RESPONSE_SOLUTION_SWD_SAMSUNG:Ljava/lang/String; = "TZ SRL"

.field private static final AT_RESPONSE_START:Ljava/lang/String; = "\r\n"

.field private static final AT_RESPONSE_STATUS_LOCK:Ljava/lang/String; = "LOCK"

.field private static final AT_RESPONSE_STATUS_TRIGGER:Ljava/lang/String; = "TRIGGER"

.field private static final AT_RESPONSE_STATUS_UNLOCK:Ljava/lang/String; = "UNLOCK"

.field private static final REACTIVE_UART_SOCKET_NAME:Ljava/lang/String; = "ReactiveService"

.field private static final REACTIVE_USB_SOCKET_NAME:Ljava/lang/String; = "/data/.socket_stream"

.field private static final THREAD_SUFFIX_UART:Ljava/lang/String; = "At"

.field private static final THREAD_SUFFIX_USB:Ljava/lang/String; = "Data"


# instance fields
.field private THREAD_TAG:Ljava/lang/String;

.field private mGettedBuffer:Z

.field private mLocalSocket:Landroid/net/LocalSocket;

.field private mLocalSocketAddress:Landroid/net/LocalSocketAddress;

.field final synthetic this$0:Lcom/android/server/ReactiveService;


# direct methods
.method public constructor <init>(Lcom/android/server/ReactiveService;I)V
    .registers 5
    .param p2, "connectTarget"    # I

    .prologue
    .line 491
    iput-object p1, p0, this$0:Lcom/android/server/ReactiveService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, mLocalSocketAddress:Landroid/net/LocalSocketAddress;

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, mGettedBuffer:Z

    .line 492
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v0, p0, mLocalSocket:Landroid/net/LocalSocket;

    .line 493
    invoke-virtual {p0, p2}, selectTarget(I)V

    .line 494
    return-void
.end method

.method private executeReactiveCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 704
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 705
    .local v5, "result":Ljava/lang/String;
    invoke-direct {p0, p1}, parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 706
    .local v3, "params":[Ljava/lang/String;
    const/4 v8, 0x4

    new-array v7, v8, [Ljava/lang/String;

    const-string v8, "1,0,0"

    aput-object v8, v7, v9

    const-string v8, "1,1,0"

    aput-object v8, v7, v11

    const-string v8, "2,0,"

    aput-object v8, v7, v10

    const-string v8, "2,1,"

    aput-object v8, v7, v12

    .line 713
    .local v7, "supportedParams":[Ljava/lang/String;
    if-nez v3, :cond_25

    .line 714
    const-string v8, "NG(INVALID_PARAM)"

    .line 796
    :goto_24
    return-object v8

    .line 717
    :cond_25
    :try_start_25
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 720
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 722
    iget-object v8, p0, this$0:Lcom/android/server/ReactiveService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/ReactiveService;->getFlag(I)I

    move-result v2

    .line 724
    .local v2, "flag":I
    packed-switch v2, :pswitch_data_212

    .line 739
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "NG("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v2    # "flag":I
    :goto_77
    move-object v8, v5

    .line 796
    goto :goto_24

    .line 727
    .restart local v2    # "flag":I
    :pswitch_79
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "UNLOCK"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 728
    goto :goto_77

    .line 731
    :pswitch_8d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "LOCK"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 732
    goto :goto_77

    .line 735
    :pswitch_a1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "TRIGGER"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 736
    goto :goto_77

    .line 744
    .end local v2    # "flag":I
    :cond_b5
    const/4 v8, 0x1

    aget-object v8, v7, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_126

    .line 746
    iget-object v8, p0, this$0:Lcom/android/server/ReactiveService;

    invoke-virtual {v8}, Lcom/android/server/ReactiveService;->getServiceSupport()I

    move-result v8

    packed-switch v8, :pswitch_data_21c

    .line 762
    :pswitch_d3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Not Support"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 763
    goto :goto_77

    .line 749
    :pswitch_e7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "TZ SRL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 750
    goto/16 :goto_77

    .line 753
    :pswitch_fc
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Non TZ SRL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 754
    goto/16 :goto_77

    .line 757
    :pswitch_111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Google FRP"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 758
    goto/16 :goto_77

    .line 767
    :cond_126
    const/4 v8, 0x2

    aget-object v8, v7, v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18b

    .line 769
    const/4 v8, 0x2

    aget-object v8, v3, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 770
    .local v0, "data":[B
    iget-object v8, p0, this$0:Lcom/android/server/ReactiveService;

    invoke-virtual {v8, v0}, Lcom/android/server/ReactiveService;->sessionAccept([B)[B

    move-result-object v4

    .line 772
    .local v4, "response":[B
    if-eqz v4, :cond_166

    .line 773
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_77

    .line 775
    :cond_166
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "NG("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, this$0:Lcom/android/server/ReactiveService;

    invoke-virtual {v9}, Lcom/android/server/ReactiveService;->getErrorCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_77

    .line 778
    .end local v0    # "data":[B
    .end local v4    # "response":[B
    :cond_18b
    const/4 v8, 0x3

    aget-object v8, v7, v8

    const/4 v9, 0x0

    const/4 v10, 0x3

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e7

    .line 780
    const/4 v8, 0x2

    aget-object v8, v3, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 781
    .restart local v0    # "data":[B
    iget-object v8, p0, this$0:Lcom/android/server/ReactiveService;

    invoke-virtual {v8, v0}, Lcom/android/server/ReactiveService;->sessionComplete([B)I

    move-result v6

    .line 783
    .local v6, "ret":I
    if-nez v6, :cond_1c8

    .line 784
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "OK"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_77

    .line 786
    :cond_1c8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "NG("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_77

    .line 789
    .end local v0    # "data":[B
    .end local v6    # "ret":I
    :cond_1e7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "NG(INVALID_PARAM)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_1f9} :catch_1fc

    move-result-object v5

    goto/16 :goto_77

    .line 791
    :catch_1fc
    move-exception v1

    .line 793
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "NG(INVALID_PARAM)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_77

    .line 724
    :pswitch_data_212
    .packed-switch 0x0
        :pswitch_79
        :pswitch_8d
        :pswitch_a1
    .end packed-switch

    .line 746
    :pswitch_data_21c
    .packed-switch 0x1
        :pswitch_e7
        :pswitch_fc
        :pswitch_d3
        :pswitch_111
    .end packed-switch
.end method

.method private isValidCommand(Ljava/lang/String;)Z
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 629
    if-nez p1, :cond_4

    .line 647
    :cond_3
    :goto_3
    return v2

    .line 633
    :cond_4
    :try_start_4
    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "AT"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 636
    const/4 v3, 0x0

    const-string v4, "="

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "commandName":Ljava/lang/String;
    const-string v3, "AT+REACTIVE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_30} :catch_35

    move-result v3

    if-eqz v3, :cond_3

    .line 639
    const/4 v2, 0x1

    goto :goto_3

    .line 642
    .end local v0    # "commandName":Ljava/lang/String;
    :catch_35
    move-exception v1

    .line 644
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private makeResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 652
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 655
    .local v1, "response":Ljava/lang/String;
    iget-object v3, p0, THREAD_TAG:Ljava/lang/String;

    const-string v4, "ReactiveServiceData"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 656
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 658
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    if-nez p1, :cond_4e

    .line 662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NG(INVALID_PARAM)\r\n\r\nOK\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 682
    .end local v1    # "response":Ljava/lang/String;
    .local v2, "response":Ljava/lang/String;
    :goto_4d
    return-object v2

    .line 667
    .end local v2    # "response":Ljava/lang/String;
    .restart local v1    # "response":Ljava/lang/String;
    :cond_4e
    :try_start_4e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "="

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_6e} :catch_c7

    move-result-object v1

    .line 677
    const-string v3, "+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "="

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "+REACTIVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, executeReactiveCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 680
    :cond_b2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n\r\nOK\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 682
    .end local v1    # "response":Ljava/lang/String;
    .restart local v2    # "response":Ljava/lang/String;
    goto :goto_4d

    .line 669
    .end local v2    # "response":Ljava/lang/String;
    .restart local v1    # "response":Ljava/lang/String;
    :catch_c7
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NG(INVALID_PARAM)\r\n\r\nOK\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 673
    .end local v1    # "response":Ljava/lang/String;
    .restart local v2    # "response":Ljava/lang/String;
    goto/16 :goto_4d
.end method

.method private parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 687
    const/4 v2, 0x0

    .line 690
    .local v2, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, "params":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_11

    move-result-object v2

    .line 699
    .end local v1    # "params":Ljava/lang/String;
    :goto_10
    return-object v2

    .line 693
    :catch_11
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 696
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 523
    :cond_2
    :goto_2
    iget-object v8, p0, mLocalSocket:Landroid/net/LocalSocket;

    if-nez v8, :cond_e

    .line 524
    new-instance v8, Landroid/net/LocalSocket;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v8, p0, mLocalSocket:Landroid/net/LocalSocket;

    .line 527
    :cond_e
    :try_start_e
    iget-object v8, p0, mLocalSocket:Landroid/net/LocalSocket;

    iget-object v9, p0, mLocalSocketAddress:Landroid/net/LocalSocketAddress;

    invoke-virtual {v8, v9}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_c4

    .line 533
    :goto_15
    iget-object v8, p0, mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_11f

    .line 535
    iget-object v8, p0, THREAD_TAG:Ljava/lang/String;

    const-string v9, "Connected to daemon."

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 539
    .local v2, "bw":Ljava/io/BufferedWriter;
    const-string v7, ""

    .line 542
    .local v7, "strIncome":Ljava/lang/String;
    :try_start_28
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_38} :catch_df

    .line 543
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_38
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    iget-object v9, p0, mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_48} :catch_15a

    .line 544
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .local v3, "bw":Ljava/io/BufferedWriter;
    const/4 v8, 0x1

    :try_start_49
    iput-boolean v8, p0, mGettedBuffer:Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4b} :catch_15d

    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    move-object v0, v1

    .line 551
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_4d
    :goto_4d
    iget-boolean v8, p0, mGettedBuffer:Z

    if-eqz v8, :cond_2

    .line 554
    :try_start_51
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 556
    if-eqz v7, :cond_fc

    .line 559
    invoke-direct {p0, v7}, isValidCommand(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 561
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 562
    invoke-direct {p0, v7}, makeResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 564
    .local v6, "response":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 567
    iget-object v8, p0, THREAD_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Command:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Response:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_8f} :catch_90

    goto :goto_4d

    .line 583
    .end local v6    # "response":Ljava/lang/String;
    :catch_90
    move-exception v4

    .line 584
    .local v4, "e":Ljava/lang/Exception;
    iget-object v8, p0, THREAD_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Socket seems be closed - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iput-boolean v11, p0, mGettedBuffer:Z

    .line 588
    :try_start_ab
    iget-object v8, p0, mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 589
    iget-object v8, p0, mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 590
    iget-object v8, p0, mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V

    .line 591
    iget-object v8, p0, THREAD_TAG:Ljava/lang/String;

    const-string v9, "Closed socket."

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_c1} :catch_11a

    .line 598
    :goto_c1
    iput-object v12, p0, mLocalSocket:Landroid/net/LocalSocket;

    goto :goto_4d

    .line 529
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "strIncome":Ljava/lang/String;
    :catch_c4
    move-exception v4

    .line 530
    .restart local v4    # "e":Ljava/lang/Exception;
    iget-object v8, p0, THREAD_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to connect daemon - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 546
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v7    # "strIncome":Ljava/lang/String;
    :catch_df
    move-exception v4

    .line 547
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_e0
    iget-object v8, p0, THREAD_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get input/output stream - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iput-boolean v11, p0, mGettedBuffer:Z

    goto/16 :goto_4d

    .line 572
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_fc
    :try_start_fc
    iget-object v8, p0, THREAD_TAG:Ljava/lang/String;

    const-string v9, "Socket seems be closed."

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v8, 0x0

    iput-boolean v8, p0, mGettedBuffer:Z

    .line 575
    iget-object v8, p0, mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 576
    iget-object v8, p0, mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 577
    iget-object v8, p0, mLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V

    .line 579
    const/4 v8, 0x0

    iput-object v8, p0, mLocalSocket:Landroid/net/LocalSocket;
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_118} :catch_90

    goto/16 :goto_2

    .line 593
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_11a
    move-exception v5

    .line 595
    .local v5, "ioe":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c1

    .line 605
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v7    # "strIncome":Ljava/lang/String;
    :cond_11f
    const-wide/16 v8, 0x1388

    :try_start_121
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 608
    iget-object v8, p0, THREAD_TAG:Ljava/lang/String;

    const-string v9, "ReactiveServiceAt"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 610
    iget-object v8, p0, THREAD_TAG:Ljava/lang/String;

    const-string v9, "Wait until JIG is inserted."

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v8, p0, this$0:Lcom/android/server/ReactiveService;

    # getter for: Lcom/android/server/ReactiveService;->mThreadUart:Ljava/lang/Thread;
    invoke-static {v8}, Lcom/android/server/ReactiveService;->access$200(Lcom/android/server/ReactiveService;)Ljava/lang/Thread;

    move-result-object v9

    monitor-enter v9
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_13c} :catch_151

    .line 613
    :goto_13c
    :try_start_13c
    iget-object v8, p0, this$0:Lcom/android/server/ReactiveService;

    # getter for: Lcom/android/server/ReactiveService;->mThreadUartGoWait:Z
    invoke-static {v8}, Lcom/android/server/ReactiveService;->access$100(Lcom/android/server/ReactiveService;)Z

    move-result v8

    if-eqz v8, :cond_157

    .line 614
    iget-object v8, p0, this$0:Lcom/android/server/ReactiveService;

    # getter for: Lcom/android/server/ReactiveService;->mThreadUart:Ljava/lang/Thread;
    invoke-static {v8}, Lcom/android/server/ReactiveService;->access$200(Lcom/android/server/ReactiveService;)Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    goto :goto_13c

    .line 615
    :catchall_14e
    move-exception v8

    monitor-exit v9
    :try_end_150
    .catchall {:try_start_13c .. :try_end_150} :catchall_14e

    :try_start_150
    throw v8
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_151} :catch_151

    .line 618
    :catch_151
    move-exception v4

    .line 619
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 615
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_157
    :try_start_157
    monitor-exit v9
    :try_end_158
    .catchall {:try_start_157 .. :try_end_158} :catchall_14e

    goto/16 :goto_2

    .line 546
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v7    # "strIncome":Ljava/lang/String;
    :catch_15a
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_e0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    :catch_15d
    move-exception v4

    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_e0
.end method

.method public selectTarget(I)V
    .registers 5
    .param p1, "connectTarget"    # I

    .prologue
    .line 498
    packed-switch p1, :pswitch_data_42

    .line 513
    const-string v0, "ReactiveService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid target : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :goto_21
    return-void

    .line 501
    :pswitch_22
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v1, "ReactiveService"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v0, p0, mLocalSocketAddress:Landroid/net/LocalSocketAddress;

    .line 503
    const-string v0, "ReactiveServiceAt"

    iput-object v0, p0, THREAD_TAG:Ljava/lang/String;

    goto :goto_21

    .line 507
    :pswitch_32
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v1, "/data/.socket_stream"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v0, p0, mLocalSocketAddress:Landroid/net/LocalSocketAddress;

    .line 509
    const-string v0, "ReactiveServiceData"

    iput-object v0, p0, THREAD_TAG:Ljava/lang/String;

    goto :goto_21

    .line 498
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_22
        :pswitch_32
    .end packed-switch
.end method
