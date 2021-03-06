.class public Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenShotForEffect;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_WAKEUP:Ljava/lang/String; = "Device_wakeup"

.field private static final ACTION_REFRESH_HWKEY:Ljava/lang/String; = "com.android.server.enterprise.kioskmode.REFRESH_HWKEY_CACHE"

.field private static BOOSTING_TIMEOUT:I = 0x0

.field static final DEBUG:Z = false

.field private static final FINGERPRINT_KEY_IGNORE_DURATION:I = 0x3e8

.field private static final MENU_LONG_POLICY_LAUNCH_SFINDER:Ljava/lang/String; = "SFINDER"

.field static final SAFE_DEBUG:Z

.field static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field static final SCREENCAPTURE_SWEEP_LEFT:I = 0x2

.field static final SCREENCAPTURE_SWEEP_RIGHT:I = 0x3

.field static final TAG:Ljava/lang/String; = "SamsungWindowManager"

.field public static final TORCH_FILE:Ljava/lang/String; = "/sys/class/camera/flash/rear_flash"

.field private static cpuBooster:Landroid/os/DVFSHelper;

.field static final localLOGV:Z

.field private static mCoreNumLockHelper:Landroid/os/DVFSHelper;

.field private static mCpuBooster:Landroid/os/DVFSHelper;

.field private static mCurrentUser:I

.field static mFocusedWindowPkgName:Ljava/lang/String;


# instance fields
.field private final EnableLinuxCOMMONAPI4:Ljava/lang/String;

.field final MAX_SCREENSHOT_CONNECTION:I

.field private final UVS_ORIENTATION_PROVIDER:Ljava/lang/String;

.field private final UVS_ORIENTATION_REQUEST:Ljava/lang/String;

.field WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

.field mAlwaysComponet:Landroid/content/ComponentName;

.field mAlwaysIntent:Landroid/content/Intent;

.field mAudioManager:Landroid/media/AudioManager;

.field mAvailableVoiceCommand:Z

.field private mBackKeyConsumed:Z

.field mBlockKeyForDrivingMode:Z

.field private mBlockedHwKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleted:Z

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mClearCoverComponent:Landroid/content/ComponentName;

.field mCombinationKeyManager:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

.field mContext:Landroid/content/Context;

.field mCoverNoteEnabled:Z

.field mDoubleTapOnHomeBehavior:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mFingerPrintIntent:Landroid/content/Intent;

.field mFingerPrintPending:Z

.field private final mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

.field mFlashAnnotateComponent:Landroid/content/ComponentName;

.field mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

.field mFlipFolderOpenedIntent:Landroid/content/Intent;

.field mHMTComsumed:Z

.field mHMTPressed:Z

.field mHandler:Landroid/os/Handler;

.field mHasDaynotePackage:Z

.field mHasFlashAnnotateComponent:Z

.field private mHasPermanentMenuKey:Z

.field mIsCheckDrivingMode:Z

.field mIsDockHomeEnabled:Z

.field mIsEasyModeEnabled:Z

.field mIsEnabledAccessControl:Z

.field mIsKidsModeEnabled:Z

.field private final mIsLiveDemo:Z

.field private mIsRingingOrOffhook:Z

.field mIsSafetyAssuranceEnabled:Z

.field private mIsSupportManualScreenPinning:Z

.field mIsUseAccessControl:Z

.field private mKeyEventInjectionThread:Ljava/lang/Thread;

.field mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field private mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

.field final mLock:Ljava/lang/Object;

.field private mMenuConsumed:Z

.field mNetworkSelectionLongPress:Z

.field mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

.field mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field mPenInsertedIntent:Landroid/content/Intent;

.field mPenInsertedIntentUserSwitch:Landroid/content/Intent;

.field mPenNotifyVibrationChecked:Z

.field mPenState:I

.field mPerformEditAfterScreenCapture:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPowerDoubleBehavior:Z

.field mPowerManager:Landroid/os/PowerManager;

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mRecentConsumed:Z

.field mRingtone:Landroid/media/Ringtone;

.field private mSFinderLaunchPolicy:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

.field final mScreenshotLock:Ljava/lang/Object;

.field private mSealedModeReEnableVolumeUpKey:Z

.field private mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

.field final mServiceAquireLock:Ljava/lang/Object;

.field mServiceConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ServiceConnection;",
            "Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsObserver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

.field mSideSyncSourcePresentationActived:Z

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSweepDirection:I

.field mSweepReceiver:Landroid/content/BroadcastReceiver;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTorchlightEnabled:Z

.field mTorchlightOn:Z

.field mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

.field mTripleTapOnHomeBehavior:I

.field private final mTurnOffTorchlight:Ljava/lang/Runnable;

.field mUserSetupComplete:Z

.field mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mUvsOrientation:I

.field mUvsReceiver:Landroid/content/BroadcastReceiver;

.field mVibrator:Landroid/os/SystemVibrator;

.field mVoiceCommandIntent:Landroid/content/Intent;

.field mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mVolumeUpLongPress:Ljava/lang/Runnable;

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 151
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_a

    move v0, v1

    :cond_a
    sput-boolean v0, SAFE_DEBUG:Z

    .line 293
    const-string v0, "UNKNOWN"

    sput-object v0, mFocusedWindowPkgName:Ljava/lang/String;

    .line 1790
    sput v1, mCurrentUser:I

    .line 2210
    sput-object v3, cpuBooster:Landroid/os/DVFSHelper;

    .line 2230
    sput-object v3, mCpuBooster:Landroid/os/DVFSHelper;

    .line 2231
    sput-object v3, mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 2232
    const/16 v0, 0x3e8

    sput v0, BOOSTING_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mServiceAquireLock:Ljava/lang/Object;

    .line 187
    iput-boolean v2, p0, mBootCompleted:Z

    .line 188
    iput v1, p0, mPenState:I

    .line 191
    iput v2, p0, mDoubleTapOnHomeBehavior:I

    .line 192
    iput-boolean v2, p0, mAvailableVoiceCommand:Z

    .line 196
    iput v2, p0, mTripleTapOnHomeBehavior:I

    .line 200
    iput-boolean v2, p0, mPowerDoubleBehavior:Z

    .line 208
    iput v2, p0, mSweepDirection:I

    .line 210
    iput-boolean v2, p0, mPerformEditAfterScreenCapture:Z

    .line 211
    iput-boolean v2, p0, mHasFlashAnnotateComponent:Z

    .line 215
    iput-boolean v2, p0, mIsSafetyAssuranceEnabled:Z

    .line 219
    iput-boolean v2, p0, mIsUseAccessControl:Z

    .line 220
    iput-boolean v2, p0, mIsEnabledAccessControl:Z

    .line 224
    iput-boolean v2, p0, mIsKidsModeEnabled:Z

    .line 228
    iput-boolean v2, p0, mIsEasyModeEnabled:Z

    .line 232
    iput-boolean v2, p0, mHasDaynotePackage:Z

    .line 236
    iput-boolean v2, p0, mIsDockHomeEnabled:Z

    .line 240
    iput-boolean v2, p0, mIsCheckDrivingMode:Z

    .line 241
    iput-boolean v2, p0, mBlockKeyForDrivingMode:Z

    .line 245
    iput-boolean v2, p0, mSideSyncSourcePresentationActived:Z

    .line 249
    iput-boolean v2, p0, mPenNotifyVibrationChecked:Z

    .line 253
    iput-boolean v2, p0, mCoverNoteEnabled:Z

    .line 257
    iput-boolean v2, p0, mHMTPressed:Z

    .line 258
    iput-boolean v2, p0, mHMTComsumed:Z

    .line 262
    iput-boolean v2, p0, mNetworkSelectionLongPress:Z

    .line 267
    iput-boolean v2, p0, mTorchlightOn:Z

    .line 268
    iput-boolean v2, p0, mTorchlightEnabled:Z

    .line 272
    iput-object v3, p0, mRingtone:Landroid/media/Ringtone;

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    .line 281
    iput v1, p0, mUvsOrientation:I

    .line 282
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableLinuxCommonApi4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, EnableLinuxCOMMONAPI4:Ljava/lang/String;

    .line 283
    const-string v0, "com.lguplus.uvs.REQUEST_ORIENTATION"

    iput-object v0, p0, UVS_ORIENTATION_REQUEST:Ljava/lang/String;

    .line 284
    const-string v0, "LGT"

    iput-object v0, p0, UVS_ORIENTATION_PROVIDER:Ljava/lang/String;

    .line 301
    iput-boolean v2, p0, mUserSetupComplete:Z

    .line 305
    iput-boolean v2, p0, mIsRingingOrOffhook:Z

    .line 317
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mSweepReceiver:Landroid/content/BroadcastReceiver;

    .line 347
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 363
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 372
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 390
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$5;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    .line 1515
    iput-boolean v2, p0, mMenuConsumed:Z

    .line 1554
    iput-boolean v2, p0, mRecentConsumed:Z

    .line 1596
    iput-boolean v2, p0, mBackKeyConsumed:Z

    .line 1614
    iput-object v3, p0, mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 1633
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mScreenshotLock:Ljava/lang/Object;

    .line 1634
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mServiceConnectionMap:Ljava/util/Map;

    .line 1635
    const/4 v0, 0x3

    iput v0, p0, MAX_SCREENSHOT_CONNECTION:I

    .line 1785
    iput-object v3, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1788
    iput-object v3, p0, mBlockedHwKeys:Ljava/util/Map;

    .line 1794
    iput-object v3, p0, mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    .line 1795
    iput-boolean v2, p0, mSealedModeReEnableVolumeUpKey:Z

    .line 2372
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$10;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    .line 2456
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$11;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mVolumeUpLongPress:Ljava/lang/Runnable;

    .line 2464
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$12;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mTurnOffTorchlight:Ljava/lang/Runnable;

    .line 2812
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$13;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mUvsReceiver:Landroid/content/BroadcastReceiver;

    .line 2885
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V

    iput-object v0, p0, mSFinderLaunchPolicy:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    .line 3164
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, mIsLiveDemo:Z

    return-void
.end method

.method private TorchModeFlashSet(I)V
    .registers 10
    .param p1, "torchTime"    # I

    .prologue
    const/4 v7, 0x0

    .line 2472
    sget-boolean v4, SAFE_DEBUG:Z

    if-eqz v4, :cond_1d

    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Torch Time Out ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :cond_1d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 2474
    .local v1, "input":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2476
    .local v2, "out":Ljava/io/FileWriter;
    if-lez p1, :cond_4f

    .line 2477
    const/4 v4, 0x1

    iput-boolean v4, p0, mTorchlightOn:Z

    .line 2478
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2479
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mTurnOffTorchlight:Ljava/lang/Runnable;

    int-to-long v6, p1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2480
    const-string v1, "1"

    .line 2490
    :goto_39
    :try_start_39
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/camera/flash/rear_flash"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_40} :catch_5b
    .catchall {:try_start_39 .. :try_end_40} :catchall_6b

    .line 2491
    .end local v2    # "out":Ljava/io/FileWriter;
    .local v3, "out":Ljava/io/FileWriter;
    const/4 v4, 0x0

    :try_start_41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_48} :catch_79
    .catchall {:try_start_41 .. :try_end_48} :catchall_76

    .line 2496
    if-eqz v3, :cond_4d

    .line 2498
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_72

    :cond_4d
    :goto_4d
    move-object v2, v3

    .line 2503
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :cond_4e
    :goto_4e
    return-void

    .line 2482
    :cond_4f
    iput-boolean v7, p0, mTorchlightOn:Z

    .line 2483
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    iget-object v5, p0, mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2484
    const-string v1, "0"

    goto :goto_39

    .line 2492
    :catch_5b
    move-exception v0

    .line 2493
    .local v0, "e":Ljava/io/IOException;
    :goto_5c
    :try_start_5c
    const-string v4, "SamsungWindowManager"

    const-string v5, "exception occurred. /sys/class/camera/flash/rear_flash"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_6b

    .line 2496
    if-eqz v2, :cond_4e

    .line 2498
    :try_start_65
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_4e

    .line 2499
    :catch_69
    move-exception v4

    goto :goto_4e

    .line 2496
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_6b
    move-exception v4

    :goto_6c
    if-eqz v2, :cond_71

    .line 2498
    :try_start_6e
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_74

    .line 2500
    :cond_71
    :goto_71
    throw v4

    .line 2499
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_72
    move-exception v4

    goto :goto_4d

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :catch_74
    move-exception v5

    goto :goto_71

    .line 2496
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catchall_76
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_6c

    .line 2492
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_79
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_5c
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 148
    iput-object p1, p0, mBlockedHwKeys:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, mIsRingingOrOffhook:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1}, updateWacomOffset(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1}, TorchModeFlashSet(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 148
    iget-object v0, p0, EnableLinuxCOMMONAPI4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    .prologue
    .line 148
    iget v0, p0, mUvsOrientation:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1}, setUvsOrieatation(I)V

    return-void
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 2579
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 2580
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2583
    :cond_10
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method static getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    .prologue
    .line 2273
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method static getTelephonyService2()Lcom/android/internal/telephony/ITelephony;
    .registers 3

    .prologue
    .line 2278
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2280
    .local v0, "telephonyService2":Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_13

    .line 2281
    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find ITelephony2 interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    :cond_13
    return-object v0
.end method

.method public static getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .registers 3

    .prologue
    .line 3020
    const-string v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 3022
    .local v0, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-nez v0, :cond_13

    .line 3023
    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find IVoIPInterface interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    :cond_13
    return-object v0
.end method

.method private injectionKeyEvent(I)V
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 1616
    iget-object v0, p0, mKeyEventInjectionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    iget-object v0, p0, mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1617
    iget-object v0, p0, mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1619
    :cond_11
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$9;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$9;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 1628
    iget-object v0, p0, mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1629
    return-void
.end method

.method private isDefaultLauncher(Ljava/lang/String;)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2657
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2658
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 2660
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2661
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2663
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2664
    .local v3, "preferredActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2665
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v3, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 2667
    const-string v7, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDefaultLauncher :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_4e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4e

    move v4, v5

    :goto_3a
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    if-eqz v3, :cond_50

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_50

    :goto_4d
    return v5

    :cond_4e
    move v4, v6

    .line 2667
    goto :goto_3a

    :cond_50
    move v5, v6

    .line 2668
    goto :goto_4d
.end method

