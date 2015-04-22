.class Lcom/sec/android/sviewcover/SViewCoverView$4;
.super Landroid/os/Handler;
.source "SViewCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverView;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 566
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 634
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 568
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/sviewcover/SViewCoverView$CoverRemoteViews;

    # invokes: Lcom/sec/android/sviewcover/SViewCoverView;->handleRemoteView(Lcom/sec/android/sviewcover/SViewCoverView$CoverRemoteViews;)V
    invoke-static {v2, v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2900(Lcom/sec/android/sviewcover/SViewCoverView;Lcom/sec/android/sviewcover/SViewCoverView$CoverRemoteViews;)V

    goto :goto_0

    .line 571
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->handleBackgroundColorUpdated()V

    goto :goto_0

    .line 574
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3100(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mLp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3000(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 582
    :pswitch_4
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverView;->setVisibility(I)V

    .line 583
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mPMS:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2300(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mPMS:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2300(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 585
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1800(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    const-wide/16 v4, 0x1770

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 588
    :cond_1
    const-string v1, "SViewCoverView"

    const-string v2, "setVisibility: MGS_SHOW_SET_VISIBILITY_VIEW "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MGS_SHOW_SET_VISIBILITY_VIEW - Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 591
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    throw v1

    .line 598
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/sviewcover/SViewCoverView;->ensureEffectViewHidden()V
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3200(Lcom/sec/android/sviewcover/SViewCoverView;)V

    .line 600
    :try_start_2
    const-string v1, "SViewCoverView"

    const-string v2, "setVisibility: MGS_HIDE_SET_VISIBILITY_VIEW"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/sviewcover/SViewCoverView;->setVisibility(I)V

    .line 602
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mPMS:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2300(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 603
    const-string v1, "SViewCoverView"

    const-string v2, "setVisibility : Screen is off"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhoneState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mPhoneState:I
    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2200(Lcom/sec/android/sviewcover/SViewCoverView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mPhoneState:I
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2200(Lcom/sec/android/sviewcover/SViewCoverView;)I

    move-result v1

    if-nez v1, :cond_2

    .line 606
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mPMS:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2300(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 617
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mBaseService:Lcom/sec/android/sviewcover/SViewCoverBase;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3300(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverBase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 620
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mBaseService:Lcom/sec/android/sviewcover/SViewCoverBase;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3300(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverBase;->stopMCScreenOnTimer()V

    goto/16 :goto_0

    .line 609
    :cond_3
    :try_start_3
    const-string v1, "SViewCoverView"

    const-string v2, "setVisibility : Screen is on"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mPMS:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2300(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 614
    :catch_1
    move-exception v0

    .line 615
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "SViewCoverView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MGS_HIDE_SET_VISIBILITY_VIEW - Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 617
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mBaseService:Lcom/sec/android/sviewcover/SViewCoverBase;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3300(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverBase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 620
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mBaseService:Lcom/sec/android/sviewcover/SViewCoverBase;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3300(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverBase;->stopMCScreenOnTimer()V

    goto/16 :goto_0

    .line 617
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mBaseService:Lcom/sec/android/sviewcover/SViewCoverBase;
    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3300(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverBase;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 620
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mBaseService:Lcom/sec/android/sviewcover/SViewCoverBase;
    invoke-static {v2}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3300(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/sviewcover/SViewCoverBase;->stopMCScreenOnTimer()V

    :cond_4
    throw v1

    .line 627
    :pswitch_6
    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    move v2, v1

    :goto_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/PendingIntent;

    # invokes: Lcom/sec/android/sviewcover/SViewCoverView;->handleSetGenerationId(IZLandroid/app/PendingIntent;)V
    invoke-static {v3, v4, v2, v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3400(Lcom/sec/android/sviewcover/SViewCoverView;IZLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_5
    move v2, v1

    goto :goto_2

    .line 631
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    int-to-long v4, v3

    # invokes: Lcom/sec/android/sviewcover/SViewCoverView;->handleSetPlaybackState(IJ)V
    invoke-static {v1, v2, v4, v5}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3500(Lcom/sec/android/sviewcover/SViewCoverView;IJ)V

    goto/16 :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
