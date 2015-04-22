.class Lcom/sec/android/sviewcover/SViewCoverView$2;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 347
    .local v5, "action":Ljava/lang/String;
    const-string v22, "SViewCoverView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "BroadcastReceiver onReceive() : action : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v22, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 350
    const-string v22, "type"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 351
    .local v18, "type":Ljava/lang/String;
    const-string v22, "visibility"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 352
    .local v21, "visibility":Z
    const-string v22, "remote"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/widget/RemoteViews;

    .line 353
    .local v14, "remoteView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x3

    new-instance v24, Lcom/sec/android/sviewcover/SViewCoverView$CoverRemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/sec/android/sviewcover/SViewCoverView$CoverRemoteViews;-><init>(Lcom/sec/android/sviewcover/SViewCoverView;Ljava/lang/String;ZLandroid/widget/RemoteViews;)V

    invoke-virtual/range {v22 .. v24}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 355
    .local v13, "remoteMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 496
    .end local v13    # "remoteMsg":Landroid/os/Message;
    .end local v14    # "remoteView":Landroid/widget/RemoteViews;
    .end local v18    # "type":Ljava/lang/String;
    .end local v21    # "visibility":Z
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    const-string v22, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mIsNotSCover1:Z
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$500(Lcom/sec/android/sviewcover/SViewCoverView;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$600(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    move-result-object v22

    if-eqz v22, :cond_2

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverHideEffectView:Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$600(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/sviewcover/hideeffect/SViewCoverCloseEffectGLSurface;->stopAnimation(Z)V

    .line 361
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # invokes: Lcom/sec/android/sviewcover/SViewCoverView;->makeSViewMeasureSpec()V
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$700(Lcom/sec/android/sviewcover/SViewCoverView;)V

    goto :goto_0

    .line 363
    :cond_3
    const-string v22, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewPager:Lcom/sec/android/sviewcover/SViewCoverPager;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverPager;

    move-result-object v22

    if-eqz v22, :cond_8

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mShortcuts:Landroid/view/View;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$800(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/sec/android/sviewcover/SViewCoverShortcuts;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverShortcuts;->replaceText()V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverColorSelector:Lcom/sec/android/sviewcover/SViewCoverColorSelector;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$900(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverColorSelector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverColorSelector;->replaceText()V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-result-object v22

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->mUpdated:Z

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverMissedEvents;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1000(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverMissedEvents;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverMissedEvents;->updateMissedEvents()V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # invokes: Lcom/sec/android/sviewcover/SViewCoverView;->replaceText()V
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1100(Lcom/sec/android/sviewcover/SViewCoverView;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverClockWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1200(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->refreshClock()V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverDualClockWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1300(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    move-result-object v22

    if-eqz v22, :cond_4

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverDualClockWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1300(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->refreshClock()V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverDualClockWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1300(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->replaceText()V

    .line 376
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSettingPage:Landroid/view/View;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_5

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSettingPage:Landroid/view/View;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/sec/android/sviewcover/SViewCoverSetting;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverSetting;->replaceText()V

    .line 381
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1500(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    move-result-object v22

    if-eqz v22, :cond_6

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1500(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->setTTSMessage()V

    .line 384
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidget:Landroid/view/View;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1600(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mMusicWidget:Landroid/view/View;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1600(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    .line 386
    .local v7, "musicwidget":Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
    invoke-virtual {v7}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->setTTSMessage()V

    .line 389
    .end local v7    # "musicwidget":Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mLastBatteryPlugged:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mLastBatteryLevel:I

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lcom/sec/android/sviewcover/SViewCoverView;->setBatteryInfoTextView(II)V

    .line 391
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mJCoverClockWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1700(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mJCoverClockWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1700(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->refreshClockJVarient()V

    goto/16 :goto_0

    .line 395
    :cond_9
    const-string v22, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1800(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x14

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1800(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x14

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 398
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1500(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    move-result-object v22

    if-eqz v22, :cond_b

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSViewCoverNewUnlockArea:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1500(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->initMultiTouched()V

    .line 400
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->moveToHomePage()V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    # invokes: Lcom/sec/android/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V
    invoke-static/range {v22 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1900(Lcom/sec/android/sviewcover/SViewCoverView;Z)V

    goto/16 :goto_0

    .line 402
    :cond_c
    const-string v22, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 403
    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpen:Z
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2000()Z

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # invokes: Lcom/sec/android/sviewcover/SViewCoverView;->checkMusicWidgetTimteout()V
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2100(Lcom/sec/android/sviewcover/SViewCoverView;)V

    goto/16 :goto_0

    .line 407
    :cond_d
    const-string v22, "android.intent.action.DATE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 408
    const-string v22, "SViewCoverView"

    const-string v23, "onReceive() : ACTION_DATE_CHANGED "

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->handleBackgroundColorUpdated()V

    goto/16 :goto_0

    .line 411
    :cond_e
    const-string v22, "com.samsung.cover.STATE_CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 415
    const-string v22, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 416
    const-string v22, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 418
    .local v15, "state":Ljava/lang/String;
    const-string v22, "SViewCoverView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onReceive() : ACTION_PHONE_STATE_CHANGED = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    sget-object v22, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    # setter for: Lcom/sec/android/sviewcover/SViewCoverView;->mPhoneState:I
    invoke-static/range {v22 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2202(Lcom/sec/android/sviewcover/SViewCoverView;I)I

    goto/16 :goto_0

    .line 422
    :cond_f
    sget-object v22, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    # setter for: Lcom/sec/android/sviewcover/SViewCoverView;->mPhoneState:I
    invoke-static/range {v22 .. v23}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2202(Lcom/sec/android/sviewcover/SViewCoverView;I)I

    goto/16 :goto_0

    .line 426
    .end local v15    # "state":Ljava/lang/String;
    :cond_10
    const-string v22, "com.samsung.pen.INSERT"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 427
    const-string v22, "penInsert"

    const/16 v23, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 428
    .local v11, "penInsert":Z
    if-nez v11, :cond_0

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mPMS:Landroid/os/PowerManager;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2300(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/PowerManager;

    move-result-object v22

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    .line 431
    .end local v11    # "penInsert":Z
    :cond_11
    const-string v22, "dualclock.dualclock_setting_changed"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # invokes: Lcom/sec/android/sviewcover/SViewCoverView;->setClockVisibility()V
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2400(Lcom/sec/android/sviewcover/SViewCoverView;)V

    goto/16 :goto_0

    .line 433
    :cond_12
    const-string v22, "com.samsung.accessory.intent.action.DISASTER_SVIEW_COVER"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 434
    const-string v22, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 435
    .local v17, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v17

    # invokes: Lcom/sec/android/sviewcover/SViewCoverView;->UpdateAlertVisibility(ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2500(Lcom/sec/android/sviewcover/SViewCoverView;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 436
    .end local v17    # "title":Ljava/lang/String;
    :cond_13
    const-string v22, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x6

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x6

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    .line 440
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x6

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 441
    :cond_15
    const-string v22, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 442
    const-string v22, "level"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 443
    .local v6, "level":I
    const-string v22, "plugged"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 444
    .local v12, "plugged":I
    const-string v22, "status"

    const/16 v23, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 447
    .local v16, "status":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput v12, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mLastBatteryPlugged:I

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput v6, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mLastBatteryLevel:I

    .line 449
    const-string v22, "SViewCoverView"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "level :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " plugged : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # invokes: Lcom/sec/android/sviewcover/SViewCoverView;->updatesBatteryInfo()V
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2600(Lcom/sec/android/sviewcover/SViewCoverView;)V

    goto/16 :goto_0

    .line 452
    .end local v6    # "level":I
    .end local v12    # "plugged":I
    .end local v16    # "status":I
    :cond_16
    const-string v22, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mCurrentCoverType:I
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2700(Lcom/sec/android/sviewcover/SViewCoverView;)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 455
    const/16 v4, 0x64

    .line 456
    .local v4, "KNOX_USER_ID":I
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v20

    .line 457
    .local v20, "versionInfo":Landroid/os/Bundle;
    const-string v22, "2.0"

    const-string v23, "version"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 458
    const-string v22, "android.intent.extra.user_handle"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 459
    .local v8, "newUserId":I
    const-string v22, "old_user_id"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 460
    .local v9, "oldUserId":I
    const/16 v22, 0x64

    move/from16 v0, v22

    if-lt v8, v0, :cond_17

    const/16 v22, 0x64

    move/from16 v0, v22

    if-ge v9, v0, :cond_17

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpen:Z
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2000()Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 463
    :cond_17
    const/16 v22, 0x64

    move/from16 v0, v22

    if-ge v8, v0, :cond_0

    const/16 v22, 0x64

    move/from16 v0, v22

    if-lt v9, v0, :cond_0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpen:Z
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2000()Z

    move-result v22

    if-nez v22, :cond_0

    goto/16 :goto_0

    .line 469
    .end local v4    # "KNOX_USER_ID":I
    .end local v8    # "newUserId":I
    .end local v9    # "oldUserId":I
    .end local v20    # "versionInfo":Landroid/os/Bundle;
    :cond_18
    const-string v22, "android.media.VOLUME_CHANGED_ACTION"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 470
    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpen:Z
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2000()Z

    move-result v22

    if-nez v22, :cond_0

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->resetScreenOffTime()V

    goto/16 :goto_0

    .line 473
    :cond_19
    const-string v22, "com.bst.floatingmsg.quicktalkshow"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 474
    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpen:Z
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2000()Z

    move-result v22

    if-nez v22, :cond_0

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1800(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x14

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mScreenOffHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1800(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v22

    const/16 v23, 0x14

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 478
    :cond_1a
    const-string v22, "com.bst.floatingmsg.quicktalkhide"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 479
    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mCoverOpen:Z
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2000()Z

    move-result v22

    if-nez v22, :cond_0

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->resetScreenOffTime()V

    goto/16 :goto_0

    .line 482
    :cond_1b
    const-string v22, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 485
    .local v19, "uri":Landroid/net/Uri;
    if-eqz v19, :cond_0

    .line 489
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 490
    .local v10, "packageName":Ljava/lang/String;
    const/16 v22, 0x3a

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 492
    const-string v22, "com.sec.android.app.shealth"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSHealthContainer:Landroid/widget/FrameLayout;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2800(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/widget/FrameLayout;

    move-result-object v22

    if-eqz v22, :cond_0

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    move-object/from16 v22, v0

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mSHealthContainer:Landroid/widget/FrameLayout;
    invoke-static/range {v22 .. v22}, Lcom/sec/android/sviewcover/SViewCoverView;->access$2800(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/widget/FrameLayout;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto/16 :goto_0
.end method
