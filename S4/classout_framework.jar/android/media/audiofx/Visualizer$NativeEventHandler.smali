.class Landroid/media/audiofx/Visualizer$NativeEventHandler;
.super Landroid/os/Handler;
.source "Visualizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Visualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private mVisualizer:Landroid/media/audiofx/Visualizer;

.field final synthetic this$0:Landroid/media/audiofx/Visualizer;


# direct methods
.method public constructor <init>(Landroid/media/audiofx/Visualizer;Landroid/media/audiofx/Visualizer;Landroid/os/Looper;)V
    .registers 4
    .param p2, "v"    # Landroid/media/audiofx/Visualizer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 651
    iput-object p1, p0, this$0:Landroid/media/audiofx/Visualizer;

    .line 652
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 653
    iput-object p2, p0, mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 654
    return-void
.end method

.method private handleCaptureMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 657
    const/4 v1, 0x0

    .line 658
    .local v1, "l":Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    iget-object v3, p0, this$0:Landroid/media/audiofx/Visualizer;

    # getter for: Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/media/audiofx/Visualizer;->access$000(Landroid/media/audiofx/Visualizer;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 659
    :try_start_8
    iget-object v3, p0, mVisualizer:Landroid/media/audiofx/Visualizer;

    # getter for: Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    invoke-static {v3}, Landroid/media/audiofx/Visualizer;->access$100(Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    move-result-object v1

    .line 660
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_3a

    .line 662
    if-eqz v1, :cond_39

    .line 663
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    .line 664
    .local v0, "data":[B
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 666
    .local v2, "samplingRate":I
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_4a

    .line 674
    const-string v3, "Visualizer-JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown native event in handleCaptureMessge: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v0    # "data":[B
    .end local v2    # "samplingRate":I
    :cond_39
    :goto_39
    return-void

    .line 660
    :catchall_3a
    move-exception v3

    :try_start_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v3

    .line 668
    .restart local v0    # "data":[B
    .restart local v2    # "samplingRate":I
    :pswitch_3d
    iget-object v3, p0, mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-interface {v1, v3, v0, v2}, Landroid/media/audiofx/Visualizer$OnDataCaptureListener;->onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V

    goto :goto_39

    .line 671
    :pswitch_43
    iget-object v3, p0, mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-interface {v1, v3, v0, v2}, Landroid/media/audiofx/Visualizer$OnDataCaptureListener;->onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V

    goto :goto_39

    .line 666
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_43
    .end packed-switch
.end method

.method private handleServerDiedMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, "l":Landroid/media/audiofx/Visualizer$OnServerDiedListener;
    iget-object v1, p0, this$0:Landroid/media/audiofx/Visualizer;

    # getter for: Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/audiofx/Visualizer;->access$000(Landroid/media/audiofx/Visualizer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 683
    :try_start_8
    iget-object v1, p0, mVisualizer:Landroid/media/audiofx/Visualizer;

    # getter for: Landroid/media/audiofx/Visualizer;->mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;
    invoke-static {v1}, Landroid/media/audiofx/Visualizer;->access$200(Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    move-result-object v0

    .line 684
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_15

    .line 686
    if-eqz v0, :cond_14

    .line 687
    invoke-interface {v0}, Landroid/media/audiofx/Visualizer$OnServerDiedListener;->onServerDied()V

    .line 688
    :cond_14
    return-void

    .line 684
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 692
    iget-object v0, p0, mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v0, :cond_5

    .line 708
    :goto_4
    return-void

    .line 696
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 705
    const-string v0, "Visualizer-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown native event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 699
    :pswitch_25
    invoke-direct {p0, p1}, handleCaptureMessage(Landroid/os/Message;)V

    goto :goto_4

    .line 702
    :pswitch_29
    invoke-direct {p0, p1}, handleServerDiedMessage(Landroid/os/Message;)V

    goto :goto_4

    .line 696
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_25
        :pswitch_25
        :pswitch_29
    .end packed-switch
.end method
