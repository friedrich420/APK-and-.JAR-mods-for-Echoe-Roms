.class public Lcom/android/internal/policy/impl/sec/CombinationKeyManager;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field private static final QUICKSHOT_CHORD_DEBOUNDCE_DELAY_MLLIS:J = 0x15eL

.field private static final QUICKSHOT_CHORD_KEY_INTERVEAL_TIME_MILLIS:J = 0x96L

.field private static final SAFETYASSURANCE_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0xfaL

.field private static final SAFE_DEBUG:Z

.field static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "CombinationKeyManager"


# instance fields
.field private final mAccessControlChordLongPress:Ljava/lang/Runnable;

.field private mBackKeyConsumed:Z

.field private mBackKeyTime:J

.field private mBackKeyTriggered:Z

.field private mCameraKeyConsumed:Z

.field private mCameraKeyTime:J

.field private mCameraKeyTriggered:Z

.field private mCameraRecordKeyConsumed:Z

.field private mCameraRecordKeyTime:J

.field private mCameraRecordKeyTriggered:Z

.field mContext:Landroid/content/Context;

.field private final mFactoryTestChordLongPress:Ljava/lang/Runnable;

.field private mFlashKeyConsumed:Z

.field private mFlashKeyTime:J

.field private mFlashKeyTriggered:Z

.field mHandler:Landroid/os/Handler;

.field private mHasPermanentMenuKey:Z

.field private mHomeKeyConsumed:Z

.field private mHomeKeyTime:J

.field private mHomeKeyTriggered:Z

.field private mIsSupportManualScreenPinning:Z

.field private mMenuConsumed:Z

.field private mMenuTime:J

.field private mMenuTriggered:Z

.field mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mPowerKeyConsumed:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field mPowerManager:Landroid/os/PowerManager;

.field private final mQuickShotChordLongPress:Ljava/lang/Runnable;

.field private mRecentKeyConsumed:Z

.field private mRecentKeyTime:J

.field private mRecentKeyTriggered:Z

.field mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

.field private final mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

.field mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mScreenshotChordLongPress:Ljava/lang/Runnable;

.field private final mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

.field private mVolumeDownKeyConsumed:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumed:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private mWiFiProtectedSetupKeyConsumed:Z

.field private mWiFiProtectedSetupKeyTime:J

.field private mWiFiProtectedSetupKeyTriggered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "samsungPhoneWindowManager"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    const/4 v2, 0x1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 575
    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$1;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, mScreenshotChordLongPress:Ljava/lang/Runnable;

    .line 607
    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$2;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, mAccessControlChordLongPress:Ljava/lang/Runnable;

    .line 636
    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    .line 692
    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$4;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, mFactoryTestChordLongPress:Ljava/lang/Runnable;

    .line 727
    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$5;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, mQuickShotChordLongPress:Ljava/lang/Runnable;

    .line 773
    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$6;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    .line 136
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 138
    iput-object p3, p0, mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .line 139
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    .line 141
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mSafetyAssuranceWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 143
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mSafetyAssuranceTimeoutWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 145
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 70
    sget-boolean v0, SAFE_DEBUG:Z

    return v0
.end method

.method private cancelPendingChordAction()V
    .registers 3

    .prologue
    .line 519
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 520
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 521
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 522
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mFactoryTestChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 523
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mQuickShotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 524
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 525
    iget-object v0, p0, mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 526
    :cond_37
    return-void
.end method

.method private getChordLongPressDelay()J
    .registers 3

    .prologue
    .line 529
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptAccessControlChord()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    .line 584
    iget-object v2, p0, mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isUseAccessControl()Z

    move-result v2

    if-nez v2, :cond_c

    .line 605
    :cond_b
    :goto_b
    return-void

    .line 585
    :cond_c
    iget-boolean v2, p0, mHomeKeyTriggered:Z

    if-eqz v2, :cond_41

    iget-boolean v2, p0, mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_41

    iget-boolean v2, p0, mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_41

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-nez v2, :cond_41

    .line 586
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 587
    .local v0, "now":J
    iget-wide v2, p0, mHomeKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, mVolumeDownKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 589
    iput-boolean v4, p0, mHomeKeyConsumed:Z

    .line 590
    iput-boolean v4, p0, mVolumeDownKeyConsumed:Z

    .line 591
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 592
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 594
    .end local v0    # "now":J
    :cond_41
    iget-boolean v2, p0, mCameraRecordKeyTriggered:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-eqz v2, :cond_b

    .line 595
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 596
    .restart local v0    # "now":J
    iget-wide v2, p0, mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, mCameraRecordKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 598
    iput-boolean v4, p0, mPowerKeyConsumed:Z

    .line 599
    iput-boolean v4, p0, mCameraRecordKeyConsumed:Z

    .line 600
    iget-object v2, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 601
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 602
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b
.end method