.method private isHardwareKeyAllowed(IZ)Z
    .registers 8
    .param p1, "hwKeyId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 2559
    const/4 v0, 0x1

    .line 2562
    .local v0, "allowed":Z
    :try_start_1
    const-string v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v2

    .line 2564
    .local v2, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v2, :cond_12

    .line 2565
    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, p2}, Landroid/app/enterprise/kioskmode/IKioskMode;->isHardwareKeyAllowed(Landroid/app/enterprise/ContextInfo;IZ)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13

    move-result v0

    .line 2571
    .end local v2    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_12
    :goto_12
    return v0

    .line 2567
    :catch_13
    move-exception v1

    .line 2568
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception while getting kiosk mode service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private isKnoxKeyguardShowing()Z
    .registers 4

    .prologue
    .line 2606
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 2607
    .local v0, "mPm":Landroid/os/PersonaManager;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/os/PersonaManager;->getKeyguardShowState()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2608
    const-string v1, "SamsungWindowManager"

    const-string v2, "KnoxKeyguard is showing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    const/4 v1, 0x1

    .line 2611
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method private isMirrorLinkEnabled()Z
    .registers 3

    .prologue
    .line 2508
    const-string v0, "1"

    const-string v1, "net.mirrorlink.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isScreenCaptureEnabled()Z
    .registers 4

    .prologue
    .line 1799
    const/4 v0, 0x1

    .line 1801
    .local v0, "isScreenCaptureEnabled":Z
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1802
    const-string v1, "SamsungWindowManager"

    const-string v2, "mEDM.getRestrictionPolicy().isScreenCaptureEnabled() return false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    const/4 v0, 0x0

    .line 1804
    const/4 v1, 0x0

    .line 1807
    :goto_1f
    return v1

    :cond_20
    move v1, v0

    goto :goto_1f
.end method

.method private playSound(Ljava/lang/String;)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 2128
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2129
    .local v3, "soundUri":Landroid/net/Uri;
    invoke-virtual {p0}, getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 2131
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v4, p0, mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_1d

    iget-object v4, p0, mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2133
    :try_start_15
    iget-object v4, p0, mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->stop()V

    .line 2134
    const/4 v4, 0x0

    iput-object v4, p0, mRingtone:Landroid/media/Ringtone;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_3a

    .line 2140
    :cond_1d
    :goto_1d
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    iput-object v4, p0, mRingtone:Landroid/media/Ringtone;

    .line 2141
    if-eqz v0, :cond_5c

    .line 2142
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 2144
    .local v2, "masterStreamVolume":I
    iget-object v4, p0, mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_54

    .line 2145
    iget-object v4, p0, mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 2146
    iget-object v4, p0, mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V

    .line 2155
    .end local v2    # "masterStreamVolume":I
    :goto_39
    return-void

    .line 2135
    :catch_3a
    move-exception v1

    .line 2136
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to stop Ringtone - already done : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 2149
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "masterStreamVolume":I
    :cond_54
    const-string v4, "SamsungWindowManager"

    const-string v5, "There are no ringtones"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 2153
    .end local v2    # "masterStreamVolume":I
    :cond_5c
    const-string v4, "SamsungWindowManager"

    const-string v5, "AudioManager loading fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method private playSoundEffect()V
    .registers 4

    .prologue
    .line 1844
    invoke-virtual {p0}, getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 1845
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1c

    .line 1846
    iget-object v1, p0, mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1847
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1855
    :goto_13
    return-void

    .line 1850
    :cond_14
    const-string v1, "SamsungWindowManager"

    const-string v2, "keyguard - disable key sound"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1853
    :cond_1c
    const-string v1, "SamsungWindowManager"

    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private setUvsOrieatation(I)V
    .registers 3
    .param p1, "request"    # I

    .prologue
    .line 2800
    iget v0, p0, mUvsOrientation:I

    if-eq v0, p1, :cond_13

    .line 2801
    if-eqz p1, :cond_11

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/16 v0, 0x8

    if-eq p1, v0, :cond_11

    const/16 v0, 0x9

    if-ne p1, v0, :cond_14

    .line 2805
    :cond_11
    iput p1, p0, mUvsOrientation:I

    .line 2810
    :cond_13
    :goto_13
    return-void

    .line 2807
    :cond_14
    const/4 v0, -0x1

    iput v0, p0, mUvsOrientation:I

    goto :goto_13
.end method

.method private startCustomApp()Z
    .registers 13

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2619
    :try_start_2
    iget-object v9, p0, mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-nez v9, :cond_e

    .line 2620
    const-string v8, "SamsungWindowManager"

    const-string v9, "mKnoxCustomManager null"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    :cond_d
    :goto_d
    return v7

    .line 2624
    :cond_e
    iget-object v9, p0, mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getRecentLongPressMode()I

    move-result v3

    .line 2625
    .local v3, "mode":I
    if-eqz v3, :cond_d

    .line 2630
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2631
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2632
    .local v5, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v9, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2634
    .local v6, "taskName":Ljava/lang/String;
    if-ne v3, v8, :cond_6d

    invoke-direct {p0, v6}, isDefaultLauncher(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6d

    .line 2636
    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Foreground taskName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_52} :catch_53

    goto :goto_d

    .line 2649
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "mode":I
    .end local v5    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "taskName":Ljava/lang/String;
    :catch_53
    move-exception v2

    .line 2650
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startCustomApp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 2639
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v3    # "mode":I
    .restart local v5    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v6    # "taskName":Ljava/lang/String;
    :cond_6d
    :try_start_6d
    iget-object v9, p0, mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object v1

    .line 2641
    .local v1, "appToStart":Ljava/lang/String;
    if-eqz v1, :cond_7b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_83

    .line 2642
    :cond_7b
    const-string v8, "SamsungWindowManager"

    const-string v9, "appToStart null"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 2645
    :cond_83
    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "starting custom app : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 2647
    .local v4, "regularIntent":Landroid/content/Intent;
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_aa} :catch_53

    move v7, v8

    .line 2653
    goto/16 :goto_d
.end method

.method private startSGA(Ljava/lang/String;)V
    .registers 7
    .param p1, "gamePkg"    # Ljava/lang/String;

    .prologue
    .line 3112
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3113
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 3114
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3116
    if-eqz v1, :cond_22

    .line 3118
    :try_start_d
    iget-object v3, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_14} :catch_15

    .line 3125
    :cond_14
    :goto_14
    return-void

    .line 3119
    :catch_15
    move-exception v0

    .line 3120
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_14

    const-string v3, "SamsungWindowManager"

    const-string v4, "SGA is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 3123
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_22
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_14

    const-string v3, "SamsungWindowManager"

    const-string v4, "no Launch intent of SGA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private updateWacomOffset(I)V
    .registers 7
    .param p1, "rotation"    # I

    .prologue
    .line 2190
    const/4 v1, 0x0

    .line 2192
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/epen_rotation"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_d} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_2b
    .catchall {:try_start_1 .. :try_end_d} :catchall_3a

    .line 2193
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    add-int/lit8 v3, p1, 0x30

    :try_start_f
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_12} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_49
    .catchall {:try_start_f .. :try_end_12} :catchall_46

    .line 2200
    if-eqz v2, :cond_17

    .line 2201
    :try_start_14
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_19

    :cond_17
    move-object v1, v2

    .line 2207
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :cond_18
    :goto_18
    return-void

    .line 2203
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_19
    move-exception v0

    .line 2204
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 2206
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_18

    .line 2194
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1f
    move-exception v3

    .line 2200
    :goto_20
    if-eqz v1, :cond_18

    .line 2201
    :try_start_22
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 2203
    :catch_26
    move-exception v0

    .line 2204
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 2196
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2b
    move-exception v0

    .line 2197
    .local v0, "e":Ljava/io/IOException;
    :goto_2c
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3a

    .line 2200
    if-eqz v1, :cond_18

    .line 2201
    :try_start_31
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_18

    .line 2203
    :catch_35
    move-exception v0

    .line 2204
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 2199
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3a
    move-exception v3

    .line 2200
    :goto_3b
    if-eqz v1, :cond_40

    .line 2201
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    .line 2205
    :cond_40
    :goto_40
    throw v3

    .line 2203
    :catch_41
    move-exception v0

    .line 2204
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40

    .line 2199
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_46
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_3b

    .line 2196
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_49
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_2c

    .line 2194
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_4c
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_20
.end method


# virtual methods
.method public callAccessibilityScreenCurtain()V
    .registers 5

    .prologue
    .line 1412
    invoke-virtual {p0}, isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1413
    const-string v2, "SamsungWindowManager"

    const-string v3, "callAccessibilityScreenCurtain() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1416
    .local v1, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_17
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setScreenCurtain()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 1423
    .end local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :goto_1a
    return-void

    .line 1417
    .restart local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :catch_1b
    move-exception v0

    .line 1418
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1a

    .line 1421
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :cond_20
    const-string v2, "SamsungWindowManager"

    const-string v3, "sendBroadcastForAccessibility() is not called, because it is not provisioned"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public callAccessibilityTalkbackMode()V
    .registers 5

    .prologue
    .line 1402
    const-string v2, "SamsungWindowManager"

    const-string v3, "callAccessibilityTalkbackMode() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 1405
    .local v1, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_11
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setTalkbackMode()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 1409
    :goto_14
    return-void

    .line 1406
    :catch_15
    move-exception v0

    .line 1407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14
.end method

.method public downloadForSGA(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkgUri"    # Ljava/lang/String;

    .prologue
    .line 3144
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "SamsungWindowManager"

    const-string v3, "try download SGA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    :cond_b
    :try_start_b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3147
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3148
    const v2, 0x30000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3150
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_24} :catch_25

    .line 3156
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_24
    return-void

    .line 3151
    :catch_25
    move-exception v0

    .line 3153
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_31

    const-string v2, "SamsungWindowManager"

    const-string v3, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    :cond_31
    invoke-virtual {p0}, downloadForSamsungApps()V

    goto :goto_24
.end method

.method public downloadForSamsungApps()V
    .registers 6

    .prologue
    .line 3128
    sget-boolean v3, SAFE_DEBUG:Z

    if-eqz v3, :cond_b

    const-string v3, "SamsungWindowManager"

    const-string v4, "try download SamsungApps"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    :cond_b
    const-string v2, "http://apps.samsung.com/mw/apk_en.as"

    .line 3131
    .local v2, "url":Ljava/lang/String;
    :try_start_d
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3133
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3134
    const v3, 0x30000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3136
    iget-object v3, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_2a} :catch_2b

    .line 3141
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2a
    return-void

    .line 3137
    :catch_2b
    move-exception v0

    .line 3139
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "There is not browsable apps for samsungapps download"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2513
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPenState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mPenState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2514
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPerformEditAfterScreenCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mPerformEditAfterScreenCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2515
    const-string v0, " mHasFlashAnnotateComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mHasFlashAnnotateComponent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2516
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsSafetyAssuranceEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsSafetyAssuranceEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2517
    const-string v0, " mIsUseAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsUseAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2518
    const-string v0, " mIsEnabledAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsEnabledAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2519
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsKidsModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsKidsModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2520
    const-string v0, " mIsEasyModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsEasyModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2521
    const-string v0, " mIsDockHomeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsDockHomeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2522
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mDoubleTapOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2523
    const-string v0, " mAvailableVoiceCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mAvailableVoiceCommand:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2524
    const-string v0, " mTripleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mTripleTapOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2525
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsRingingOrOffhook="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsRingingOrOffhook:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2527
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSideSyncSourcePresentationActived="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mSideSyncSourcePresentationActived:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2530
    iget-object v0, p0, mCombinationKeyManager:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2531
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V

    .line 2532
    return-void
.end method

.method public endCallByGamekey()Z
    .registers 7

    .prologue
    .line 3046
    const/4 v1, 0x0

    .line 3048
    .local v1, "hungUp":Z
    invoke-static {}, getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3049
    .local v2, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_11

    .line 3051
    :try_start_7
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3052
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_23

    move-result v1

    .line 3060
    :cond_11
    :goto_11
    invoke-static {}, getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v3

    .line 3062
    .local v3, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v3, :cond_22

    :try_start_17
    invoke-virtual {p0}, isVoIPRinging()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 3063
    invoke-interface {v3}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_30

    move-result v4

    or-int/2addr v1, v4

    .line 3068
    :cond_22
    :goto_22
    return v1

    .line 3054
    .end local v3    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_23
    move-exception v0

    .line 3055
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v4, SAFE_DEBUG:Z

    if-eqz v4, :cond_11

    const-string v4, "SamsungWindowManager"

    const-string v5, "ITelephony threw RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 3065
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_30
    move-exception v0

    .line 3066
    .restart local v0    # "ex":Landroid/os/RemoteException;
    sget-boolean v4, SAFE_DEBUG:Z

    if-eqz v4, :cond_22

    const-string v4, "SamsungWindowManager"

    const-string v5, "ITelephony2 threw RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .registers 4

    .prologue
    .line 2301
    iget-object v1, p0, mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2302
    :try_start_3
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_13

    .line 2303
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    .line 2306
    :cond_13
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    monitor-exit v1

    return-object v0

    .line 2307
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getKnoxCustomManager()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .registers 2

    .prologue
    .line 2676
    iget-object v0, p0, mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    return-object v0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .prologue
    .line 2291
    iget-object v1, p0, mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2292
    :try_start_3
    iget-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_13

    .line 2293
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 2296
    :cond_13
    iget-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 2297
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .registers 3

    .prologue
    .line 2287
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getTimeoutTimeOfKeyCombination(I)J
    .registers 4
    .param p1, "flags"    # I

    .prologue
    .line 1346
    iget-object v0, p0, mCombinationKeyManager:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->getTimeoutTimeOfKeyCombination(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUvsOrientation()I
    .registers 2

    .prologue
    .line 2796
    iget v0, p0, mUvsOrientation:I

    return v0
.end method

.method public goingToSleep(I)V
    .registers 3
    .param p1, "why"    # I

    .prologue
    .line 546
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_11

    .line 548
    iget-object v0, p0, mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->disable()V

    .line 551
    :cond_11
    return-void
.end method

.method public handleHomeKeyInRinging()I
    .registers 4

    .prologue
    .line 2412
    invoke-virtual {p0}, getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 2413
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2414
    invoke-virtual {p0}, isAnyKeyMode()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2415
    const-string v1, "SamsungWindowManager"

    const-string v2, "ringing: Accept the call!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 2417
    const/4 v1, -0x1

    .line 2421
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x1

    goto :goto_1d
.end method

.method public handleLongPressOnBack()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1598
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->getEasyOneHandPkgVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_16

    .line 1599
    iput-boolean v2, p0, mBackKeyConsumed:Z

    .line 1600
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, updateEasyOneHandState(ZZ)V

    .line 1603
    :cond_16
    return-void
.end method

.method public handleLongPressOnHome()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 1458
    iget-object v4, p0, mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v4, :cond_e

    iget-object v4, p0, mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v4}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1510
    :cond_d
    :goto_d
    return v3

    .line 1464
    :cond_e
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1465
    const-string v4, "SamsungWindowManager"

    const-string v5, "Home longpress block when Verizon Setup Wizard Running"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1475
    :cond_1c
    :try_start_1c
    invoke-static {}, getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1476
    .local v2, "phoneServ":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_28

    .line 1477
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_44

    move-result v4

    if-nez v4, :cond_d

    .line 1485
    .end local v2    # "phoneServ":Lcom/android/internal/telephony/ITelephony;
    :cond_28
    :goto_28
    invoke-virtual {p0}, isVoIPRinging()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1489
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 1490
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1491
    const-string v4, "SamsungWindowManager"

    const-string v5, "Home longpress block in emergency & upsm mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1481
    .end local v0    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :catch_44
    move-exception v1

    .line 1482
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v4, "SamsungWindowManager"

    const-string v5, "RemoteException from getTelephonyService()"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 1497
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    :cond_4d
    invoke-virtual {p0}, isKidsModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 1498
    const-string v4, "SamsungWindowManager"

    const-string v5, "Home longpress block in kidsmode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1504
    :cond_5b
    invoke-virtual {p0}, isEnableAccessControl()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 1505
    const-string v4, "SamsungWindowManager"

    const-string v5, "Home longpress blocked by Interaction control"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1510
    :cond_69
    const/4 v3, 0x0

    goto :goto_d
