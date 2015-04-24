.class final Lcom/android/server/telecom/AutoCSPService$1;
.super Lcom/android/server/telecom/IAutoCSP$Stub;
.source "AutoCSPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/AutoCSPService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/AutoCSPService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/AutoCSPService;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/server/telecom/AutoCSPService$1;->this$0:Lcom/android/server/telecom/AutoCSPService;

    invoke-direct {p0}, Lcom/android/server/telecom/IAutoCSP$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAutoCSPNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/16 v5, 0x30

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 25
    :try_start_0
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 35
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-object p1

    .line 42
    :cond_1
    const-string v2, "+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 58
    const/16 v3, 0x3b

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 62
    if-gtz v2, :cond_2

    if-lez v3, :cond_7

    .line 63
    :cond_2
    if-lez v2, :cond_3

    if-le v2, v3, :cond_6

    if-ltz v3, :cond_6

    :cond_3
    move v0, v3

    .line 65
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v8, v1

    move v1, v0

    move v0, v8

    .line 74
    :goto_2
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 75
    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 76
    const-string v3, "("

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string v3, ")"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 81
    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_0

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_0

    const/4 v4, 0x6

    if-eq v3, v4, :cond_4

    const/4 v4, 0x7

    if-eq v3, v4, :cond_4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_4

    const/16 v4, 0xb

    if-eq v3, v4, :cond_4

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    .line 86
    :cond_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    iget-object v4, p0, Lcom/android/server/telecom/AutoCSPService$1;->this$0:Lcom/android/server/telecom/AutoCSPService;

    invoke-virtual {v4}, Lcom/android/server/telecom/AutoCSPService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_operator_code"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 93
    if-ne v4, v7, :cond_8

    .line 94
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_3
    if-eqz v0, :cond_5

    .line 106
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :cond_5
    :goto_4
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 63
    goto :goto_1

    :cond_7
    move v1, v0

    move-object v2, p1

    .line 68
    goto :goto_2

    .line 97
    :cond_8
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 99
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method public final isAutoCSPEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lcom/android/server/telecom/AutoCSPService$1;->this$0:Lcom/android/server/telecom/AutoCSPService;

    invoke-virtual {v1}, Lcom/android/server/telecom/AutoCSPService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autocsp_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 129
    :cond_0
    return v0
.end method