.method private interceptFactoryTestChord()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    .line 678
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_a

    .line 690
    :cond_9
    :goto_9
    return-void

    .line 679
    :cond_a
    iget-boolean v2, p0, mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-eqz v2, :cond_9

    .line 680
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 681
    .local v0, "now":J
    iget-wide v2, p0, mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    iget-wide v2, p0, mWiFiProtectedSetupKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    .line 683
    iput-boolean v4, p0, mWiFiProtectedSetupKeyConsumed:Z

    .line 684
    iput-boolean v4, p0, mPowerKeyConsumed:Z

    .line 685
    iget-object v2, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 686
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 687
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mFactoryTestChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method

.method private interceptQuickShotChord()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x15e

    const/4 v6, 0x1

    .line 708
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportCameraQuickShot()Z

    move-result v2

    if-nez v2, :cond_a

    .line 725
    :cond_9
    :goto_9
    return-void

    .line 709
    :cond_a
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 710
    iget-boolean v2, p0, mCameraKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, mHomeKeyTriggered:Z

    if-nez v2, :cond_9

    .line 711
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 712
    .local v0, "now":J
    iget-wide v2, p0, mVolumeUpKeyTime:J

    iget-wide v4, p0, mCameraKeyTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x96

    cmp-long v2, v2, v4

    if-lez v2, :cond_6e

    .line 721
    :cond_33
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptQuickShotChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCameraKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mCameraKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 712
    :cond_6e
    iget-wide v2, p0, mVolumeUpKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_33

    iget-wide v2, p0, mCameraKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_33

    .line 715
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_b6

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptQuickShotChord - success and waiting long press : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCameraKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mCameraKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_b6
    iput-boolean v6, p0, mCameraKeyConsumed:Z

    .line 717
    iput-boolean v6, p0, mVolumeUpKeyConsumed:Z

    .line 718
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mQuickShotChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9
.end method

.method private interceptSafetyAssuranceChord()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 620
    iget-object v0, p0, mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 634
    :cond_11
    :goto_11
    return-void

    .line 623
    :cond_12
    iget-boolean v0, p0, mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, mHomeKeyTriggered:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, mPowerKeyTriggered:Z

    if-nez v0, :cond_11

    .line 624
    iget-wide v0, p0, mVolumeDownKeyTime:J

    iget-wide v2, p0, mVolumeUpKeyTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    .line 625
    const-string v0, "CombinationKeyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptSafetyAssuranceChord - success and waiting long press : mVolumeDownKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, mVolumeDownKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mVolumeUpKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, mVolumeUpKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iput-boolean v4, p0, mVolumeDownKeyConsumed:Z

    .line 627
    iput-boolean v4, p0, mVolumeUpKeyConsumed:Z

    .line 628
    iget-object v0, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 629
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 630
    iget-object v0, p0, mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 631
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_11
.end method

.method private interceptScreenshotChord()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    .line 534
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 572
    :cond_b
    :goto_b
    return-void

    .line 536
    :cond_c
    iget-object v2, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 537
    iget-boolean v2, p0, mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_4a

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-eqz v2, :cond_4a

    iget-boolean v2, p0, mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_4a

    .line 538
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 539
    .local v0, "now":J
    iget-wide v2, p0, mVolumeDownKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 541
    iput-boolean v4, p0, mVolumeDownKeyConsumed:Z

    .line 542
    iput-boolean v4, p0, mPowerKeyConsumed:Z

    .line 543
    iget-object v2, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 544
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 545
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 548
    .end local v0    # "now":J
    :cond_4a
    iget-boolean v2, p0, mFlashKeyTriggered:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-eqz v2, :cond_b

    .line 549
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 550
    .restart local v0    # "now":J
    iget-wide v2, p0, mFlashKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 552
    iput-boolean v4, p0, mFlashKeyConsumed:Z

    .line 553
    iput-boolean v4, p0, mPowerKeyConsumed:Z

    .line 554
    iget-object v2, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 555
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 556
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    .line 560
    .end local v0    # "now":J
    :cond_7c
    iget-boolean v2, p0, mHomeKeyTriggered:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_b

    .line 561
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 562
    .restart local v0    # "now":J
    iget-wide v2, p0, mHomeKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    iget-wide v2, p0, mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b

    .line 564
    iput-boolean v4, p0, mHomeKeyConsumed:Z

    .line 565
    iput-boolean v4, p0, mPowerKeyConsumed:Z

    .line 566
    iget-object v2, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 567
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 568
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_b
.end method