.end method

.method public handleLongPressOnMenu()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1518
    iget-boolean v2, p0, mIsSupportManualScreenPinning:Z

    if-eqz v2, :cond_35

    .line 1519
    iget-boolean v2, p0, mHasPermanentMenuKey:Z

    if-eqz v2, :cond_35

    .line 1520
    iget-object v2, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1522
    :try_start_19
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_24

    const-string v2, "SamsungWindowManager"

    const-string v3, "Menu longpress used in Lock task mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_24
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1524
    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2b} :catch_2c

    .line 1542
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :cond_2b
    :goto_2b
    return-void

    .line 1525
    :catch_2c
    move-exception v1

    .line 1526
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Unable to reach activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 1535
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_35
    iget-object v2, p0, mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v2, :cond_41

    iget-object v2, p0, mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 1540
    :cond_41
    const/4 v2, 0x1

    iput-boolean v2, p0, mMenuConsumed:Z

    .line 1541
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3, v3}, performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto :goto_2b
.end method

.method public handleLongPressOnRecent()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1557
    iget-boolean v2, p0, mIsSupportManualScreenPinning:Z

    if-eqz v2, :cond_36

    .line 1558
    iget-boolean v2, p0, mHasPermanentMenuKey:Z

    if-nez v2, :cond_36

    .line 1559
    iget-object v2, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1561
    :try_start_1a
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_25

    const-string v2, "SamsungWindowManager"

    const-string v3, "Recent longpress used in Lock task mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_25
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1563
    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2c} :catch_2d

    .line 1584
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :goto_2c
    return-void

    .line 1564
    :catch_2d
    move-exception v1

    .line 1565
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Unable to reach activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 1574
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_36
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isEasyOneHandEnabled()Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->getEasyOneHandPkgVersion(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_4b

    .line 1575
    iput-boolean v4, p0, mRecentConsumed:Z

    .line 1576
    invoke-virtual {p0, v4, v4}, updateEasyOneHandState(ZZ)V

    goto :goto_2c

    .line 1581
    :cond_4b
    iput-boolean v4, p0, mRecentConsumed:Z

    .line 1582
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v5, v5}, performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1583
    const/16 v2, 0x52

    invoke-direct {p0, v2}, injectionKeyEvent(I)V

    goto :goto_2c
.end method

.method public handleWakingUp()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 555
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_12

    .line 557
    iget-object v0, p0, mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->enable()V

    .line 561
    :cond_12
    iget-boolean v0, p0, mTorchlightOn:Z

    if-eqz v0, :cond_19

    .line 562
    invoke-virtual {p0, v1, v1, v1}, processTorchlight(IZZ)V

    .line 565
    :cond_19
    return-void
.end method

