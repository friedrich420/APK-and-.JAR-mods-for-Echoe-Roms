.class Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;
.super Ljava/lang/Object;
.source "SViewCoverNewUnlockArea.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 435
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # invokes: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->isUsimDownloadTopActivity()Z
    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    const/4 v4, 0x1

    .line 510
    :goto_0
    return v4

    .line 438
    :cond_0
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z
    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$100(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Right"

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$200(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 439
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 442
    :cond_2
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$200(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 443
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_3

    .line 444
    const/4 v4, 0x1

    goto :goto_0

    .line 448
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 449
    .local v2, "touchedEventX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 451
    .local v3, "touchedEventY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 510
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 453
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mPM:Landroid/os/PowerManager;
    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$400(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/os/PowerManager;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 454
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mPM:Landroid/os/PowerManager;
    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$400(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v7, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 457
    :cond_4
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # setter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartX:F
    invoke-static {v4, v2}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$502(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;F)F

    .line 458
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # setter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartY:F
    invoke-static {v4, v3}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$602(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;F)F

    .line 459
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    const-wide/16 v6, 0x0

    # setter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v4, v6, v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$702(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;D)D

    .line 460
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    const-string v5, "Left"

    # setter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$202(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Ljava/lang/String;)Ljava/lang/String;

    .line 463
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    const/4 v5, 0x1

    sget-object v6, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/view/View;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$2700(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowSetting:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$2800(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v9

    aput-object v9, v7, v8

    # invokes: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V
    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 464
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # invokes: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->resetCircleAnimator()V
    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1100(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    .line 465
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # invokes: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->cancelAllAnimator()V
    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1200(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)V

    .line 466
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$2900(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 469
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSViewCoverView:Lcom/sec/android/sviewcover/SViewCoverView;
    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1400(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/sviewcover/SViewCoverView;->resetScreenOffTime()V

    .line 471
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartX:F
    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$500(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v4

    sub-float v4, v2, v4

    float-to-int v0, v4

    .line 472
    .local v0, "diffX":I
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartY:F
    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$600(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v4

    sub-float v4, v3, v4

    float-to-int v1, v4

    .line 474
    .local v1, "diffY":I
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    int-to-double v6, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    # setter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v4, v6, v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$702(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;D)D

    .line 475
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$700(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v6

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D
    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1600(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v8

    div-double/2addr v6, v8

    double-to-float v5, v6

    # setter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mRatio:F
    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1502(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;F)F

    .line 476
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$700(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D
    invoke-static {v6}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1600(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v6

    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchCorrectionArea:I
    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1700(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)I

    move-result v8

    int-to-double v8, v8

    add-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_5

    .line 477
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    const-string v5, ""

    # setter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$202(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    const/4 v5, 0x0

    # setter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z
    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$102(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Z)Z

    .line 479
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    const/4 v5, 0x0

    sget-object v6, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/view/View;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$2700(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowSetting:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$2800(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v9

    aput-object v9, v7, v8

    # invokes: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V
    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 480
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;

    move-result-object v5

    # invokes: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->closeCircleEffect(Landroid/animation/ValueAnimator;)V
    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1900(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Landroid/animation/ValueAnimator;)V

    .line 481
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->SettingPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    invoke-virtual {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->handleUnlock(Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;)V

    goto/16 :goto_1

    .line 482
    :cond_5
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mRatio:F
    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1500(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v4

    const v5, 0x3e99999a    # 0.3f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 483
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;
    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3100(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mRatio:F
    invoke-static {v6}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1500(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v6

    # invokes: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->updateDragCircle(Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;F)V
    invoke-static {v4, v5, v6}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$2100(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;F)V

    goto/16 :goto_1

    .line 485
    :cond_6
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;
    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3100(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;

    move-result-object v5

    const/4 v6, 0x0

    # invokes: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->updateDragCircle(Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;F)V
    invoke-static {v4, v5, v6}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$2100(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Lcom/sec/android/sviewcover/SViewCoverUnlockCircleEffect;F)V

    goto/16 :goto_1

    .line 489
    .end local v0    # "diffX":I
    .end local v1    # "diffY":I
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    const-wide/16 v6, 0x0

    # setter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v4, v6, v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$702(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;D)D

    .line 490
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    const-string v5, ""

    # setter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$202(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    const/4 v5, 0x0

    sget-object v6, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/view/View;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$2700(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowSetting:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$2800(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v9

    aput-object v9, v7, v8

    # invokes: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V
    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 492
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;

    move-result-object v5

    # invokes: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->closeCircleEffect(Landroid/animation/ValueAnimator;)V
    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1900(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 495
    :pswitch_3
    const-string v4, "SViewCoverNewUnlockArea"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP mDistance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v6}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$700(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v4}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$700(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D
    invoke-static {v6}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1600(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_7

    .line 497
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    const/4 v5, 0x0

    # setter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z
    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$102(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Z)Z

    .line 498
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    const-string v5, ""

    # setter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$202(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Ljava/lang/String;)Ljava/lang/String;

    .line 499
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;

    move-result-object v5

    # invokes: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->closeCircleEffect(Landroid/animation/ValueAnimator;)V
    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1900(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Landroid/animation/ValueAnimator;)V

    .line 500
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    sget-object v5, Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;->SettingPage:Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;

    invoke-virtual {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->handleUnlock(Lcom/sec/android/sviewcover/SViewCoverView$PageIndex;)V

    .line 502
    :cond_7
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    const-string v5, ""

    # setter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$202(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Ljava/lang/String;)Ljava/lang/String;

    .line 503
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    const/4 v5, 0x0

    sget-object v6, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/view/View;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$2700(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mArrowSetting:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$2800(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v9

    aput-object v9, v7, v8

    # invokes: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V
    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;ZLcom/sec/android/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    .line 504
    iget-object v4, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    iget-object v5, p0, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$3000(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;

    move-result-object v5

    # invokes: Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->closeCircleEffect(Landroid/animation/ValueAnimator;)V
    invoke-static {v4, v5}, Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;->access$1900(Lcom/sec/android/sviewcover/SViewCoverNewUnlockArea;Landroid/animation/ValueAnimator;)V

    goto/16 :goto_1

    .line 451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