.method private interceptStopLockTaskModeChord()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    .line 739
    iget-boolean v2, p0, mIsSupportManualScreenPinning:Z

    if-eqz v2, :cond_17

    .line 740
    iget-object v2, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 771
    :cond_17
    :goto_17
    return-void

    .line 741
    :cond_18
    iget-boolean v2, p0, mHasPermanentMenuKey:Z

    if-eqz v2, :cond_84

    .line 742
    iget-boolean v2, p0, mMenuTriggered:Z

    if-eqz v2, :cond_17

    iget-boolean v2, p0, mBackKeyTriggered:Z

    if-eqz v2, :cond_17

    .line 743
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 744
    .local v0, "now":J
    iget-wide v2, p0, mMenuTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_49

    iget-wide v2, p0, mBackKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_49

    .line 746
    iput-boolean v4, p0, mMenuConsumed:Z

    .line 747
    iput-boolean v4, p0, mBackKeyConsumed:Z

    .line 748
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 749
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_17

    .line 752
    :cond_49
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_17

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptStopLockTaskModeChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mMenuKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mMenuTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mBackKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mBackKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 756
    .end local v0    # "now":J
    :cond_84
    iget-boolean v2, p0, mRecentKeyTriggered:Z

    if-eqz v2, :cond_17

    iget-boolean v2, p0, mBackKeyTriggered:Z

    if-eqz v2, :cond_17

    .line 757
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 758
    .restart local v0    # "now":J
    iget-wide v2, p0, mRecentKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b2

    iget-wide v2, p0, mBackKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_b2

    .line 760
    iput-boolean v4, p0, mRecentKeyConsumed:Z

    .line 761
    iput-boolean v4, p0, mBackKeyConsumed:Z

    .line 762
    invoke-direct {p0}, cancelPendingChordAction()V

    .line 763
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_17

    .line 766
    :cond_b2
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_17

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptStopLockTaskModeChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mHomeKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mHomeKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mBackKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mBackKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 788
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPowerKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mPowerKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 789
    const-string v0, " mHomeKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mHomeKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 790
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVolumeDownKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mVolumeDownKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 791
    const-string v0, " mVolumeUpKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mVolumeUpKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 792
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCameraKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mCameraKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 793
    const-string v0, " mCameraRecordKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mCameraRecordKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 794
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFlashKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mFlashKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 795
    const-string v0, " mWiFiProtectedSetupKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mWiFiProtectedSetupKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 796
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBackKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mBackKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 797
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRecentKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mRecentKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 798
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mMenuKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mMenuTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 799
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasPermanentMenuKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mHasPermanentMenuKey:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 800
    return-void
.end method