.method public hideRecentApps(Z)Z
    .registers 3
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 2551
    invoke-virtual {p0}, isShowOrHideRecentAppsAllowedByKNOX()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2552
    const/4 v0, 0x1

    .line 2554
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public ignorePowerKeyInEncrypting()Z
    .registers 7

    .prologue
    .line 2851
    const-string v3, "vold.encrypt_progress"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2852
    .local v2, "state":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3e

    .line 2853
    const/4 v1, 0x0

    .line 2855
    .local v1, "progress":I
    :try_start_d
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_20

    move-result v1

    .line 2859
    :goto_11
    if-lez v1, :cond_3e

    const/16 v3, 0x64

    if-ge v1, v3, :cond_3e

    .line 2860
    const-string v3, "SamsungWindowManager"

    const-string v4, "Ignore Power Off Key!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    const/4 v3, 0x1

    .line 2864
    .end local v1    # "progress":I
    :goto_1f
    return v3

    .line 2856
    .restart local v1    # "progress":I
    :catch_20
    move-exception v0

    .line 2857
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 2864
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "progress":I
    :cond_3e
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public init(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "windowManager"    # Landroid/view/IWindowManager;
    .param p4, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 412
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 413
    iput-object p2, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 414
    iput-object p3, p0, mWindowManager:Landroid/view/IWindowManager;

    .line 415
    iput-object p4, p0, mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 416
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    .line 417
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, mVibrator:Landroid/os/SystemVibrator;

    .line 418
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 420
    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    iget-object v1, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mCombinationKeyManager:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    .line 422
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, mSettingsObserver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

    .line 423
    iget-object v0, p0, mSettingsObserver:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SettingsObserver;->observe()V

    .line 425
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    const-string v1, "SamsungPhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 427
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mTorchlightWakeLock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 431
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 432
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.android.motion.SWEEP_LEFT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    const-string v0, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    const-string v0, "com.samsung.android.motion.SWEEP_DOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, mSweepReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 438
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 439
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 443
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 444
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 449
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 450
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 454
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "com.android.server.enterprise.kioskmode.REFRESH_HWKEY_CACHE"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 455
    .local v6, "kioskFilter":Landroid/content/IntentFilter;
    iget-object v0, p0, mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 459
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    .line 462
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.action.SVOICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mVoiceCommandIntent:Landroid/content/Intent;

    .line 463
    iget-object v0, p0, mVoiceCommandIntent:Landroid/content/Intent;

    const-string v1, "isThisComeFromHomeKeyDoubleClickConcept"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 464
    iget-object v0, p0, mVoiceCommandIntent:Landroid/content/Intent;

    const-string v1, "CHECK_SCHEDULE_ENABLED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 465
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mPenInsertedIntent:Landroid/content/Intent;

    .line 466
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT.USER_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    .line 467
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.always.action.LAUNCH_ALWAYS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mAlwaysIntent:Landroid/content/Intent;

    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.flipfolder.OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mFlipFolderOpenedIntent:Landroid/content/Intent;

    .line 469
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.secretmode.action.REQ_SHOW_VISUAL_CUE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mFingerPrintIntent:Landroid/content/Intent;

    .line 470
    iget-object v0, p0, mFingerPrintIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.secretmode.service"

    const-string v5, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-direct {v1, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 472
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.always"

    const-string v2, "com.samsung.android.app.always.ui.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, mAlwaysComponet:Landroid/content/ComponentName;

    .line 474
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.spen.flashannotate"

    const-string v2, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, mFlashAnnotateComponent:Landroid/content/ComponentName;

    .line 476
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.spen.flashannotatesvc"

    const-string v2, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    .line 479
    iget-object v0, p0, mFlashAnnotateComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v0

    iput-boolean v0, p0, mHasFlashAnnotateComponent:Z

    .line 480
    iget-object v0, p0, mVoiceCommandIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, mAvailableVoiceCommand:Z

    .line 483
    const-string v0, "com.sec.android.daynote"

    invoke-virtual {p0, v0}, isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, mHasDaynotePackage:Z

    .line 487
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mVoiceWakeUpWakeLock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 492
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15f

    iget-boolean v0, p0, WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_15f

    .line 494
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/content/Context;)V

    iput-object v0, p0, mOrientationListenerForPenGesture:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    .line 499
    :cond_15f
    const-string v0, "LGT"

    iget-object v1, p0, EnableLinuxCOMMONAPI4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17c

    .line 500
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 501
    .local v7, "mUvsFilter":Landroid/content/IntentFilter;
    const-string v0, "com.lguplus.uvs.REQUEST_ORIENTATION"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mUvsReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.SET_ORIENTATION"

    invoke-virtual {v0, v1, v7, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 507
    .end local v7    # "mUvsFilter":Landroid/content/IntentFilter;
    :cond_17c
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$6;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 512
    iget-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_190

    .line 513
    iget-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 516
    :cond_190
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)Z
    .registers 34
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v22

    .line 849
    .local v22, "keyguardOn":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v20

    .line 850
    .local v20, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v24

    .line 851
    .local v24, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    .line 852
    .local v13, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v28

    if-nez v28, :cond_8c

    const/4 v10, 0x1

    .line 853
    .local v10, "down":Z
    :goto_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .line 857
    .local v6, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v28

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_a8

    move-object/from16 v0, p0

    iget-object v0, v0, mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v28, v0

    if-eqz v28, :cond_a8

    move-object/from16 v0, p0

    iget-object v0, v0, mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_a8

    .line 859
    const/4 v15, 0x1

    .line 860
    .local v15, "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v28

    if-nez v28, :cond_9b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v28

    if-nez v28, :cond_9b

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8e

    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v28

    if-eqz v28, :cond_8e

    .line 863
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, isHardwareKeyAllowed(IZ)Z

    move-result v15

    .line 864
    const/16 v28, 0x18

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_87

    move-object/from16 v0, p0

    iget-boolean v0, v0, mSealedModeReEnableVolumeUpKey:Z

    move/from16 v28, v0

    if-eqz v28, :cond_87

    .line 865
    const/4 v15, 0x1

    .line 866
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mSealedModeReEnableVolumeUpKey:Z

    .line 877
    :cond_87
    :goto_87
    if-nez v15, :cond_a8

    .line 878
    const/16 v21, 0x1

    .line 1225
    .end local v15    # "isAllowed":Z
    :cond_8b
    :goto_8b
    return v21

    .line 852
    .end local v6    # "canceled":Z
    .end local v10    # "down":Z
    :cond_8c
    const/4 v10, 0x0

    goto :goto_1d

    .line 869
    .restart local v6    # "canceled":Z
    .restart local v10    # "down":Z
    .restart local v15    # "isAllowed":Z
    :cond_8e
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, isHardwareKeyAllowed(IZ)Z

    move-result v15

    goto :goto_87

    .line 875
    :cond_9b
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, isHardwareKeyAllowed(IZ)Z

    move-result v15

    goto :goto_87

    .line 883
    .end local v15    # "isAllowed":Z
    :cond_a8
    move-object/from16 v0, p0

    iget-object v0, v0, mCombinationKeyManager:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->isConsumedKeyCombination(Landroid/view/KeyEvent;)Z

    move-result v28

    if-eqz v28, :cond_bb

    .line 884
    const/16 v21, 0x1

    goto :goto_8b

    .line 888
    :cond_bb
    invoke-virtual/range {p0 .. p0}, isSideSyncPresentationRunning()Z

    move-result v28

    if-eqz v28, :cond_f8

    invoke-virtual/range {p0 .. p1}, isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v28

    if-eqz v28, :cond_f8

    .line 889
    sget-boolean v28, SAFE_DEBUG:Z

    if-eqz v28, :cond_f5

    const-string v28, "SamsungWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "interceptKeyTi : Key was blocked by sidesync. keycode="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", repeatCount="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_f5
    const/16 v21, 0x1

    goto :goto_8b

    .line 894
    :cond_f8
    const/16 v28, 0x3

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_25d

    .line 896
    invoke-direct/range {p0 .. p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    if-eqz v28, :cond_17e

    .line 897
    invoke-direct/range {p0 .. p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 898
    invoke-direct/range {p0 .. p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    .line 899
    invoke-direct/range {p0 .. p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v23

    .line 900
    .local v23, "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v23, :cond_15b

    .line 901
    const/4 v15, 0x1

    .line 902
    .restart local v15    # "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v28

    if-nez v28, :cond_150

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v28

    if-nez v28, :cond_150

    .line 903
    const/16 v28, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v15

    .line 907
    :goto_143
    if-nez v15, :cond_15b

    .line 908
    const-string v28, "SamsungWindowManager"

    const-string v29, "home key disabled by edm"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 905
    :cond_150
    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v15

    goto :goto_143

    .line 912
    .end local v15    # "isAllowed":Z
    :cond_15b
    move-object/from16 v0, p0

    iget-object v0, v0, mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v28

    if-gtz v28, :cond_173

    move-object/from16 v0, p0

    iget-object v0, v0, mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v28

    if-eqz v28, :cond_17e

    .line 914
    :cond_173
    const-string v28, "SamsungWindowManager"

    const-string v29, "home key disabled by either pwd policy OR DoD Banner"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 921
    .end local v23    # "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :cond_17e
    invoke-direct/range {p0 .. p0}, isKnoxKeyguardShowing()Z

    move-result v28

    if-eqz v28, :cond_1b2

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v28

    if-eqz v28, :cond_1b2

    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v28

    if-nez v28, :cond_1b2

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    new-instance v29, Landroid/content/Intent;

    const-string v30, "com.sec.knox.containeragent2.ui.keyguard.KnoxKeyguardRecevier.KnoxKeyguardHomeButton"

    invoke-direct/range {v29 .. v30}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v30, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 924
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 931
    :cond_1b2
    invoke-virtual/range {p0 .. p0}, isSideSyncPresentationRunning()Z

    move-result v28

    if-eqz v28, :cond_1cd

    .line 932
    invoke-virtual/range {p0 .. p1}, sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v28

    if-eqz v28, :cond_1cd

    .line 933
    sget-boolean v28, SAFE_DEBUG:Z

    if-eqz v28, :cond_1c9

    const-string v28, "SamsungWindowManager"

    const-string v29, "Home key is send to SideSync"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_1c9
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 940
    :cond_1cd
    invoke-direct/range {p0 .. p0}, isMirrorLinkEnabled()Z

    move-result v28

    if-eqz v28, :cond_1de

    .line 941
    const-string v28, "SamsungWindowManager"

    const-string v29, "isMirrorLinkEnabled() true"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 946
    :cond_1de
    move-object/from16 v0, p0

    iget-boolean v0, v0, mBlockKeyForDrivingMode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1f1

    .line 947
    const-string v28, "SamsungWindowManager"

    const-string v29, "carmode true"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 953
    :cond_1f1
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_208

    .line 954
    const-string v28, "SamsungWindowManager"

    const-string v29, "Home key is blocked by policy"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 959
    :cond_208
    invoke-virtual/range {p0 .. p0}, isVoIPRinging()Z

    move-result v19

    .line 960
    .local v19, "isVoIPRinging":Z
    const/16 v16, 0x0

    .line 961
    .local v16, "isAnyKeyMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "anykey_mode"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_242

    .line 963
    const/16 v16, 0x0

    .line 968
    :goto_22a
    if-eqz v19, :cond_24c

    .line 969
    if-eqz v16, :cond_24c

    .line 971
    :try_start_22e
    invoke-static {}, getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v27

    .line 972
    .local v27, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v27, :cond_245

    .line 973
    invoke-interface/range {v27 .. v27}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z

    .line 974
    const-string v28, "SamsungWindowManager"

    const-string v29, "HOME; while ringing: Answer the VoIPcall!"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 965
    .end local v27    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_242
    const/16 v16, 0x1

    goto :goto_22a

    .line 977
    .restart local v27    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_245
    const-string v28, "SamsungWindowManager"

    const-string v29, "Unable to find IVoIPInterface interface"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24c
    .catch Landroid/os/RemoteException; {:try_start_22e .. :try_end_24c} :catch_250

    .line 1225
    .end local v16    # "isAnyKeyMode":Z
    .end local v19    # "isVoIPRinging":Z
    .end local v27    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_24c
    :goto_24c
    const/16 v21, 0x0

    goto/16 :goto_8b

    .line 979
    .restart local v16    # "isAnyKeyMode":Z
    .restart local v19    # "isVoIPRinging":Z
    :catch_250
    move-exception v12

    .line 980
    .local v12, "ex":Landroid/os/RemoteException;
    const-string v28, "SamsungWindowManager"

    const-string v29, "RemoteException from getVoIPInterfaceService()"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24c

    .line 987
    .end local v12    # "ex":Landroid/os/RemoteException;
    .end local v16    # "isAnyKeyMode":Z
    .end local v19    # "isVoIPRinging":Z
    :cond_25d
    const/16 v28, 0x52

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_268

    .line 989
    if-eqz v10, :cond_24c

    goto :goto_24c

    .line 1021
    :cond_268
    const/16 v28, 0xbb

    move/from16 v0, v20

    move/from16 v1, v28

    if-eq v0, v1, :cond_278

    const/16 v28, 0x105

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_31a

    .line 1023
    :cond_278
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-object/from16 v28, v0

    if-eqz v28, :cond_290

    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v28

    if-eqz v28, :cond_290

    .line 1024
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 1028
    :cond_290
    invoke-direct/range {p0 .. p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    if-eqz v28, :cond_2d5

    .line 1029
    invoke-direct/range {p0 .. p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 1030
    invoke-direct/range {p0 .. p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v28

    if-gtz v28, :cond_2ca

    move-object/from16 v0, p0

    iget-object v0, v0, mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v28

    if-eqz v28, :cond_2d5

    .line 1033
    :cond_2ca
    const-string v28, "SamsungWindowManager"

    const-string v29, "recent apps key disabled by either pwd policy OR DoD Banner"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 1039
    :cond_2d5
    invoke-direct/range {p0 .. p0}, isKnoxKeyguardShowing()Z

    move-result v28

    if-eqz v28, :cond_2df

    .line 1040
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 1045
    :cond_2df
    invoke-direct/range {p0 .. p0}, isMirrorLinkEnabled()Z

    move-result v28

    if-eqz v28, :cond_2f0

    .line 1046
    const-string v28, "SamsungWindowManager"

    const-string v29, "isMirrorLinkEnabled() true"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 1051
    :cond_2f0
    move-object/from16 v0, p0

    iget-boolean v0, v0, mBlockKeyForDrivingMode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_303

    .line 1052
    const-string v28, "SamsungWindowManager"

    const-string v29, "carmode true"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 1058
    :cond_303
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_24c

    .line 1059
    const-string v28, "SamsungWindowManager"

    const-string v29, "Home key is blocked by policy"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 1064
    :cond_31a
    const/16 v28, 0x131

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_350

    .line 1065
    if-eqz v10, :cond_34c

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1067
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mFingerPrintPending:Z

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0x3e8

    invoke-virtual/range {v28 .. v31}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1070
    :cond_34c
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 1071
    :cond_350
    const/16 v28, 0x132

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_380

    .line 1072
    if-nez v10, :cond_37c

    move-object/from16 v0, p0

    iget-boolean v0, v0, mFingerPrintPending:Z

    move/from16 v28, v0

    if-eqz v28, :cond_37c

    .line 1073
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mFingerPrintPending:Z

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1075
    invoke-virtual/range {p0 .. p0}, launchFingerPrint()V

    .line 1077
    :cond_37c
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 1081
    :cond_380
    const/16 v28, 0x115

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_530

    .line 1082
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v28

    if-eqz v28, :cond_24c

    .line 1083
    const-string v28, "service.media.dmb"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1084
    .local v7, "dmb_running":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "dmb_antenna_auto_start"

    const/16 v30, 0x0

    const/16 v31, -0x2

    invoke-static/range {v28 .. v31}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4dc

    const/16 v17, 0x1

    .line 1086
    .local v17, "isDmbAutoStarton":Z
    :goto_3b2
    const/4 v5, 0x0

    .line 1087
    .local v5, "b_dmb_running":Z
    const/16 v18, 0x0

    .line 1088
    .local v18, "isSecureKeyguard":Z
    if-eqz v7, :cond_3c8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_3c8

    .line 1089
    const-string v28, "1"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4e0

    .line 1090
    const/4 v5, 0x1

    .line 1096
    :cond_3c8
    :goto_3c8
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3e4

    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v18

    .line 1098
    :cond_3e4
    const-string v28, "SamsungWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "KEYCODE_DMB_ANT_OPEN dmb_running="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", isSecureKeyguard="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", isDmbAutoStarton="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    if-nez v10, :cond_471

    if-nez v24, :cond_471

    .line 1104
    :try_start_41e
    const-string v4, "/efs/FactoryApp/tdmb_det_count"

    .line 1105
    .local v4, "TDMB_DET_PATH":Ljava/lang/String;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1106
    .local v26, "strDMBCount":Ljava/lang/String;
    const-string v28, "SamsungWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "TDMB_DET_COUNT : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    if-eqz v26, :cond_4ed

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_4ed

    .line 1109
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    const-wide/16 v30, 0x1

    add-long v8, v28, v30

    .line 1110
    .local v8, "dmb_det_count":J
    const-wide/32 v28, 0xf423f

    cmp-long v28, v8, v28

    if-lez v28, :cond_468

    .line 1111
    const-wide/16 v8, 0x1

    .line 1113
    :cond_468
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_471
    .catch Ljava/io/IOException; {:try_start_41e .. :try_end_471} :catch_4f6
    .catch Ljava/lang/NumberFormatException; {:try_start_41e .. :try_end_471} :catch_513

    .line 1124
    .end local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v8    # "dmb_det_count":J
    .end local v26    # "strDMBCount":Ljava/lang/String;
    :cond_471
    :goto_471
    if-nez v10, :cond_24c

    if-nez v24, :cond_24c

    if-nez v5, :cond_24c

    if-nez v18, :cond_24c

    if-eqz v17, :cond_24c

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v28

    if-nez v28, :cond_24c

    .line 1127
    const-string v28, "SamsungWindowManager"

    const-string v29, "KEYCODE_DMB_ANT_OPEN"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    new-instance v28, Landroid/content/ComponentName;

    const-string v29, "com.sec.android.app.dmb"

    const-string v30, "com.sec.android.app.dmb.activity.DMBFullScreenView"

    invoke-direct/range {v28 .. v30}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v28 .. v28}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v14

    .line 1131
    .local v14, "intent":Landroid/content/Intent;
    const-string v28, "com.sec.android.action.DMB_ANT_OPEN"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1132
    const/high16 v28, 0x10000000

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v28

    if-eqz v28, :cond_4d8

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    new-instance v29, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$7;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$7;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1142
    :cond_4d8
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 1084
    .end local v5    # "b_dmb_running":Z
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v17    # "isDmbAutoStarton":Z
    .end local v18    # "isSecureKeyguard":Z
    :cond_4dc
    const/16 v17, 0x0

    goto/16 :goto_3b2

    .line 1091
    .restart local v5    # "b_dmb_running":Z
    .restart local v17    # "isDmbAutoStarton":Z
    .restart local v18    # "isSecureKeyguard":Z
    :cond_4e0
    const-string v28, "0"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3c8

    .line 1092
    const/4 v5, 0x0

    goto/16 :goto_3c8

    .line 1115
    .restart local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .restart local v26    # "strDMBCount":Ljava/lang/String;
    :cond_4ed
    :try_start_4ed
    const-string v28, "0"

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f4
    .catch Ljava/io/IOException; {:try_start_4ed .. :try_end_4f4} :catch_4f6
    .catch Ljava/lang/NumberFormatException; {:try_start_4ed .. :try_end_4f4} :catch_513

    goto/16 :goto_471

    .line 1117
    .end local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v26    # "strDMBCount":Ljava/lang/String;
    :catch_4f6
    move-exception v11

    .line 1118
    .local v11, "e":Ljava/io/IOException;
    const-string v28, "SamsungWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "IOException : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_471

    .line 1119
    .end local v11    # "e":Ljava/io/IOException;
    :catch_513
    move-exception v11

    .line 1120
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string v28, "SamsungWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NumberFormatException : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_471

    .line 1145
    .end local v5    # "b_dmb_running":Z
    .end local v7    # "dmb_running":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .end local v17    # "isDmbAutoStarton":Z
    .end local v18    # "isSecureKeyguard":Z
    :cond_530
    const/16 v28, 0x116

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_578

    .line 1146
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v28

    if-eqz v28, :cond_24c

    .line 1147
    if-nez v10, :cond_24c

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v28

    if-nez v28, :cond_24c

    .line 1148
    const-string v28, "SamsungWindowManager"

    const-string v29, "KEYCODE_DMB_ANT_CLOSE"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1150
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v28, "com.sec.android.action.DMB_ANT_CLOSE"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    sget-object v29, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1153
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 1160
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_578
    const/16 v28, 0x107

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_59d

    .line 1161
    if-eqz v10, :cond_24c

    if-nez v22, :cond_24c

    if-nez v24, :cond_24c

    .line 1163
    :try_start_586
    invoke-virtual/range {p0 .. p0}, getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v25

    .line 1164
    .local v25, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v25, :cond_58f

    .line 1165
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/statusbar/IStatusBarService;->toggleNotificationPanel()V
    :try_end_58f
    .catch Landroid/os/RemoteException; {:try_start_586 .. :try_end_58f} :catch_593

    .line 1171
    .end local v25    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_58f
    :goto_58f
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 1167
    :catch_593
    move-exception v12

    .line 1169
    .restart local v12    # "ex":Landroid/os/RemoteException;
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_58f

    .line 1174
    .end local v12    # "ex":Landroid/os/RemoteException;
    :cond_59d
    const/16 v28, 0x144

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_5ae

    .line 1175
    if-nez v10, :cond_5aa

    .line 1176
    invoke-virtual/range {p0 .. p0}, launchSFinderIfPossible()Z

    .line 1178
    :cond_5aa
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 1180
    :cond_5ae
    const/16 v28, 0x108

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_5e4

    .line 1181
    if-nez v10, :cond_24c

    invoke-virtual/range {p0 .. p0}, isDeviceProvisioned()Z

    move-result v28

    if-eqz v28, :cond_24c

    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v28

    if-eqz v28, :cond_24c

    invoke-direct/range {p0 .. p0}, isScreenCaptureEnabled()Z

    move-result v28

    if-eqz v28, :cond_24c

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    new-instance v29, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$8;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$8;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_24c

    .line 1190
    :cond_5e4
    const/16 v28, 0x141

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_611

    .line 1191
    if-nez v10, :cond_60d

    invoke-virtual/range {p0 .. p0}, isDeviceProvisioned()Z

    move-result v28

    if-eqz v28, :cond_60d

    if-nez v22, :cond_60d

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    move-result v28

    if-nez v28, :cond_60d

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleMultiWindowTray()Z

    .line 1196
    :cond_60d
    const/16 v21, 0x1

    goto/16 :goto_8b

    .line 1201
    :cond_611
    const/16 v28, 0x136

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_63d

    .line 1202
    const/16 v21, 0x1

    .line 1204
    .local v21, "keyIntercept":Z
    invoke-virtual/range {p0 .. p0}, isHMTSupportAndConnected()Z

    move-result v28

    if-nez v28, :cond_8b

    .line 1208
    if-nez v10, :cond_8b

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v28

    if-nez v28, :cond_8b

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, launchingGamekey(Z)Z

    move-result v21

    goto/16 :goto_8b

    .line 1216
    .end local v21    # "keyIntercept":Z
    :cond_63d
    const/16 v28, 0x1a

    move/from16 v0, v20

    move/from16 v1, v28

    if-ne v0, v1, :cond_24c

    .line 1217
    invoke-virtual/range {p0 .. p0}, isSideSyncPresentationRunning()Z

    move-result v28

    if-eqz v28, :cond_24c

    .line 1218
    invoke-virtual/range {p0 .. p1}, sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v28

    if-eqz v28, :cond_24c

    .line 1219
    const/16 v21, 0x1

    goto/16 :goto_8b
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)Z
    .registers 15
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1238
    const/high16 v9, 0x20000000

    and-int/2addr v9, p2

    if-eqz v9, :cond_4f

    move v4, v7

    .line 1239
    .local v4, "interactive":Z
    :goto_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_51

    move v2, v7

    .line 1240
    .local v2, "down":Z
    :goto_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 1244
    .local v6, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5d

    iget-object v9, p0, mBlockedHwKeys:Ljava/util/Map;

    if-eqz v9, :cond_5d

    iget-object v9, p0, mBlockedHwKeys:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5d

    .line 1246
    const/4 v5, 0x1

    .line 1247
    .local v5, "isAllowed":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_58

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    if-nez v9, :cond_58

    .line 1249
    iget-object v9, p0, mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v9, :cond_53

    iget-object v9, p0, mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v9

    if-eqz v9, :cond_53

    .line 1250
    invoke-direct {p0, v6, v8}, isHardwareKeyAllowed(IZ)Z

    move-result v5

    .line 1251
    const/16 v9, 0x18

    if-ne v6, v9, :cond_4c

    iget-boolean v9, p0, mSealedModeReEnableVolumeUpKey:Z

    if-eqz v9, :cond_4c

    .line 1252
    const/4 v5, 0x1

    .line 1263
    :cond_4c
    :goto_4c
    if-nez v5, :cond_5d

    .line 1341
    .end local v5    # "isAllowed":Z
    :cond_4e
    :goto_4e
    return v7

    .end local v2    # "down":Z
    .end local v4    # "interactive":Z
    .end local v6    # "keyCode":I
    :cond_4f
    move v4, v8

    .line 1238
    goto :goto_8

    .restart local v4    # "interactive":Z
    :cond_51
    move v2, v8

    .line 1239
    goto :goto_f

    .line 1255
    .restart local v2    # "down":Z
    .restart local v5    # "isAllowed":Z
    .restart local v6    # "keyCode":I
    :cond_53
    invoke-direct {p0, v6, v7}, isHardwareKeyAllowed(IZ)Z

    move-result v5

    goto :goto_4c

    .line 1261
    :cond_58
    invoke-direct {p0, v6, v8}, isHardwareKeyAllowed(IZ)Z

    move-result v5

    goto :goto_4c

    .line 1270
    .end local v5    # "isAllowed":Z
    :cond_5d
    iget-object v9, p0, mCombinationKeyManager:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    invoke-virtual {v9, p1, p2}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V

    .line 1273
    invoke-virtual {p0, v6, v2, v4}, processTorchlight(IZZ)V

    .line 1276
    invoke-virtual {p0}, isEnableAccessControl()Z

    move-result v9

    if-eqz v9, :cond_7a

    const/4 v9, 0x3

    if-eq v6, v9, :cond_7a

    .line 1277
    sget-boolean v8, SAFE_DEBUG:Z

    if-eqz v8, :cond_4e

    const-string v8, "SamsungWindowManager"

    const-string v9, "interceptKeyTq : Key was blocked by access control"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 1282
    :cond_7a
    const/16 v9, 0x1a

    if-ne v6, v9, :cond_8c

    .line 1284
    invoke-direct {p0}, isMirrorLinkEnabled()Z

    move-result v9

    if-eqz v9, :cond_11a

    .line 1285
    const-string v8, "SamsungWindowManager"

    const-string v9, "isMirrorLinkEnabled() true"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 1291
    :cond_8c
    const/16 v9, 0x143

    if-ne v6, v9, :cond_bc

    .line 1292
    if-nez v2, :cond_4e

    .line 1293
    const-string v8, "SamsungWindowManager"

    const-string v9, "launch voice LPSD"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    iget-object v8, p0, mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_a6

    .line 1295
    iget-object v8, p0, mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1297
    :cond_a6
    iget-object v8, p0, mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v10, 0x1388

    invoke-virtual {v8, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1298
    const-string v1, "com.samsung.android.app.sounddetector.VOICE_WAKEUP"

    .line 1299
    .local v1, "SOUND_DETECTOR_WAKEUP":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1300
    .local v3, "intent":Landroid/content/Intent;
    iget-object v8, p0, mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_4e

    .line 1306
    .end local v1    # "SOUND_DETECTOR_WAKEUP":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_bc
    const/16 v9, 0x142

    if-ne v6, v9, :cond_11a

    .line 1307
    if-nez v2, :cond_4e

    .line 1308
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v8

    if-nez v8, :cond_d0

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_e5

    .line 1309
    :cond_d0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1310
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v8, "com.sec.android.intent.action.VOICE_WAKEUP_KEY"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    iget-object v8, p0, mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v10, "com.sec.android.permission.HANDLE_VOICE_WAKEUP_KEY"

    invoke-virtual {v8, v3, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_4e

    .line 1314
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_e5
    iget-boolean v8, p0, mIsCheckDrivingMode:Z

    if-eqz v8, :cond_103

    .line 1316
    const-string v8, "SamsungWindowManager"

    const-string v9, "launch drivelink"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1318
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v8, "com.sec.android.automotive.drivelink.ACTION_VOICE_WAKEUP"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1319
    iget-object v8, p0, mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_4e

    .line 1323
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_103
    const-string v8, "SamsungWindowManager"

    const-string v9, "launch voice command"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    const-string v0, "com.samsung.alwaysmicon.alwaysmiconservice.ACTION_VOICE_WAKEUP"

    .line 1325
    .local v0, "LAUNCH_SVOICE_WAKEUP":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1326
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v8, p0, mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_4e

    .line 1335
    .end local v0    # "LAUNCH_SVOICE_WAKEUP":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_11a
    invoke-virtual {p0}, isSideSyncPresentationRunning()Z

    move-result v9

    if-eqz v9, :cond_126

    invoke-virtual {p0, p1}, isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v9

    if-nez v9, :cond_4e

    :cond_126
    move v7, v8

    .line 1341
    goto/16 :goto_4e
.end method

.method public isActivitiesAvailable(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2316
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2317
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_16

    .line 2318
    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2320
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 2321
    const/4 v2, 0x1

    .line 2324
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public isAnyKeyMode()Z
    .registers 5

    .prologue
    .line 2425
    const/4 v0, 0x0

    .line 2426
    .local v0, "isAnyKeyMode":Z
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anykey_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_13

    .line 2427
    const/4 v0, 0x0

    .line 2431
    :goto_12
    return v0

    .line 2429
    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public isBackKeyConsumed()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1606
    iget-boolean v1, p0, mBackKeyConsumed:Z

    if-eqz v1, :cond_8

    .line 1607
    iput-boolean v0, p0, mBackKeyConsumed:Z

    .line 1608
    const/4 v0, 0x1

    .line 1610
    :cond_8
    return v0
.end method

.method public isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2754
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 2755
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    .line 2756
    .local v1, "flags":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_23

    move v0, v3

    .line 2757
    .local v0, "down":Z
    :goto_11
    iget-boolean v5, p0, mSideSyncSourcePresentationActived:Z

    if-eqz v5, :cond_25

    const/4 v5, 0x3

    if-eq v2, v5, :cond_25

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_25

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_25

    .line 2764
    :goto_22
    return v3

    .end local v0    # "down":Z
    :cond_23
    move v0, v4

    .line 2756
    goto :goto_11

    .restart local v0    # "down":Z
    :cond_25
    move v3, v4

    .line 2764
    goto :goto_22
.end method

.method public isBlockedPowerKeyByKeyTest(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 2869
    invoke-static {}, Landroid/os/FactoryTest;->needBlockingPowerKey()Z

    move-result v0

    if-nez v0, :cond_44

    if-eqz p1, :cond_51

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.factory.app.ui.UIHardKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.OneJigBinary.testitem.KeyTest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.simplefunctiontest.KeypadTest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.factory.app.spcselftest.SpcSelfTestMain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.latin.tdfnotifier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2876
    :cond_44
    sget-boolean v0, SAFE_DEBUG:Z

    if-eqz v0, :cond_4f

    const-string v0, "SamsungWindowManager"

    const-string v1, "Skip power key behavior by FactoryTest application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    :cond_4f
    const/4 v0, 0x1

    .line 2879
    :goto_50
    return v0

    :cond_51
    const/4 v0, 0x0

    goto :goto_50
.end method

.method public isCombinationKeyTriggered()Z
    .registers 2

    .prologue
    .line 1350
    iget-object v0, p0, mCombinationKeyManager:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->isCombinationKeyTriggered()Z

    move-result v0

    return v0
.end method

.method public isComponentAvailable(Landroid/content/ComponentName;)Z
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 2328
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2330
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_12

    const/16 v3, 0x80

    :try_start_b
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_13

    move-result-object v3

    if-eqz v3, :cond_12

    .line 2332
    const/4 v2, 0x1

    .line 2337
    :cond_12
    :goto_12
    return v2

    .line 2336
    :catch_13
    move-exception v0

    .line 2337
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_12
.end method

.method public isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2311
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public isDockHomeEnabled()Z
    .registers 2

    .prologue
    .line 833
    iget-boolean v0, p0, mIsDockHomeEnabled:Z

    return v0
.end method

.method public isDoubleTapOnHomeEnabled()Z
    .registers 2

    .prologue
    .line 1355
    iget v0, p0, mDoubleTapOnHomeBehavior:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isDoubleTapOnPowerEnabled()Z
    .registers 2

    .prologue
    .line 1398
    iget-boolean v0, p0, mPowerDoubleBehavior:Z

    return v0
.end method

.method public isEasyModeEnabled()Z
    .registers 2

    .prologue
    .line 829
    iget-boolean v0, p0, mIsEasyModeEnabled:Z

    return v0
.end method

.method public isEnableAccessControl()Z
    .registers 2

    .prologue
    .line 817
    iget-boolean v0, p0, mIsEnabledAccessControl:Z

    return v0
.end method

.method public isHMTSupportAndConnected()Z
    .registers 2

    .prologue
    .line 3161
    const/4 v0, 0x0

    return v0
.end method

.method public isKidsModeEnabled()Z
    .registers 2

    .prologue
    .line 825
    iget-boolean v0, p0, mIsKidsModeEnabled:Z

    return v0
.end method

.method public isLiveDemo()Z
    .registers 2

    .prologue
    .line 3166
    iget-boolean v0, p0, mIsLiveDemo:Z

    return v0
.end method

.method public isMenuConsumed()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1545
    iget-boolean v1, p0, mMenuConsumed:Z

    if-eqz v1, :cond_8

    .line 1546
    iput-boolean v0, p0, mMenuConsumed:Z

    .line 1547
    const/4 v0, 0x1

    .line 1549
    :cond_8
    return v0
.end method

.method public isOneTouchReportEnabled()Z
    .registers 18

    .prologue
    .line 1999
    const-string v15, "go.police.report"

    .line 2000
    .local v15, "oneTouchReportPackageName":Ljava/lang/String;
    const-string v14, "com.android.vending"

    .line 2002
    .local v14, "oneTouchReportInstaller":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2003
    .local v13, "installerPackage":Ljava/lang/String;
    const/4 v12, 0x0

    .line 2005
    .local v12, "enabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 2006
    const/4 v2, 0x0

    .line 2051
    :goto_11
    return v2

    .line 2010
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 2012
    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_1a
    const-string v2, "go.police.report"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2014
    const-string v2, "com.android.vending"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_27} :catch_2c

    move-result v2

    if-nez v2, :cond_2f

    .line 2016
    const/4 v2, 0x0

    goto :goto_11

    .line 2018
    :catch_2c
    move-exception v11

    .line 2020
    .local v11, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_11

    .line 2024
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2f
    const-string v9, "content://go.police.provider.report"

    .line 2025
    .local v9, "customerAgreementPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2027
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_67

    .line 2028
    const-string v2, "content://go.police.provider.report"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2030
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_62

    :try_start_4b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 2031
    const-string v2, "customer_agreement"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2033
    .local v8, "customerAgreementColumn":I
    const/4 v2, -0x1

    if-eq v8, v2, :cond_62

    .line 2034
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5d} :catch_6b
    .catchall {:try_start_4b .. :try_end_5d} :catchall_75

    move-result v10

    .line 2035
    .local v10, "customerAgreementValue":I
    const/4 v2, 0x1

    if-ne v2, v10, :cond_69

    const/4 v12, 0x1

    .line 2045
    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :cond_62
    :goto_62
    if-eqz v7, :cond_67

    .line 2046
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "c":Landroid/database/Cursor;
    :cond_67
    :goto_67
    move v2, v12

    .line 2051
    goto :goto_11

    .line 2035
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "customerAgreementColumn":I
    .restart local v10    # "customerAgreementValue":I
    :cond_69
    const/4 v12, 0x0

    goto :goto_62

    .line 2042
    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :catch_6b
    move-exception v11

    .line 2043
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_6c
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_75

    .line 2045
    if-eqz v7, :cond_67

    .line 2046
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_67

    .line 2045
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_75
    move-exception v2

    if-eqz v7, :cond_7b

    .line 2046
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7b
    throw v2
.end method

.method public isPackageAvailable(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2342
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2344
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_12

    const/16 v3, 0x80

    :try_start_b
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_e} :catch_13

    move-result-object v3

    if-eqz v3, :cond_12

    .line 2345
    const/4 v2, 0x1

    .line 2350
    :cond_12
    :goto_12
    return v2

    .line 2349
    :catch_13
    move-exception v0

    .line 2350
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_12
.end method

.method public isRecentConsumed()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1587
    iget-boolean v1, p0, mRecentConsumed:Z

    if-eqz v1, :cond_8

    .line 1588
    iput-boolean v0, p0, mRecentConsumed:Z

    .line 1589
    const/4 v0, 0x1

    .line 1591
    :cond_8
    return v0
.end method

.method public isRingingOrOffhook()Z
    .registers 2

    .prologue
    .line 3014
    iget-boolean v0, p0, mIsRingingOrOffhook:Z

    return v0
.end method

.method public isSFinderLaunchable()Z
    .registers 2

    .prologue
    .line 3003
    const/4 v0, 0x0

    return v0
.end method

.method public isSafetyAssuranceEnabled()Z
    .registers 2

    .prologue
    .line 809
    iget-boolean v0, p0, mIsSafetyAssuranceEnabled:Z

    return v0
.end method

.method public isShowOrHideRecentAppsAllowedByKNOX()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2588
    iget-object v3, p0, mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    if-eqz v3, :cond_f

    iget-object v3, p0, mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2602
    :cond_e
    :goto_e
    return v1

    .line 2593
    :cond_f
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 2594
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 2595
    .local v0, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_23

    .line 2596
    invoke-virtual {v0, v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v3

    if-eqz v3, :cond_e

    .end local v0    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_23
    move v1, v2

    .line 2602
    goto :goto_e
.end method

.method public isSideSyncPresentationRunning()Z
    .registers 2

    .prologue
    .line 2783
    iget-boolean v0, p0, mSideSyncSourcePresentationActived:Z

    return v0
.end method

.method public isTphoneRelaxMode()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2536
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSktTphoneEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "skt_phone20_relax_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_17

    .line 2539
    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public isTripleTapOnHomeEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1380
    invoke-virtual {p0}, isDeviceProvisioned()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isVzwSetupWizardRunning(Z)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1381
    const-string v1, "SamsungWindowManager"

    const-string v2, "Home Triple Tap block when Verizon Setup Wizard Running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :cond_12
    :goto_12
    return v0

    :cond_13
    iget v1, p0, mTripleTapOnHomeBehavior:I

    if-nez v1, :cond_1d

    invoke-virtual {p0}, isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_12

    :cond_1d
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public isTripleTapOnPowerEnabled()Z
    .registers 2

    .prologue
    .line 1428
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSafetyCare()Z

    move-result v0

    return v0
.end method

.method public isUseAccessControl()Z
    .registers 2

    .prologue
    .line 813
    iget-boolean v0, p0, mIsUseAccessControl:Z

    return v0
.end method

.method public isUserSetupComplete()Z
    .registers 2

    .prologue
    .line 821
    iget-boolean v0, p0, mUserSetupComplete:Z

    return v0
.end method

.method public isUvsOrientationRequested()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2789
    const-string v1, "LGT"

    iget-object v2, p0, EnableLinuxCOMMONAPI4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2792
    :cond_b
    :goto_b
    return v0

    :cond_c
    iget v1, p0, mUvsOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    const/4 v0, 0x1

    goto :goto_b
.end method

.method isVoIPRinging()Z
    .registers 6

    .prologue
    .line 3029
    const/4 v1, 0x0

    .line 3031
    .local v1, "isVoIPRinging":Z
    :try_start_1
    invoke-static {}, getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 3032
    .local v2, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_c

    .line 3033
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    .line 3040
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :goto_b
    return v1

    .line 3035
    .restart local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_c
    const-string v3, "SamsungWindowManager"

    const-string v4, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_14

    goto :goto_b

    .line 3037
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_14
    move-exception v0

    .line 3038
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public launchFingerPrint()V
    .registers 5

    .prologue
    .line 2356
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportFingerPrint()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2357
    const-string v1, "SamsungWindowManager"

    const-string v2, "launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    :try_start_d
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mFingerPrintIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_16
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_16} :catch_17

    .line 2366
    :goto_16
    return-void

    .line 2360
    :catch_17
    move-exception v0

    .line 2361
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "SamsungWindowManager"

    const-string v2, "No activity to handle fingerprint."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 2364
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_20
    const-string v1, "SamsungWindowManager"

    const-string v2, "Device is not supported, not launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public launchHomeDuringVzwSetup()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1444
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1445
    const-string v1, "persist.sys.enablehomekey"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1446
    .local v0, "isHomeKeyEnabled":Z
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Verizon Setup Wizard Running, launch home key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    .end local v0    # "isHomeKeyEnabled":Z
    :cond_25
    return v0
.end method

.method public launchSFinderIfPossible()Z
    .registers 2

    .prologue
    .line 3008
    iget-object v0, p0, mSFinderLaunchPolicy:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    # invokes: Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->launch()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->access$900(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z

    move-result v0

    return v0
.end method

.method public launchVoiceCommand()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 1359
    invoke-virtual {p0}, isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_54

    iget-boolean v3, p0, mAvailableVoiceCommand:Z

    if-eqz v3, :cond_54

    .line 1360
    const-string v3, "SamsungWindowManager"

    const-string v4, "launch voicecommand"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    iget-object v3, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v4, "homekey"

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 1362
    iget-object v3, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v1

    .line 1363
    .local v1, "isSecureLock":Z
    :goto_27
    iget-object v3, p0, mVoiceCommandIntent:Landroid/content/Intent;

    const-string v4, "isSecure"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1364
    iget-object v3, p0, mVoiceCommandIntent:Landroid/content/Intent;

    const-string v4, "AUTO_LISTEN"

    if-nez v1, :cond_35

    const/4 v2, 0x1

    :cond_35
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1365
    iget-object v2, p0, mVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1367
    :try_start_3f
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mVoiceCommandIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_48
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3f .. :try_end_48} :catch_4b

    .line 1374
    .end local v1    # "isSecureLock":Z
    :goto_48
    return-void

    :cond_49
    move v1, v2

    .line 1362
    goto :goto_27

    .line 1368
    .restart local v1    # "isSecureLock":Z
    :catch_4b
    move-exception v0

    .line 1369
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch voicecommand."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    .line 1372
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "isSecureLock":Z
    :cond_54
    const-string v2, "SamsungWindowManager"

    const-string v3, "Device is not provisioned or not available voice command."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48
.end method

.method public launchingGamekey(Z)Z
    .registers 11
    .param p1, "keyguardOn"    # Z

    .prologue
    const/4 v5, 0x0

    .line 3072
    invoke-virtual {p0}, endCallByGamekey()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3073
    const/4 v5, 0x1

    .line 3108
    :cond_8
    :goto_8
    return v5

    .line 3074
    :cond_9
    if-nez p1, :cond_8

    .line 3079
    const-string v1, "com.sec.game.sga"

    .line 3080
    .local v1, "gamePkg":Ljava/lang/String;
    const-string v4, "com.sec.android.app.samsungapps"

    .line 3081
    .local v4, "samsungAppsPkg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "samsungapps://ProductDetail/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3083
    .local v3, "pkgUri":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3086
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_23
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_2d} :catch_34

    move-result-object v2

    .line 3091
    :cond_2e
    :goto_2e
    if-eqz v2, :cond_52

    .line 3092
    invoke-direct {p0, v1}, startSGA(Ljava/lang/String;)V

    goto :goto_8

    .line 3087
    :catch_34
    move-exception v0

    .line 3088
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, SAFE_DEBUG:Z

    if-eqz v6, :cond_2e

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist. so try to download the SGA apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 3095
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_52
    :try_start_52
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_52 .. :try_end_5c} :catch_6e

    move-result-object v2

    .line 3100
    :cond_5d
    :goto_5d
    if-eqz v2, :cond_8c

    .line 3101
    sget-boolean v6, SAFE_DEBUG:Z

    if-eqz v6, :cond_6a

    const-string v6, "SamsungWindowManager"

    const-string v7, "SGA is not installed. so you are moving to Samsung apps."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    :cond_6a
    invoke-virtual {p0, v3}, downloadForSGA(Ljava/lang/String;)V

    goto :goto_8

    .line 3096
    :catch_6e
    move-exception v0

    .line 3097
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, SAFE_DEBUG:Z

    if-eqz v6, :cond_5d

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist. so try to download the SGA apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 3104
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8c
    sget-boolean v6, SAFE_DEBUG:Z

    if-eqz v6, :cond_97

    const-string v6, "SamsungWindowManager"

    const-string v7, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    :cond_97
    invoke-virtual {p0}, downloadForSamsungApps()V

    goto/16 :goto_8
.end method

.method public notifyCoverSwitchChanged(JZ)V
    .registers 9
    .param p1, "whenNanos"    # J
    .param p3, "coverOpen"    # Z

    .prologue
    .line 2161
    iget-boolean v1, p0, mCoverNoteEnabled:Z

    if-nez v1, :cond_5

    .line 2170
    :cond_4
    :goto_4
    return-void

    .line 2164
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_4

    if-nez p3, :cond_4

    iget-boolean v1, p0, mHasDaynotePackage:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2166
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.daynote"

    const-string v2, "com.sec.android.daynote.DayNoteActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2167
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2168
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_4
.end method

.method public notifyPenSwitchChanged(JZ)V
    .registers 19
    .param p1, "whenNanos"    # J
    .param p3, "penInsert"    # Z

    .prologue
    .line 2057
    if-eqz p3, :cond_37

    const/4 v4, 0x1

    .line 2058
    .local v4, "newPenState":I
    :goto_3
    const/4 v5, 0x1

    .line 2059
    .local v5, "playSound":Z
    iget-object v9, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v6

    .line 2060
    .local v6, "screenOn":Z
    sget-boolean v9, SAFE_DEBUG:Z

    if-eqz v9, :cond_32

    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newPenState : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mPenState : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, mPenState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    :cond_32
    iget v9, p0, mPenState:I

    if-ne v4, v9, :cond_39

    .line 2125
    :goto_36
    return-void

    .line 2057
    .end local v4    # "newPenState":I
    .end local v5    # "playSound":Z
    .end local v6    # "screenOn":Z
    :cond_37
    const/4 v4, 0x0

    goto :goto_3

    .line 2063
    .restart local v4    # "newPenState":I
    .restart local v5    # "playSound":Z
    .restart local v6    # "screenOn":Z
    :cond_39
    iget v9, p0, mPenState:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3f

    .line 2064
    const/4 v5, 0x0

    .line 2066
    :cond_3f
    sget-boolean v9, SAFE_DEBUG:Z

    if-eqz v9, :cond_65

    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "playSound : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", screenOn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    :cond_65
    iput v4, p0, mPenState:I

    .line 2070
    const/16 v9, 0x2c

    new-array v2, v9, [B

    fill-array-data v2, :array_156

    .line 2080
    .local v2, "attach_noti_ivt":[B
    const/16 v9, 0x12

    new-array v3, v9, [B

    fill-array-data v3, :array_170

    .line 2087
    .local v3, "detach_noti_ivt":[B
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "pen_detachment_notification"

    const/4 v11, -0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 2090
    .local v7, "sound":Ljava/lang/String;
    if-eqz v7, :cond_103

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2092
    .local v8, "soundPath":[Ljava/lang/String;
    :goto_8a
    if-eqz p3, :cond_105

    .line 2094
    if-eqz v5, :cond_9a

    if-eqz v7, :cond_9a

    :try_start_90
    array-length v9, v8

    const/4 v10, 0x1

    if-le v9, v10, :cond_9a

    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-direct {p0, v9}, playSound(Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_9a} :catch_152

    .line 2097
    :cond_9a
    :goto_9a
    iget-boolean v9, p0, mPenNotifyVibrationChecked:Z

    if-eqz v9, :cond_a9

    .line 2098
    iget-object v9, p0, mVibrator:Landroid/os/SystemVibrator;

    iget-object v10, p0, mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v10}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v10

    invoke-virtual {v9, v2, v10}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 2118
    :cond_a9
    :goto_a9
    iget-object v9, p0, mPenInsertedIntent:Landroid/content/Intent;

    const-string v10, "penInsert"

    move/from16 v0, p3

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2119
    iget-object v9, p0, mPenInsertedIntent:Landroid/content/Intent;

    const-string v10, "isScreenOn"

    invoke-virtual {v9, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2120
    iget-object v9, p0, mPenInsertedIntent:Landroid/content/Intent;

    const-string v10, "isKeyguardLocked"

    iget-object v11, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2122
    iget-object v10, p0, mPenInsertedIntent:Landroid/content/Intent;

    const-string v11, "isBoot"

    const-wide/16 v12, 0x0

    cmp-long v9, p1, v12

    if-nez v9, :cond_14e

    const/4 v9, 0x1

    :goto_d1
    invoke-virtual {v10, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2123
    sget-boolean v9, SAFE_DEBUG:Z

    if-eqz v9, :cond_f8

    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pen = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , broadcasted."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    :cond_f8
    iget-object v9, p0, mContext:Landroid/content/Context;

    iget-object v10, p0, mPenInsertedIntent:Landroid/content/Intent;

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_36

    .line 2090
    .end local v8    # "soundPath":[Ljava/lang/String;
    :cond_103
    const/4 v8, 0x0

    goto :goto_8a

    .line 2100
    .restart local v8    # "soundPath":[Ljava/lang/String;
    :cond_105
    iget-object v9, p0, mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v9

    if-eqz v9, :cond_136

    .line 2101
    iget-object v9, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v12, 0x4

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/PowerManager;->wakeUp(JI)V

    .line 2111
    :goto_117
    if-eqz v5, :cond_125

    if-eqz v7, :cond_125

    :try_start_11b
    array-length v9, v8

    const/4 v10, 0x1

    if-le v9, v10, :cond_125

    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-direct {p0, v9}, playSound(Ljava/lang/String;)V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_125} :catch_150

    .line 2114
    :cond_125
    :goto_125
    iget-boolean v9, p0, mPenNotifyVibrationChecked:Z

    if-eqz v9, :cond_a9

    .line 2115
    iget-object v9, p0, mVibrator:Landroid/os/SystemVibrator;

    iget-object v10, p0, mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v10}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v10

    invoke-virtual {v9, v3, v10}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    goto/16 :goto_a9

    .line 2103
    :cond_136
    if-eqz v6, :cond_143

    .line 2104
    iget-object v9, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_117

    .line 2106
    :cond_143
    iget-object v9, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v12, 0x4

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/PowerManager;->wakeUp(JI)V

    goto :goto_117

    .line 2122
    :cond_14e
    const/4 v9, 0x0

    goto :goto_d1

    .line 2112
    :catch_150
    move-exception v9

    goto :goto_125

    .line 2095
    :catch_152
    move-exception v9

    goto/16 :goto_9a

    .line 2070
    nop

    :array_156
    .array-data 1
        0x1t
        0x0t
        0x3t
        0x0t
        0x24t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        0x15t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0xft
        -0x20t
        0x2t
        -0x1et
        0x0t
        -0x38t
        -0x1t
        0x20t
        0x1t
        0x0t
        0x0t
        0x5ft
        0x0t
        0x0t
        0x42t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x1et
        0x0t
    .end array-data

    .line 2080
    :array_170
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x3t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x71t
    .end array-data
.end method

.method public onSystemReady(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .registers 4
    .param p1, "keyguardDelegate"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 519
    iput-object p1, p0, mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    .line 521
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    iput-boolean v0, p0, mHasPermanentMenuKey:Z

    .line 522
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, mIsSupportManualScreenPinning:Z

    .line 523
    iget-object v0, p0, mCombinationKeyManager:Lcom/android/internal/policy/impl/sec/CombinationKeyManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->onSystemReady()V

    .line 525
    return-void
.end method

.method public performCPUBoost()V
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 2236
    sget-object v0, mCpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1e

    .line 2237
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "WAKEUP_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, mCpuBooster:Landroid/os/DVFSHelper;

    .line 2238
    sget-object v0, mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1e

    .line 2239
    sget-object v0, mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "Device_wakeup"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2242
    :cond_1e
    sget-object v0, mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_29

    .line 2244
    :try_start_22
    sget-object v0, mCpuBooster:Landroid/os/DVFSHelper;

    sget v1, BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_6b

    .line 2251
    :cond_29
    :goto_29
    sget-object v0, mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_58

    .line 2252
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "WAKEUP_CORE_BOOSTER"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 2253
    sget-object v0, mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_58

    .line 2254
    sget-object v0, mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .line 2255
    .local v6, "coreNumTable":[I
    if-eqz v6, :cond_58

    array-length v0, v6

    if-lez v0, :cond_58

    .line 2256
    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_58

    .line 2257
    sget-object v0, mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 2261
    .end local v6    # "coreNumTable":[I
    :cond_58
    sget-object v0, mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_6a

    .line 2263
    :try_start_5c
    const-string v0, "SamsungWindowManager"

    const-string v1, "mCoreNumLockHelper.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    sget-object v0, mCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget v1, BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_6a} :catch_77

    .line 2270
    :cond_6a
    :goto_6a
    return-void

    .line 2245
    :catch_6b
    move-exception v7

    .line 2246
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "SamsungWindowManager"

    const-string v1, "mCpuBooster.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29

    .line 2265
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_77
    move-exception v7

    .line 2266
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "SamsungWindowManager"

    const-string v1, "mCoreNumLockHelper.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6a
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .registers 16
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    .line 1860
    iget-object v8, p0, mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v8}, Landroid/os/SystemVibrator;->hasVibrator()Z

    move-result v8

    if-nez v8, :cond_a

    .line 1861
    const/4 v8, 0x0

    .line 1993
    :goto_9
    return v8

    .line 1864
    :cond_a
    const/4 v2, 0x0

    .line 1866
    .local v2, "hapticsDisabledByPowerSavingMode":Z
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "haptic_feedback_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-nez v8, :cond_fa

    const/4 v1, 0x1

    .line 1870
    .local v1, "hapticsDisabled":Z
    :goto_1c
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isPowerSavingMode()Z

    move-result v8

    if-eqz v8, :cond_100

    .line 1871
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "psm_switch"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_fd

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "powersaving_switch"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_fd

    const/4 v6, 0x1

    .line 1880
    .local v6, "powerSavingModeEnabled":Z
    :goto_45
    if-eqz v6, :cond_aa

    .line 1881
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "psm_haptic_feedback"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_116

    const/4 v7, 0x1

    .line 1884
    .local v7, "turnOffHapticFeedbackEnabled":Z
    :goto_59
    if-eqz v7, :cond_aa

    .line 1885
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "psm_auto_turn_on"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_119

    const/4 v5, 0x1

    .line 1888
    .local v5, "powerSavingAutoModeEnabled":Z
    :goto_6d
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "isLowLevel"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_11c

    const/4 v3, 0x1

    .line 1890
    .local v3, "isLowLevelBattery":Z
    :goto_7f
    sget-boolean v8, SAFE_DEBUG:Z

    if-eqz v8, :cond_a5

    .line 1891
    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Check haptic disabled policy : powerSavingAutoModeEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isLowLevelBattery = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    :cond_a5
    if-eqz v5, :cond_11f

    .line 1896
    if-eqz v3, :cond_aa

    .line 1897
    const/4 v2, 0x1

    .line 1912
    .end local v3    # "isLowLevelBattery":Z
    .end local v5    # "powerSavingAutoModeEnabled":Z
    .end local v7    # "turnOffHapticFeedbackEnabled":Z
    :cond_aa
    :goto_aa
    const/4 v0, 0x0

    .line 1916
    .local v0, "emergencyModeEnabled":Z
    if-nez p3, :cond_121

    if-eqz v6, :cond_b1

    if-nez v2, :cond_bd

    :cond_b1
    if-nez v1, :cond_bd

    if-nez v0, :cond_bd

    iget-object v8, p0, mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v8

    if-eqz v8, :cond_121

    .line 1919
    :cond_bd
    sget-boolean v8, SAFE_DEBUG:Z

    if-eqz v8, :cond_f7

    .line 1920
    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "haptic disabled by policy : hapticsDisabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " EmergencyModeEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " PowerSavingModeEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " TurnOffHapticFeedbackEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    :cond_f7
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 1866
    .end local v0    # "emergencyModeEnabled":Z
    .end local v1    # "hapticsDisabled":Z
    .end local v6    # "powerSavingModeEnabled":Z
    :cond_fa
    const/4 v1, 0x0

    goto/16 :goto_1c

    .line 1871
    .restart local v1    # "hapticsDisabled":Z
    :cond_fd
    const/4 v6, 0x0

    goto/16 :goto_45

    .line 1876
    :cond_100
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "psm_switch"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_114

    const/4 v6, 0x1

    .restart local v6    # "powerSavingModeEnabled":Z
    :goto_112
    goto/16 :goto_45

    .end local v6    # "powerSavingModeEnabled":Z
    :cond_114
    const/4 v6, 0x0

    goto :goto_112

    .line 1881
    .restart local v6    # "powerSavingModeEnabled":Z
    :cond_116
    const/4 v7, 0x0

    goto/16 :goto_59

    .line 1885
    .restart local v7    # "turnOffHapticFeedbackEnabled":Z
    :cond_119
    const/4 v5, 0x0

    goto/16 :goto_6d

    .line 1888
    .restart local v5    # "powerSavingAutoModeEnabled":Z
    :cond_11c
    const/4 v3, 0x0

    goto/16 :goto_7f

    .line 1900
    .restart local v3    # "isLowLevelBattery":Z
    :cond_11f
    const/4 v2, 0x1

    goto :goto_aa

    .line 1928
    .end local v3    # "isLowLevelBattery":Z
    .end local v5    # "powerSavingAutoModeEnabled":Z
    .end local v7    # "turnOffHapticFeedbackEnabled":Z
    .restart local v0    # "emergencyModeEnabled":Z
    :cond_121
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v8

    if-eqz v8, :cond_14b

    .line 1929
    sparse-switch p2, :sswitch_data_18e

    .line 1940
    const/16 v8, 0x9

    if-lt p2, v8, :cond_148

    const/16 v8, 0x16

    if-gt p2, v8, :cond_148

    .line 1942
    iget-object v8, p0, mVibrator:Landroid/os/SystemVibrator;

    sget-object v9, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v8, p2, v9}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 1944
    const/4 v8, 0x1

    goto/16 :goto_9

    .line 1935
    :sswitch_13c
    iget-object v8, p0, mVibrator:Landroid/os/SystemVibrator;

    const/16 v9, 0x9

    sget-object v10, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v8, v9, v10}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 1937
    const/4 v8, 0x1

    goto/16 :goto_9

    .line 1947
    :cond_148
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 1949
    :cond_14b
    const/4 v8, 0x1

    new-array v4, v8, [J

    .line 1950
    .local v4, "pattern":[J
    sparse-switch p2, :sswitch_data_1a4

    .line 1983
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 1956
    :sswitch_154
    const/4 v8, 0x0

    const-wide/16 v10, 0x32

    aput-wide v10, v4, v8

    .line 1985
    :goto_159
    array-length v8, v4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_186

    .line 1987
    iget-object v8, p0, mVibrator:Landroid/os/SystemVibrator;

    const/4 v9, 0x0

    aget-wide v10, v4, v9

    invoke-virtual {v8, v10, v11}, Landroid/os/SystemVibrator;->vibrate(J)V

    .line 1993
    :goto_165
    const/4 v8, 0x1

    goto/16 :goto_9

    .line 1961
    :sswitch_168
    const/4 v8, 0x0

    const-wide/16 v10, 0x32

    aput-wide v10, v4, v8

    goto :goto_159

    .line 1965
    :sswitch_16e
    const/4 v8, 0x0

    const-wide/16 v10, 0x64

    aput-wide v10, v4, v8

    goto :goto_159

    .line 1969
    :sswitch_174
    const/4 v8, 0x0

    const-wide/16 v10, 0x1f4

    aput-wide v10, v4, v8

    goto :goto_159

    .line 1976
    :sswitch_17a
    const/4 v8, 0x0

    const-wide/16 v10, 0x5dc

    aput-wide v10, v4, v8

    goto :goto_159

    .line 1980
    :sswitch_180
    const/4 v8, 0x0

    const-wide/16 v10, 0x32

    aput-wide v10, v4, v8

    goto :goto_159

    .line 1990
    :cond_186
    iget-object v8, p0, mVibrator:Landroid/os/SystemVibrator;

    const/4 v9, -0x1

    invoke-virtual {v8, v4, v9}, Landroid/os/SystemVibrator;->vibrate([JI)V

    goto :goto_165

    .line 1929
    nop

    :sswitch_data_18e
    .sparse-switch
        0x0 -> :sswitch_13c
        0x1 -> :sswitch_13c
        0x3 -> :sswitch_13c
        0x2710 -> :sswitch_13c
        0x2711 -> :sswitch_13c
    .end sparse-switch

    .line 1950
    :sswitch_data_1a4
    .sparse-switch
        0x0 -> :sswitch_154
        0x1 -> :sswitch_154
        0x3 -> :sswitch_154
        0x9 -> :sswitch_168
        0xa -> :sswitch_16e
        0xc -> :sswitch_174
        0xd -> :sswitch_17a
        0xe -> :sswitch_180
        0x10 -> :sswitch_17a
        0x11 -> :sswitch_17a
        0x12 -> :sswitch_17a
        0x2710 -> :sswitch_154
        0x2711 -> :sswitch_154
    .end sparse-switch
.end method

.method public performSystemKeyFeedback(Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xe

    const/4 v2, 0x0

    .line 1814
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v0, "SPC_Remote_Controller"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1841
    :cond_21
    :goto_21
    return-void

    .line 1820
    :cond_22
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_58

    goto :goto_21

    .line 1824
    :sswitch_2a
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasHardMenuBackKey()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, isHMTSupportAndConnected()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1826
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1827
    invoke-virtual {p0, v4, v3, v2}, performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1829
    :cond_3f
    invoke-direct {p0}, playSoundEffect()V

    goto :goto_21

    .line 1833
    :sswitch_43
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1834
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1835
    invoke-virtual {p0, v4, v3, v2}, performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1837
    :cond_54
    invoke-direct {p0}, playSoundEffect()V

    goto :goto_21

    .line 1820
    :sswitch_data_58
    .sparse-switch
        0x4 -> :sswitch_2a
        0x52 -> :sswitch_2a
        0x54 -> :sswitch_43
        0xbb -> :sswitch_2a
    .end sparse-switch
.end method

.method public processTorchlight(IZZ)V
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "interactive"    # Z

    .prologue
    .line 2438
    iget-boolean v0, p0, mTorchlightEnabled:Z

    if-eqz v0, :cond_1e

    if-nez p3, :cond_1e

    .line 2439
    const/16 v0, 0x18

    if-ne p1, v0, :cond_27

    .line 2440
    if-eqz p2, :cond_1f

    .line 2441
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2442
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2454
    :cond_1e
    :goto_1e
    return-void

    .line 2444
    :cond_1f
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1e

    .line 2447
    :cond_27
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2448
    iget-boolean v0, p0, mTorchlightOn:Z

    if-eqz v0, :cond_1e

    .line 2449
    const/4 v0, 0x0

    invoke-direct {p0, v0}, TorchModeFlashSet(I)V

    .line 2450
    iget-object v0, p0, mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1e
.end method

.method public sendBroadcastForAccessibility()V
    .registers 5

    .prologue
    .line 1388
    const-string v1, "SamsungWindowManager"

    const-string v2, "sendBroadcastForAccessibility() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.HOME_TRIPLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1391
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.permission.HOME_TRIPLE_CLICK"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1393
    return-void
.end method

.method public sendBroadcastForSafetyAssurance()V
    .registers 4

    .prologue
    .line 1432
    const-string v1, "SamsungWindowManager"

    const-string v2, "sendBroadcastForSafetyAssurance() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    invoke-virtual {p0}, isSafetyAssuranceEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1435
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SAFETY_MESSAGE_TRIGGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1436
    .local v0, "safetyMessage":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1437
    const-string v1, "SamsungWindowManager"

    const-string v2, "Safety mesage broadcasted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    .end local v0    # "safetyMessage":Landroid/content/Intent;
    :cond_22
    return-void
.end method

.method public sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2768
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_54

    .line 2770
    sget-boolean v1, SAFE_DEBUG:Z

    if-eqz v1, :cond_2a

    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System key send to sidesync.source keycode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2772
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.sidesync.source"

    const-string v2, "com.sec.android.sidesync.source.WimpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2773
    const-string v1, "com.sec.android.intent.action.SYSTEM_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2774
    const-string v1, "KEYCODE"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2775
    const-string v1, "ACTION"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2776
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2777
    const/4 v1, 0x1

    .line 2779
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_53
    return v1

    :cond_54
    const/4 v1, 0x0

    goto :goto_53
.end method

.method public setCurrentUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 2575
    sput p1, mCurrentUser:I

    .line 2576
    return-void
.end method

.method public setFingerPrintPending()V
    .registers 2

    .prologue
    .line 2369
    const/4 v0, 0x0

    iput-boolean v0, p0, mFingerPrintPending:Z

    .line 2370
    return-void
.end method

.method public setRotationLw(I)V
    .registers 8
    .param p1, "rotation"    # I

    .prologue
    .line 2212
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRotationLw() : rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-boolean v0, p0, WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_27

    .line 2216
    invoke-direct {p0, p1}, updateWacomOffset(I)V

    .line 2221
    :cond_27
    sget-object v0, cpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_41

    .line 2222
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, cpuBooster:Landroid/os/DVFSHelper;

    .line 2223
    sget-object v0, cpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "PhoneWindowManager_rotation"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2225
    :cond_41
    sget-object v0, cpuBooster:Landroid/os/DVFSHelper;

    sget v1, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 2226
    sget-object v0, cpuBooster:Landroid/os/DVFSHelper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2228
    return-void
.end method

.method public setSealedModeReEnableVolumeUpKey(Z)V
    .registers 2
    .param p1, "sealedModeReEnableVolumeUpKey"    # Z

    .prologue
    .line 2672
    iput-boolean p1, p0, mSealedModeReEnableVolumeUpKey:Z

    .line 2673
    return-void
.end method

.method public showBottomKeyPanel(Z)V
    .registers 7
    .param p1, "show"    # Z

    .prologue
    .line 2741
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easybottompanel"

    const-string v4, "com.sec.android.easybottompanel.EasyBottomPanelService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYBOTTOMPANEL_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 2743
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_22

    const-string v3, "Show"

    :goto_18
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2745
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2749
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_21
    return-void

    .line 2743
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_22
    const-string v3, "Hide"
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_18

    .line 2746
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_25
    move-exception v1

    .line 2747
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception showBottomKeyPanelState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public showRecentApps(Z)Z
    .registers 3
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 2544
    invoke-virtual {p0}, isShowOrHideRecentAppsAllowedByKNOX()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2545
    const/4 v0, 0x1

    .line 2547
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public systemBooted()V
    .registers 5

    .prologue
    .line 529
    iget-object v2, p0, mBlockedHwKeys:Ljava/util/Map;

    if-nez v2, :cond_1d

    .line 531
    :try_start_4
    const-string v2, "kioskmode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v1

    .line 533
    .local v1, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v1, :cond_1d

    .line 534
    invoke-interface {v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, mBlockedHwKeys:Ljava/util/Map;

    .line 535
    const-string v2, "SamsungWindowManager"

    const-string v3, "Blocked hw keys cache is being refreshed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_1e

    .line 542
    .end local v1    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_1d
    :goto_1d
    return-void

    .line 537
    :catch_1e
    move-exception v0

    .line 538
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Exception while getting kiosk mode service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public takeScreenshot(I)V
    .registers 20
    .param p1, "event"    # I

    .prologue
    .line 1663
    invoke-direct/range {p0 .. p0}, isScreenCaptureEnabled()Z

    move-result v13

    if-nez v13, :cond_12

    .line 1664
    sget-boolean v13, SAFE_DEBUG:Z

    if-eqz v13, :cond_11

    const-string v13, "SamsungWindowManager"

    const-string v14, "can not takescreenshot"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_11
    :goto_11
    return-void

    .line 1668
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, mScreenshotLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1669
    :try_start_17
    sget-boolean v13, SAFE_DEBUG:Z

    if-eqz v13, :cond_45

    .line 1670
    const-string v13, "SamsungWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "takeScreenshot : event = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mPerformEditAfterScreenCapture = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, mPerformEditAfterScreenCapture:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :cond_45
    move-object/from16 v0, p0

    iget-boolean v13, v0, mPerformEditAfterScreenCapture:Z

    if-eqz v13, :cond_70

    move-object/from16 v0, p0

    iget-boolean v13, v0, mHasFlashAnnotateComponent:Z

    if-eqz v13, :cond_70

    .line 1675
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1676
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v13, 0x10000000

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1677
    move-object/from16 v0, p0

    iget-object v13, v0, mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1678
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v13, v7, v15}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1718
    :cond_6b
    :goto_6b
    monitor-exit v14

    goto :goto_11

    .end local v7    # "intent":Landroid/content/Intent;
    :catchall_6d
    move-exception v13

    monitor-exit v14
    :try_end_6f
    .catchall {:try_start_17 .. :try_end_6f} :catchall_6d

    throw v13

    .line 1680
    :cond_70
    :try_start_70
    move-object/from16 v0, p0

    iget-object v13, v0, mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    const/4 v15, 0x3

    if-lt v13, v15, :cond_7d

    .line 1681
    monitor-exit v14

    goto :goto_11

    .line 1683
    :cond_7d
    new-instance v2, Landroid/content/ComponentName;

    const-string v13, "com.android.systemui"

    const-string v15, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v2, v13, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    .local v2, "cn":Landroid/content/ComponentName;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1686
    .restart local v7    # "intent":Landroid/content/Intent;
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1687
    new-instance v3, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;I)V

    .line 1689
    .local v3, "conn":Landroid/content/ServiceConnection;
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1691
    .local v4, "curr":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v12

    .line 1692
    .local v12, "versionInfo":Landroid/os/Bundle;
    const-string v13, "2.0"

    const-string v15, "version"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ff

    .line 1693
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    const-string v15, "persona"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PersonaManager;

    .line 1694
    .local v9, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v9}, Landroid/os/PersonaManager;->getForegroundUser()I

    move-result v6

    .line 1696
    .local v6, "currUser":I
    const-string v13, "SamsungWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "screenshot: current active user is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    const-string v15, "user"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .line 1699
    .local v11, "um":Landroid/os/UserManager;
    invoke-virtual {v11, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 1700
    .local v5, "currInfo":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_f0

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v13

    if-eqz v13, :cond_f0

    .line 1701
    new-instance v4, Landroid/os/UserHandle;

    .end local v4    # "curr":Landroid/os/UserHandle;
    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 1704
    .restart local v4    # "curr":Landroid/os/UserHandle;
    :cond_f0
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    .line 1705
    .local v8, "isKioskContainer":Z
    if-eqz v8, :cond_ff

    if-nez v6, :cond_ff

    monitor-exit v14

    goto/16 :goto_11

    .line 1709
    .end local v5    # "currInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "currUser":I
    .end local v8    # "isKioskContainer":Z
    .end local v9    # "pm":Landroid/os/PersonaManager;
    .end local v11    # "um":Landroid/os/UserManager;
    :cond_ff
    const-string v13, "SamsungWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " screenshot is taken for user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    const/4 v15, 0x1

    invoke-virtual {v13, v7, v3, v15, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v13

    if-eqz v13, :cond_6b

    .line 1713
    new-instance v10, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v3}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Landroid/content/ServiceConnection;)V

    .line 1714
    .local v10, "runnable":Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$ScreenshotRunnable;
    move-object/from16 v0, p0

    iget-object v13, v0, mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v13, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    move-object/from16 v0, p0

    iget-object v13, v0, mHandler:Landroid/os/Handler;

    const-wide/16 v16, 0x2710

    move-wide/from16 v0, v16

    invoke-virtual {v13, v10, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_13f
    .catchall {:try_start_70 .. :try_end_13f} :catchall_6d

    goto/16 :goto_6b
.end method

.method public updateBottomKeyPanelState(ZZ)V
    .registers 8
    .param p1, "init"    # Z
    .param p2, "maximize"    # Z

    .prologue
    .line 2721
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easybottompanel"

    const-string v4, "com.sec.android.easybottompanel.EasyBottomPanelService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYBOTTOMPANEL_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 2724
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_22

    .line 2725
    const-string v3, "Softkey"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2733
    :goto_1c
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2737
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_21
    return-void

    .line 2727
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_22
    if-eqz p2, :cond_34

    .line 2728
    const-string v3, "Maximize"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_1c

    .line 2734
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_2b
    move-exception v1

    .line 2735
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception updateEasyBottomPanelState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 2730
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_34
    :try_start_34
    const-string v3, "Minimize"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3a} :catch_2b

    goto :goto_1c
.end method

.method public updateEasyOneHandState(ZZ)V
    .registers 10
    .param p1, "isLeftHand"    # Z
    .param p2, "isShow"    # Z

    .prologue
    .line 2682
    iget-object v4, p0, mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getCoverStateSwitch()Z

    move-result v3

    .line 2683
    .local v3, "isCoverOpen":Z
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateEasyOneHandState() isLeftHand="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isShow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isCoverOpen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    if-nez v3, :cond_35

    .line 2701
    :goto_34
    return-void

    .line 2689
    :cond_35
    :try_start_35
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.easyonehand"

    const-string v5, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2690
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 2692
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_5f

    .line 2693
    const-string v4, "LeftHandMode"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2697
    :goto_50
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_55} :catch_56

    goto :goto_34

    .line 2698
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_56
    move-exception v1

    .line 2699
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    const-string v5, "Exception updateEasyOneHandService: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 2695
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_5f
    :try_start_5f
    const-string v4, "ForceHide"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_65} :catch_56

    goto :goto_50
.end method

.method public updateSettings()V
    .registers 27

    .prologue
    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 673
    .local v18, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 675
    :try_start_11
    const-string v21, "double_tab_launch"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 677
    .local v5, "doubleTapOnHomeBehavior":I
    move-object/from16 v0, p0

    iget v0, v0, mDoubleTapOnHomeBehavior:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v5, :cond_39

    .line 678
    move-object/from16 v0, p0

    iget-boolean v0, v0, mAvailableVoiceCommand:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2a4

    .end local v5    # "doubleTapOnHomeBehavior":I
    :goto_35
    move-object/from16 v0, p0

    iput v5, v0, mDoubleTapOnHomeBehavior:I

    .line 683
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v23, "direct_access"

    const/16 v24, 0x0

    const/16 v25, -0x2

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    .line 685
    .local v19, "tripleTapOnHomeBehavior":I
    move-object/from16 v0, p0

    iget v0, v0, mTripleTapOnHomeBehavior:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v19

    if-eq v0, v1, :cond_67

    .line 686
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mTripleTapOnHomeBehavior:I

    .line 691
    :cond_67
    const-string v21, "lcd_curtain"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_2a7

    const-string v21, "accessibility_enabled"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_2a7

    const/16 v21, 0x1

    :goto_9d
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, mPowerDoubleBehavior:Z

    .line 696
    const-string v21, "edit_after_screen_capture"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_2ab

    const/16 v17, 0x1

    .line 698
    .local v17, "performEditAfterScreenCapture":Z
    :goto_b9
    move-object/from16 v0, p0

    iget-boolean v0, v0, mPerformEditAfterScreenCapture:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v17

    if-eq v0, v1, :cond_cb

    .line 699
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mPerformEditAfterScreenCapture:Z

    .line 704
    :cond_cb
    const-string v21, "send_emergency_message"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_2af

    const/4 v13, 0x1

    .line 706
    .local v13, "isSafetyAssuranceEnabled":Z
    :goto_e0
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsSafetyAssuranceEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v13, :cond_ee

    .line 707
    move-object/from16 v0, p0

    iput-boolean v13, v0, mIsSafetyAssuranceEnabled:Z

    .line 712
    :cond_ee
    const-string v21, "access_control_use"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_2b2

    const/16 v16, 0x1

    .line 714
    .local v16, "isUseAccessControl":Z
    :goto_104
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsUseAccessControl:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v16

    if-eq v0, v1, :cond_116

    .line 715
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsUseAccessControl:Z

    .line 717
    :cond_116
    const-string v21, "access_control_enabled"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_2b6

    const/4 v10, 0x1

    .line 719
    .local v10, "isEnabledAccessControl":Z
    :goto_12b
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsEnabledAccessControl:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v10, :cond_139

    .line 720
    move-object/from16 v0, p0

    iput-boolean v10, v0, mIsEnabledAccessControl:Z

    .line 725
    :cond_139
    const-string v21, "kids_home_mode"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_2b9

    const/4 v11, 0x1

    .line 727
    .local v11, "isKidsMode":Z
    :goto_14e
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsKidsModeEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v11, :cond_15c

    .line 728
    move-object/from16 v0, p0

    iput-boolean v11, v0, mIsKidsModeEnabled:Z

    .line 733
    :cond_15c
    const-string v21, "easy_mode_switch"

    const/16 v23, 0x1

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-nez v21, :cond_2bc

    const/4 v9, 0x1

    .line 735
    .local v9, "isEasyMode":Z
    :goto_171
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsEasyModeEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v9, :cond_17f

    .line 736
    move-object/from16 v0, p0

    iput-boolean v9, v0, mIsEasyModeEnabled:Z

    .line 741
    :cond_17f
    const-string v21, "desk_home_screen_display"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_2bf

    const/4 v8, 0x1

    .line 743
    .local v8, "isDockHomeEnabled":Z
    :goto_194
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsDockHomeEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v8, :cond_1a2

    .line 744
    move-object/from16 v0, p0

    iput-boolean v8, v0, mIsDockHomeEnabled:Z

    .line 749
    :cond_1a2
    const-string v21, "torchlight_enable"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_2c2

    const/4 v15, 0x1

    .line 751
    .local v15, "isTorchlightEnabled":Z
    :goto_1b7
    move-object/from16 v0, p0

    iget-boolean v0, v0, mTorchlightEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v15, :cond_1c5

    .line 752
    move-object/from16 v0, p0

    iput-boolean v15, v0, mTorchlightEnabled:Z

    .line 757
    :cond_1c5
    const-string v21, "car_mode_on"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_2c5

    const/4 v6, 0x1

    .line 759
    .local v6, "isCheckDrivingMode":Z
    :goto_1d6
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsCheckDrivingMode:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v6, :cond_1e4

    .line 760
    move-object/from16 v0, p0

    iput-boolean v6, v0, mIsCheckDrivingMode:Z

    .line 763
    :cond_1e4
    const-string v21, "car_mode_blocking_system_key"

    const/16 v23, 0x0

    const/16 v24, -0x3

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_2c8

    const/4 v4, 0x1

    .line 765
    .local v4, "blockKeyForDrivingMode":Z
    :goto_1f9
    move-object/from16 v0, p0

    iget-boolean v0, v0, mBlockKeyForDrivingMode:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v4, :cond_207

    .line 766
    move-object/from16 v0, p0

    iput-boolean v4, v0, mBlockKeyForDrivingMode:Z

    .line 771
    :cond_207
    const-string v21, "sidesync_source_presentation"

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_2cb

    const/4 v14, 0x1

    .line 773
    .local v14, "isSideSyncSourcePresentationActived":Z
    :goto_218
    move-object/from16 v0, p0

    iget-boolean v0, v0, mSideSyncSourcePresentationActived:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v14, :cond_226

    .line 774
    move-object/from16 v0, p0

    iput-boolean v14, v0, mSideSyncSourcePresentationActived:Z

    .line 779
    :cond_226
    const-string v21, "user_setup_complete"

    const/16 v23, 0x1

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_2ce

    const/16 v20, 0x1

    .line 781
    .local v20, "userSetupComplete":Z
    :goto_242
    move-object/from16 v0, p0

    iget-boolean v0, v0, mUserSetupComplete:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_254

    .line 782
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mUserSetupComplete:Z

    .line 787
    :cond_254
    const-string v21, "pen_attach_detach_vibration"

    const/16 v23, 0x1

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_2d2

    const/4 v12, 0x1

    .line 789
    .local v12, "isPenNotifyVibrationChecked":Z
    :goto_269
    move-object/from16 v0, p0

    iget-boolean v0, v0, mPenNotifyVibrationChecked:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v12, :cond_277

    .line 790
    move-object/from16 v0, p0

    iput-boolean v12, v0, mPenNotifyVibrationChecked:Z

    .line 795
    :cond_277
    move-object/from16 v0, p0

    iget-boolean v0, v0, mHasDaynotePackage:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2a2

    .line 796
    const-string v21, "cover_note"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    if-eqz v21, :cond_2d4

    const/4 v7, 0x1

    .line 799
    .local v7, "isCoverNote":Z
    :goto_294
    move-object/from16 v0, p0

    iget-boolean v0, v0, mCoverNoteEnabled:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v7, :cond_2a2

    .line 800
    move-object/from16 v0, p0

    iput-boolean v7, v0, mCoverNoteEnabled:Z

    .line 804
    .end local v7    # "isCoverNote":Z
    :cond_2a2
    monitor-exit v22

    .line 805
    return-void

    .line 678
    .end local v4    # "blockKeyForDrivingMode":Z
    .end local v6    # "isCheckDrivingMode":Z
    .end local v8    # "isDockHomeEnabled":Z
    .end local v9    # "isEasyMode":Z
    .end local v10    # "isEnabledAccessControl":Z
    .end local v11    # "isKidsMode":Z
    .end local v12    # "isPenNotifyVibrationChecked":Z
    .end local v13    # "isSafetyAssuranceEnabled":Z
    .end local v14    # "isSideSyncSourcePresentationActived":Z
    .end local v15    # "isTorchlightEnabled":Z
    .end local v16    # "isUseAccessControl":Z
    .end local v17    # "performEditAfterScreenCapture":Z
    .end local v19    # "tripleTapOnHomeBehavior":I
    .end local v20    # "userSetupComplete":Z
    .restart local v5    # "doubleTapOnHomeBehavior":I
    :cond_2a4
    const/4 v5, 0x0

    goto/16 :goto_35

    .line 691
    .end local v5    # "doubleTapOnHomeBehavior":I
    .restart local v19    # "tripleTapOnHomeBehavior":I
    :cond_2a7
    const/16 v21, 0x0

    goto/16 :goto_9d

    .line 696
    :cond_2ab
    const/16 v17, 0x0

    goto/16 :goto_b9

    .line 704
    .restart local v17    # "performEditAfterScreenCapture":Z
    :cond_2af
    const/4 v13, 0x0

    goto/16 :goto_e0

    .line 712
    .restart local v13    # "isSafetyAssuranceEnabled":Z
    :cond_2b2
    const/16 v16, 0x0

    goto/16 :goto_104

    .line 717
    .restart local v16    # "isUseAccessControl":Z
    :cond_2b6
    const/4 v10, 0x0

    goto/16 :goto_12b

    .line 725
    .restart local v10    # "isEnabledAccessControl":Z
    :cond_2b9
    const/4 v11, 0x0

    goto/16 :goto_14e

    .line 733
    .restart local v11    # "isKidsMode":Z
    :cond_2bc
    const/4 v9, 0x0

    goto/16 :goto_171

    .line 741
    .restart local v9    # "isEasyMode":Z
    :cond_2bf
    const/4 v8, 0x0

    goto/16 :goto_194

    .line 749
    .restart local v8    # "isDockHomeEnabled":Z
    :cond_2c2
    const/4 v15, 0x0

    goto/16 :goto_1b7

    .line 757
    .restart local v15    # "isTorchlightEnabled":Z
    :cond_2c5
    const/4 v6, 0x0

    goto/16 :goto_1d6

    .line 763
    .restart local v6    # "isCheckDrivingMode":Z
    :cond_2c8
    const/4 v4, 0x0

    goto/16 :goto_1f9

    .line 771
    .restart local v4    # "blockKeyForDrivingMode":Z
    :cond_2cb
    const/4 v14, 0x0

    goto/16 :goto_218

    .line 779
    .restart local v14    # "isSideSyncSourcePresentationActived":Z
    :cond_2ce
    const/16 v20, 0x0

    goto/16 :goto_242

    .line 787
    .restart local v20    # "userSetupComplete":Z
    :cond_2d2
    const/4 v12, 0x0

    goto :goto_269

    .line 796
    .restart local v12    # "isPenNotifyVibrationChecked":Z
    :cond_2d4
    const/4 v7, 0x0

    goto :goto_294

    .line 804
    .end local v4    # "blockKeyForDrivingMode":Z
    .end local v6    # "isCheckDrivingMode":Z
    .end local v8    # "isDockHomeEnabled":Z
    .end local v9    # "isEasyMode":Z
    .end local v10    # "isEnabledAccessControl":Z
    .end local v11    # "isKidsMode":Z
    .end local v12    # "isPenNotifyVibrationChecked":Z
    .end local v13    # "isSafetyAssuranceEnabled":Z
    .end local v14    # "isSideSyncSourcePresentationActived":Z
    .end local v15    # "isTorchlightEnabled":Z
    .end local v16    # "isUseAccessControl":Z
    .end local v17    # "performEditAfterScreenCapture":Z
    .end local v19    # "tripleTapOnHomeBehavior":I
    .end local v20    # "userSetupComplete":Z
    :catchall_2d6
    move-exception v21

    monitor-exit v22
    :try_end_2d8
    .catchall {:try_start_11 .. :try_end_2d8} :catchall_2d6

    throw v21
.end method

.method public updateSideKeyPanelState(Z)V
    .registers 7
    .param p1, "isShow"    # Z

    .prologue
    .line 2705
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easysidepanel"

    const-string v4, "com.sec.android.easysidepanel.EasySidePanelService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYSIDEPANEL_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 2708
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_22

    .line 2709
    const-string v3, "Softkey"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2713
    :goto_1c
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2717
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_21
    return-void

    .line 2711
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_22
    const-string v3, "ForceHide"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_1c

    .line 2714
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_29
    move-exception v1

    .line 2715
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception updateEasySidePanelState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method
