.class Lcom/android/server/SEAMService$DrsHandler;
.super Landroid/os/Handler;
.source "SEAMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SEAMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrsHandler"
.end annotation


# instance fields
.field drs:Lcom/android/server/DrsService;

.field final synthetic this$0:Lcom/android/server/SEAMService;


# direct methods
.method constructor <init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 558
    iput-object p1, p0, this$0:Lcom/android/server/SEAMService;

    .line 559
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 556
    invoke-static {}, Lcom/android/server/DrsService;->getInstance()Lcom/android/server/DrsService;

    move-result-object v0

    iput-object v0, p0, drs:Lcom/android/server/DrsService;

    .line 560
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 571
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_26

    .line 592
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 573
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/LinkedList;

    if-eqz v2, :cond_5

    .line 574
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedList;

    .line 575
    .local v1, "data":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    iget-object v2, p0, drs:Lcom/android/server/DrsService;

    invoke-virtual {v2, v1}, Lcom/android/server/DrsService;->relabelDataDir(Ljava/util/Queue;)Z

    goto :goto_5

    .line 582
    .end local v1    # "data":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :pswitch_16
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 583
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 584
    .local v0, "data":Ljava/lang/String;
    iget-object v2, p0, drs:Lcom/android/server/DrsService;

    invoke-virtual {v2, v0}, Lcom/android/server/DrsService;->relabelAppDir(Ljava/lang/String;)Z

    goto :goto_5

    .line 571
    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_16
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0xa

    .line 564
    :try_start_2
    invoke-virtual {p0, p1}, doHandleMessage(Landroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_9

    .line 566
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 568
    return-void

    .line 566
    :catchall_9
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method