.method public getTimeoutTimeOfKeyCombination(I)J
    .registers 8
    .param p1, "flags"    # I

    .prologue
    const-wide/16 v0, 0x0

    const-wide/16 v4, 0x96

    .line 379
    and-int/lit16 v2, p1, 0x400

    if-eqz v2, :cond_9

    .line 405
    :cond_8
    :goto_8
    return-wide v0

    .line 380
    :cond_9
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 381
    iget-boolean v2, p0, mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_1d

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-nez v2, :cond_1d

    .line 382
    iget-wide v0, p0, mVolumeDownKeyTime:J

    add-long/2addr v0, v4

    goto :goto_8

    .line 383
    :cond_1d
    iget-boolean v2, p0, mFlashKeyTriggered:Z

    if-eqz v2, :cond_29

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-nez v2, :cond_29

    .line 384
    iget-wide v0, p0, mFlashKeyTime:J

    add-long/2addr v0, v4

    goto :goto_8

    .line 387
    :cond_29
    iget-object v2, p0, mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 389
    :cond_39
    iget-boolean v2, p0, mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_45

    iget-boolean v2, p0, mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_45

    .line 390
    iget-wide v0, p0, mVolumeUpKeyTime:J

    add-long/2addr v0, v4

    goto :goto_8

    .line 393
    :cond_45
    iget-object v2, p0, mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isUseAccessControl()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 394
    iget-boolean v2, p0, mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_59

    iget-boolean v2, p0, mHomeKeyTriggered:Z

    if-nez v2, :cond_59

    .line 395
    iget-wide v0, p0, mVolumeDownKeyTime:J

    add-long/2addr v0, v4

    goto :goto_8

    .line 396
    :cond_59
    iget-boolean v2, p0, mCameraRecordKeyTriggered:Z

    if-eqz v2, :cond_65

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-nez v2, :cond_65

    .line 397
    iget-wide v0, p0, mCameraRecordKeyTime:J

    add-long/2addr v0, v4

    goto :goto_8

    .line 400
    :cond_65
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 401
    iget-boolean v2, p0, mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, mPowerKeyTriggered:Z

    if-nez v2, :cond_8

    .line 402
    iget-wide v0, p0, mWiFiProtectedSetupKeyTime:J

    add-long/2addr v0, v4

    goto :goto_8
.end method

.method public interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 155
    const/high16 v6, 0x20000000

    and-int/2addr v6, p2

    if-eqz v6, :cond_20

    move v2, v4

    .line 156
    .local v2, "interactive":Z
    :goto_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_22

    move v1, v4

    .line 157
    .local v1, "down":Z
    :goto_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 158
    .local v0, "canceled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 160
    .local v3, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_24

    .line 376
    :cond_1f
    :goto_1f
    return-void

    .end local v0    # "canceled":Z
    .end local v1    # "down":Z
    .end local v2    # "interactive":Z
    .end local v3    # "keyCode":I
    :cond_20
    move v2, v5

    .line 155
    goto :goto_8

    .restart local v2    # "interactive":Z
    :cond_22
    move v1, v5

    .line 156
    goto :goto_f

    .line 161
    .restart local v0    # "canceled":Z
    .restart local v1    # "down":Z
    .restart local v3    # "keyCode":I
    :cond_24
    sparse-switch v3, :sswitch_data_21a

    goto :goto_1f

    .line 224
    :sswitch_28
    iget-object v6, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 225
    if-eqz v1, :cond_c6

    .line 226
    if-eqz v2, :cond_1f

    iget-boolean v6, p0, mHomeKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 227
    iput-boolean v4, p0, mHomeKeyTriggered:Z

    .line 228
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mHomeKeyTime:J

    .line 229
    iput-boolean v5, p0, mHomeKeyConsumed:Z

    .line 230
    iget-object v4, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 231
    invoke-direct {p0}, interceptScreenshotChord()V

    .line 232
    invoke-direct {p0}, interceptAccessControlChord()V

    goto :goto_1f

    .line 164
    :sswitch_4e
    if-eqz v1, :cond_73

    .line 165
    iget-boolean v6, p0, mVolumeDownKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 166
    iput-boolean v4, p0, mVolumeDownKeyTriggered:Z

    .line 167
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mVolumeDownKeyTime:J

    .line 168
    iput-boolean v5, p0, mVolumeDownKeyConsumed:Z

    .line 169
    iget-object v4, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 170
    invoke-direct {p0}, interceptSafetyAssuranceChord()V

    .line 171
    if-eqz v2, :cond_6f

    .line 172
    invoke-direct {p0}, interceptScreenshotChord()V

    .line 173
    invoke-direct {p0}, interceptAccessControlChord()V

    goto :goto_1f

    .line 175
    :cond_6f
    invoke-direct {p0}, interceptQuickShotChord()V

    goto :goto_1f

    .line 179
    :cond_73
    iput-boolean v5, p0, mVolumeDownKeyTriggered:Z

    .line 180
    invoke-direct {p0}, cancelPendingChordAction()V

    goto :goto_1f

    .line 186
    :sswitch_79
    if-eqz v1, :cond_97

    .line 187
    iget-boolean v6, p0, mVolumeUpKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 188
    iput-boolean v4, p0, mVolumeUpKeyTriggered:Z

    .line 189
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mVolumeUpKeyTime:J

    .line 190
    iput-boolean v5, p0, mVolumeUpKeyConsumed:Z

    .line 191
    iget-object v4, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 192
    invoke-direct {p0}, interceptSafetyAssuranceChord()V

    .line 193
    if-nez v2, :cond_1f

    .line 194
    invoke-direct {p0}, interceptQuickShotChord()V

    goto :goto_1f

    .line 198
    :cond_97
    iput-boolean v5, p0, mVolumeUpKeyTriggered:Z

    .line 199
    invoke-direct {p0}, cancelPendingChordAction()V

    goto :goto_1f

    .line 204
    :sswitch_9d
    if-eqz v1, :cond_bf

    .line 205
    iget-boolean v6, p0, mPowerKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 206
    iput-boolean v4, p0, mPowerKeyTriggered:Z

    .line 207
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mPowerKeyTime:J

    .line 208
    iput-boolean v5, p0, mPowerKeyConsumed:Z

    .line 209
    if-eqz v2, :cond_ba

    .line 210
    invoke-direct {p0}, interceptScreenshotChord()V

    .line 211
    invoke-direct {p0}, interceptAccessControlChord()V

    .line 212
    invoke-direct {p0}, interceptFactoryTestChord()V

    goto/16 :goto_1f

    .line 214
    :cond_ba
    invoke-direct {p0}, interceptQuickShotChord()V

    goto/16 :goto_1f

    .line 218
    :cond_bf
    iput-boolean v5, p0, mPowerKeyTriggered:Z

    .line 219
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 235
    :cond_c6
    iput-boolean v5, p0, mHomeKeyTriggered:Z

    .line 236
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 242
    :sswitch_cd
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 244
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_e8

    .line 245
    sget-boolean v4, SAFE_DEBUG:Z

    if-eqz v4, :cond_1f

    const-string v4, "CombinationKeyManager"

    const-string v5, "Camera key is blocked by policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 248
    :cond_e8
    if-eqz v1, :cond_104

    .line 249
    if-nez v2, :cond_1f

    iget-boolean v6, p0, mCameraKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 250
    iput-boolean v4, p0, mCameraKeyTriggered:Z

    .line 251
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mCameraKeyTime:J

    .line 252
    iput-boolean v5, p0, mCameraKeyConsumed:Z

    .line 253
    iget-object v4, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 254
    invoke-direct {p0}, interceptQuickShotChord()V

    goto/16 :goto_1f

    .line 257
    :cond_104
    iput-boolean v5, p0, mCameraKeyTriggered:Z

    .line 258
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 264
    :sswitch_10b
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 265
    if-eqz v1, :cond_12d

    .line 266
    if-eqz v2, :cond_1f

    iget-boolean v6, p0, mFlashKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 267
    iput-boolean v4, p0, mFlashKeyTriggered:Z

    .line 268
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mFlashKeyTime:J

    .line 269
    iput-boolean v5, p0, mFlashKeyConsumed:Z

    .line 270
    iget-object v4, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 271
    invoke-direct {p0}, interceptScreenshotChord()V

    goto/16 :goto_1f

    .line 274
    :cond_12d
    iput-boolean v5, p0, mFlashKeyTriggered:Z

    .line 275
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 281
    :sswitch_134
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 282
    if-eqz v1, :cond_156

    .line 283
    if-eqz v2, :cond_1f

    iget-boolean v6, p0, mCameraRecordKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 284
    iput-boolean v4, p0, mCameraRecordKeyTriggered:Z

    .line 285
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mCameraRecordKeyTime:J

    .line 286
    iput-boolean v5, p0, mCameraRecordKeyConsumed:Z

    .line 287
    iget-object v4, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 288
    invoke-direct {p0}, interceptAccessControlChord()V

    goto/16 :goto_1f

    .line 291
    :cond_156
    iput-boolean v5, p0, mCameraRecordKeyTriggered:Z

    .line 292
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 298
    :sswitch_15d
    if-eqz v1, :cond_174

    .line 299
    if-eqz v2, :cond_1f

    iget-boolean v6, p0, mWiFiProtectedSetupKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 300
    iput-boolean v4, p0, mWiFiProtectedSetupKeyTriggered:Z

    .line 301
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mWiFiProtectedSetupKeyTime:J

    .line 302
    iput-boolean v5, p0, mWiFiProtectedSetupKeyConsumed:Z

    .line 303
    invoke-direct {p0}, interceptFactoryTestChord()V

    goto/16 :goto_1f

    .line 306
    :cond_174
    iput-boolean v5, p0, mWiFiProtectedSetupKeyTriggered:Z

    .line 307
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 312
    :sswitch_17b
    iget-object v6, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 313
    if-eqz v1, :cond_1a6

    .line 314
    if-eqz v2, :cond_1f

    iget-boolean v6, p0, mBackKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 315
    iput-boolean v4, p0, mBackKeyTriggered:Z

    .line 316
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mBackKeyTime:J

    .line 317
    iput-boolean v5, p0, mBackKeyConsumed:Z

    .line 319
    iget-boolean v4, p0, mIsSupportManualScreenPinning:Z

    if-eqz v4, :cond_1f

    .line 320
    invoke-direct {p0}, interceptStopLockTaskModeChord()V

    goto/16 :goto_1f

    .line 325
    :cond_1a6
    iput-boolean v5, p0, mBackKeyTriggered:Z

    .line 326
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 333
    :sswitch_1ad
    iget-boolean v6, p0, mIsSupportManualScreenPinning:Z

    if-eqz v6, :cond_1f

    .line 334
    iget-boolean v6, p0, mHasPermanentMenuKey:Z

    if-nez v6, :cond_1f

    .line 335
    iget-object v6, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 336
    if-eqz v1, :cond_1dc

    .line 337
    if-eqz v2, :cond_1f

    iget-boolean v6, p0, mRecentKeyTriggered:Z

    if-nez v6, :cond_1f

    .line 338
    iput-boolean v4, p0, mRecentKeyTriggered:Z

    .line 339
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mRecentKeyTime:J

    .line 340
    iput-boolean v5, p0, mRecentKeyConsumed:Z

    .line 341
    invoke-direct {p0}, interceptStopLockTaskModeChord()V

    goto/16 :goto_1f

    .line 344
    :cond_1dc
    iput-boolean v5, p0, mRecentKeyTriggered:Z

    .line 345
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 355
    :sswitch_1e3
    iget-boolean v6, p0, mIsSupportManualScreenPinning:Z

    if-eqz v6, :cond_1f

    .line 356
    iget-boolean v6, p0, mHasPermanentMenuKey:Z

    if-eqz v6, :cond_1f

    .line 357
    iget-object v6, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 358
    if-eqz v1, :cond_212

    .line 359
    if-eqz v2, :cond_1f

    iget-boolean v6, p0, mMenuTriggered:Z

    if-nez v6, :cond_1f

    .line 360
    iput-boolean v4, p0, mMenuTriggered:Z

    .line 361
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, mMenuTime:J

    .line 362
    iput-boolean v5, p0, mMenuConsumed:Z

    .line 363
    invoke-direct {p0}, interceptStopLockTaskModeChord()V

    goto/16 :goto_1f

    .line 366
    :cond_212
    iput-boolean v5, p0, mMenuTriggered:Z

    .line 367
    invoke-direct {p0}, cancelPendingChordAction()V

    goto/16 :goto_1f

    .line 161
    nop

    :sswitch_data_21a
    .sparse-switch
        0x3 -> :sswitch_28
        0x4 -> :sswitch_17b
        0x18 -> :sswitch_79
        0x19 -> :sswitch_4e
        0x1a -> :sswitch_9d
        0x1b -> :sswitch_cd
        0x52 -> :sswitch_1e3
        0xa8 -> :sswitch_79
        0xa9 -> :sswitch_4e
        0xbb -> :sswitch_1ad
        0x11a -> :sswitch_134
        0x120 -> :sswitch_10b
        0x12e -> :sswitch_15d
    .end sparse-switch
.end method

.method public isCombinationKeyTriggered()Z
    .registers 2

    .prologue
    .line 509
    iget-object v0, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, mVolumeDownKeyTriggered:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, mVolumeUpKeyTriggered:Z

    if-nez v0, :cond_20

    :cond_10
    iget-boolean v0, p0, mHomeKeyTriggered:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, mFlashKeyTriggered:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, mCameraRecordKeyTriggered:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v0, :cond_22

    .line 512
    :cond_20
    const/4 v0, 0x1

    .line 514
    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public isConsumedKeyCombination(Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 409
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 410
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_17

    move v0, v2

    .line 412
    .local v0, "down":Z
    :goto_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_19

    move v2, v3

    .line 505
    :cond_16
    :goto_16
    return v2

    .end local v0    # "down":Z
    :cond_17
    move v0, v3

    .line 410
    goto :goto_d

    .line 413
    .restart local v0    # "down":Z
    :cond_19
    sparse-switch v1, :sswitch_data_82

    :cond_1c
    move v2, v3

    .line 505
    goto :goto_16

    .line 416
    :sswitch_1e
    iget-boolean v4, p0, mVolumeDownKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 417
    if-nez v0, :cond_16

    .line 418
    iput-boolean v3, p0, mVolumeDownKeyConsumed:Z

    goto :goto_16

    .line 425
    :sswitch_27
    iget-boolean v4, p0, mVolumeUpKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 426
    if-nez v0, :cond_16

    .line 427
    iput-boolean v3, p0, mVolumeUpKeyConsumed:Z

    goto :goto_16

    .line 433
    :sswitch_30
    iget-boolean v4, p0, mPowerKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 434
    if-nez v0, :cond_16

    .line 435
    iput-boolean v3, p0, mPowerKeyConsumed:Z

    goto :goto_16

    .line 441
    :sswitch_39
    iget-boolean v4, p0, mHomeKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 442
    if-nez v0, :cond_16

    .line 443
    iput-boolean v3, p0, mHomeKeyConsumed:Z

    goto :goto_16

    .line 449
    :sswitch_42
    iget-boolean v4, p0, mCameraKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 450
    if-nez v0, :cond_16

    .line 451
    iput-boolean v3, p0, mCameraKeyConsumed:Z

    goto :goto_16

    .line 457
    :sswitch_4b
    iget-boolean v4, p0, mFlashKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 458
    if-nez v0, :cond_16

    .line 459
    iput-boolean v3, p0, mFlashKeyConsumed:Z

    goto :goto_16

    .line 465
    :sswitch_54
    iget-boolean v4, p0, mCameraRecordKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 466
    if-nez v0, :cond_16

    .line 467
    iput-boolean v3, p0, mCameraRecordKeyConsumed:Z

    goto :goto_16

    .line 473
    :sswitch_5d
    iget-boolean v4, p0, mWiFiProtectedSetupKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 474
    if-nez v0, :cond_16

    .line 475
    iput-boolean v3, p0, mWiFiProtectedSetupKeyConsumed:Z

    goto :goto_16

    .line 481
    :sswitch_66
    iget-boolean v4, p0, mBackKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 482
    if-nez v0, :cond_16

    .line 483
    iput-boolean v3, p0, mBackKeyConsumed:Z

    goto :goto_16

    .line 489
    :sswitch_6f
    iget-boolean v4, p0, mRecentKeyConsumed:Z

    if-eqz v4, :cond_1c

    .line 490
    if-nez v0, :cond_16

    .line 491
    iput-boolean v3, p0, mRecentKeyConsumed:Z

    goto :goto_16

    .line 497
    :sswitch_78
    iget-boolean v4, p0, mMenuConsumed:Z

    if-eqz v4, :cond_1c

    .line 498
    if-nez v0, :cond_16

    .line 499
    iput-boolean v3, p0, mMenuConsumed:Z

    goto :goto_16

    .line 413
    nop

    :sswitch_data_82
    .sparse-switch
        0x3 -> :sswitch_39
        0x4 -> :sswitch_66
        0x18 -> :sswitch_27
        0x19 -> :sswitch_1e
        0x1a -> :sswitch_30
        0x1b -> :sswitch_42
        0x52 -> :sswitch_78
        0xa8 -> :sswitch_27
        0xa9 -> :sswitch_1e
        0xbb -> :sswitch_6f
        0x11a -> :sswitch_54
        0x120 -> :sswitch_4b
        0x12e -> :sswitch_5d
    .end sparse-switch
.end method

.method public onSystemReady()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    iput-boolean v0, p0, mHasPermanentMenuKey:Z

    .line 150
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, mIsSupportManualScreenPinning:Z

    .line 152
    return-void
.end method
