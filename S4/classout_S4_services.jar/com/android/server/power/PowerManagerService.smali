.class public final Lcom/android/server/power/PowerManagerService;
.super Lcom/android/server/SystemService;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerService$TimeMeasurement;,
        Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;,
        Lcom/android/server/power/PowerManagerService$UserActivityTask;,
        Lcom/android/server/power/PowerManagerService$InputDeviceLightState;,
        Lcom/android/server/power/PowerManagerService$LocalService;,
        Lcom/android/server/power/PowerManagerService$BinderService;,
        Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;,
        Lcom/android/server/power/PowerManagerService$WakeLock;,
        Lcom/android/server/power/PowerManagerService$PowerManagerHandler;,
        Lcom/android/server/power/PowerManagerService$SettingsObserver;,
        Lcom/android/server/power/PowerManagerService$DockReceiver;,
        Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;,
        Lcom/android/server/power/PowerManagerService$DreamReceiver;,
        Lcom/android/server/power/PowerManagerService$BatteryReceiver;,
        Lcom/android/server/power/PowerManagerService$AlpmLock;
    }
.end annotation


# static fields
.field private static final ACTION_BROADCAST_BEFORE_DIM:Ljava/lang/String; = "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

.field private static final BOOT_ANIMATION_POLL_INTERVAL:I = 0xc8

.field private static final BOOT_ANIMATION_SERVICE:Ljava/lang/String; = "bootanim"

.field public static final COVER_OPEN:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field private static final COVER_SYSFS:Ljava/lang/String; = "/sys/class/sec/sec_key/hall_detect"

.field private static final COVER_TYPE_SYSFS:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_id"

.field private static final CRITICAL_LOW_BATTERY_LEVEL:I = 0x5

.field private static final DEBUG:Z = false

.field private static final DEBUG_SPEW:Z = false

.field private static final DEFAULT_KEYBOARD_OFF_TIMEOUT:I = 0xbb8

.field private static final DEFAULT_KEY_NIGHT_MODE:I = 0x1

.field private static final DEFAULT_SCREEN_OFF_TIMEOUT:I = 0x3a98

.field private static final DEFAULT_SLEEP_TIMEOUT:I = -0x1

.field private static final DIRTY_ACTUAL_DISPLAY_POWER_STATE_UPDATED:I = 0x8

.field private static final DIRTY_ALPM_MODE:I = 0x40000

.field private static final DIRTY_BATTERY_STATE:I = 0x100

.field private static final DIRTY_BOOT_COMPLETED:I = 0x10

.field private static final DIRTY_BUTTON_EVENT:I = 0x4000

.field private static final DIRTY_DOCK_STATE:I = 0x400

.field private static final DIRTY_IS_POWERED:I = 0x40

.field private static final DIRTY_KEY_LIGHT_ONOFF_BY_FOLDER:I = 0x10000

.field private static final DIRTY_KEY_LIGHT_ONOFF_BY_INTERACTIVE:I = 0x8000

.field private static final DIRTY_PROXIMITY_POSITIVE:I = 0x200

.field private static final DIRTY_SETTINGS:I = 0x20

.field private static final DIRTY_STAY_ON:I = 0x80

.field private static final DIRTY_TOUCHKEY_EVENT:I = 0x1000

.field private static final DIRTY_TOUCHSCREEN_EVENT:I = 0x2000

.field private static final DIRTY_USER_ACTIVITY:I = 0x4

.field private static final DIRTY_WAKEFULNESS:I = 0x2

.field private static final DIRTY_WAKE_LOCKS:I = 0x1

.field private static final DPM_CONFIG_FEATURE_MASK_NSRM:I = 0x4

.field private static final FEATURE_COVER_FLIP:Ljava/lang/String; = "com.sec.feature.cover.flip"

.field private static final FEATURE_COVER_SVIEW:Ljava/lang/String; = "com.sec.feature.cover.sview"

.field public static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field private static final MSG_KEY_LIGHT_ONOFF_BY_INTERACTIVE:I = 0x3

.field private static final MSG_PRE_SMART_STAY:I = 0x2

.field private static final MSG_SANDMAN:I = 0x2

.field private static final MSG_SMART_STAY:I = 0x1

.field private static final MSG_USER_ACTIVITY_TIMEOUT:I = 0x1

.field private static final PMS_DB_BRIGHTNESS_ENABLE:Ljava/lang/String; = "pms_notification_panel_brightness_adjustment"

.field private static final POWERSAVING_AUTO_ENABLE:Ljava/lang/String; = "android.settings.POWERSAVING_AUTO_ENABLE"

.field private static final POWERSAVING_CHANGED:Ljava/lang/String; = "android.settings.POWERSAVING_CHANGED"

.field private static final POWER_HINT_INTERACTION:I = 0x2

.field private static final POWER_HINT_LOW_POWER:I = 0x5

.field public static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final SYSTEM_SHUTDOWN:Ljava/lang/String; = "system_shutdown"

.field private static final TAG:Ljava/lang/String; = "PowerManagerService"

.field public static final TAG_API:Ljava/lang/String; = "[api] "

.field private static final TAG_AUTO_POWER_OFF:Ljava/lang/String; = "[auto power off] "

.field private static final TAG_ETC:Ljava/lang/String; = ""

.field private static final TAG_INPUT_DEVICE_LIGHT:Ljava/lang/String; = "[input device light] "

.field public static final TAG_LOG_TO_KERNEL:Ljava/lang/String; = "!@"

.field private static final TAG_POWER_SAVE_MODE:Ljava/lang/String; = "[PSM] "

.field public static final TAG_POWER_STATE:Ljava/lang/String; = "[ps] "

.field public static final TAG_POWER_STATE_V:Ljava/lang/String; = "[s] "

.field private static final TAG_PRINT_WAKE_LOCK:Ljava/lang/String; = "[PWL] "

.field private static final TAG_SMART_STAY:Ljava/lang/String; = "[smart stay] "

.field private static final USER_ACTIVITY_SCREEN_BRIGHT:I = 0x1

.field private static final USER_ACTIVITY_SCREEN_DIM:I = 0x2

.field private static final USER_ACTIVITY_SCREEN_DREAM:I = 0x4

.field private static final WAKEFULNESS_ASLEEP:I = 0x0

.field private static final WAKEFULNESS_AWAKE:I = 0x1

.field private static final WAKEFULNESS_DOZING:I = 0x3

.field private static final WAKEFULNESS_DREAMING:I = 0x2

.field private static final WAKE_LOCK_BUTTON_BRIGHT:I = 0x8

.field private static final WAKE_LOCK_CPU:I = 0x1

.field private static final WAKE_LOCK_DOZE:I = 0x40

.field private static final WAKE_LOCK_PROXIMITY_SCREEN_OFF:I = 0x10

.field private static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x2

.field private static final WAKE_LOCK_SCREEN_DIM:I = 0x4

.field private static final WAKE_LOCK_STAY_AWAKE:I = 0x20

.field private static final ifNotifierInSeperateThread:Z = true

.field private static final mIsChinaSalesCode:Z

.field private static final mIsJapanDCMSalesCode:Z

.field private static final mIsNorthAmericaSalesCode:Z

.field private static final mSalesCode:Ljava/lang/String;


# instance fields
.field private final USE_DEVICE_LOCK_TIME:Z

.field private final USE_PRE_SMART_STAY:Z

.field private final USE_SMART_STAY:Z

.field private mATTautoPowerSavingModeSetting:Z

.field private mATTautoPowerSavingModeSuspend:Z

.field private mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mAttentionLight:Lcom/android/server/lights/Light;

.field private mAutoLowPowerModeConfigured:Z

.field private mAutoLowPowerModeSnoozing:Z

.field private mBatteryLevel:I

.field private mBatteryLevelLow:Z

.field private mBatteryLevelWhenDreamStarted:I

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryStatus:I

.field private mBootCompleted:Z

.field private final mContext:Landroid/content/Context;

.field private final mCountLimit:I

.field private final mCountToShowLogForFrequentEvent:I

.field private mCoverIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

.field private mDecoupleHalInteractiveModeFromDisplayConfig:Z

.field private mDelayTimePrintWakeLock:J

.field private mDirty:I

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mDisplayReady:Z

.field private final mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mDockState:I

.field private mDozeAfterScreenOffConfig:Z

.field private mDozeScreenBrightnessOverrideFromDreamManager:I

.field private mDozeScreenStateOverrideFromDreamManager:I

.field private mDreamManager:Landroid/service/dreams/DreamManagerInternal;

.field private mDreamsActivateOnDockSetting:Z

.field private mDreamsActivateOnSleepSetting:Z

.field private mDreamsActivatedOnDockByDefaultConfig:Z

.field private mDreamsActivatedOnSleepByDefaultConfig:Z

.field private mDreamsBatteryLevelDrainCutoffConfig:I

.field private mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

.field private mDreamsBatteryLevelMinimumWhenPoweredConfig:I

.field private mDreamsEnabledByDefaultConfig:Z

.field private mDreamsEnabledOnBatteryConfig:Z

.field private mDreamsEnabledSetting:Z

.field private mDreamsSupportedConfig:Z

.field private mDynamicAutoBrightnessRatioValueSetting:I

.field private mEmergencyMode:Z

.field private mFaceDetected:Z

.field private mFaceDetectedFailIntent:Landroid/content/Intent;

.field private mFeatureCoverSysfs:Z

.field private mHalAutoSuspendModeEnabled:Z

.field private mHalInteractiveModeEnabled:Z

.field private final mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

.field private mHandlerNotifierInSeperateThread:Landroid/os/HandlerThread;

.field private mHandlerSmartStay:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mHandlerThreadSmartStay:Landroid/os/HandlerThread;

.field private mHoldingDisplaySuspendBlocker:Z

.field private mHoldingWakeLockSuspendBlocker:Z

.field private mInteractive:Z

.field private mInteractiveChanging:Z

.field private mIsAlpmMode:Z

.field private final mIsBadCurrentConsumptionDevice:Z

.field private mIsBatteryLowLevel:Z

.field private mIsCocktailBarCover:Z

.field public mIsCoverClosed:Z

.field private mIsFolderType:Z

.field private mIsForceUnblankDisplay:Z

.field private mIsKeyboardVisible:Z

.field public mIsLidClosed:Z

.field private mIsPowered:Z

.field private mIsReadyCoverFromPWM:Z

.field public mIsSipVisible:Z

.field private mKeyLedOffNightModeSetting:I

.field private mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

.field private mKeyboardOffTimeoutSetting:I

.field private mLastBrightnessOverrideState:Z

.field private mLastInteractivePowerHintTime:J

.field private mLastScreenOffEventElapsedRealTime:J

.field private mLastScreenTimeout:I

.field private mLastSleepTime:J

.field private mLastUserActivitySummary:I

.field private mLastUserActivityTime:J

.field private mLastUserActivityTimeNoChangeLights:J

.field private mLastWakeTime:J

.field private mLastWarningAboutUserActivityPermission:J

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private mLimitedPerformanceBroadcasted:Z

.field private final mLock:Ljava/lang/Object;

.field private mLowBatteryTriggerLevel:I

.field private mLowPowerModeEnabled:Z

.field private final mLowPowerModeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/PowerManagerInternal$LowPowerModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLowPowerModeSetting:Z

.field private mMaximumScreenDimDurationConfig:I

.field private mMaximumScreenDimRatioConfig:F

.field private mMaximumScreenOffTimeoutFromDeviceAdmin:I

.field private mMinimumScreenOffTimeoutConfig:I

.field private mNativeUserActivityCount:I

.field private mNextTimeoutForPreSmartStay:J

.field private mNextTimeoutForSmartStay:J

.field private mNoUserActivityIntent:Landroid/content/Intent;

.field private mNoUserActivitySent:Z

.field private mNotifier:Lcom/android/server/power/Notifier;

.field private mPSMDisplaySetting:Z

.field private mPSMtouchkeyLEDBroadcasted:Z

.field private mPendingMessagePreSmartStay:Z

.field private mPendingMessageSmartStay:Z

.field private mPlugType:I

.field private mPolicy:Landroid/view/WindowManagerPolicy;

.field private mPowerSaveModeSettingBroadcasted:Z

.field private mPowerSavingModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mPreSmartStayDelay:I

.field private mPrevReleasedWakeLock:Ljava/lang/String;

.field private mPrevTouchKeyForceDisable:Z

.field private final mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

.field private final mProductName:Ljava/lang/String;

.field private mProximityPositive:Z

.field private mRequestWaitForNegativeProximity:Z

.field private mSandmanScheduled:Z

.field private mSandmanSummoned:Z

.field private mScreenAutoBrightnessAdjustmentSetting:F

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessOverrideFromWindowManager:I

.field private mScreenBrightnessSetting:I

.field private mScreenBrightnessSettingDefault:I

.field private mScreenBrightnessSettingMaximum:I

.field private mScreenBrightnessSettingMinimum:I

.field private mScreenDimDurationOverrideFromWindowManager:J

.field private mScreenOffReason:Ljava/lang/String;

.field private mScreenOffTimeoutSetting:I

.field private mScreenOnOffCount:I

.field private mScreenOnReason:Ljava/lang/String;

.field private mSecuredLockEnableSetting:I

.field private mSecuredLockTimeoutSetting:I

.field private mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

.field private mSipIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSleepTimeoutSetting:I

.field private mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

.field private final mSmartStayDelay:I

.field private mSmartStayEnabledSetting:Z

.field private mStayOn:Z

.field private mStayOnWhilePluggedInSetting:I

.field private final mSuspendBlockers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/SuspendBlocker;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendWhenScreenOffDueToProximityConfig:Z

.field private mSystemReady:Z

.field private mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

.field private mTemporaryScreenBrightnessSettingOverride:I

.field private mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

.field private mTouchKeyForceDisable:Z

.field private mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

.field private mTouchKeyOffTimeoutOverrideFromWindowManager:J

.field private mTouchKeyOffTimeoutSetting:I

.field private mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

.field private mUserActivityIntent:Landroid/content/Intent;

.field private mUserActivitySummary:I

.field private final mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

.field private mUserActivityTimeoutOverrideFromWindowManager:J

.field private mUserActivityTimeoutSetting:I

.field private final mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

.field private mWakeLockSummary:I

.field private final mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field mWakeUpEvenThoughProximityPositive:Z

.field private mWakeUpWhenPluggedOrUnpluggedConfig:Z

.field private mWakefulness:I

.field private final mWhenCheckSmartStay:I

.field private mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 576
    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v3, "NONE"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, mSalesCode:Ljava/lang/String;

    .line 577
    const-string v0, "VZW"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, "ATT"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, "TMB"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, "SPR"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, "VMU"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, "MTR"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, "USC"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, "BST"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, "XAS"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, "LRA"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, "SPT"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, "CSP"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, "AIO"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, "TFN"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    const-string v0, "CRI"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    :cond_ab
    move v0, v2

    :goto_ac
    sput-boolean v0, mIsNorthAmericaSalesCode:Z

    .line 582
    const-string v0, "DCM"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, mIsJapanDCMSalesCode:Z

    .line 588
    const-string v0, "CHN"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    const-string v0, "CHU"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    const-string v0, "CTC"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    const-string v0, "CHM"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    const-string v0, "CHC"

    sget-object v3, mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    :cond_ea
    move v1, v2

    :cond_eb
    sput-boolean v1, mIsChinaSalesCode:Z

    return-void

    :cond_ee
    move v0, v1

    .line 577
    goto :goto_ac
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 628
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 250
    iput-object v6, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 251
    iput-object v6, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 253
    iput-wide v8, p0, mTouchKeyOffTimeoutOverrideFromWindowManager:J

    .line 255
    const/16 v0, 0x7d0

    iput v0, p0, mKeyboardOffTimeoutSetting:I

    .line 257
    iput-boolean v3, p0, mPSMDisplaySetting:Z

    .line 258
    iput-boolean v3, p0, mTouchKeyForceDisable:Z

    .line 259
    iput-boolean v3, p0, mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    .line 260
    iput-boolean v3, p0, mPSMtouchkeyLEDBroadcasted:Z

    .line 261
    iput-boolean v3, p0, mLimitedPerformanceBroadcasted:Z

    .line 262
    iput-boolean v3, p0, mPowerSaveModeSettingBroadcasted:Z

    .line 263
    iput-boolean v3, p0, mEmergencyMode:Z

    .line 265
    iput-boolean v3, p0, mATTautoPowerSavingModeSetting:Z

    .line 266
    iput-boolean v3, p0, mATTautoPowerSavingModeSuspend:Z

    .line 267
    iput-boolean v3, p0, mIsBatteryLowLevel:Z

    .line 270
    iput-boolean v3, p0, mPrevTouchKeyForceDisable:Z

    .line 276
    iput v4, p0, mDynamicAutoBrightnessRatioValueSetting:I

    .line 280
    iput-object v6, p0, mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 281
    const-string v0, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, USE_DEVICE_LOCK_TIME:Z

    .line 283
    iput v3, p0, mSecuredLockEnableSetting:I

    .line 284
    iput v4, p0, mSecuredLockTimeoutSetting:I

    .line 288
    iput-boolean v3, p0, mIsForceUnblankDisplay:Z

    .line 289
    iput-boolean v3, p0, mIsAlpmMode:Z

    .line 290
    iput-object v6, p0, mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

    .line 296
    new-instance v0, Lcom/android/server/power/PowerManagerService$UserActivityTask;

    invoke-direct {v0, p0, v6}, Lcom/android/server/power/PowerManagerService$UserActivityTask;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iput-object v0, p0, mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

    .line 297
    new-instance v0, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    invoke-direct {v0, p0, v6}, Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iput-object v0, p0, mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    .line 312
    iput v4, p0, mBatteryStatus:I

    .line 315
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mSuspendBlockers:Ljava/util/ArrayList;

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWakeLocks:Ljava/util/ArrayList;

    .line 366
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>()V

    iput-object v0, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 419
    iput v3, p0, mDockState:I

    .line 495
    const v0, 0x7fffffff

    iput v0, p0, mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 527
    iput v4, p0, mScreenBrightnessOverrideFromWindowManager:I

    .line 532
    iput-wide v8, p0, mUserActivityTimeoutOverrideFromWindowManager:J

    .line 537
    iput v4, p0, mTemporaryScreenBrightnessSettingOverride:I

    .line 543
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 546
    iput v3, p0, mDozeScreenStateOverrideFromDreamManager:I

    .line 549
    iput v4, p0, mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 552
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, mLastWarningAboutUserActivityPermission:J

    .line 569
    iput v4, p0, mLowBatteryTriggerLevel:I

    .line 572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mLowPowerModeListeners:Ljava/util/ArrayList;

    .line 603
    iput-boolean v3, p0, mIsFolderType:Z

    .line 607
    iput-boolean v3, p0, mIsCocktailBarCover:Z

    .line 611
    iput-boolean v3, p0, mWakeUpEvenThoughProximityPositive:Z

    .line 615
    iput-boolean v3, p0, mLastBrightnessOverrideState:Z

    .line 2645
    new-instance v0, Lcom/android/server/power/PowerManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$2;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, mPowerSavingModeReceiver:Landroid/content/BroadcastReceiver;

    .line 2664
    iput-wide v8, p0, mScreenDimDurationOverrideFromWindowManager:J

    .line 2691
    iput-boolean v3, p0, mIsLidClosed:Z

    .line 3017
    new-instance v0, Lcom/android/server/power/PowerManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$3;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 5177
    iput-boolean v3, p0, mIsSipVisible:Z

    .line 5178
    new-instance v0, Lcom/android/server/power/PowerManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$6;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, mSipIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 5194
    iput-boolean v3, p0, mIsCoverClosed:Z

    .line 5195
    iput-boolean v3, p0, mIsReadyCoverFromPWM:Z

    .line 5196
    iput-boolean v5, p0, mFeatureCoverSysfs:Z

    .line 5198
    new-instance v0, Lcom/android/server/power/PowerManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$7;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, mCoverIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 5286
    iput-object v6, p0, mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    .line 5295
    iput-boolean v5, p0, USE_SMART_STAY:Z

    .line 5296
    invoke-direct {p0}, isTablet()Z

    move-result v0

    iput-boolean v0, p0, USE_PRE_SMART_STAY:Z

    .line 5297
    const-string v0, "2750"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mSmartStayDelay:I

    .line 5298
    const/16 v0, 0x1770

    iput v0, p0, mPreSmartStayDelay:I

    .line 5299
    const-string/jumbo v0, "ro.product.device"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mProductName:Ljava/lang/String;

    .line 5303
    iput-boolean v5, p0, mIsBadCurrentConsumptionDevice:Z

    .line 5305
    iput v5, p0, mWhenCheckSmartStay:I

    .line 5309
    iput-boolean v3, p0, mSmartStayEnabledSetting:Z

    .line 5310
    iput-boolean v3, p0, mPendingMessageSmartStay:Z

    .line 5311
    iput-boolean v3, p0, mPendingMessagePreSmartStay:Z

    .line 5312
    iput-boolean v3, p0, mFaceDetected:Z

    .line 5313
    iput-wide v8, p0, mNextTimeoutForSmartStay:J

    .line 5314
    iput-wide v8, p0, mNextTimeoutForPreSmartStay:J

    .line 5502
    const-string v0, ""

    iput-object v0, p0, mScreenOffReason:Ljava/lang/String;

    .line 5503
    const-string v0, ""

    iput-object v0, p0, mScreenOnReason:Ljava/lang/String;

    .line 5504
    const-string v0, ""

    iput-object v0, p0, mPrevReleasedWakeLock:Ljava/lang/String;

    .line 5505
    iput v3, p0, mScreenOnOffCount:I

    .line 5508
    iput v4, p0, mLastUserActivitySummary:I

    .line 5509
    iput v4, p0, mLastScreenTimeout:I

    .line 5511
    const/16 v0, 0xa

    iput v0, p0, mCountToShowLogForFrequentEvent:I

    .line 5512
    const/16 v0, 0x1388

    iput v0, p0, mCountLimit:I

    .line 5513
    iput v3, p0, mNativeUserActivityCount:I

    .line 5577
    iput-wide v8, p0, mDelayTimePrintWakeLock:J

    .line 5578
    new-instance v0, Lcom/android/server/power/PowerManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerService$9;-><init>(Lcom/android/server/power/PowerManagerService;)V

    iput-object v0, p0, mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    .line 631
    const-string v0, "PowerManagerService"

    const-string v1, "[api] PowerManagerService()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 635
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PowerManagerService"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, mHandlerThread:Lcom/android/server/ServiceThread;

    .line 637
    iget-object v0, p0, mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 638
    new-instance v0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v1, p0, mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    .line 641
    new-instance v0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;-><init>()V

    iput-object v0, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    .line 646
    invoke-direct {p0}, initSmartStay()V

    .line 650
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 651
    :try_start_153
    const-string v0, "PowerManagerService.WakeLocks"

    invoke-direct {p0, v0}, createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 652
    const-string v0, "PowerManagerService.Display"

    invoke-direct {p0, v0}, createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    iput-object v0, p0, mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 653
    iget-object v0, p0, mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 654
    const/4 v0, 0x1

    iput-boolean v0, p0, mHoldingDisplaySuspendBlocker:Z

    .line 655
    const/4 v0, 0x0

    iput-boolean v0, p0, mHalAutoSuspendModeEnabled:Z

    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, mHalInteractiveModeEnabled:Z

    .line 658
    const/4 v0, 0x1

    iput v0, p0, mWakefulness:I

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, mInteractive:Z

    .line 661
    const-string v0, "PowerManagerService"

    const-string v2, "[s] PowerManagerService() : WAKEFULNESS_AWAKE"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-direct {p0}, nativeInit()V

    .line 665
    const/4 v0, 0x0

    invoke-static {v0}, nativeSetAutoSuspend(Z)V

    .line 666
    const/4 v0, 0x1

    invoke-static {v0}, nativeSetInteractive(Z)V

    .line 667
    monitor-exit v1

    .line 668
    return-void

    .line 667
    :catchall_18b
    move-exception v0

    monitor-exit v1
    :try_end_18d
    .catchall {:try_start_153 .. :try_end_18d} :catchall_18b

    throw v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    invoke-direct {p0}, updateSettingsLocked()V

    return-void
.end method

.method static synthetic access$1276(Lcom/android/server/power/PowerManagerService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iget v0, p0, mDirty:I

    or-int/2addr v0, p1

    iput v0, p0, mDirty:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    invoke-direct {p0}, updatePowerStateLocked()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, mProximityPositive:Z

    return p1
.end method

.method static synthetic access$1984(Lcom/android/server/power/PowerManagerService;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mScreenOffReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/PowerManagerService;JIII)Z
    .registers 7
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 127
    invoke-direct/range {p0 .. p5}, goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2184(Lcom/android/server/power/PowerManagerService;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mScreenOnReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/PowerManagerService;JI)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, wakeUpNoUpdateLocked(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-boolean v0, p0, mDecoupleHalInteractiveModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    invoke-direct {p0, p1}, setHalInteractiveModeLocked(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-boolean v0, p0, mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    invoke-direct {p0, p1}, setHalAutoSuspendModeLocked(Z)V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, mNativeUserActivityCount:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/power/PowerManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-wide v0, p0, mDelayTimePrintWakeLock:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/android/server/power/PowerManagerService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 127
    iput-wide p1, p0, mDelayTimePrintWakeLock:J

    return-wide p1
.end method

.method static synthetic access$2814(Lcom/android/server/power/PowerManagerService;J)J
    .registers 6
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 127
    iget-wide v0, p0, mDelayTimePrintWakeLock:J

    add-long/2addr v0, p1

    iput-wide v0, p0, mDelayTimePrintWakeLock:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-object v0, p0, mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-object v0, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-object v0, p0, mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-object v0, p0, mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/power/PowerManagerService;ZIILandroid/os/IBinder;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/os/IBinder;

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, setAlpmModeLockedInternal(ZIILandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/power/PowerManagerService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 127
    invoke-direct {p0, p1}, handleBatteryStateChangedLocked(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    invoke-direct {p0}, scheduleSandmanLocked()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    invoke-direct {p0}, handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/power/PowerManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget v0, p0, mDockState:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/power/PowerManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, mDockState:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    invoke-direct {p0}, handleUserActivityTimeout()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    invoke-direct {p0}, handleSandman()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    invoke-direct {p0}, handleInputDeviceLightOnByInteractive()V

    return-void
.end method

.method static synthetic access$4100(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "x0"    # Landroid/os/WorkSource;

    .prologue
    .line 127
    invoke-static {p0}, copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 127
    invoke-direct {p0, p1}, handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    return-void
.end method

.method static synthetic access$4300(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {p0}, nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {p0}, nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-boolean v0, p0, mSystemReady:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, powerHintInternal(II)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .registers 9
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Landroid/os/WorkSource;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # I
    .param p8, "x8"    # I

    .prologue
    .line 127
    invoke-direct/range {p0 .. p8}, acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, releaseWakeLockInternal(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Landroid/os/WorkSource;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/power/PowerManagerService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, isWakeLockLevelSupportedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 127
    invoke-static {}, callerInfoToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/power/PowerManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-wide v0, p0, mLastWarningAboutUserActivityPermission:J

    return-wide v0
.end method

.method static synthetic access$5202(Lcom/android/server/power/PowerManagerService;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 127
    iput-wide p1, p0, mLastWarningAboutUserActivityPermission:J

    return-wide p1
.end method

.method static synthetic access$5300(Lcom/android/server/power/PowerManagerService;JIII)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 127
    invoke-direct/range {p0 .. p5}, userActivityInternal(JIII)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/power/PowerManagerService;JII)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, wakeUpWithReasonInternal(JII)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    invoke-direct {p0}, isQuickBootCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/power/PowerManagerService;JI)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, wakeUpInternal(JI)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/power/PowerManagerService;JIII)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 127
    invoke-direct/range {p0 .. p5}, goToSleepInternal(JIII)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/power/PowerManagerService;JI)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, napInternal(JI)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    invoke-direct {p0}, isInteractiveInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    invoke-direct {p0}, isLowPowerModeInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    invoke-direct {p0, p1}, setLowPowerModeInternal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 127
    invoke-static {}, callerInfoWithProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, shutdownOrRebootInternal(ZZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-direct {p0, p1}, crashInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, setStayOnSettingInternal(I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, setTemporaryScreenBrightnessSettingOverrideInternal(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/power/PowerManagerService;F)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # F

    .prologue
    .line 127
    invoke-direct {p0, p1}, setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/power/PowerManagerService;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, setAttentionLightInternal(ZI)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 127
    invoke-direct {p0, p1}, dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$InputDeviceLightState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-object v0, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-boolean v0, p0, mIsKeyboardVisible:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, mIsKeyboardVisible:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-boolean v0, p0, mTouchKeyForceDisable:Z

    return v0
.end method

.method static synthetic access$7302(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, mTouchKeyForceDisable:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    invoke-direct {p0}, isAlpmModeInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-boolean v0, p0, mIsForceUnblankDisplay:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, mIsForceUnblankDisplay:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-object v0, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-object v0, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/server/power/PowerManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget v0, p0, mScreenBrightnessModeSetting:I

    return v0
.end method

.method static synthetic access$7900(Lcom/android/server/power/PowerManagerService;JIII)Z
    .registers 7
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 127
    invoke-direct/range {p0 .. p5}, userActivityNoUpdateLocked(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-boolean v0, p0, mLowPowerModeEnabled:Z

    return v0
.end method

.method static synthetic access$8000(Lcom/android/server/power/PowerManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget v0, p0, mWakefulness:I

    return v0
.end method

.method static synthetic access$8100(Lcom/android/server/power/PowerManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, setScreenBrightnessOverrideFromWindowManagerInternal(I)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/power/PowerManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, setDozeOverrideFromDreamManagerInternal(II)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/power/PowerManagerService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-object v0, p0, mLowPowerModeListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/server/power/PowerManagerService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, setScreenDimDurationOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/power/PowerManagerService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, setButtonTimeoutOverrideFromWindowManagerInternal(J)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/LightsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-object v0, p0, mLightsManager:Lcom/android/server/lights/LightsManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-boolean v0, p0, mInteractive:Z

    return v0
.end method

.method static synthetic access$9100(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-boolean v0, p0, mInteractiveChanging:Z

    return v0
.end method

.method static synthetic access$9200(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-boolean v0, p0, mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    return v0
.end method

.method static synthetic access$9300(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-boolean v0, p0, mIsReadyCoverFromPWM:Z

    return v0
.end method

.method static synthetic access$9302(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, mIsReadyCoverFromPWM:Z

    return p1
.end method

.method static synthetic access$9400(Lcom/android/server/power/PowerManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    invoke-direct {p0, p1}, handleSmartStay(Z)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/power/PowerManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-boolean v0, p0, mNoUserActivitySent:Z

    return v0
.end method

.method static synthetic access$9502(Lcom/android/server/power/PowerManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, mNoUserActivitySent:Z

    return p1
.end method

.method static synthetic access$9600(Lcom/android/server/power/PowerManagerService;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-object v0, p0, mUserActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    iget-object v0, p0, mNoUserActivityIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/server/power/PowerManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 127
    invoke-direct {p0}, printWakeLockLocked()V

    return-void
.end method

.method private acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    .registers 24
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;
    .param p7, "uid"    # I
    .param p8, "pid"    # I

    .prologue
    .line 1205
    iget-object v14, p0, mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1213
    :try_start_3
    invoke-direct/range {p0 .. p1}, findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v12

    .line 1215
    .local v12, "index":I
    if-ltz v12, :cond_6b

    .line 1216
    iget-object v2, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p7

    move/from16 v6, p8

    .line 1217
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 1220
    const-string v2, "PowerManagerService"

    const-string v3, "acquireWakeLockInternal : Update existing wake lock"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    move-object v3, v1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 1222
    invoke-direct/range {v2 .. v10}, notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 1224
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateProperties(ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V

    .line 1226
    :cond_4c
    const/4 v13, 0x0

    .line 1238
    .local v13, "notifyAcquire":Z
    :goto_4d
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v3, 0xffff

    and-int/2addr v2, v3

    sparse-switch v2, :sswitch_data_f0

    .line 1252
    :goto_56
    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1253
    iget v2, p0, mDirty:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, mDirty:I

    .line 1254
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 1255
    if-eqz v13, :cond_69

    .line 1261
    invoke-direct {p0, v1}, notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1263
    :cond_69
    monitor-exit v14

    .line 1264
    return-void

    .line 1228
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v13    # "notifyAcquire":Z
    :cond_6b
    new-instance v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/android/server/power/PowerManagerService$WakeLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    :try_end_81
    .catchall {:try_start_3 .. :try_end_81} :catchall_97

    .line 1230
    .restart local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    const/4 v2, 0x0

    :try_start_82
    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_87} :catch_8e
    .catchall {:try_start_82 .. :try_end_87} :catchall_97

    .line 1234
    :try_start_87
    iget-object v2, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    const/4 v13, 0x1

    .restart local v13    # "notifyAcquire":Z
    goto :goto_4d

    .line 1231
    .end local v13    # "notifyAcquire":Z
    :catch_8e
    move-exception v11

    .line 1232
    .local v11, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wake lock is already dead."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1263
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v11    # "ex":Landroid/os/RemoteException;
    .end local v12    # "index":I
    :catchall_97
    move-exception v2

    monitor-exit v14
    :try_end_99
    .catchall {:try_start_87 .. :try_end_99} :catchall_97

    throw v2

    .line 1240
    .restart local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    .restart local v12    # "index":I
    .restart local v13    # "notifyAcquire":Z
    :sswitch_9a
    const/16 v2, 0xaa9

    const/4 v3, 0x2

    :try_start_9d
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_56

    .line 1247
    :sswitch_ae
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] acquire WakeLock flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catchall {:try_start_9d .. :try_end_ee} :catchall_97

    goto/16 :goto_56

    .line 1238
    :sswitch_data_f0
    .sparse-switch
        0x1 -> :sswitch_9a
        0x6 -> :sswitch_ae
        0xa -> :sswitch_ae
        0x1a -> :sswitch_ae
        0x20 -> :sswitch_ae
        0x40 -> :sswitch_ae
    .end sparse-switch
.end method

.method private applyWakeLockFlagsOnAcquireLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .registers 5
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "uid"    # I

    .prologue
    .line 1278
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_31

    invoke-static {p1}, isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mScreenOnReason:Ljava/lang/String;

    .line 1283
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, wakeUpNoUpdateLocked(JI)Z

    .line 1285
    :cond_31
    return-void
.end method

.method private applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 9
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1360
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_31

    invoke-static {p1}, isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1363
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] applyWakeLockFlagsOnReleaseLocked : userActivityNoUpdateLocked is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, userActivityNoUpdateLocked(JIII)Z

    .line 1370
    :cond_31
    return-void
.end method

.method private static callerInfoToString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 5563
    const-string v1, ""

    .line 5564
    .local v1, "retStr":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5565
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 5567
    .local v0, "pid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5569
    return-object v1
.end method

.method private static callerInfoWithProcessName()Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 5533
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 5534
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 5537
    .local v4, "pid":I
    const/4 v5, 0x0

    .line 5538
    .local v5, "processName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5540
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_c
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/proc/%d/cmdline"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_26} :catch_61
    .catchall {:try_start_c .. :try_end_26} :catchall_78

    .line 5542
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_26
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_38

    .line 5543
    const-string v8, "\u0000"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 5544
    .local v6, "t":[Ljava/lang/String;
    array-length v8, v6

    if-lez v8, :cond_38

    .line 5545
    const/4 v8, 0x0

    aget-object v5, v6, v8
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_38} :catch_8b
    .catchall {:try_start_26 .. :try_end_38} :catchall_88

    .line 5551
    .end local v6    # "t":[Ljava/lang/String;
    :cond_38
    if-eqz v2, :cond_8e

    .line 5553
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_57

    move-object v1, v2

    .line 5559
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_3e
    :goto_3e
    const-string v8, " (uid: %d pid: %d processName: %s)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v14

    const/4 v10, 0x2

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 5554
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :catch_57
    move-exception v0

    .line 5555
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "PowerManagerService"

    const-string v9, "error on in.close"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 5556
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_3e

    .line 5548
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    :catch_61
    move-exception v0

    .line 5549
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_62
    :try_start_62
    const-string v8, "PowerManagerService"

    const-string v9, "error on read process name"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_78

    .line 5551
    if-eqz v1, :cond_3e

    .line 5553
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_3e

    .line 5554
    :catch_6f
    move-exception v0

    .line 5555
    const-string v8, "PowerManagerService"

    const-string v9, "error on in.close"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    .line 5551
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_78
    move-exception v8

    :goto_79
    if-eqz v1, :cond_7e

    .line 5553
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 5556
    :cond_7e
    :goto_7e
    throw v8

    .line 5554
    :catch_7f
    move-exception v0

    .line 5555
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "PowerManagerService"

    const-string v10, "error on in.close"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7e

    .line 5551
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_88
    move-exception v8

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_79

    .line 5548
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_8b
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_62

    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_8e
    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_3e
.end method

.method private canDozeLocked()Z
    .registers 3

    .prologue
    .line 2641
    iget v0, p0, mWakefulness:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private canDreamLocked()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2607
    iget v1, p0, mWakefulness:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    iget-boolean v1, p0, mDreamsSupportedConfig:Z

    if-eqz v1, :cond_24

    iget-boolean v1, p0, mDreamsEnabledSetting:Z

    if-eqz v1, :cond_24

    iget-object v1, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    if-eqz v1, :cond_24

    iget v1, p0, mUserActivitySummary:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_24

    iget-boolean v1, p0, mBootCompleted:Z

    if-eqz v1, :cond_24

    iget-boolean v1, p0, mIsCoverClosed:Z

    if-eqz v1, :cond_25

    .line 2634
    :cond_24
    :goto_24
    return v0

    .line 2619
    :cond_25
    invoke-direct {p0}, isBeingKeptAwakeLocked()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 2620
    iget-boolean v1, p0, mIsPowered:Z

    if-nez v1, :cond_33

    iget-boolean v1, p0, mDreamsEnabledOnBatteryConfig:Z

    if-eqz v1, :cond_24

    .line 2623
    :cond_33
    iget-boolean v1, p0, mIsPowered:Z

    if-nez v1, :cond_41

    iget v1, p0, mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-ltz v1, :cond_41

    iget v1, p0, mBatteryLevel:I

    iget v2, p0, mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    if-lt v1, v2, :cond_24

    .line 2628
    :cond_41
    iget-boolean v1, p0, mIsPowered:Z

    if-eqz v1, :cond_4f

    iget v1, p0, mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-ltz v1, :cond_4f

    iget v1, p0, mBatteryLevel:I

    iget v2, p0, mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    if-lt v1, v2, :cond_24

    .line 2634
    :cond_4f
    const/4 v0, 0x1

    goto :goto_24
.end method

.method private checkKeyNightMode()Z
    .registers 2

    .prologue
    .line 2686
    const/4 v0, 0x0

    .line 2687
    .local v0, "ret":Z
    return v0
.end method

.method private checkWorkSourceObjectId(ILcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "wl"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    const/4 v2, 0x0

    .line 1403
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2
    :try_start_2
    iget-object v3, p2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v3

    if-ge v1, v3, :cond_13

    .line 1404
    iget-object v3, p2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v1}, Landroid/os/WorkSource;->get(I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_17

    move-result v3

    if-ne p1, v3, :cond_14

    .line 1406
    const/4 v2, 0x1

    .line 1413
    :cond_13
    :goto_13
    return v2

    .line 1403
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1410
    :catch_17
    move-exception v0

    .line 1411
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_13
.end method

.method private static copyWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 3827
    if-eqz p0, :cond_8

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private crashInternal(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 3351
    new-instance v1, Lcom/android/server/power/PowerManagerService$5;

    const-string v2, "PowerManagerService.crash()"

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/power/PowerManagerService$5;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3358
    .local v1, "t":Ljava/lang/Thread;
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3359
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_d} :catch_e

    .line 3363
    :goto_d
    return-void

    .line 3360
    :catch_e
    move-exception v0

    .line 3361
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "PowerManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method private createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3806
    new-instance v0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;-><init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V

    .line 3807
    .local v0, "suspendBlocker":Lcom/android/server/power/SuspendBlocker;
    iget-object v1, p0, mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3808
    return-object v0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 3612
    const-string v7, "POWER MANAGER (dumpsys power)\n"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3615
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3616
    :try_start_8
    const-string v7, "Power Manager State:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3617
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDirty=0x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mDirty:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3618
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mWakefulness="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mWakefulness:I

    invoke-static {v9}, wakefulnessToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3619
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mInteractive="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mInteractive:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3620
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mIsPowered="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mIsPowered:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3621
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mPlugType="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mPlugType:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3622
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mBatteryLevel="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mBatteryLevel:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3623
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mBatteryLevelWhenDreamStarted="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3624
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDockState="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mDockState:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3625
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mStayOn="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mStayOn:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3626
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mProximityPositive="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mProximityPositive:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3627
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mBootCompleted="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mBootCompleted:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3628
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSystemReady="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mSystemReady:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3629
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mHalAutoSuspendModeEnabled="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mHalAutoSuspendModeEnabled:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3630
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mHalInteractiveModeEnabled="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mHalInteractiveModeEnabled:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3631
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mWakeLockSummary=0x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mWakeLockSummary:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3632
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mUserActivitySummary=0x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mUserActivitySummary:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3633
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mRequestWaitForNegativeProximity="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mRequestWaitForNegativeProximity:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3634
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSandmanScheduled="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mSandmanScheduled:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3635
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSandmanSummoned="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mSandmanSummoned:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3636
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLowPowerModeEnabled="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mLowPowerModeEnabled:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3637
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mBatteryLevelLow="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mBatteryLevelLow:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3638
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastWakeTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, p0, mLastWakeTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3639
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastSleepTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, p0, mLastSleepTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3640
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastUserActivityTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, p0, mLastUserActivityTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3641
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastUserActivityTimeNoChangeLights="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, p0, mLastUserActivityTimeNoChangeLights:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3643
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastInteractivePowerHintTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, p0, mLastInteractivePowerHintTime:J

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3645
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDisplayReady="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mDisplayReady:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3646
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mHoldingWakeLockSuspendBlocker="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mHoldingWakeLockSuspendBlocker:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3647
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mHoldingDisplaySuspendBlocker="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mHoldingDisplaySuspendBlocker:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3649
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3650
    const-string v7, "Settings and Configuration:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3651
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDecoupleHalAutoSuspendModeFromDisplayConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3653
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDecoupleHalInteractiveModeFromDisplayConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mDecoupleHalInteractiveModeFromDisplayConfig:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3655
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mWakeUpWhenPluggedOrUnpluggedConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mWakeUpWhenPluggedOrUnpluggedConfig:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3657
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSuspendWhenScreenOffDueToProximityConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mSuspendWhenScreenOffDueToProximityConfig:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3659
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsSupportedConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mDreamsSupportedConfig:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3660
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsEnabledByDefaultConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mDreamsEnabledByDefaultConfig:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3661
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsActivatedOnSleepByDefaultConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mDreamsActivatedOnSleepByDefaultConfig:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3663
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsActivatedOnDockByDefaultConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mDreamsActivatedOnDockByDefaultConfig:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3665
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsEnabledOnBatteryConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mDreamsEnabledOnBatteryConfig:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3667
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsBatteryLevelMinimumWhenPoweredConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3669
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsBatteryLevelMinimumWhenNotPoweredConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3671
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsBatteryLevelDrainCutoffConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mDreamsBatteryLevelDrainCutoffConfig:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3673
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsEnabledSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mDreamsEnabledSetting:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3674
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsActivateOnSleepSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3675
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDreamsActivateOnDockSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mDreamsActivateOnDockSetting:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3676
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDozeAfterScreenOffConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mDozeAfterScreenOffConfig:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3677
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLowPowerModeSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mLowPowerModeSetting:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3678
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mAutoLowPowerModeConfigured="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mAutoLowPowerModeConfigured:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3679
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mAutoLowPowerModeSnoozing="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mAutoLowPowerModeSnoozing:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3680
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mMinimumScreenOffTimeoutConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mMinimumScreenOffTimeoutConfig:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3681
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mMaximumScreenDimDurationConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mMaximumScreenDimDurationConfig:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3682
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mMaximumScreenDimRatioConfig="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mMaximumScreenDimRatioConfig:F

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3683
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenOffTimeoutSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mScreenOffTimeoutSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3684
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSleepTimeoutSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mSleepTimeoutSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3685
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mMaximumScreenOffTimeoutFromDeviceAdmin="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " (enforced="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3688
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mStayOnWhilePluggedInSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mStayOnWhilePluggedInSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3689
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mScreenBrightnessSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3690
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenAutoBrightnessAdjustmentSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mScreenAutoBrightnessAdjustmentSetting:F

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3692
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessModeSetting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mScreenBrightnessModeSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3693
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessOverrideFromWindowManager="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mScreenBrightnessOverrideFromWindowManager:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3695
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mUserActivityTimeoutOverrideFromWindowManager="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, p0, mUserActivityTimeoutOverrideFromWindowManager:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3697
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mTemporaryScreenBrightnessSettingOverride="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mTemporaryScreenBrightnessSettingOverride:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3699
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mTemporaryScreenAutoBrightnessAdjustmentSettingOverride="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3701
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDozeScreenStateOverrideFromDreamManager="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mDozeScreenStateOverrideFromDreamManager:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3703
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDozeScreenBrightnessOverrideFromDreamManager="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mDozeScreenBrightnessOverrideFromDreamManager:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3705
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessSettingMinimum="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mScreenBrightnessSettingMinimum:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3706
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessSettingMaximum="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mScreenBrightnessSettingMaximum:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3707
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mScreenBrightnessSettingDefault="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mScreenBrightnessSettingDefault:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3709
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLastUserActivitySummary: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mLastUserActivitySummary:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3713
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3714
    const-string v7, "  SecProductFeature_FRAMEWORK.SEC_PRODUCT_FEATURE_FRAMEWORK_ENABLE_SMART_STAY: true"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3716
    const-string v7, "  SecProductFeature_CAMERA.SEC_PRODUCT_FEATURE_CAMERA_DELAY_TIME_FOR_SMART_STAY: 2750"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3720
    invoke-direct {p0}, getSleepTimeoutLocked()I

    move-result v4

    .line 3721
    .local v4, "sleepTimeout":I
    invoke-direct {p0, v4}, getScreenOffTimeoutLocked(I)I

    move-result v3

    .line 3722
    .local v3, "screenOffTimeout":I
    invoke-direct {p0, v3}, getScreenDimDurationLocked(I)I

    move-result v2

    .line 3723
    .local v2, "screenDimDuration":I
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3724
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sleep timeout: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ms"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3725
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen off timeout: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ms"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3726
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen dim duration: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ms"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3727
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Screen dim duration override: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, p0, mScreenDimDurationOverrideFromWindowManager:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ms"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3731
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3732
    const-string v7, "Smart Stay:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3733
    const-string v7, "  USE_SMART_STAY: true"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3734
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  USE_PRE_SMART_STAY: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, USE_PRE_SMART_STAY:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3735
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSmartStayEnabledSetting: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mSmartStayEnabledSetting:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3736
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  SmartStayDelay: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mSmartStayDelay:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3737
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mNextTimeoutForSmartStay: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v10, p0, mNextTimeoutForSmartStay:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3738
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mPendingMessageSmartStay: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mPendingMessageSmartStay:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3739
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mPendingMessagePreSmartStay: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mPendingMessagePreSmartStay:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3740
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mFaceDetected: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mFaceDetected:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3741
    const-string v7, "  mIsBadCurrentConsumptionDevice: true"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3746
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3747
    const-string v7, "InputDeviceLightState:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3748
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mTouchKeyOffTimeoutSetting: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mTouchKeyOffTimeoutSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3749
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mIsSipVisible: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mIsSipVisible:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3750
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mTouchKeyForceDisable: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mTouchKeyForceDisable:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3751
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mPowerSaveModeSettingBroadcasted: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mPowerSaveModeSettingBroadcasted:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3752
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mLimitedPerformanceBroadcasted: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mLimitedPerformanceBroadcasted:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3753
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mTouchKeyForceDisableOverrideFromSystemPowerSaveMode: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3754
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mEmergencyMode: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mEmergencyMode:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3758
    iget-boolean v7, p0, USE_DEVICE_LOCK_TIME:Z

    if-eqz v7, :cond_8e1

    .line 3759
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3760
    const-string v7, "ATT EAS Pin lock:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3761
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSecuredLockEnableSetting: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mSecuredLockEnableSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3762
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSecuredLockTimeoutSetting: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mSecuredLockTimeoutSetting:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3767
    :cond_8e1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3768
    const-string v7, "Clear Cover:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3769
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mIsCoverClosed: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mIsCoverClosed:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3770
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mIsReadyCoverFromPWM: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mIsReadyCoverFromPWM:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3771
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mFeatureCoverSysfs: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mFeatureCoverSysfs:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3772
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mIsCocktailBarCover: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mIsCocktailBarCover:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3776
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3777
    const-string v7, "ALPM Mode:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3778
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mIsForceUnblankDisplay: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mIsForceUnblankDisplay:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3779
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mIsAlpmMode: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mIsAlpmMode:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3782
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3783
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wake Locks: size="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3784
    iget-object v7, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9a6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9cc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3785
    .local v6, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9a6

    .line 3798
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "screenDimDuration":I
    .end local v3    # "screenOffTimeout":I
    .end local v4    # "sleepTimeout":I
    .end local v6    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_9c9
    move-exception v7

    monitor-exit v8
    :try_end_9cb
    .catchall {:try_start_8 .. :try_end_9cb} :catchall_9c9

    throw v7

    .line 3788
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "screenDimDuration":I
    .restart local v3    # "screenOffTimeout":I
    .restart local v4    # "sleepTimeout":I
    :cond_9cc
    :try_start_9cc
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3789
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Suspend Blockers: size="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3790
    iget-object v7, p0, mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9f1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/SuspendBlocker;

    .line 3791
    .local v1, "sb":Lcom/android/server/power/SuspendBlocker;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9f1

    .line 3794
    .end local v1    # "sb":Lcom/android/server/power/SuspendBlocker;
    :cond_a14
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3795
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Display Power: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3797
    iget-object v5, p0, mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 3798
    .local v5, "wcd":Lcom/android/server/power/WirelessChargerDetector;
    monitor-exit v8
    :try_end_a32
    .catchall {:try_start_9cc .. :try_end_a32} :catchall_9c9

    .line 3800
    if-eqz v5, :cond_a37

    .line 3801
    invoke-virtual {v5, p1}, Lcom/android/server/power/WirelessChargerDetector;->dump(Ljava/io/PrintWriter;)V

    .line 3803
    :cond_a37
    return-void
.end method

.method private enableQbCharger(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1687
    const-string/jumbo v0, "sys.quickboot.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_29

    const-string/jumbo v0, "sys.quickboot.poweroff"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_29

    .line 1691
    if-eqz p1, :cond_29

    iget-boolean v0, p0, mIsPowered:Z

    if-eqz v0, :cond_29

    invoke-direct {p0}, isInteractiveInternal()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1692
    const-string/jumbo v0, "sys.qbcharger.enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    :cond_29
    return-void
.end method

.method private faceDetect()Z
    .registers 5

    .prologue
    .line 5403
    const/4 v0, 0x0

    .line 5407
    .local v0, "bFaceDetected":Z
    iget-object v1, p0, mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    if-nez v1, :cond_b

    .line 5408
    invoke-static {}, Lcom/samsung/android/smartface/SmartFaceManager;->getSmartFaceManager()Lcom/samsung/android/smartface/SmartFaceManager;

    move-result-object v1

    iput-object v1, p0, mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    .line 5410
    :cond_b
    iget-object v1, p0, mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    if-eqz v1, :cond_2d

    .line 5411
    iget-object v1, p0, mSmartFaceManager:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->checkForSmartStay()Z

    move-result v0

    .line 5412
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[smart stay] faceDetect : bFaceDetected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5416
    :cond_2d
    return v0
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)I
    .registers 5
    .param p1, "lock"    # Landroid/os/IBinder;

    .prologue
    .line 1417
    iget-object v2, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1418
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 1419
    iget-object v2, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_16

    .line 1423
    .end local v1    # "i":I
    :goto_15
    return v1

    .line 1418
    .restart local v1    # "i":I
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1423
    :cond_19
    const/4 v1, -0x1

    goto :goto_15
.end method

.method private finishInteractiveStateChangeLocked()V
    .registers 4

    .prologue
    .line 1861
    iget-boolean v0, p0, mInteractiveChanging:Z

    if-eqz v0, :cond_35

    .line 1862
    iget-object v0, p0, mNotifier:Lcom/android/server/power/Notifier;

    iget-boolean v1, p0, mInteractive:Z

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier;->onInteractiveStateChangeFinished(Z)V

    .line 1863
    const/4 v0, 0x0

    iput-boolean v0, p0, mInteractiveChanging:Z

    .line 1865
    iget-object v0, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessage(I)Z

    .line 1868
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecHardwareInterface.setBatteryADC : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mInteractive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    const-string v0, "lcd"

    iget-boolean v1, p0, mInteractive:Z

    invoke-static {v0, v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    .line 1872
    :cond_35
    return-void
.end method

.method private getDesiredScreenPolicyLocked()I
    .registers 5

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2984
    iget v3, p0, mWakefulness:I

    if-nez v3, :cond_8

    .line 3014
    :cond_7
    :goto_7
    return v0

    .line 2988
    :cond_8
    iget v3, p0, mWakefulness:I

    if-ne v3, v2, :cond_18

    .line 2989
    iget v3, p0, mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_14

    .line 2990
    const/4 v0, 0x1

    goto :goto_7

    .line 2992
    :cond_14
    iget-boolean v3, p0, mDozeAfterScreenOffConfig:Z

    if-nez v3, :cond_7

    .line 2999
    :cond_18
    iget v0, p0, mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_28

    iget v0, p0, mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_28

    iget-boolean v0, p0, mBootCompleted:Z

    if-nez v0, :cond_35

    .line 3003
    :cond_28
    iget v0, p0, mBatteryLevel:I

    const/4 v3, 0x5

    if-gt v0, v3, :cond_33

    iget v0, p0, mBatteryStatus:I

    if-eq v0, v1, :cond_33

    move v0, v1

    .line 3007
    goto :goto_7

    :cond_33
    move v0, v2

    .line 3010
    goto :goto_7

    :cond_35
    move v0, v1

    .line 3014
    goto :goto_7
.end method

.method private getScreenDimDurationLocked(I)I
    .registers 8
    .param p1, "screenOffTimeout"    # I

    .prologue
    .line 2372
    iget v0, p0, mMaximumScreenDimDurationConfig:I

    .line 2373
    .local v0, "screenDimDuration":I
    iget-wide v2, p0, mScreenDimDurationOverrideFromWindowManager:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_13

    .line 2374
    int-to-long v2, p1

    iget-wide v4, p0, mScreenDimDurationOverrideFromWindowManager:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 2381
    :goto_12
    return v0

    .line 2378
    :cond_13
    iget v1, p0, mMaximumScreenDimDurationConfig:I

    int-to-float v2, p1

    iget v3, p0, mMaximumScreenDimRatioConfig:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_12
.end method

.method private getScreenOffTimeoutLocked(I)I
    .registers 8
    .param p1, "sleepTimeout"    # I

    .prologue
    .line 2338
    iget v1, p0, mScreenOffTimeoutSetting:I

    .line 2339
    .local v1, "timeout":I
    const/4 v0, 0x0

    .line 2340
    .local v0, "result":I
    invoke-direct {p0}, isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2341
    iget v2, p0, mMaximumScreenOffTimeoutFromDeviceAdmin:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2343
    :cond_f
    iget-wide v2, p0, mUserActivityTimeoutOverrideFromWindowManager:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1a

    .line 2345
    iget-wide v2, p0, mUserActivityTimeoutOverrideFromWindowManager:J

    long-to-int v1, v2

    .line 2347
    :cond_1a
    if-ltz p1, :cond_20

    .line 2348
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2350
    :cond_20
    iget v2, p0, mMinimumScreenOffTimeoutConfig:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2353
    iget-boolean v2, p0, USE_DEVICE_LOCK_TIME:Z

    if-eqz v2, :cond_41

    iget v2, p0, mSecuredLockEnableSetting:I

    if-lez v2, :cond_41

    .line 2354
    iget v2, p0, mSecuredLockTimeoutSetting:I

    if-le v0, v2, :cond_41

    iget v2, p0, mSecuredLockTimeoutSetting:I

    iget v3, p0, mMinimumScreenOffTimeoutConfig:I

    if-le v2, v3, :cond_41

    .line 2355
    const-string v2, "PowerManagerService"

    const-string v3, "getScreenOffTimeoutLocked return mSecuredLockTimeoutSetting"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    iget v0, p0, mSecuredLockTimeoutSetting:I

    .line 2362
    :cond_41
    iget v2, p0, mLastScreenTimeout:I

    if-eq v0, v2, :cond_6b

    .line 2363
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[s] getScreenOffTimeoutLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mLastScreenTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    iput v0, p0, mLastScreenTimeout:I

    .line 2367
    :cond_6b
    return v0
.end method

.method private getSleepTimeoutLocked()I
    .registers 3

    .prologue
    .line 2330
    iget v0, p0, mSleepTimeoutSetting:I

    .line 2331
    .local v0, "timeout":I
    if-gtz v0, :cond_6

    .line 2332
    const/4 v1, -0x1

    .line 2334
    :goto_5
    return v1

    :cond_6
    iget v1, p0, mMinimumScreenOffTimeoutConfig:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_5
.end method

.method private goToSleepInternal(JIII)V
    .registers 9
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 1698
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1699
    :try_start_3
    invoke-direct/range {p0 .. p5}, goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1700
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 1702
    :cond_c
    monitor-exit v1

    .line 1703
    return-void

    .line 1702
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private goToSleepNoUpdateLocked(JIII)Z
    .registers 15
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 1714
    iget-wide v4, p0, mLastWakeTime:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_17

    iget v4, p0, mWakefulness:I

    if-eqz v4, :cond_17

    iget v4, p0, mWakefulness:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_17

    iget-boolean v4, p0, mBootCompleted:Z

    if-eqz v4, :cond_17

    iget-boolean v4, p0, mSystemReady:Z

    if-nez v4, :cond_19

    .line 1718
    :cond_17
    const/4 v4, 0x0

    .line 1790
    :goto_18
    return v4

    .line 1722
    :cond_19
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@[ps] Screen__Off - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mScreenOnOffCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    const-string v4, ""

    iput-object v4, p0, mScreenOnReason:Ljava/lang/String;

    .line 1724
    const-string v4, ""

    iput-object v4, p0, mScreenOffReason:Ljava/lang/String;

    .line 1725
    iget v4, p0, mScreenOnOffCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mScreenOnOffCount:I

    .line 1728
    const-wide/32 v4, 0x20000

    const-string v6, "goToSleep"

    invoke-static {v4, v5, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1730
    packed-switch p3, :pswitch_data_184

    .line 1753
    :try_start_68
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep by application request (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    const/4 p3, 0x0

    .line 1758
    :goto_87
    iput-wide p1, p0, mLastSleepTime:J

    .line 1759
    iget v4, p0, mDirty:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, mDirty:I

    .line 1760
    const/4 v4, 0x3

    iput v4, p0, mWakefulness:I

    .line 1761
    const/4 v4, 0x1

    iput-boolean v4, p0, mSandmanSummoned:Z

    .line 1762
    const/4 v4, 0x0

    invoke-direct {p0, v4, p3}, setInteractiveStateLocked(ZI)V

    .line 1765
    iget-object v4, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput p3, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    .line 1769
    const/4 v2, 0x0

    .line 1770
    .local v2, "numWakeLocksCleared":I
    iget-object v4, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1771
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a5
    if-ge v0, v1, :cond_16e

    .line 1772
    iget-object v4, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1773
    .local v3, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v4, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    sparse-switch v4, :sswitch_data_194

    .line 1771
    :goto_b8
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    .line 1733
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    .end local v2    # "numWakeLocksCleared":I
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :pswitch_bb
    const-string v4, "PowerManagerService"

    const-string v5, "Going to sleep due to proximity..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catchall {:try_start_68 .. :try_end_c2} :catchall_c3

    goto :goto_87

    .line 1788
    :catchall_c3
    move-exception v4

    const-wide/32 v6, 0x20000

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v4

    .line 1737
    :pswitch_cb
    :try_start_cb
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to device administration policy (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 1741
    :pswitch_ea
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to screen timeout (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_87

    .line 1744
    :pswitch_10a
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to lid switch (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_87

    .line 1747
    :pswitch_12a
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to power button (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_87

    .line 1750
    :pswitch_14a
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Going to sleep due to HDMI standby (uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_87

    .line 1777
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    .restart local v2    # "numWakeLocksCleared":I
    .restart local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :sswitch_16a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b8

    .line 1781
    .end local v3    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_16e
    const/16 v4, 0xaa4

    invoke-static {v4, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1784
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_17a

    .line 1785
    invoke-direct {p0, p1, p2, p5}, reallyGoToSleepNoUpdateLocked(JI)Z
    :try_end_17a
    .catchall {:try_start_cb .. :try_end_17a} :catchall_c3

    .line 1788
    :cond_17a
    const-wide/32 v4, 0x20000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1790
    const/4 v4, 0x1

    goto/16 :goto_18

    .line 1730
    nop

    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_cb
        :pswitch_ea
        :pswitch_10a
        :pswitch_12a
        :pswitch_14a
        :pswitch_bb
    .end packed-switch

    .line 1773
    :sswitch_data_194
    .sparse-switch
        0x6 -> :sswitch_16a
        0xa -> :sswitch_16a
        0x1a -> :sswitch_16a
    .end sparse-switch
.end method

.method private handleBatteryStateChangedLocked(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3300
    const-string/jumbo v0, "status"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, mBatteryStatus:I

    .line 3303
    iget v0, p0, mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, mDirty:I

    .line 3304
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 3305
    return-void
.end method

.method private handleInputDeviceLightOnByInteractive()V
    .registers 4

    .prologue
    .line 5050
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5051
    :try_start_3
    iget v0, p0, mDirty:I

    const v2, 0x8000

    or-int/2addr v0, v2

    iput v0, p0, mDirty:I

    .line 5052
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 5053
    monitor-exit v1

    .line 5054
    return-void

    .line 5053
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private handleSandman()V
    .registers 12

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x3

    const/4 v9, 0x0

    .line 2500
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2501
    const/4 v3, 0x0

    :try_start_8
    iput-boolean v3, p0, mSandmanScheduled:Z

    .line 2502
    iget v8, p0, mWakefulness:I

    .line 2503
    .local v8, "wakefulness":I
    iget-boolean v3, p0, mSandmanSummoned:Z

    if-eqz v3, :cond_6f

    iget-boolean v3, p0, mDisplayReady:Z

    if-eqz v3, :cond_6f

    .line 2504
    invoke-direct {p0}, canDreamLocked()Z

    move-result v3

    if-nez v3, :cond_20

    invoke-direct {p0}, canDozeLocked()Z

    move-result v3

    if-eqz v3, :cond_6d

    :cond_20
    move v7, v1

    .line 2505
    .local v7, "startDreaming":Z
    :goto_21
    const/4 v3, 0x0

    iput-boolean v3, p0, mSandmanSummoned:Z

    .line 2509
    :goto_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_71

    .line 2515
    iget-object v2, p0, mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v2, :cond_76

    .line 2517
    if-eqz v7, :cond_3e

    .line 2518
    const-string v2, "PowerManagerService"

    const-string v3, "handleSandman : startDream()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    iget-object v2, p0, mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v2, v9}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 2520
    iget-object v2, p0, mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    if-ne v8, v4, :cond_74

    :goto_3b
    invoke-virtual {v2, v1}, Landroid/service/dreams/DreamManagerInternal;->startDream(Z)V

    .line 2522
    :cond_3e
    iget-object v1, p0, mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    .line 2528
    .local v0, "isDreaming":Z
    :goto_44
    if-eqz v7, :cond_4f

    if-nez v0, :cond_4f

    .line 2529
    const-string v1, "PowerManagerService"

    const-string v2, "handleSandman : startDreaming, but isDreaming false"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    :cond_4f
    iget-object v10, p0, mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2536
    if-eqz v7, :cond_63

    if-eqz v0, :cond_63

    .line 2537
    :try_start_56
    iget v1, p0, mBatteryLevel:I

    iput v1, p0, mBatteryLevelWhenDreamStarted:I

    .line 2538
    if-ne v8, v4, :cond_78

    .line 2539
    const-string v1, "PowerManagerService"

    const-string v2, "Dozing..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    :cond_63
    :goto_63
    iget-boolean v1, p0, mSandmanSummoned:Z

    if-nez v1, :cond_6b

    iget v1, p0, mWakefulness:I

    if-eq v1, v8, :cond_83

    .line 2548
    :cond_6b
    monitor-exit v10
    :try_end_6c
    .catchall {:try_start_56 .. :try_end_6c} :catchall_80

    .line 2601
    :cond_6c
    :goto_6c
    return-void

    .end local v0    # "isDreaming":Z
    .end local v7    # "startDreaming":Z
    :cond_6d
    move v7, v9

    .line 2504
    goto :goto_21

    .line 2507
    :cond_6f
    const/4 v7, 0x0

    .restart local v7    # "startDreaming":Z
    goto :goto_24

    .line 2509
    .end local v7    # "startDreaming":Z
    .end local v8    # "wakefulness":I
    :catchall_71
    move-exception v1

    :try_start_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v1

    .restart local v7    # "startDreaming":Z
    .restart local v8    # "wakefulness":I
    :cond_74
    move v1, v9

    .line 2520
    goto :goto_3b

    .line 2524
    :cond_76
    const/4 v0, 0x0

    .restart local v0    # "isDreaming":Z
    goto :goto_44

    .line 2541
    :cond_78
    :try_start_78
    const-string v1, "PowerManagerService"

    const-string v2, "Dreaming..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 2595
    :catchall_80
    move-exception v1

    monitor-exit v10
    :try_end_82
    .catchall {:try_start_78 .. :try_end_82} :catchall_80

    throw v1

    .line 2552
    :cond_83
    if-ne v8, v5, :cond_12f

    .line 2553
    if-eqz v0, :cond_d2

    :try_start_87
    invoke-direct {p0}, canDreamLocked()Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 2554
    iget v1, p0, mDreamsBatteryLevelDrainCutoffConfig:I

    if-ltz v1, :cond_108

    iget v1, p0, mBatteryLevel:I

    iget v2, p0, mBatteryLevelWhenDreamStarted:I

    iget v3, p0, mDreamsBatteryLevelDrainCutoffConfig:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_108

    invoke-direct {p0}, isBeingKeptAwakeLocked()Z

    move-result v1

    if-nez v1, :cond_108

    .line 2561
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping dream because the battery appears to be draining faster than it is charging.  Battery level when dream started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mBatteryLevelWhenDreamStarted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%.  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Battery level now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mBatteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    :cond_d2
    invoke-direct {p0}, isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 2574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dream(timeout)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mScreenOffReason:Ljava/lang/String;

    .line 2576
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, goToSleepNoUpdateLocked(JIII)Z

    .line 2578
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 2595
    :cond_fe
    :goto_fe
    monitor-exit v10
    :try_end_ff
    .catchall {:try_start_87 .. :try_end_ff} :catchall_80

    .line 2598
    if-eqz v0, :cond_6c

    .line 2599
    iget-object v1, p0, mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1, v9}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    goto/16 :goto_6c

    .line 2567
    :cond_108
    :try_start_108
    monitor-exit v10

    goto/16 :goto_6c

    .line 2581
    :cond_10b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dream end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mScreenOnReason:Ljava/lang/String;

    .line 2583
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v1, 0x3e8

    invoke-direct {p0, v2, v3, v1}, wakeUpNoUpdateLocked(JI)Z

    .line 2584
    invoke-direct {p0}, updatePowerStateLocked()V

    goto :goto_fe

    .line 2586
    :cond_12f
    if-ne v8, v4, :cond_fe

    .line 2587
    if-eqz v0, :cond_136

    .line 2588
    monitor-exit v10

    goto/16 :goto_6c

    .line 2592
    :cond_136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v1, 0x3e8

    invoke-direct {p0, v2, v3, v1}, reallyGoToSleepNoUpdateLocked(JI)Z

    .line 2593
    invoke-direct {p0}, updatePowerStateLocked()V
    :try_end_142
    .catchall {:try_start_108 .. :try_end_142} :catchall_80

    goto :goto_fe
.end method

.method private handleSettingsChangedLocked()V
    .registers 1

    .prologue
    .line 1199
    invoke-direct {p0}, updateSettingsLocked()V

    .line 1200
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 1201
    return-void
.end method

.method private handleSmartStay(Z)V
    .registers 12
    .param p1, "bPreTest"    # Z

    .prologue
    .line 5346
    const-string v8, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[smart stay] handleSmartStay"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_2d

    const-string v1, "(preTest)"

    :goto_11
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5347
    const/4 v1, 0x0

    iput-boolean v1, p0, mFaceDetected:Z

    .line 5349
    iget v1, p0, mWakeLockSummary:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_30

    .line 5350
    const-string v1, "PowerManagerService"

    const-string v8, "[smart stay] handleSmartStay : skip smart stay because of screen bright wake lock"

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5389
    :cond_2c
    :goto_2c
    return-void

    .line 5346
    :cond_2d
    const-string v1, ""

    goto :goto_11

    .line 5354
    :cond_30
    iget-boolean v1, p0, mIsFolderType:Z

    if-eqz v1, :cond_40

    .line 5355
    iget-boolean v1, p0, mIsLidClosed:Z

    if-eqz v1, :cond_40

    .line 5356
    const-string v1, "PowerManagerService"

    const-string v8, "[smart stay] handleSmartStay : skip smart stay because folder is closed"

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 5361
    :cond_40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 5362
    .local v6, "startTimeFaceDetect":J
    invoke-direct {p0}, faceDetect()Z

    move-result v0

    .line 5363
    .local v0, "bFaceDetected":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 5365
    .local v4, "finishTimeFaceDetect":J
    sub-long v2, v4, v6

    .line 5367
    .local v2, "elapsedTime":J
    if-eqz p1, :cond_8e

    .line 5368
    iget-wide v8, p0, mNextTimeoutForPreSmartStay:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_6f

    iget-wide v8, p0, mNextTimeoutForSmartStay:J

    cmp-long v1, v4, v8

    if-gez v1, :cond_6f

    .line 5370
    if-nez v0, :cond_2c

    .line 5371
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v8, p0, mFaceDetectedFailIntent:Landroid/content/Intent;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5372
    const-string v1, "PowerManagerService"

    const-string v8, "[smart stay] handleSmartStay(preTest) : sendBroadcast done."

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 5376
    :cond_6f
    const-string v1, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[smart stay] handleSmartStay(preTest) : canceled (T:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 5380
    :cond_8e
    iget-wide v8, p0, mNextTimeoutForSmartStay:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_b2

    .line 5381
    iput-boolean v0, p0, mFaceDetected:Z

    .line 5382
    const-string v1, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[smart stay] handleSmartStay : mFaceDetected : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, mFaceDetected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 5386
    :cond_b2
    const-string v1, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[smart stay] handleSmartStay : canceled (T:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c
.end method

.method private handleUserActivityTimeout()V
    .registers 3

    .prologue
    .line 2319
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2324
    :try_start_3
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, mDirty:I

    .line 2325
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 2326
    monitor-exit v1

    .line 2327
    return-void

    .line 2326
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private handleWakeLockDeath(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 6
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1333
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] handleWakeLockDeath : release WakeLock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1341
    :try_start_1b
    iget-object v1, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1342
    .local v0, "index":I
    if-gez v0, :cond_25

    .line 1343
    monitor-exit v2

    .line 1348
    :goto_24
    return-void

    .line 1346
    :cond_25
    invoke-direct {p0, p1, v0}, removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1347
    monitor-exit v2

    goto :goto_24

    .end local v0    # "index":I
    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private initSmartStay()V
    .registers 4

    .prologue
    .line 5321
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "[smart stay] "

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    .line 5322
    iget-object v0, p0, mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5324
    new-instance v0, Lcom/android/server/power/PowerManagerService$8;

    iget-object v1, p0, mHandlerThreadSmartStay:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$8;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, mHandlerSmartStay:Landroid/os/Handler;

    .line 5342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, mFaceDetectedFailIntent:Landroid/content/Intent;

    .line 5343
    return-void
.end method

.method private isAlpmModeInternal()Z
    .registers 2

    .prologue
    .line 3560
    iget-boolean v0, p0, mIsAlpmMode:Z

    return v0
.end method

.method private isBeingKeptAwakeLocked()Z
    .registers 2

    .prologue
    .line 2450
    iget-boolean v0, p0, mStayOn:Z

    if-nez v0, :cond_10

    iget v0, p0, mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_10

    iget v0, p0, mUserActivitySummary:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isCoverOpen()Z
    .registers 6

    .prologue
    .line 5216
    const/4 v1, 0x1

    .line 5217
    .local v1, "ret":Z
    const-string v2, "/sys/class/sec/sec_key/hall_detect"

    invoke-direct {p0, v2}, readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5219
    .local v0, "coverState":Ljava/lang/String;
    const-string v2, "CLOSE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5220
    const/4 v1, 0x0

    .line 5230
    :goto_10
    return v1

    .line 5222
    :cond_11
    const-string v2, "OPEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 5223
    const/4 v1, 0x1

    goto :goto_10

    .line 5226
    :cond_1b
    const-string v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCoverOpen : UNKNOWN STATE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5227
    const/4 v1, 0x1

    goto :goto_10
.end method

.method private isInteractiveInternal()Z
    .registers 3

    .prologue
    .line 3258
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3259
    :try_start_3
    iget-boolean v0, p0, mInteractive:Z

    monitor-exit v1

    return v0

    .line 3260
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private isItBedTimeYetLocked()Z
    .registers 2

    .prologue
    .line 2438
    iget-boolean v0, p0, mBootCompleted:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, isBeingKeptAwakeLocked()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isLowPowerModeInternal()Z
    .registers 3

    .prologue
    .line 3264
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3265
    :try_start_3
    iget-boolean v0, p0, mLowPowerModeEnabled:Z

    monitor-exit v1

    return v0

    .line 3266
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z
    .registers 3

    .prologue
    .line 3379
    iget v0, p0, mMaximumScreenOffTimeoutFromDeviceAdmin:I

    if-ltz v0, :cond_d

    iget v0, p0, mMaximumScreenOffTimeoutFromDeviceAdmin:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isPreSmartStayNeeded(J)Z
    .registers 10
    .param p1, "now"    # J

    .prologue
    const/4 v0, 0x1

    .line 5392
    iget-boolean v1, p0, USE_PRE_SMART_STAY:Z

    if-eqz v1, :cond_18

    iget v1, p0, mUserActivitySummary:I

    if-ne v1, v0, :cond_18

    iget-wide v2, p0, mNextTimeoutForPreSmartStay:J

    cmp-long v1, p1, v2

    if-gez v1, :cond_18

    iget-wide v2, p0, mNextTimeoutForPreSmartStay:J

    iget-wide v4, p0, mNextTimeoutForSmartStay:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_18

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private isProximityPositve()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1585
    invoke-direct {p0}, shouldUseProximitySensorLocked()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, mProximityPositive:Z

    if-ne v1, v0, :cond_c

    .line 1588
    .local v0, "proxEnabled":Z
    :goto_b
    return v0

    .line 1585
    .end local v0    # "proxEnabled":Z
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private isQuickBootCall()Z
    .registers 9

    .prologue
    .line 1475
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1478
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1480
    .local v5, "runningList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1481
    .local v1, "callingPid":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1482
    .local v4, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v1, :cond_16

    .line 1483
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 1484
    .local v3, "process":Ljava/lang/String;
    const-string v6, "com.qapp.quickboot"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1485
    const/4 v6, 0x1

    .line 1488
    .end local v3    # "process":Ljava/lang/String;
    .end local v4    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_31
    return v6

    :cond_32
    const/4 v6, 0x0

    goto :goto_31
.end method

.method private static isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 3
    .param p0, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1268
    iget v0, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_e

    .line 1274
    const/4 v0, 0x0

    :goto_a
    return v0

    .line 1272
    :sswitch_b
    const/4 v0, 0x1

    goto :goto_a

    .line 1268
    nop

    :sswitch_data_e
    .sparse-switch
        0x6 -> :sswitch_b
        0xa -> :sswitch_b
        0x1a -> :sswitch_b
    .end sparse-switch
.end method

.method private isSmartStayNeeded(J)Z
    .registers 6
    .param p1, "now"    # J

    .prologue
    .line 5399
    iget-wide v0, p0, mNextTimeoutForSmartStay:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isSupportCover()Z
    .registers 5

    .prologue
    .line 5277
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.cover.flip"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 5278
    .local v0, "sIsFilpCoverSystemFeatureEnabled":Z
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.cover.sview"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 5279
    .local v1, "sIsSViewCoverSystemFeatureEnabled":Z
    if-nez v0, :cond_1c

    if-eqz v1, :cond_1e

    :cond_1c
    const/4 v2, 0x1

    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private isTablet()Z
    .registers 3

    .prologue
    .line 5420
    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5422
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private static isValidAutoBrightnessAdjustment(F)Z
    .registers 2
    .param p0, "value"    # F

    .prologue
    .line 2980
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_e

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isValidBrightness(I)Z
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 2975
    if-ltz p0, :cond_8

    const/16 v0, 0xff

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isWakeLockLevelSupportedInternal(I)Z
    .registers 6
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1455
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1456
    sparse-switch p1, :sswitch_data_20

    .line 1468
    :try_start_8
    monitor-exit v2

    move v0, v1

    :goto_a
    return v0

    .line 1462
    :sswitch_b
    monitor-exit v2

    goto :goto_a

    .line 1470
    :catchall_d
    move-exception v0

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v0

    .line 1465
    :sswitch_10
    :try_start_10
    iget-boolean v3, p0, mSystemReady:Z

    if-eqz v3, :cond_1e

    iget-object v3, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->isProximitySensorAvailable()Z

    move-result v3

    if-eqz v3, :cond_1e

    :goto_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_d

    goto :goto_a

    :cond_1e
    move v0, v1

    goto :goto_1c

    .line 1456
    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_b
        0x6 -> :sswitch_b
        0xa -> :sswitch_b
        0x1a -> :sswitch_b
        0x20 -> :sswitch_10
        0x40 -> :sswitch_b
    .end sparse-switch
.end method

.method public static lowLevelReboot(Ljava/lang/String;)V
    .registers 7
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 3509
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] lowLevelReboot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, callerInfoToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3511
    if-nez p0, :cond_24

    .line 3512
    const-string p0, ""

    .line 3515
    :cond_24
    const-string/jumbo v3, "recovery"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 3524
    const-string v3, "ctl.start"

    const-string/jumbo v4, "pre-recovery"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3525
    const-wide/32 v0, 0x1d4c0

    .line 3531
    .local v0, "duration":J
    :goto_38
    :try_start_38
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3b} :catch_59

    .line 3535
    :goto_3b
    return-void

    .line 3527
    .end local v0    # "duration":J
    :cond_3c
    const-string/jumbo v3, "sys.powerctl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reboot,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3528
    const-wide/16 v0, 0x4e20

    .restart local v0    # "duration":J
    goto :goto_38

    .line 3532
    :catch_59
    move-exception v2

    .line 3533
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3b
.end method

.method public static lowLevelShutdown()V
    .registers 3

    .prologue
    .line 3494
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] lowLevelShutdown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, callerInfoToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    const-string/jumbo v0, "sys.powerctl"

    const-string/jumbo v1, "shutdown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3497
    return-void
.end method

.method private napInternal(JI)V
    .registers 7
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    .line 1794
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1795
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, napNoUpdateLocked(JI)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1796
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 1798
    :cond_c
    monitor-exit v1

    .line 1799
    return-void

    .line 1798
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private napNoUpdateLocked(JI)Z
    .registers 11
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    const/4 v1, 0x0

    const-wide/32 v4, 0x20000

    const/4 v0, 0x1

    .line 1806
    iget-wide v2, p0, mLastWakeTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_17

    iget v2, p0, mWakefulness:I

    if-ne v2, v0, :cond_17

    iget-boolean v2, p0, mBootCompleted:Z

    if-eqz v2, :cond_17

    iget-boolean v2, p0, mSystemReady:Z

    if-nez v2, :cond_19

    :cond_17
    move v0, v1

    .line 1822
    :goto_18
    return v0

    .line 1811
    :cond_19
    const-string v1, "nap"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1813
    :try_start_1e
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nap time (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    iget v1, p0, mDirty:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, mDirty:I

    .line 1816
    const/4 v1, 0x2

    iput v1, p0, mWakefulness:I

    .line 1817
    const/4 v1, 0x1

    iput-boolean v1, p0, mSandmanSummoned:Z

    .line 1818
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, setInteractiveStateLocked(ZI)V
    :try_end_4d
    .catchall {:try_start_1e .. :try_end_4d} :catchall_51

    .line 1820
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_18

    :catchall_51
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private static native nativeAcquireSuspendBlocker(Ljava/lang/String;)V
.end method

.method private native nativeInit()V
.end method

.method private static native nativeReleaseSuspendBlocker(Ljava/lang/String;)V
.end method

.method private static native nativeSendPowerHint(II)V
.end method

.method private static native nativeSetAutoSuspend(Z)V
.end method

.method private static native nativeSetInteractive(Z)V
.end method

.method private needDisplaySuspendBlockerLocked()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3204
    iget-boolean v1, p0, mDisplayReady:Z

    if-nez v1, :cond_6

    .line 3224
    :cond_5
    :goto_5
    return v0

    .line 3207
    :cond_6
    iget-object v1, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3224
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 10
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1427
    iget-boolean v0, p0, mSystemReady:Z

    if-eqz v0, :cond_1a

    .line 1428
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1429
    iget-object v0, p0, mNotifier:Lcom/android/server/power/Notifier;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1433
    :cond_1a
    return-void
.end method

.method private notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 25
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "ws"    # Landroid/os/WorkSource;
    .param p8, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 1437
    move-object/from16 v0, p0

    iget-boolean v1, v0, mSystemReady:Z

    if-eqz v1, :cond_3d

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v1, :cond_3d

    .line 1438
    move-object/from16 v0, p0

    iget-object v1, v0, mNotifier:Lcom/android/server/power/Notifier;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v1 .. v15}, Lcom/android/server/power/Notifier;->onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1442
    :cond_3d
    return-void
.end method

.method private notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .registers 10
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    .line 1445
    iget-boolean v0, p0, mSystemReady:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    if-eqz v0, :cond_1e

    .line 1446
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 1447
    iget-object v0, p0, mNotifier:Lcom/android/server/power/Notifier;

    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget-object v7, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1451
    :cond_1e
    return-void
.end method

.method private powerHintInternal(II)V
    .registers 3
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .prologue
    .line 3471
    invoke-static {p1, p2}, nativeSendPowerHint(II)V

    .line 3472
    return-void
.end method

.method private printCallerInfo()V
    .registers 7

    .prologue
    const/4 v5, 0x5

    .line 5516
    const-string v1, ""

    .line 5517
    .local v1, "retStr":Ljava/lang/String;
    invoke-static {}, callerInfoToString()Ljava/lang/String;

    move-result-object v1

    .line 5519
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 5520
    .local v2, "ste":[Ljava/lang/StackTraceElement;
    array-length v3, v2

    if-le v3, v5, :cond_a4

    .line 5521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x8

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5529
    :cond_8b
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5530
    return-void

    .line 5524
    :cond_a4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a5
    array-length v3, v2

    if-ge v0, v3, :cond_8b

    .line 5525
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5524
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5
.end method

.method private static printCurrentClassAndMethod()V
    .registers 5

    .prologue
    const/4 v4, 0x3

    .line 5573
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 5574
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[flow] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "()  in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5575
    return-void
.end method

.method private printWakeLockLocked()V
    .registers 13

    .prologue
    .line 5594
    iget-boolean v5, p0, mSystemReady:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v5, :cond_9b

    .line 5596
    :cond_a
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL] On : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, mLastWakeTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5598
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]  mStayOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, mStayOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mWakeLockSummary & WAKE_LOCK_STAY_AWAKE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mWakeLockSummary:I

    and-int/lit8 v7, v7, 0x20

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mUserActivitySummary: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mUserActivitySummary:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5603
    iget v5, p0, mWakeLockSummary:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_22b

    .line 5604
    iget-object v5, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_70
    :goto_70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 5605
    .local v4, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-static {v4}, isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 5606
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 5613
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_9b
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL] Off : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, timeSinceScreenWasLastOn()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "s ago"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5615
    iget-object v5, p0, mSuspendBlockers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c7
    :goto_c7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/SuspendBlocker;

    .local v2, "sb":Lcom/android/server/power/SuspendBlocker;
    move-object v3, v2

    .line 5616
    check-cast v3, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    .line 5617
    .local v3, "sbImpl":Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;
    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 5618
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5620
    # getter for: Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->access$9900(Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    check-cast v5, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    # getter for: Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->access$9900(Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_197

    .line 5623
    iget v5, p0, mWakeLockSummary:I

    and-int/lit8 v5, v5, -0x11

    if-eqz v5, :cond_c7

    .line 5625
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]     mWakeLockSummary : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mWakeLockSummary:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5627
    iget v5, p0, mWakeLockSummary:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_160

    .line 5628
    iget-object v5, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_136
    :goto_136
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_160

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 5629
    .restart local v4    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v5, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_136

    .line 5630
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]       "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_136

    .line 5634
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_160
    iget v5, p0, mWakeLockSummary:I

    and-int/lit8 v5, v5, -0x2

    if-eqz v5, :cond_c7

    .line 5635
    iget-object v5, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_16c
    :goto_16c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 5636
    .restart local v4    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-static {v4}, isScreenLock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v5

    if-eqz v5, :cond_16c

    .line 5637
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]       "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16c

    .line 5643
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_197
    # getter for: Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->access$9900(Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    check-cast v5, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;

    # getter for: Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->access$9900(Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 5644
    iget v5, p0, mUserActivitySummary:I

    if-eqz v5, :cond_1cb

    .line 5645
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]     mUserActivitySummary : 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mUserActivitySummary:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5648
    :cond_1cb
    iget-object v5, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v5, :cond_1ed

    .line 5649
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]     mDisplayPowerRequest.policy : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5652
    :cond_1ed
    iget-boolean v5, p0, mDisplayReady:Z

    if-nez v5, :cond_20b

    .line 5653
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]     mDisplayReady : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, mDisplayReady:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5656
    :cond_20b
    iget-boolean v5, p0, mBootCompleted:Z

    if-nez v5, :cond_c7

    .line 5657
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PWL]     mBootCompleted : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, mBootCompleted:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c7

    .line 5663
    .end local v2    # "sb":Lcom/android/server/power/SuspendBlocker;
    .end local v3    # "sbImpl":Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;
    :cond_22b
    return-void
.end method

.method private readConfigurationLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 924
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 926
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x112005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    .line 928
    const v1, 0x112005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mDecoupleHalInteractiveModeFromDisplayConfig:Z

    .line 935
    iput-boolean v2, p0, mWakeUpWhenPluggedOrUnpluggedConfig:Z

    .line 937
    const v1, 0x112002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 939
    const v1, 0x1120055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mDreamsSupportedConfig:Z

    .line 941
    const v1, 0x1120056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mDreamsEnabledByDefaultConfig:Z

    .line 943
    const v1, 0x1120058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mDreamsActivatedOnSleepByDefaultConfig:Z

    .line 945
    const v1, 0x1120057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mDreamsActivatedOnDockByDefaultConfig:Z

    .line 947
    const v1, 0x1120059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mDreamsEnabledOnBatteryConfig:Z

    .line 949
    const v1, 0x10e0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, mDreamsBatteryLevelMinimumWhenPoweredConfig:I

    .line 951
    const v1, 0x10e0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, mDreamsBatteryLevelMinimumWhenNotPoweredConfig:I

    .line 953
    const v1, 0x10e006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, mDreamsBatteryLevelDrainCutoffConfig:I

    .line 955
    const v1, 0x112005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, mDozeAfterScreenOffConfig:Z

    .line 957
    const v1, 0x10e006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, mMinimumScreenOffTimeoutConfig:I

    .line 959
    const v1, 0x10e006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, mMaximumScreenDimDurationConfig:I

    .line 961
    const v1, 0x1130001

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, mMaximumScreenDimRatioConfig:F

    .line 963
    return-void
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 5234
    const-string v3, ""

    .line 5235
    .local v3, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 5238
    .local v0, "buf":Ljava/io/BufferedReader;
    iget-boolean v4, p0, mFeatureCoverSysfs:Z

    if-nez v4, :cond_11

    .line 5239
    const-string v4, "PowerManagerService"

    const-string v5, "This device is not supported cover"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5240
    const-string v4, ""

    .line 5269
    :goto_10
    return-object v4

    .line 5245
    :cond_11
    :try_start_11
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1d} :catch_3a
    .catchall {:try_start_11 .. :try_end_1d} :catchall_4c

    .line 5247
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    if-eqz v1, :cond_29

    .line 5248
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 5249
    if-eqz v3, :cond_29

    .line 5250
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_28} :catch_5d
    .catchall {:try_start_1f .. :try_end_28} :catchall_5a

    move-result-object v3

    .line 5257
    :cond_29
    if-eqz v1, :cond_60

    .line 5259
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_34

    move-object v0, v1

    .line 5266
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_2f
    :goto_2f
    if-nez v3, :cond_58

    .line 5267
    const-string v4, ""

    goto :goto_10

    .line 5260
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_34
    move-exception v2

    .line 5261
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 5262
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2f

    .line 5253
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3a
    move-exception v2

    .line 5254
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3b
    const/4 v4, 0x0

    :try_start_3c
    iput-boolean v4, p0, mFeatureCoverSysfs:Z

    .line 5255
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_4c

    .line 5257
    if-eqz v0, :cond_2f

    .line 5259
    :try_start_43
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_2f

    .line 5260
    :catch_47
    move-exception v2

    .line 5261
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2f

    .line 5257
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_4c
    move-exception v4

    :goto_4d
    if-eqz v0, :cond_52

    .line 5259
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 5262
    :cond_52
    :goto_52
    throw v4

    .line 5260
    :catch_53
    move-exception v2

    .line 5261
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    .end local v2    # "e":Ljava/io/IOException;
    :cond_58
    move-object v4, v3

    .line 5269
    goto :goto_10

    .line 5257
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catchall_5a
    move-exception v4

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_4d

    .line 5253
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_5d
    move-exception v2

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_3b

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_60
    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2f
.end method

.method private reallyGoToSleepNoUpdateLocked(JI)Z
    .registers 11
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    const-wide/32 v4, 0x20000

    const/4 v0, 0x0

    .line 1832
    iget-wide v2, p0, mLastWakeTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_16

    iget v1, p0, mWakefulness:I

    if-eqz v1, :cond_16

    iget-boolean v1, p0, mBootCompleted:Z

    if-eqz v1, :cond_16

    iget-boolean v1, p0, mSystemReady:Z

    if-nez v1, :cond_17

    .line 1847
    :cond_16
    :goto_16
    return v0

    .line 1837
    :cond_17
    const-string/jumbo v0, "reallyGoToSleep"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1839
    :try_start_1d
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sleeping (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, mDirty:I

    .line 1842
    const/4 v0, 0x0

    iput v0, p0, mWakefulness:I

    .line 1843
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, setInteractiveStateLocked(ZI)V
    :try_end_49
    .catchall {:try_start_1d .. :try_end_49} :catchall_4e

    .line 1845
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1847
    const/4 v0, 0x1

    goto :goto_16

    .line 1845
    :catchall_4e
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private registerReceiverInSystemReady()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 879
    const-string v1, "PowerManagerService"

    const-string/jumbo v2, "registerReceiverInSystemReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 882
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 883
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 884
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$BatteryReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v3, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 886
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 887
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 888
    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 889
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$DreamReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$DreamReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v3, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 891
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 892
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 893
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v3, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 895
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 896
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 897
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/PowerManagerService$DockReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/power/PowerManagerService$DockReceiver;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    iget-object v3, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 900
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 901
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 903
    const-string v1, "android.settings.POWERSAVING_AUTO_ENABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 905
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mPowerSavingModeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 909
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mSipIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "ResponseAxT9Info"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 915
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.action.NO_USER_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, mNoUserActivityIntent:Landroid/content/Intent;

    .line 916
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.action.USER_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, mUserActivityIntent:Landroid/content/Intent;

    .line 917
    const/4 v1, 0x0

    iput-boolean v1, p0, mNoUserActivitySent:Z

    .line 920
    return-void
.end method

.method private releaseWakeLockInternal(Landroid/os/IBinder;I)V
    .registers 10
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 1288
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1289
    :try_start_3
    invoke-direct {p0, p1}, findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 1290
    .local v0, "index":I
    if-gez v0, :cond_b

    .line 1295
    monitor-exit v3

    .line 1329
    :goto_a
    return-void

    .line 1298
    :cond_b
    iget-object v2, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1304
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1a

    .line 1305
    const/4 v2, 0x1

    iput-boolean v2, p0, mRequestWaitForNegativeProximity:Z

    .line 1310
    :cond_1a
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_9e

    .line 1326
    :goto_23
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1327
    invoke-direct {p0, v1, v0}, removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 1328
    monitor-exit v3

    goto :goto_a

    .end local v0    # "index":I
    .end local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v2

    .line 1312
    .restart local v0    # "index":I
    .restart local v1    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :sswitch_31
    const/16 v2, 0xaa9

    const/4 v4, 0x2

    :try_start_34
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_23

    .line 1319
    :sswitch_47
    const-string v2, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[api] release WakeLock flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_34 .. :try_end_9d} :catchall_2e

    goto :goto_23

    .line 1310
    :sswitch_data_9e
    .sparse-switch
        0x1 -> :sswitch_31
        0x6 -> :sswitch_47
        0xa -> :sswitch_47
        0x1a -> :sswitch_47
        0x20 -> :sswitch_47
        0x40 -> :sswitch_47
    .end sparse-switch
.end method

.method private removeWakeLockLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V
    .registers 4
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "index"    # I

    .prologue
    .line 1351
    iget-object v0, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1352
    invoke-direct {p0, p1}, notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1354
    invoke-direct {p0, p1}, applyWakeLockFlagsOnReleaseLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 1355
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, mDirty:I

    .line 1356
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 1357
    return-void
.end method

.method private scheduleSandmanLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2481
    iget-boolean v1, p0, mSandmanScheduled:Z

    if-nez v1, :cond_16

    .line 2482
    iput-boolean v3, p0, mSandmanScheduled:Z

    .line 2483
    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2484
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2485
    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2487
    .end local v0    # "msg":Landroid/os/Message;
    :cond_16
    return-void
.end method

.method private setAlpmModeLockedInternal(ZIILandroid/os/IBinder;)V
    .registers 14
    .param p1, "on"    # Z
    .param p2, "startLine"    # I
    .param p3, "endLine"    # I
    .param p4, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 3564
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[api] setAlpmModeLocked : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", startLine : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", endLine : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.DEVICE_POWER"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3567
    const/4 v2, 0x0

    .line 3568
    .local v2, "out":Ljava/io/FileOutputStream;
    const-string v4, "/sys/class/lcd/panel/alpm"

    .line 3569
    .local v4, "sysfs":Ljava/lang/String;
    if-eqz p1, :cond_95

    const-string v5, "1"

    .line 3570
    .local v5, "value":Ljava/lang/String;
    :goto_3b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3574
    :try_start_64
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_6e} :catch_98
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6e} :catch_9d

    .line 3580
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_6e
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 3581
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 3582
    iput-boolean p1, p0, mIsAlpmMode:Z
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_7a} :catch_ad

    .line 3593
    iget-object v6, p0, mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

    if-nez v6, :cond_85

    .line 3594
    new-instance v6, Lcom/android/server/power/PowerManagerService$AlpmLock;

    invoke-direct {v6, p0, p4}, Lcom/android/server/power/PowerManagerService$AlpmLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V

    iput-object v6, p0, mAlpmLock:Lcom/android/server/power/PowerManagerService$AlpmLock;

    .line 3597
    :cond_85
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3598
    :try_start_88
    iget v6, p0, mDirty:I

    const/high16 v8, 0x40000

    or-int/2addr v6, v8

    iput v6, p0, mDirty:I

    .line 3599
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 3600
    monitor-exit v7
    :try_end_93
    .catchall {:try_start_88 .. :try_end_93} :catchall_aa

    move-object v2, v3

    .line 3601
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_94
    return-void

    .line 3569
    .end local v5    # "value":Ljava/lang/String;
    :cond_95
    const-string v5, "0"

    goto :goto_3b

    .line 3575
    .restart local v5    # "value":Ljava/lang/String;
    :catch_98
    move-exception v0

    .line 3576
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_99
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_94

    .line 3583
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_9d
    move-exception v0

    .line 3584
    .local v0, "e":Ljava/io/IOException;
    :goto_9e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3586
    :try_start_a1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a4} :catch_a5

    goto :goto_94

    .line 3587
    :catch_a5
    move-exception v1

    .line 3588
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_94

    .line 3600
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catchall_aa
    move-exception v6

    :try_start_ab
    monitor-exit v7
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw v6

    .line 3583
    :catch_ad
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_9e
.end method

.method private setAttentionLightInternal(ZI)V
    .registers 7
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 3385
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3386
    :try_start_4
    iget-boolean v1, p0, mSystemReady:Z

    if-nez v1, :cond_a

    .line 3387
    monitor-exit v3

    .line 3394
    :goto_9
    return-void

    .line 3389
    :cond_a
    iget-object v0, p0, mAttentionLight:Lcom/android/server/lights/Light;

    .line 3390
    .local v0, "light":Lcom/android/server/lights/Light;
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_15

    .line 3393
    const/4 v3, 0x2

    if-eqz p1, :cond_18

    const/4 v1, 0x3

    :goto_11
    invoke-virtual {v0, p2, v3, v1, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_9

    .line 3390
    .end local v0    # "light":Lcom/android/server/lights/Light;
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1

    .restart local v0    # "light":Lcom/android/server/lights/Light;
    :cond_18
    move v1, v2

    .line 3393
    goto :goto_11
.end method

.method private setButtonTimeoutOverrideFromWindowManagerInternal(J)V
    .registers 8
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 3476
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3477
    :try_start_3
    iget-wide v2, p0, mTouchKeyOffTimeoutOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2c

    .line 3478
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setButtonTimeoutOverrideFromWindowManagerInternal: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    iput-wide p1, p0, mTouchKeyOffTimeoutOverrideFromWindowManager:J

    .line 3481
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mDirty:I

    .line 3482
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 3484
    :cond_2c
    monitor-exit v1

    .line 3485
    return-void

    .line 3484
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private setDozeOverrideFromDreamManagerInternal(II)V
    .registers 5
    .param p1, "screenState"    # I
    .param p2, "screenBrightness"    # I

    .prologue
    .line 3459
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3460
    :try_start_3
    iget v0, p0, mDozeScreenStateOverrideFromDreamManager:I

    if-ne v0, p1, :cond_b

    iget v0, p0, mDozeScreenBrightnessOverrideFromDreamManager:I

    if-eq v0, p2, :cond_18

    .line 3462
    :cond_b
    iput p1, p0, mDozeScreenStateOverrideFromDreamManager:I

    .line 3463
    iput p2, p0, mDozeScreenBrightnessOverrideFromDreamManager:I

    .line 3464
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mDirty:I

    .line 3465
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 3467
    :cond_18
    monitor-exit v1

    .line 3468
    return-void

    .line 3467
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private setHalAutoSuspendModeLocked(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    const-wide/32 v2, 0x20000

    .line 3228
    iget-boolean v0, p0, mHalAutoSuspendModeEnabled:Z

    if-eq p1, v0, :cond_2c

    .line 3232
    iput-boolean p1, p0, mHalAutoSuspendModeEnabled:Z

    .line 3233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalAutoSuspend("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3235
    :try_start_26
    invoke-static {p1}, nativeSetAutoSuspend(Z)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2d

    .line 3237
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3240
    :cond_2c
    return-void

    .line 3237
    :catchall_2d
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setHalInteractiveModeLocked(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    const-wide/32 v2, 0x20000

    .line 3243
    iget-boolean v0, p0, mHalInteractiveModeEnabled:Z

    if-eq p1, v0, :cond_2c

    .line 3247
    iput-boolean p1, p0, mHalInteractiveModeEnabled:Z

    .line 3248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHalInteractive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3250
    :try_start_26
    invoke-static {p1}, nativeSetInteractive(Z)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2d

    .line 3252
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 3255
    :cond_2c
    return-void

    .line 3252
    :catchall_2d
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setInteractiveStateLocked(ZI)V
    .registers 4
    .param p1, "interactive"    # Z
    .param p2, "reason"    # I

    .prologue
    .line 1851
    iget-boolean v0, p0, mInteractive:Z

    if-eq v0, p1, :cond_11

    .line 1852
    invoke-direct {p0}, finishInteractiveStateChangeLocked()V

    .line 1854
    iput-boolean p1, p0, mInteractive:Z

    .line 1855
    const/4 v0, 0x1

    iput-boolean v0, p0, mInteractiveChanging:Z

    .line 1856
    iget-object v0, p0, mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/Notifier;->onInteractiveStateChangeStarted(ZI)V

    .line 1858
    :cond_11
    return-void
.end method

.method private setLowPowerModeInternal(Z)Z
    .registers 7
    .param p1, "mode"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3270
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3272
    :try_start_5
    iget-boolean v3, p0, mIsPowered:Z

    if-eqz v3, :cond_b

    .line 3273
    monitor-exit v2

    .line 3294
    :goto_a
    return v0

    .line 3275
    :cond_b
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "low_power"

    if-eqz p1, :cond_16

    move v0, v1

    :cond_16
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3277
    iput-boolean p1, p0, mLowPowerModeSetting:Z

    .line 3279
    iget-boolean v0, p0, mAutoLowPowerModeConfigured:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, mBatteryLevelLow:Z

    if-eqz v0, :cond_2c

    .line 3280
    if-eqz p1, :cond_32

    iget-boolean v0, p0, mAutoLowPowerModeSnoozing:Z

    if-eqz v0, :cond_32

    .line 3284
    const/4 v0, 0x0

    iput-boolean v0, p0, mAutoLowPowerModeSnoozing:Z

    .line 3293
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, updateLowPowerModeLocked()V

    .line 3294
    monitor-exit v2

    move v0, v1

    goto :goto_a

    .line 3285
    :cond_32
    if-nez p1, :cond_2c

    iget-boolean v0, p0, mAutoLowPowerModeSnoozing:Z

    if-nez v0, :cond_2c

    .line 3289
    const/4 v0, 0x1

    iput-boolean v0, p0, mAutoLowPowerModeSnoozing:Z

    goto :goto_2c

    .line 3295
    :catchall_3c
    move-exception v0

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method private setMaximumScreenOffTimeoutFromDeviceAdminInternal(I)V
    .registers 4
    .param p1, "timeMs"    # I

    .prologue
    .line 3371
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3372
    :try_start_3
    iput p1, p0, mMaximumScreenOffTimeoutFromDeviceAdmin:I

    .line 3373
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mDirty:I

    .line 3374
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 3375
    monitor-exit v1

    .line 3376
    return-void

    .line 3375
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private setScreenBrightnessOverrideFromWindowManagerInternal(I)V
    .registers 6
    .param p1, "brightness"    # I

    .prologue
    .line 3407
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3408
    :try_start_3
    iget v0, p0, mScreenBrightnessOverrideFromWindowManager:I

    if-eq v0, p1, :cond_2a

    .line 3410
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setScreenBrightnessOverrideFromWindowManagerInternal: brightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    iput p1, p0, mScreenBrightnessOverrideFromWindowManager:I

    .line 3413
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mDirty:I

    .line 3414
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 3416
    :cond_2a
    monitor-exit v1

    .line 3417
    return-void

    .line 3416
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method private setScreenDimDurationOverrideFromWindowManagerInternal(J)V
    .registers 8
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 2667
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2668
    :try_start_3
    iget-wide v2, p0, mScreenDimDurationOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2c

    .line 2669
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setScreenDimDurationOverrideFromWindowManagerInternal: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    iput-wide p1, p0, mScreenDimDurationOverrideFromWindowManager:J

    .line 2672
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mDirty:I

    .line 2673
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 2675
    :cond_2c
    monitor-exit v1

    .line 2676
    return-void

    .line 2675
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private setStayOnSettingInternal(I)V
    .registers 4
    .param p1, "val"    # I

    .prologue
    .line 3366
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3368
    return-void
.end method

.method private setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V
    .registers 4
    .param p1, "adj"    # F

    .prologue
    .line 3446
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3449
    :try_start_3
    iget v0, p0, mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_14

    .line 3450
    iput p1, p0, mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 3451
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mDirty:I

    .line 3452
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 3454
    :cond_14
    monitor-exit v1

    .line 3455
    return-void

    .line 3454
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private setTemporaryScreenBrightnessSettingOverrideInternal(I)V
    .registers 6
    .param p1, "brightness"    # I

    .prologue
    .line 3433
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3434
    :try_start_3
    iget v0, p0, mTemporaryScreenBrightnessSettingOverride:I

    if-eq v0, p1, :cond_2a

    .line 3436
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setTemporaryScreenBrightnessSettingOverrideInternal: brightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3438
    iput p1, p0, mTemporaryScreenBrightnessSettingOverride:I

    .line 3439
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mDirty:I

    .line 3440
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 3442
    :cond_2a
    monitor-exit v1

    .line 3443
    return-void

    .line 3442
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method private setUserActivityTimeoutLocked(J)V
    .registers 8
    .param p1, "now"    # J

    .prologue
    .line 5437
    iget-boolean v2, p0, mBootCompleted:Z

    if-eqz v2, :cond_2a

    .line 5438
    iget v2, p0, mUserActivityTimeoutSetting:I

    int-to-long v2, v2

    add-long v0, p1, v2

    .line 5440
    .local v0, "when":J
    iget-boolean v2, p0, mNoUserActivitySent:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 5441
    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5442
    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, mUserActivityTask:Lcom/android/server/power/PowerManagerService$UserActivityTask;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5445
    :cond_1c
    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5446
    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v3, p0, mUserActivityTimeoutTask:Lcom/android/server/power/PowerManagerService$UserActivityTimeoutTask;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 5449
    .end local v0    # "when":J
    :cond_2a
    return-void
.end method

.method private setUserActivityTimeoutOverrideFromWindowManagerInternal(J)V
    .registers 8
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 3420
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3421
    :try_start_3
    iget-wide v2, p0, mUserActivityTimeoutOverrideFromWindowManager:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2c

    .line 3423
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[api] setUserActivityTimeoutOverrideFromWindowManagerInternal: timeoutMillis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    iput-wide p1, p0, mUserActivityTimeoutOverrideFromWindowManager:J

    .line 3426
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, mDirty:I

    .line 3427
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 3429
    :cond_2c
    monitor-exit v1

    .line 3430
    return-void

    .line 3429
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private shouldNapAtBedTimeLocked()Z
    .registers 2

    .prologue
    .line 2427
    iget-boolean v0, p0, mDreamsActivateOnSleepSetting:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, mDreamsActivateOnDockSetting:Z

    if-eqz v0, :cond_e

    iget v0, p0, mDockState:I

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private shouldUseProximitySensorLocked()Z
    .registers 2

    .prologue
    .line 3145
    iget v0, p0, mWakeLockSummary:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z
    .registers 8
    .param p1, "wasPowered"    # Z
    .param p2, "oldPlugType"    # I
    .param p3, "dockedOnWirelessCharger"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2017
    iget-boolean v2, p0, mWakeUpWhenPluggedOrUnpluggedConfig:Z

    if-nez v2, :cond_7

    .line 2050
    :cond_6
    :goto_6
    return v0

    .line 2021
    :cond_7
    const-string/jumbo v2, "sys.quickboot.enable"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_6

    .line 2045
    iget-boolean v2, p0, mIsPowered:Z

    if-eqz v2, :cond_19

    iget v2, p0, mWakefulness:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    :cond_19
    move v0, v1

    .line 2050
    goto :goto_6
.end method

.method private shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    .registers 9
    .param p1, "shutdown"    # Z
    .param p2, "confirm"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "wait"    # Z

    .prologue
    .line 3309
    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, mSystemReady:Z

    if-nez v2, :cond_10

    .line 3310
    :cond_8
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Too early to call shutdown() or reboot()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3313
    :cond_10
    new-instance v1, Lcom/android/server/power/PowerManagerService$4;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/server/power/PowerManagerService$4;-><init>(Lcom/android/server/power/PowerManagerService;ZLjava/lang/String;Z)V

    .line 3333
    .local v1, "runnable":Ljava/lang/Runnable;
    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 3334
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3335
    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3338
    if-eqz p4, :cond_30

    .line 3339
    monitor-enter v1

    .line 3342
    :goto_27
    :try_start_27
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2b
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2d

    goto :goto_27

    .line 3343
    :catch_2b
    move-exception v2

    goto :goto_27

    .line 3346
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v2

    .line 3348
    :cond_30
    return-void
.end method

.method private updateDisplayPowerStateLocked(I)Z
    .registers 14
    .param p1, "dirty"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2844
    iget-boolean v3, p0, mDisplayReady:Z

    .line 2845
    .local v3, "oldDisplayReady":Z
    const v9, 0x4013f

    and-int/2addr v9, p1

    if-eqz v9, :cond_120

    .line 2857
    invoke-direct {p0}, getDesiredScreenPolicyLocked()I

    move-result v2

    .line 2858
    .local v2, "newScreenPolicy":I
    iget-object v9, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v2, v9, :cond_22

    .line 2859
    if-nez v2, :cond_22

    iget-object v9, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v9, :cond_22

    .line 2862
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, mLastScreenOffEventElapsedRealTime:J

    .line 2865
    :cond_22
    iget-object v9, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v2, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 2868
    iget v6, p0, mScreenBrightnessSettingDefault:I

    .line 2869
    .local v6, "screenBrightness":I
    const/4 v5, 0x0

    .line 2870
    .local v5, "screenAutoBrightnessAdjustment":F
    iget v9, p0, mScreenBrightnessModeSetting:I

    if-ne v9, v7, :cond_127

    move v0, v7

    .line 2873
    .local v0, "autoBrightness":Z
    :goto_2e
    const/4 v1, 0x0

    .line 2875
    .local v1, "isBrightnessOverriden":Z
    iget v9, p0, mScreenBrightnessOverrideFromWindowManager:I

    invoke-static {v9}, isValidBrightness(I)Z

    move-result v9

    if-eqz v9, :cond_12a

    .line 2876
    iget v6, p0, mScreenBrightnessOverrideFromWindowManager:I

    .line 2877
    const/4 v0, 0x0

    .line 2879
    const/4 v1, 0x1

    .line 2888
    :cond_3b
    :goto_3b
    iget-boolean v9, p0, mLastBrightnessOverrideState:Z

    if-eq v1, v9, :cond_69

    .line 2889
    const-string v9, "PowerManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateDisplayPowerStateLocked: Hide QuickPanel Brightness Bar: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pms_notification_panel_brightness_adjustment"

    if-eqz v1, :cond_142

    move v9, v8

    :goto_64
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2892
    iput-boolean v1, p0, mLastBrightnessOverrideState:Z

    .line 2897
    :cond_69
    iget-boolean v4, p0, mIsCoverClosed:Z

    .line 2898
    .local v4, "prevCoverClosed":Z
    iget-boolean v9, p0, mBootCompleted:Z

    if-nez v9, :cond_7c

    iget-boolean v9, p0, mFeatureCoverSysfs:Z

    if-eqz v9, :cond_7c

    .line 2899
    invoke-direct {p0}, isCoverOpen()Z

    move-result v9

    if-nez v9, :cond_145

    move v9, v7

    :goto_7a
    iput-boolean v9, p0, mIsCoverClosed:Z

    .line 2902
    :cond_7c
    iget-boolean v9, p0, mIsCoverClosed:Z

    if-eq v4, v9, :cond_9b

    .line 2903
    const-string v9, "PowerManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateDisplayPowerStateLocked: mIsCoverClosed = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, mIsCoverClosed:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    :cond_9b
    iget-boolean v9, p0, mIsFolderType:Z

    if-nez v9, :cond_b0

    iget-boolean v9, p0, mIsCoverClosed:Z

    if-eqz v9, :cond_b0

    if-eqz v0, :cond_b0

    .line 2907
    const/4 v0, 0x0

    .line 2908
    iget-object v9, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v9}, Landroid/hardware/display/DisplayManagerInternal;->getScreenBrightnessOnCover()I

    move-result v6

    .line 2909
    if-gez v6, :cond_b0

    .line 2910
    iget v6, p0, mScreenBrightnessSettingDefault:I

    .line 2914
    :cond_b0
    if-eqz v0, :cond_be

    .line 2915
    iget v6, p0, mScreenBrightnessSettingDefault:I

    .line 2916
    iget v9, p0, mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    invoke-static {v9}, isValidAutoBrightnessAdjustment(F)Z

    move-result v9

    if-eqz v9, :cond_148

    .line 2918
    iget v5, p0, mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 2925
    :cond_be
    :goto_be
    iget v9, p0, mScreenBrightnessSettingMaximum:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget v10, p0, mScreenBrightnessSettingMinimum:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2927
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v10, -0x40800000    # -1.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 2929
    iget-object v9, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v6, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    .line 2930
    iget-object v9, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v5, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 2932
    iget-object v9, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput-boolean v0, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    .line 2934
    iget-object v9, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, shouldUseProximitySensorLocked()Z

    move-result v10

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    .line 2936
    iget-object v9, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, p0, mLowPowerModeEnabled:Z

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    .line 2938
    iget-object v9, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p0}, isAlpmModeInternal()Z

    move-result v10

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isAlpmMode:Z

    .line 2941
    iget-object v9, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v9, v7, :cond_154

    .line 2942
    iget-object v9, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, p0, mDozeScreenStateOverrideFromDreamManager:I

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2943
    iget-object v9, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, p0, mDozeScreenBrightnessOverrideFromDreamManager:I

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    .line 2951
    :goto_10a
    iget-object v9, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, p0, mWakeUpEvenThoughProximityPositive:Z

    iput-boolean v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    .line 2954
    iget-object v9, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v10, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, p0, mRequestWaitForNegativeProximity:Z

    invoke-virtual {v9, v10, v11}, Landroid/hardware/display/DisplayManagerInternal;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v9

    iput-boolean v9, p0, mDisplayReady:Z

    .line 2956
    iput-boolean v8, p0, mRequestWaitForNegativeProximity:Z

    .line 2959
    iput-boolean v8, p0, mWakeUpEvenThoughProximityPositive:Z

    .line 2971
    .end local v0    # "autoBrightness":Z
    .end local v1    # "isBrightnessOverriden":Z
    .end local v2    # "newScreenPolicy":I
    .end local v4    # "prevCoverClosed":Z
    .end local v5    # "screenAutoBrightnessAdjustment":F
    .end local v6    # "screenBrightness":I
    :cond_120
    iget-boolean v9, p0, mDisplayReady:Z

    if-eqz v9, :cond_15e

    if-nez v3, :cond_15e

    :goto_126
    return v7

    .restart local v2    # "newScreenPolicy":I
    .restart local v5    # "screenAutoBrightnessAdjustment":F
    .restart local v6    # "screenBrightness":I
    :cond_127
    move v0, v8

    .line 2870
    goto/16 :goto_2e

    .line 2881
    .restart local v0    # "autoBrightness":Z
    .restart local v1    # "isBrightnessOverriden":Z
    :cond_12a
    iget v9, p0, mTemporaryScreenBrightnessSettingOverride:I

    invoke-static {v9}, isValidBrightness(I)Z

    move-result v9

    if-eqz v9, :cond_136

    .line 2882
    iget v6, p0, mTemporaryScreenBrightnessSettingOverride:I

    goto/16 :goto_3b

    .line 2883
    :cond_136
    iget v9, p0, mScreenBrightnessSetting:I

    invoke-static {v9}, isValidBrightness(I)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 2884
    iget v6, p0, mScreenBrightnessSetting:I

    goto/16 :goto_3b

    :cond_142
    move v9, v7

    .line 2890
    goto/16 :goto_64

    .restart local v4    # "prevCoverClosed":Z
    :cond_145
    move v9, v8

    .line 2899
    goto/16 :goto_7a

    .line 2920
    :cond_148
    iget v9, p0, mScreenAutoBrightnessAdjustmentSetting:F

    invoke-static {v9}, isValidAutoBrightnessAdjustment(F)Z

    move-result v9

    if-eqz v9, :cond_be

    .line 2922
    iget v5, p0, mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_be

    .line 2946
    :cond_154
    iget-object v9, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput v8, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 2947
    iget-object v9, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v10, -0x1

    iput v10, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto :goto_10a

    .end local v0    # "autoBrightness":Z
    .end local v1    # "isBrightnessOverriden":Z
    .end local v2    # "newScreenPolicy":I
    .end local v4    # "prevCoverClosed":Z
    .end local v5    # "screenAutoBrightnessAdjustment":F
    .end local v6    # "screenBrightness":I
    :cond_15e
    move v7, v8

    .line 2971
    goto :goto_126
.end method

.method private updateDreamLocked(IZ)V
    .registers 4
    .param p1, "dirty"    # I
    .param p2, "displayBecameReady"    # Z

    .prologue
    .line 2465
    and-int/lit16 v0, p1, 0x3f7

    if-nez v0, :cond_6

    if-eqz p2, :cond_d

    .line 2474
    :cond_6
    iget-boolean v0, p0, mDisplayReady:Z

    if-eqz v0, :cond_d

    .line 2475
    invoke-direct {p0}, scheduleSandmanLocked()V

    .line 2478
    :cond_d
    return-void
.end method

.method private updateInputDeviceLightStateLocked(I)V
    .registers 13
    .param p1, "dirty"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2704
    const v5, 0x1f031    # 1.78E-40f

    and-int/2addr v5, p1

    if-eqz v5, :cond_1a

    .line 2708
    const/4 v2, 0x2

    .line 2709
    .local v2, "touchKeyLightOn":I
    const/4 v0, 0x2

    .line 2711
    .local v0, "keyboardLightOn":I
    iget-object v5, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    if-eqz v5, :cond_13

    iget-object v5, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    if-nez v5, :cond_1b

    .line 2712
    :cond_13
    const-string v3, "PowerManagerService"

    const-string v4, "[input device light] updateInputDeviceLightStateLocked: not ready"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    .end local v0    # "keyboardLightOn":I
    .end local v2    # "touchKeyLightOn":I
    :cond_1a
    :goto_1a
    return-void

    .line 2717
    .restart local v0    # "keyboardLightOn":I
    .restart local v2    # "touchKeyLightOn":I
    :cond_1b
    const v5, 0x8000

    and-int/2addr v5, p1

    if-eqz v5, :cond_27

    .line 2718
    iget-boolean v5, p0, mInteractive:Z

    if-eqz v5, :cond_fa

    move v0, v3

    :goto_26
    move v2, v0

    .line 2723
    :cond_27
    const/high16 v5, 0x10000

    and-int/2addr v5, p1

    if-eqz v5, :cond_32

    .line 2724
    iget-boolean v5, p0, mIsKeyboardVisible:Z

    if-eqz v5, :cond_fd

    .line 2725
    const/4 v2, 0x0

    .line 2726
    const/4 v0, 0x1

    .line 2734
    :cond_32
    :goto_32
    and-int/lit8 v5, p1, 0x20

    if-eqz v5, :cond_a4

    .line 2735
    iget-wide v6, p0, mTouchKeyOffTimeoutOverrideFromWindowManager:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_101

    iget v5, p0, mTouchKeyOffTimeoutSetting:I

    if-eqz v5, :cond_101

    iget-wide v6, p0, mTouchKeyOffTimeoutOverrideFromWindowManager:J

    long-to-int v1, v6

    .line 2738
    .local v1, "timeout":I
    :goto_45
    if-lez v1, :cond_4d

    .line 2739
    const/16 v5, 0x5dc

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2741
    :cond_4d
    iget-object v5, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$1400(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v5

    if-eq v5, v1, :cond_69

    .line 2742
    iget-object v5, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightTimeout(I)V
    invoke-static {v5, v1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$1500(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)V

    .line 2743
    iget-object v5, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightTimeout(I)V
    invoke-static {v5, v1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$1500(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)V

    .line 2745
    iget-object v5, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$1400(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v5

    if-nez v5, :cond_105

    .line 2746
    const/4 v0, 0x0

    move v2, v0

    .line 2752
    :cond_69
    :goto_69
    iget-boolean v5, p0, mIsFolderType:Z

    if-eqz v5, :cond_82

    sget-boolean v5, mIsChinaSalesCode:Z

    if-eqz v5, :cond_82

    .line 2753
    iget-object v5, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$1400(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v5

    iget v6, p0, mKeyboardOffTimeoutSetting:I

    if-eq v5, v6, :cond_82

    .line 2754
    iget-object v5, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    iget v6, p0, mKeyboardOffTimeoutSetting:I

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightTimeout(I)V
    invoke-static {v5, v6}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$1500(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;I)V

    .line 2758
    :cond_82
    iget-boolean v5, p0, mTouchKeyForceDisable:Z

    if-nez v5, :cond_8a

    iget-boolean v5, p0, mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    if-eqz v5, :cond_109

    :cond_8a
    move v5, v3

    :goto_8b
    iget-boolean v6, p0, mPrevTouchKeyForceDisable:Z

    if-eq v5, v6, :cond_a4

    .line 2759
    iget-boolean v5, p0, mTouchKeyForceDisable:Z

    if-nez v5, :cond_97

    iget-boolean v5, p0, mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    if-eqz v5, :cond_10b

    .line 2760
    :cond_97
    const/4 v0, 0x0

    move v2, v0

    .line 2766
    :cond_99
    :goto_99
    iget-boolean v5, p0, mTouchKeyForceDisable:Z

    if-nez v5, :cond_a1

    iget-boolean v5, p0, mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    if-eqz v5, :cond_116

    :cond_a1
    move v5, v3

    :goto_a2
    iput-boolean v5, p0, mPrevTouchKeyForceDisable:Z

    .line 2771
    .end local v1    # "timeout":I
    :cond_a4
    and-int/lit16 v5, p1, 0x1000

    if-eqz v5, :cond_a9

    .line 2772
    const/4 v2, 0x1

    .line 2776
    :cond_a9
    and-int/lit16 v5, p1, 0x4000

    if-eqz v5, :cond_ae

    .line 2777
    const/4 v0, 0x1

    .line 2781
    :cond_ae
    sget-boolean v5, mIsNorthAmericaSalesCode:Z

    if-eqz v5, :cond_bc

    and-int/lit16 v5, p1, 0x2000

    if-eqz v5, :cond_bc

    .line 2782
    iget-boolean v5, p0, mIsSipVisible:Z

    if-nez v5, :cond_bc

    .line 2783
    const/4 v0, 0x1

    move v2, v0

    .line 2788
    :cond_bc
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_cc

    .line 2789
    iget v5, p0, mWakeLockSummary:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_118

    .line 2790
    iget-object v4, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightKeep(Z)V
    invoke-static {v4, v3}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$1600(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V

    .line 2791
    const/4 v2, 0x1

    .line 2802
    :cond_cc
    :goto_cc
    if-eq v2, v10, :cond_dd

    .line 2803
    iget-boolean v4, p0, mIsFolderType:Z

    if-eqz v4, :cond_138

    .line 2804
    if-ne v2, v3, :cond_130

    iget-boolean v4, p0, mIsKeyboardVisible:Z

    if-nez v4, :cond_130

    .line 2805
    iget-object v4, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v4, v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    .line 2814
    :cond_dd
    :goto_dd
    if-eq v0, v10, :cond_1a

    .line 2815
    iget-boolean v4, p0, mIsFolderType:Z

    if-eqz v4, :cond_1a

    .line 2816
    if-ne v0, v3, :cond_145

    iget-boolean v3, p0, mIsKeyboardVisible:Z

    if-eqz v3, :cond_145

    .line 2817
    sget-boolean v3, mIsChinaSalesCode:Z

    if-eqz v3, :cond_13e

    .line 2818
    invoke-direct {p0}, checkKeyNightMode()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2819
    iget-object v3, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v3, v0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    goto/16 :goto_1a

    :cond_fa
    move v0, v4

    .line 2718
    goto/16 :goto_26

    .line 2728
    :cond_fd
    const/4 v0, 0x0

    .line 2729
    const/4 v2, 0x1

    goto/16 :goto_32

    .line 2735
    :cond_101
    iget v1, p0, mTouchKeyOffTimeoutSetting:I

    goto/16 :goto_45

    .line 2748
    .restart local v1    # "timeout":I
    :cond_105
    const/4 v0, 0x1

    move v2, v0

    goto/16 :goto_69

    :cond_109
    move v5, v4

    .line 2758
    goto :goto_8b

    .line 2762
    :cond_10b
    iget-object v5, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$1400(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v5

    if-eqz v5, :cond_99

    .line 2763
    const/4 v0, 0x1

    move v2, v0

    goto :goto_99

    :cond_116
    move v5, v4

    .line 2766
    goto :goto_a2

    .line 2793
    .end local v1    # "timeout":I
    :cond_118
    iget-object v5, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightKeep()Z
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$1700(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 2794
    iget-object v5, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightKeep(Z)V
    invoke-static {v5, v4}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$1600(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;Z)V

    .line 2795
    iget-object v4, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    # invokes: Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->getInputDeviceLightTimeout()I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->access$1400(Lcom/android/server/power/PowerManagerService$InputDeviceLightState;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_cc

    .line 2796
    const/4 v2, 0x0

    goto :goto_cc

    .line 2806
    :cond_130
    if-nez v2, :cond_dd

    .line 2807
    iget-object v4, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v4, v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    goto :goto_dd

    .line 2810
    :cond_138
    iget-object v4, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v4, v2}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    goto :goto_dd

    .line 2822
    :cond_13e
    iget-object v3, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v3, v0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    goto/16 :goto_1a

    .line 2824
    :cond_145
    if-nez v0, :cond_1a

    .line 2825
    iget-object v3, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    invoke-virtual {v3, v0}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;->setInputDeviceLightOn(I)V

    goto/16 :goto_1a
.end method

.method private updateIsPoweredLocked(I)V
    .registers 15
    .param p1, "dirty"    # I

    .prologue
    const/16 v6, 0x3e8

    const/4 v4, 0x0

    .line 1941
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_a5

    .line 1942
    iget-boolean v10, p0, mIsPowered:Z

    .line 1943
    .local v10, "wasPowered":Z
    iget v9, p0, mPlugType:I

    .line 1944
    .local v9, "oldPlugType":I
    iget-boolean v8, p0, mBatteryLevelLow:Z

    .line 1945
    .local v8, "oldLevelLow":Z
    iget v7, p0, mBatteryLevel:I

    .line 1946
    .local v7, "oldBatteryLevel":I
    iget-object v1, p0, mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, mIsPowered:Z

    .line 1947
    iget-object v1, p0, mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v1

    iput v1, p0, mPlugType:I

    .line 1948
    iget-object v1, p0, mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    iput v1, p0, mBatteryLevel:I

    .line 1949
    iget-object v1, p0, mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v1

    iput-boolean v1, p0, mBatteryLevelLow:Z

    .line 1959
    iget-boolean v1, p0, mIsPowered:Z

    invoke-direct {p0, v1}, enableQbCharger(Z)V

    .line 1960
    iget-boolean v1, p0, mIsPowered:Z

    if-ne v10, v1, :cond_3d

    iget v1, p0, mPlugType:I

    if-eq v9, v1, :cond_9e

    .line 1962
    :cond_3d
    const-string v1, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[api] updateIsPoweredLocked : mIsPowered: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v11, p0, mIsPowered:Z

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " mPlugType: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v11, p0, mPlugType:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    iget v1, p0, mDirty:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, mDirty:I

    .line 1967
    iget-object v1, p0, mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    iget-boolean v5, p0, mIsPowered:Z

    iget v11, p0, mPlugType:I

    iget v12, p0, mBatteryLevel:I

    invoke-virtual {v1, v5, v11, v12}, Lcom/android/server/power/WirelessChargerDetector;->update(ZII)Z

    move-result v0

    .line 1975
    .local v0, "dockedOnWirelessCharger":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1976
    .local v2, "now":J
    invoke-direct {p0, v10, v9, v0}, shouldWakeUpWhenPluggedOrUnpluggedLocked(ZIZ)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 1979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " powered change"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mScreenOnReason:Ljava/lang/String;

    .line 1981
    invoke-direct {p0, v2, v3, v6}, wakeUpNoUpdateLocked(JI)Z

    :cond_99
    move-object v1, p0

    move v5, v4

    .line 1983
    invoke-direct/range {v1 .. v6}, userActivityNoUpdateLocked(JIII)Z

    .line 2007
    .end local v0    # "dockedOnWirelessCharger":Z
    .end local v2    # "now":J
    :cond_9e
    iget v1, p0, mBatteryLevel:I

    if-eq v7, v1, :cond_a5

    .line 2008
    invoke-virtual {p0}, updateLowPowerModeLocked()V

    .line 2012
    .end local v7    # "oldBatteryLevel":I
    .end local v8    # "oldLevelLow":Z
    .end local v9    # "oldPlugType":I
    .end local v10    # "wasPowered":Z
    :cond_a5
    return-void
.end method

.method private updatePowerStateLocked()V
    .registers 11

    .prologue
    const-wide/32 v8, 0x20000

    .line 1883
    iget-boolean v3, p0, mSystemReady:Z

    if-eqz v3, :cond_b

    iget v3, p0, mDirty:I

    if-nez v3, :cond_c

    .line 1934
    :cond_b
    :goto_b
    return-void

    .line 1886
    :cond_c
    iget-object v3, p0, mLock:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1887
    const-string v3, "PowerManagerService"

    const-string v6, "Power manager lock was not held when calling updatePowerStateLocked"

    invoke-static {v3, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    :cond_1b
    const-string/jumbo v3, "updatePowerState"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1893
    :try_start_21
    iget v3, p0, mDirty:I

    invoke-direct {p0, v3}, updateIsPoweredLocked(I)V

    .line 1894
    iget v3, p0, mDirty:I

    invoke-direct {p0, v3}, updateStayOnLocked(I)V

    .line 1899
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1900
    .local v4, "now":J
    const/4 v1, 0x0

    .line 1902
    .local v1, "dirtyPhase2":I
    :cond_30
    iget v0, p0, mDirty:I

    .line 1903
    .local v0, "dirtyPhase1":I
    or-int/2addr v1, v0

    .line 1904
    const/4 v3, 0x0

    iput v3, p0, mDirty:I

    .line 1906
    invoke-direct {p0, v0}, updateWakeLockSummaryLocked(I)V

    .line 1907
    invoke-direct {p0, v4, v5, v0}, updateUserActivitySummaryLocked(JI)V

    .line 1908
    invoke-direct {p0, v0}, updateWakefulnessLocked(I)Z

    move-result v3

    if-nez v3, :cond_30

    .line 1914
    invoke-direct {p0, v1}, updateDisplayPowerStateLocked(I)Z

    move-result v2

    .line 1916
    .local v2, "displayBecameReady":Z
    invoke-direct {p0, v1}, updateInputDeviceLightStateLocked(I)V

    .line 1920
    invoke-direct {p0, v1, v2}, updateDreamLocked(IZ)V

    .line 1923
    iget-boolean v3, p0, mDisplayReady:Z

    if-eqz v3, :cond_53

    .line 1924
    invoke-direct {p0}, finishInteractiveStateChangeLocked()V

    .line 1930
    :cond_53
    invoke-direct {p0}, updateSuspendBlockerLocked()V
    :try_end_56
    .catchall {:try_start_21 .. :try_end_56} :catchall_5a

    .line 1932
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_b

    .end local v0    # "dirtyPhase1":I
    .end local v1    # "dirtyPhase2":I
    .end local v2    # "displayBecameReady":Z
    .end local v4    # "now":J
    :catchall_5a
    move-exception v3

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method private updateSettingsLocked()V
    .registers 14

    .prologue
    const/16 v12, 0x64

    const/4 v11, -0x1

    const/4 v10, -0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 966
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 968
    .local v5, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v9, "screensaver_enabled"

    iget-boolean v6, p0, mDreamsEnabledByDefaultConfig:Z

    if-eqz v6, :cond_2c3

    move v6, v7

    :goto_14
    invoke-static {v5, v9, v6, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_2c6

    move v6, v7

    :goto_1b
    iput-boolean v6, p0, mDreamsEnabledSetting:Z

    .line 972
    const-string/jumbo v9, "screensaver_activate_on_sleep"

    iget-boolean v6, p0, mDreamsActivatedOnSleepByDefaultConfig:Z

    if-eqz v6, :cond_2c9

    move v6, v7

    :goto_25
    invoke-static {v5, v9, v6, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_2cc

    move v6, v7

    :goto_2c
    iput-boolean v6, p0, mDreamsActivateOnSleepSetting:Z

    .line 976
    const-string/jumbo v9, "screensaver_activate_on_dock"

    iget-boolean v6, p0, mDreamsActivatedOnDockByDefaultConfig:Z

    if-eqz v6, :cond_2cf

    move v6, v7

    :goto_36
    invoke-static {v5, v9, v6, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_2d2

    move v6, v7

    :goto_3d
    iput-boolean v6, p0, mDreamsActivateOnDockSetting:Z

    .line 980
    const-string/jumbo v6, "screen_off_timeout"

    const/16 v9, 0x3a98

    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, mScreenOffTimeoutSetting:I

    .line 983
    const-string/jumbo v6, "sleep_timeout"

    invoke-static {v5, v6, v11, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, mSleepTimeoutSetting:I

    .line 986
    const-string/jumbo v6, "stay_on_while_plugged_in"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, mStayOnWhilePluggedInSetting:I

    .line 989
    iget v3, p0, mScreenBrightnessSetting:I

    .line 990
    .local v3, "oldScreenBrightnessSetting":I
    const-string/jumbo v6, "screen_brightness"

    iget v9, p0, mScreenBrightnessSettingDefault:I

    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, mScreenBrightnessSetting:I

    .line 993
    iget v6, p0, mScreenBrightnessSetting:I

    if-eq v3, v6, :cond_6f

    .line 994
    iput v11, p0, mTemporaryScreenBrightnessSettingOverride:I

    .line 998
    :cond_6f
    iget v4, p0, mDynamicAutoBrightnessRatioValueSetting:I

    .line 999
    .local v4, "prevDynamicAutoBrightnessRatioValueSetting":I
    const-string v6, "auto_brightness_detail"

    invoke-static {v5, v6, v12, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, mDynamicAutoBrightnessRatioValueSetting:I

    .line 1001
    iget v6, p0, mDynamicAutoBrightnessRatioValueSetting:I

    if-eq v4, v6, :cond_8f

    .line 1002
    const/high16 v6, 0x7fc00000    # NaNf

    iput v6, p0, mTemporaryScreenAutoBrightnessAdjustmentSettingOverride:F

    .line 1003
    iget v6, p0, mDynamicAutoBrightnessRatioValueSetting:I

    if-eq v6, v12, :cond_2d5

    .line 1004
    iget v6, p0, mDynamicAutoBrightnessRatioValueSetting:I

    add-int/lit8 v6, v6, -0x64

    int-to-float v6, v6

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v6, v9

    iput v6, p0, mScreenAutoBrightnessAdjustmentSetting:F

    .line 1011
    :cond_8f
    :goto_8f
    const-string/jumbo v6, "screen_brightness_mode"

    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, mScreenBrightnessModeSetting:I

    .line 1016
    const-string v6, "button_key_light"

    const/16 v9, 0x5dc

    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, mTouchKeyOffTimeoutSetting:I

    .line 1021
    const-string v6, "emergency_mode"

    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v7, :cond_2da

    move v6, v7

    :goto_ab
    iput-boolean v6, p0, mEmergencyMode:Z

    .line 1027
    const-string/jumbo v6, "psm_switch"

    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v7, :cond_2dd

    move v6, v7

    :goto_b7
    iput-boolean v6, p0, mPowerSaveModeSettingBroadcasted:Z

    .line 1030
    const-string/jumbo v6, "psm_switch"

    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v7, :cond_2e0

    move v6, v7

    :goto_c3
    iput-boolean v6, p0, mLimitedPerformanceBroadcasted:Z

    .line 1031
    const-string/jumbo v6, "psm_touchkey_led"

    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v7, :cond_2e3

    move v6, v7

    :goto_cf
    iput-boolean v6, p0, mPSMtouchkeyLEDBroadcasted:Z

    .line 1032
    const-string/jumbo v6, "psm_display"

    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v7, :cond_2e6

    move v6, v7

    :goto_db
    iput-boolean v6, p0, mPSMDisplaySetting:Z

    .line 1035
    const-string v6, "ATT"

    sget-object v9, mSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_109

    .line 1036
    const-string/jumbo v6, "psm_auto_turn_on"

    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v7, :cond_2e9

    move v6, v7

    :goto_f1
    iput-boolean v6, p0, mATTautoPowerSavingModeSetting:Z

    .line 1037
    const-string v6, "isLowLevel"

    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v7, :cond_2ec

    move v6, v7

    :goto_fc
    iput-boolean v6, p0, mIsBatteryLowLevel:Z

    .line 1038
    iget-boolean v6, p0, mATTautoPowerSavingModeSetting:Z

    if-eqz v6, :cond_2ef

    iget-boolean v6, p0, mIsBatteryLowLevel:Z

    if-nez v6, :cond_2ef

    move v6, v7

    :goto_107
    iput-boolean v6, p0, mATTautoPowerSavingModeSuspend:Z

    .line 1042
    :cond_109
    iget-object v9, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v6, p0, mPowerSaveModeSettingBroadcasted:Z

    if-eqz v6, :cond_2f2

    iget-boolean v6, p0, mATTautoPowerSavingModeSuspend:Z

    if-nez v6, :cond_2f2

    iget-boolean v6, p0, mLimitedPerformanceBroadcasted:Z

    if-eqz v6, :cond_2f2

    iget-boolean v6, p0, mPSMDisplaySetting:Z

    if-eqz v6, :cond_2f2

    move v6, v7

    :goto_11c
    iput-boolean v6, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useSystemPowerSaveMode:Z

    .line 1050
    iget-boolean v6, p0, mPowerSaveModeSettingBroadcasted:Z

    if-eqz v6, :cond_12e

    iget-boolean v6, p0, mATTautoPowerSavingModeSuspend:Z

    if-nez v6, :cond_12e

    iget-boolean v6, p0, mLimitedPerformanceBroadcasted:Z

    if-eqz v6, :cond_12e

    iget-boolean v6, p0, mPSMtouchkeyLEDBroadcasted:Z

    if-nez v6, :cond_132

    :cond_12e
    iget-boolean v6, p0, mEmergencyMode:Z

    if-eqz v6, :cond_2f5

    :cond_132
    move v6, v7

    :goto_133
    iput-boolean v6, p0, mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    .line 1064
    const-string v6, "intelligent_sleep_mode"

    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_2f8

    move v6, v7

    :goto_13e
    iput-boolean v6, p0, mSmartStayEnabledSetting:Z

    .line 1070
    iget-boolean v6, p0, USE_DEVICE_LOCK_TIME:Z

    if-eqz v6, :cond_154

    .line 1071
    const-string v6, "is_secured_lock"

    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, mSecuredLockEnableSetting:I

    .line 1073
    const-string v6, "lock_screen_lock_after_timeout"

    invoke-static {v5, v6, v11, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, mSecuredLockTimeoutSetting:I

    .line 1081
    :cond_154
    const-string/jumbo v6, "user_activity_timeout"

    invoke-static {v5, v6, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, mUserActivityTimeoutSetting:I

    .line 1087
    const-string v6, "low_power"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2fb

    move v2, v7

    .line 1094
    .local v2, "lowPowerModeEnabled":Z
    :goto_166
    const-string v6, "low_power_trigger_level"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1096
    .local v1, "lowBatteryTriggerLevel":I
    if-eqz v1, :cond_2fe

    move v0, v7

    .line 1098
    .local v0, "autoLowPowerModeConfigured":Z
    :goto_16f
    iget-boolean v6, p0, mLowPowerModeSetting:Z

    if-ne v2, v6, :cond_17b

    iget v6, p0, mLowBatteryTriggerLevel:I

    if-ne v1, v6, :cond_17b

    iget-boolean v6, p0, mAutoLowPowerModeConfigured:Z

    if-eq v0, v6, :cond_184

    .line 1101
    :cond_17b
    iput-boolean v2, p0, mLowPowerModeSetting:Z

    .line 1102
    iput-boolean v0, p0, mAutoLowPowerModeConfigured:Z

    .line 1103
    iput v1, p0, mLowBatteryTriggerLevel:I

    .line 1104
    invoke-virtual {p0}, updateLowPowerModeLocked()V

    .line 1108
    :cond_184
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PSM] lowPowerModeEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mLowPowerModeSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, mLowPowerModeSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", autoLowPowerModeConfigured: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mAutoLowPowerModeConfigured: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, mAutoLowPowerModeConfigured:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", lowBatteryTriggerLevel: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mLowBatteryTriggerLevel: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mLowBatteryTriggerLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const-string v6, "PowerManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[api] updateSettingsLocked : mDreamsEnabledSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, mDreamsEnabledSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mDreamsActivateOnSleepSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, mDreamsActivateOnSleepSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mDreamsActivateOnDockSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, mDreamsActivateOnDockSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mScreenOffTimeoutSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mScreenOffTimeoutSetting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mStayOnWhilePluggedInSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mStayOnWhilePluggedInSetting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mScreenBrightnessSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mScreenBrightnessSetting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mScreenAutoBrightnessAdjustmentSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mScreenAutoBrightnessAdjustmentSetting:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mScreenBrightnessModeSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mScreenBrightnessModeSetting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mSmartStayEnabledSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, mSmartStayEnabledSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mTouchKeyOffTimeoutSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mTouchKeyOffTimeoutSetting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mKeyboardOffTimeoutSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mKeyboardOffTimeoutSetting:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mPowerSaveModeSettingBroadcasted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, mPowerSaveModeSettingBroadcasted:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mLimitedPerformanceBroadcasted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, mLimitedPerformanceBroadcasted:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " useSystemPowerSaveMode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useSystemPowerSaveMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mTouchKeyForceDisableOverrideFromSystemPowerSaveMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, mTouchKeyForceDisableOverrideFromSystemPowerSaveMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mATTautoPowerSavingModeSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, mATTautoPowerSavingModeSetting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mATTautoPowerSavingModeSuspend: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, mATTautoPowerSavingModeSuspend:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mEmergencyMode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, mEmergencyMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget v6, p0, mDirty:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, mDirty:I

    .line 1137
    return-void

    .end local v0    # "autoLowPowerModeConfigured":Z
    .end local v1    # "lowBatteryTriggerLevel":I
    .end local v2    # "lowPowerModeEnabled":Z
    .end local v3    # "oldScreenBrightnessSetting":I
    .end local v4    # "prevDynamicAutoBrightnessRatioValueSetting":I
    :cond_2c3
    move v6, v8

    .line 968
    goto/16 :goto_14

    :cond_2c6
    move v6, v8

    goto/16 :goto_1b

    :cond_2c9
    move v6, v8

    .line 972
    goto/16 :goto_25

    :cond_2cc
    move v6, v8

    goto/16 :goto_2c

    :cond_2cf
    move v6, v8

    .line 976
    goto/16 :goto_36

    :cond_2d2
    move v6, v8

    goto/16 :goto_3d

    .line 1006
    .restart local v3    # "oldScreenBrightnessSetting":I
    .restart local v4    # "prevDynamicAutoBrightnessRatioValueSetting":I
    :cond_2d5
    const/4 v6, 0x0

    iput v6, p0, mScreenAutoBrightnessAdjustmentSetting:F

    goto/16 :goto_8f

    :cond_2da
    move v6, v8

    .line 1021
    goto/16 :goto_ab

    :cond_2dd
    move v6, v8

    .line 1027
    goto/16 :goto_b7

    :cond_2e0
    move v6, v8

    .line 1030
    goto/16 :goto_c3

    :cond_2e3
    move v6, v8

    .line 1031
    goto/16 :goto_cf

    :cond_2e6
    move v6, v8

    .line 1032
    goto/16 :goto_db

    :cond_2e9
    move v6, v8

    .line 1036
    goto/16 :goto_f1

    :cond_2ec
    move v6, v8

    .line 1037
    goto/16 :goto_fc

    :cond_2ef
    move v6, v8

    .line 1038
    goto/16 :goto_107

    :cond_2f2
    move v6, v8

    .line 1042
    goto/16 :goto_11c

    :cond_2f5
    move v6, v8

    .line 1050
    goto/16 :goto_133

    :cond_2f8
    move v6, v8

    .line 1064
    goto/16 :goto_13e

    :cond_2fb
    move v2, v8

    .line 1087
    goto/16 :goto_166

    .restart local v1    # "lowBatteryTriggerLevel":I
    .restart local v2    # "lowPowerModeEnabled":Z
    :cond_2fe
    move v0, v8

    .line 1096
    goto/16 :goto_16f
.end method

.method private updateStayOnLocked(I)V
    .registers 5
    .param p1, "dirty"    # I

    .prologue
    .line 2058
    and-int/lit16 v1, p1, 0x120

    if-eqz v1, :cond_24

    .line 2059
    iget-boolean v0, p0, mStayOn:Z

    .line 2060
    .local v0, "wasStayOn":Z
    iget v1, p0, mStayOnWhilePluggedInSetting:I

    if-eqz v1, :cond_25

    invoke-direct {p0}, isMaximumScreenOffTimeoutFromDeviceAdminEnforcedLocked()Z

    move-result v1

    if-nez v1, :cond_25

    .line 2062
    iget-object v1, p0, mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget v2, p0, mStayOnWhilePluggedInSetting:I

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v1

    iput-boolean v1, p0, mStayOn:Z

    .line 2067
    :goto_1a
    iget-boolean v1, p0, mStayOn:Z

    if-eq v1, v0, :cond_24

    .line 2068
    iget v1, p0, mDirty:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, mDirty:I

    .line 2071
    .end local v0    # "wasStayOn":Z
    :cond_24
    return-void

    .line 2064
    .restart local v0    # "wasStayOn":Z
    :cond_25
    const/4 v1, 0x0

    iput-boolean v1, p0, mStayOn:Z

    goto :goto_1a
.end method

.method private updateSuspendBlockerLocked()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3154
    iget v5, p0, mWakeLockSummary:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_65

    move v2, v3

    .line 3155
    .local v2, "needWakeLockSuspendBlocker":Z
    :goto_9
    invoke-direct {p0}, needDisplaySuspendBlockerLocked()Z

    move-result v1

    .line 3156
    .local v1, "needDisplaySuspendBlocker":Z
    if-nez v1, :cond_67

    move v0, v3

    .line 3159
    .local v0, "autoSuspend":Z
    :goto_10
    if-nez v0, :cond_20

    .line 3160
    iget-boolean v5, p0, mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v5, :cond_19

    .line 3161
    invoke-direct {p0, v4}, setHalAutoSuspendModeLocked(Z)V

    .line 3163
    :cond_19
    iget-boolean v5, p0, mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v5, :cond_20

    .line 3164
    invoke-direct {p0, v3}, setHalInteractiveModeLocked(Z)V

    .line 3169
    :cond_20
    if-eqz v2, :cond_2d

    iget-boolean v5, p0, mHoldingWakeLockSuspendBlocker:Z

    if-nez v5, :cond_2d

    .line 3170
    iget-object v5, p0, mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v5}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3171
    iput-boolean v3, p0, mHoldingWakeLockSuspendBlocker:Z

    .line 3173
    :cond_2d
    if-eqz v1, :cond_3a

    iget-boolean v5, p0, mHoldingDisplaySuspendBlocker:Z

    if-nez v5, :cond_3a

    .line 3174
    iget-object v5, p0, mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v5}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3175
    iput-boolean v3, p0, mHoldingDisplaySuspendBlocker:Z

    .line 3179
    :cond_3a
    if-nez v2, :cond_47

    iget-boolean v5, p0, mHoldingWakeLockSuspendBlocker:Z

    if-eqz v5, :cond_47

    .line 3180
    iget-object v5, p0, mWakeLockSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v5}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3181
    iput-boolean v4, p0, mHoldingWakeLockSuspendBlocker:Z

    .line 3183
    :cond_47
    if-nez v1, :cond_54

    iget-boolean v5, p0, mHoldingDisplaySuspendBlocker:Z

    if-eqz v5, :cond_54

    .line 3184
    iget-object v5, p0, mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v5}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3185
    iput-boolean v4, p0, mHoldingDisplaySuspendBlocker:Z

    .line 3189
    :cond_54
    if-eqz v0, :cond_64

    .line 3190
    iget-boolean v5, p0, mDecoupleHalInteractiveModeFromDisplayConfig:Z

    if-eqz v5, :cond_5d

    .line 3191
    invoke-direct {p0, v4}, setHalInteractiveModeLocked(Z)V

    .line 3193
    :cond_5d
    iget-boolean v4, p0, mDecoupleHalAutoSuspendModeFromDisplayConfig:Z

    if-eqz v4, :cond_64

    .line 3194
    invoke-direct {p0, v3}, setHalAutoSuspendModeLocked(Z)V

    .line 3197
    :cond_64
    return-void

    .end local v0    # "autoSuspend":Z
    .end local v1    # "needDisplaySuspendBlocker":Z
    .end local v2    # "needWakeLockSuspendBlocker":Z
    :cond_65
    move v2, v4

    .line 3154
    goto :goto_9

    .restart local v1    # "needDisplaySuspendBlocker":Z
    .restart local v2    # "needWakeLockSuspendBlocker":Z
    :cond_67
    move v0, v4

    .line 3156
    goto :goto_10
.end method

.method private updateUserActivitySummaryLocked(JI)V
    .registers 19
    .param p1, "now"    # J
    .param p3, "dirty"    # I

    .prologue
    .line 2152
    and-int/lit8 v1, p3, 0x27

    if-eqz v1, :cond_1a6

    .line 2154
    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 2158
    iget-boolean v1, p0, mPendingMessageSmartStay:Z

    if-eqz v1, :cond_17

    .line 2159
    iget-object v1, p0, mHandlerSmartStay:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2160
    const/4 v1, 0x0

    iput-boolean v1, p0, mPendingMessageSmartStay:Z

    .line 2163
    :cond_17
    iget-boolean v1, p0, mPendingMessagePreSmartStay:Z

    if-eqz v1, :cond_24

    .line 2164
    iget-object v1, p0, mHandlerSmartStay:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2165
    const/4 v1, 0x0

    iput-boolean v1, p0, mPendingMessagePreSmartStay:Z

    .line 2170
    :cond_24
    const-wide/16 v10, 0x0

    .line 2171
    .local v10, "nextTimeout":J
    iget v1, p0, mWakefulness:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_35

    iget v1, p0, mWakefulness:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_35

    iget v1, p0, mWakefulness:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d0

    .line 2174
    :cond_35
    invoke-direct {p0}, getSleepTimeoutLocked()I

    move-result v14

    .line 2175
    .local v14, "sleepTimeout":I
    invoke-direct {p0, v14}, getScreenOffTimeoutLocked(I)I

    move-result v13

    .line 2176
    .local v13, "screenOffTimeout":I
    invoke-direct {p0, v13}, getScreenDimDurationLocked(I)I

    move-result v12

    .line 2178
    .local v12, "screenDimDuration":I
    const/4 v1, 0x0

    iput v1, p0, mUserActivitySummary:I

    .line 2179
    iget-wide v2, p0, mLastUserActivityTime:J

    iget-wide v4, p0, mLastWakeTime:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_5a

    .line 2180
    iget-wide v2, p0, mLastUserActivityTime:J

    int-to-long v4, v13

    add-long/2addr v2, v4

    int-to-long v4, v12

    sub-long v10, v2, v4

    .line 2182
    cmp-long v1, p1, v10

    if-gez v1, :cond_1a7

    .line 2183
    const/4 v1, 0x1

    iput v1, p0, mUserActivitySummary:I

    .line 2191
    :cond_5a
    :goto_5a
    iget v1, p0, mUserActivitySummary:I

    if-nez v1, :cond_79

    iget-wide v2, p0, mLastUserActivityTimeNoChangeLights:J

    iget-wide v4, p0, mLastWakeTime:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_79

    .line 2193
    iget-wide v2, p0, mLastUserActivityTimeNoChangeLights:J

    int-to-long v4, v13

    add-long v10, v2, v4

    .line 2194
    cmp-long v1, p1, v10

    if-gez v1, :cond_79

    .line 2195
    iget-object v1, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1b5

    .line 2196
    const/4 v1, 0x1

    iput v1, p0, mUserActivitySummary:I

    .line 2202
    :cond_79
    :goto_79
    iget v1, p0, mUserActivitySummary:I

    if-nez v1, :cond_97

    .line 2203
    if-ltz v14, :cond_1c1

    .line 2204
    iget-wide v2, p0, mLastUserActivityTime:J

    iget-wide v4, p0, mLastUserActivityTimeNoChangeLights:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 2206
    .local v8, "anyUserActivity":J
    iget-wide v2, p0, mLastWakeTime:J

    cmp-long v1, v8, v2

    if-ltz v1, :cond_97

    .line 2207
    int-to-long v2, v14

    add-long v10, v8, v2

    .line 2208
    cmp-long v1, p1, v10

    if-gez v1, :cond_97

    .line 2209
    const/4 v1, 0x4

    iput v1, p0, mUserActivitySummary:I

    .line 2220
    .end local v8    # "anyUserActivity":J
    :cond_97
    :goto_97
    iget-boolean v1, p0, mSmartStayEnabledSetting:Z

    if-eqz v1, :cond_f3

    .line 2221
    iget v1, p0, mLastUserActivitySummary:I

    iget v2, p0, mUserActivitySummary:I

    if-eq v1, v2, :cond_f3

    .line 2223
    const/4 v0, 0x0

    .line 2225
    .local v0, "bIsItTimeToCheckSmartStay":Z
    iget v1, p0, mLastUserActivitySummary:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a9

    .line 2226
    const/4 v0, 0x1

    .line 2229
    :cond_a9
    if-eqz v0, :cond_f3

    .line 2230
    iget-boolean v1, p0, mFaceDetected:Z

    if-eqz v1, :cond_f3

    .line 2231
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[smart stay] UserActivityState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mUserActivitySummary:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (face detected)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, userActivityNoUpdateLocked(JIII)Z

    .line 2236
    iget-wide v2, p0, mLastUserActivityTime:J

    int-to-long v4, v13

    add-long/2addr v2, v4

    int-to-long v4, v12

    sub-long v10, v2, v4

    .line 2237
    const/4 v1, 0x1

    iput v1, p0, mUserActivitySummary:I

    .line 2239
    const/4 v1, 0x0

    iput-boolean v1, p0, mFaceDetected:Z

    .line 2247
    .end local v0    # "bIsItTimeToCheckSmartStay":Z
    :cond_f3
    iget v1, p0, mUserActivitySummary:I

    if-eqz v1, :cond_15e

    const-wide/16 v2, 0x0

    cmp-long v1, v10, v2

    if-ltz v1, :cond_15e

    .line 2248
    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2249
    .local v7, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2250
    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1, v7, v10, v11}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2253
    iget-boolean v1, p0, mSmartStayEnabledSetting:Z

    if-eqz v1, :cond_15e

    .line 2254
    iget v1, p0, mUserActivitySummary:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_15e

    .line 2255
    iget v1, p0, mSmartStayDelay:I

    int-to-long v2, v1

    sub-long v2, v10, v2

    iput-wide v2, p0, mNextTimeoutForSmartStay:J

    .line 2256
    const-wide/16 v2, 0x1770

    sub-long v2, v10, v2

    iput-wide v2, p0, mNextTimeoutForPreSmartStay:J

    .line 2258
    iget-boolean v1, p0, USE_PRE_SMART_STAY:Z

    if-eqz v1, :cond_143

    .line 2259
    invoke-direct/range {p0 .. p2}, isPreSmartStayNeeded(J)Z

    move-result v1

    if-eqz v1, :cond_143

    .line 2260
    iget-object v1, p0, mHandlerSmartStay:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2261
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2262
    iget-object v1, p0, mHandlerSmartStay:Landroid/os/Handler;

    iget-wide v2, p0, mNextTimeoutForPreSmartStay:J

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2263
    const/4 v1, 0x1

    iput-boolean v1, p0, mPendingMessagePreSmartStay:Z

    .line 2267
    :cond_143
    invoke-direct/range {p0 .. p2}, isSmartStayNeeded(J)Z

    move-result v1

    if-eqz v1, :cond_1c8

    .line 2268
    iget-object v1, p0, mHandlerSmartStay:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2269
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2270
    iget-object v1, p0, mHandlerSmartStay:Landroid/os/Handler;

    iget-wide v2, p0, mNextTimeoutForSmartStay:J

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2271
    const/4 v1, 0x1

    iput-boolean v1, p0, mPendingMessageSmartStay:Z

    .line 2286
    .end local v7    # "msg":Landroid/os/Message;
    .end local v12    # "screenDimDuration":I
    .end local v13    # "screenOffTimeout":I
    .end local v14    # "sleepTimeout":I
    :cond_15e
    :goto_15e
    iget v1, p0, mLastUserActivitySummary:I

    iget v2, p0, mUserActivitySummary:I

    if-eq v1, v2, :cond_1a6

    .line 2287
    const-string v1, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[s] UserActivityState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mLastUserActivitySummary:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mUserActivitySummary:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    iget v1, p0, mUserActivitySummary:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1d4

    const-wide/16 v2, -0x1

    cmp-long v1, v10, v2

    if-nez v1, :cond_1d4

    invoke-direct {p0}, isBeingKeptAwakeLocked()Z

    move-result v1

    if-eqz v1, :cond_1d4

    .line 2291
    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v2, p0, mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2297
    :goto_1a2
    iget v1, p0, mUserActivitySummary:I

    iput v1, p0, mLastUserActivitySummary:I

    .line 2308
    .end local v10    # "nextTimeout":J
    :cond_1a6
    return-void

    .line 2185
    .restart local v10    # "nextTimeout":J
    .restart local v12    # "screenDimDuration":I
    .restart local v13    # "screenOffTimeout":I
    .restart local v14    # "sleepTimeout":I
    :cond_1a7
    iget-wide v2, p0, mLastUserActivityTime:J

    int-to-long v4, v13

    add-long v10, v2, v4

    .line 2186
    cmp-long v1, p1, v10

    if-gez v1, :cond_5a

    .line 2187
    const/4 v1, 0x2

    iput v1, p0, mUserActivitySummary:I

    goto/16 :goto_5a

    .line 2197
    :cond_1b5
    iget-object v1, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_79

    .line 2198
    const/4 v1, 0x2

    iput v1, p0, mUserActivitySummary:I

    goto/16 :goto_79

    .line 2213
    :cond_1c1
    const/4 v1, 0x4

    iput v1, p0, mUserActivitySummary:I

    .line 2214
    const-wide/16 v10, -0x1

    goto/16 :goto_97

    .line 2274
    .restart local v7    # "msg":Landroid/os/Message;
    :cond_1c8
    const-string v1, "PowerManagerService"

    const-string v2, "[smart stay] updateUserActivitySummaryLocked : don\'t have time to smart stay"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15e

    .line 2282
    .end local v7    # "msg":Landroid/os/Message;
    .end local v12    # "screenDimDuration":I
    .end local v13    # "screenOffTimeout":I
    .end local v14    # "sleepTimeout":I
    :cond_1d0
    const/4 v1, 0x0

    iput v1, p0, mUserActivitySummary:I

    goto :goto_15e

    .line 2294
    :cond_1d4
    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    iget-object v2, p0, mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1a2
.end method

.method private updateWakeLockSummaryLocked(I)V
    .registers 7
    .param p1, "dirty"    # I

    .prologue
    .line 2081
    and-int/lit8 v3, p1, 0x3

    if-eqz v3, :cond_7a

    .line 2082
    const/4 v3, 0x0

    iput v3, p0, mWakeLockSummary:I

    .line 2084
    iget-object v3, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2085
    .local v1, "numWakeLocks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v1, :cond_4e

    .line 2086
    iget-object v3, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2087
    .local v2, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    sparse-switch v3, :sswitch_data_88

    .line 2085
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2089
    :sswitch_24
    iget v3, p0, mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, mWakeLockSummary:I

    goto :goto_21

    .line 2092
    :sswitch_2b
    iget v3, p0, mWakeLockSummary:I

    or-int/lit8 v3, v3, 0xa

    iput v3, p0, mWakeLockSummary:I

    goto :goto_21

    .line 2095
    :sswitch_32
    iget v3, p0, mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, mWakeLockSummary:I

    goto :goto_21

    .line 2098
    :sswitch_39
    iget v3, p0, mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, mWakeLockSummary:I

    goto :goto_21

    .line 2101
    :sswitch_40
    iget v3, p0, mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, mWakeLockSummary:I

    goto :goto_21

    .line 2104
    :sswitch_47
    iget v3, p0, mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, mWakeLockSummary:I

    goto :goto_21

    .line 2110
    .end local v2    # "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_4e
    iget v3, p0, mWakefulness:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_59

    .line 2111
    iget v3, p0, mWakeLockSummary:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, mWakeLockSummary:I

    .line 2113
    :cond_59
    iget v3, p0, mWakefulness:I

    if-eqz v3, :cond_63

    iget v3, p0, mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_69

    .line 2115
    :cond_63
    iget v3, p0, mWakeLockSummary:I

    and-int/lit8 v3, v3, -0xf

    iput v3, p0, mWakeLockSummary:I

    .line 2127
    :cond_69
    iget v3, p0, mWakeLockSummary:I

    and-int/lit8 v3, v3, 0x6

    if-eqz v3, :cond_7a

    .line 2128
    iget v3, p0, mWakefulness:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7b

    .line 2129
    iget v3, p0, mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x21

    iput v3, p0, mWakeLockSummary:I

    .line 2141
    .end local v0    # "i":I
    .end local v1    # "numWakeLocks":I
    :cond_7a
    :goto_7a
    return-void

    .line 2130
    .restart local v0    # "i":I
    .restart local v1    # "numWakeLocks":I
    :cond_7b
    iget v3, p0, mWakefulness:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7a

    .line 2131
    iget v3, p0, mWakeLockSummary:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, mWakeLockSummary:I

    goto :goto_7a

    .line 2087
    nop

    :sswitch_data_88
    .sparse-switch
        0x1 -> :sswitch_24
        0x6 -> :sswitch_39
        0xa -> :sswitch_32
        0x1a -> :sswitch_2b
        0x20 -> :sswitch_40
        0x40 -> :sswitch_47
    .end sparse-switch
.end method

.method private updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    .registers 16
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .prologue
    .line 1374
    iget-object v10, p0, mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1375
    :try_start_3
    invoke-direct {p0, p1}, findWakeLockIndexLocked(Landroid/os/IBinder;)I

    move-result v9

    .line 1376
    .local v9, "index":I
    if-gez v9, :cond_2f

    .line 1381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wake lock not active: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1398
    .end local v9    # "index":I
    :catchall_2c
    move-exception v0

    monitor-exit v10
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0

    .line 1385
    .restart local v9    # "index":I
    :cond_2f
    :try_start_2f
    iget-object v0, p0, mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 1391
    .local v1, "wakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameWorkSource(Landroid/os/WorkSource;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 1392
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v6, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    move-object v0, p0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, notifyWakeLockChangingLocked(Lcom/android/server/power/PowerManagerService$WakeLock;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 1395
    iput-object p3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mHistoryTag:Ljava/lang/String;

    .line 1396
    invoke-virtual {v1, p2}, Lcom/android/server/power/PowerManagerService$WakeLock;->updateWorkSource(Landroid/os/WorkSource;)V

    .line 1398
    :cond_52
    monitor-exit v10
    :try_end_53
    .catchall {:try_start_2f .. :try_end_53} :catchall_2c

    .line 1399
    return-void
.end method

.method private updateWakefulnessLocked(I)Z
    .registers 10
    .param p1, "dirty"    # I

    .prologue
    const/16 v6, 0x3e8

    .line 2394
    const/4 v0, 0x0

    .line 2395
    .local v0, "changed":Z
    and-int/lit16 v1, p1, 0x697

    if-eqz v1, :cond_20

    .line 2398
    iget v1, p0, mWakefulness:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_20

    invoke-direct {p0}, isItBedTimeYetLocked()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2402
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2403
    .local v2, "time":J
    invoke-direct {p0}, shouldNapAtBedTimeLocked()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2404
    invoke-direct {p0, v2, v3, v6}, napNoUpdateLocked(JI)Z

    move-result v0

    .line 2419
    .end local v2    # "time":J
    :cond_20
    :goto_20
    return v0

    .line 2407
    .restart local v2    # "time":J
    :cond_21
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_c2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "release wake lock: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, mPrevReleasedWakeLock:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2408
    .local v7, "screenOffReason":Ljava/lang/String;
    :goto_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_c6

    const-string/jumbo v1, "release stay on "

    :goto_4b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_c9

    const-string/jumbo v1, "timeout "

    :goto_63
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_cc

    const-string/jumbo v1, "prox pos "

    :goto_7b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "(0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, mScreenOffReason:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mScreenOffReason:Ljava/lang/String;

    .line 2414
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, goToSleepNoUpdateLocked(JIII)Z

    move-result v0

    goto/16 :goto_20

    .line 2407
    .end local v7    # "screenOffReason":Ljava/lang/String;
    :cond_c2
    const-string v7, ""

    goto/16 :goto_3b

    .line 2408
    .restart local v7    # "screenOffReason":Ljava/lang/String;
    :cond_c6
    const-string v1, ""

    goto :goto_4b

    .line 2409
    :cond_c9
    const-string v1, ""

    goto :goto_63

    .line 2410
    :cond_cc
    const-string v1, ""

    goto :goto_7b
.end method

.method private userActivityFromNative(JII)V
    .registers 12
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1493
    const/16 v6, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, userActivityInternal(JIII)V

    .line 1494
    return-void
.end method

.method private userActivityInternal(JIII)V
    .registers 9
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    .line 1497
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1498
    :try_start_3
    invoke-direct/range {p0 .. p5}, userActivityNoUpdateLocked(JIII)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1499
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 1501
    :cond_c
    monitor-exit v1

    .line 1502
    return-void

    .line 1501
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private userActivityNoUpdateLocked(JIII)Z
    .registers 15
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I
    .param p5, "uid"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/32 v4, 0x20000

    .line 1511
    iget-wide v2, p0, mLastSleepTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1b

    iget-wide v2, p0, mLastWakeTime:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1b

    iget-boolean v2, p0, mBootCompleted:Z

    if-eqz v2, :cond_1b

    iget-boolean v2, p0, mSystemReady:Z

    if-nez v2, :cond_1d

    :cond_1b
    move v0, v1

    .line 1578
    :goto_1c
    return v0

    .line 1516
    :cond_1d
    const-string/jumbo v2, "userActivity"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1518
    :try_start_23
    iget-wide v2, p0, mLastInteractivePowerHintTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_30

    .line 1519
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, powerHintInternal(II)V

    .line 1520
    iput-wide p1, p0, mLastInteractivePowerHintTime:J

    .line 1524
    :cond_30
    if-ne p3, v6, :cond_49

    .line 1525
    iget-object v2, p0, mNotifier:Lcom/android/server/power/Notifier;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V

    .line 1532
    :goto_38
    iget v2, p0, mWakefulness:I

    if-eqz v2, :cond_44

    iget v2, p0, mWakefulness:I
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_4f

    if-eq v2, v6, :cond_44

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_54

    .line 1576
    :cond_44
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    move v0, v1

    goto :goto_1c

    .line 1529
    :cond_49
    :try_start_49
    iget-object v2, p0, mNotifier:Lcom/android/server/power/Notifier;

    invoke-virtual {v2, p3, p5}, Lcom/android/server/power/Notifier;->onUserActivity(II)V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_4f

    goto :goto_38

    .line 1576
    :catchall_4f
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1538
    :cond_54
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_70

    .line 1539
    :try_start_58
    iget-wide v2, p0, mLastUserActivityTimeNoChangeLights:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_a5

    iget-wide v2, p0, mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_a5

    .line 1541
    iput-wide p1, p0, mLastUserActivityTimeNoChangeLights:J

    .line 1542
    iget v1, p0, mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, mDirty:I
    :try_end_6c
    .catchall {:try_start_58 .. :try_end_6c} :catchall_4f

    .line 1576
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1c

    .line 1546
    :cond_70
    :try_start_70
    iget-wide v2, p0, mLastUserActivityTime:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_a5

    .line 1547
    iput-wide p1, p0, mLastUserActivityTime:J

    .line 1548
    iget v1, p0, mDirty:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, mDirty:I

    .line 1551
    if-ne p3, v6, :cond_93

    .line 1552
    iget v1, p0, mDirty:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, mDirty:I

    .line 1564
    :cond_86
    :goto_86
    iget v1, p0, mUserActivityTimeoutSetting:I

    if-lez v1, :cond_8f

    .line 1565
    if-eqz p3, :cond_8f

    .line 1566
    invoke-direct {p0, p1, p2}, setUserActivityTimeoutLocked(J)V
    :try_end_8f
    .catchall {:try_start_70 .. :try_end_8f} :catchall_4f

    .line 1576
    :cond_8f
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1c

    .line 1553
    :cond_93
    if-ne p3, v7, :cond_9c

    .line 1554
    :try_start_95
    iget v1, p0, mDirty:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, mDirty:I

    goto :goto_86

    .line 1555
    :cond_9c
    if-ne p3, v0, :cond_86

    .line 1556
    iget v1, p0, mDirty:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, mDirty:I
    :try_end_a4
    .catchall {:try_start_95 .. :try_end_a4} :catchall_4f

    goto :goto_86

    .line 1576
    :cond_a5
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    move v0, v1

    .line 1578
    goto/16 :goto_1c
.end method

.method private wakeUpInternal(JI)V
    .registers 7
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    .line 1609
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1610
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, wakeUpNoUpdateLocked(JI)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1611
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 1613
    :cond_c
    monitor-exit v1

    .line 1614
    return-void

    .line 1613
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private wakeUpNoUpdateLocked(JI)Z
    .registers 19
    .param p1, "eventTime"    # J
    .param p3, "uid"    # I

    .prologue
    const-wide/32 v12, 0x20000

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 1625
    iget-wide v4, p0, mLastSleepTime:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_17

    iget v4, p0, mWakefulness:I

    if-eq v4, v10, :cond_17

    iget-boolean v4, p0, mBootCompleted:Z

    if-eqz v4, :cond_17

    iget-boolean v4, p0, mSystemReady:Z

    if-nez v4, :cond_18

    .line 1683
    :cond_17
    :goto_17
    return v3

    .line 1631
    :cond_18
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@[ps] Screen__On  - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mScreenOnOffCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    const-string v4, ""

    iput-object v4, p0, mScreenOnReason:Ljava/lang/String;

    .line 1633
    const-string v4, ""

    iput-object v4, p0, mScreenOffReason:Ljava/lang/String;

    .line 1637
    invoke-direct {p0}, isProximityPositve()Z

    move-result v4

    if-eqz v4, :cond_58

    iget-boolean v4, p0, mWakeUpEvenThoughProximityPositive:Z

    if-nez v4, :cond_58

    .line 1638
    const-string v4, "PowerManagerService"

    const-string v5, "!@Screen__On : Cancel(proxEnabled = true)"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1644
    :cond_58
    iget-boolean v4, p0, mIsCoverClosed:Z

    if-eqz v4, :cond_96

    .line 1645
    const-string v4, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_id"

    invoke-direct {p0, v4}, readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1646
    .local v9, "coverTypeStr":Ljava/lang/String;
    const-string v4, ""

    if-eq v9, v4, :cond_96

    .line 1647
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1648
    .local v2, "coverType":I
    iget-boolean v4, p0, mIsCocktailBarCover:Z

    if-nez v4, :cond_96

    if-eqz v2, :cond_77

    const/4 v4, 0x7

    if-eq v2, v4, :cond_77

    const/16 v4, 0x64

    if-ne v2, v4, :cond_96

    .line 1652
    :cond_77
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Screen__On : Cancel(coverType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1659
    .end local v2    # "coverType":I
    .end local v9    # "coverTypeStr":Ljava/lang/String;
    :cond_96
    const-string/jumbo v3, "wakeUp"

    invoke-static {v12, v13, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1661
    :try_start_9c
    iget v3, p0, mWakefulness:I

    packed-switch v3, :pswitch_data_12c

    .line 1673
    :goto_a1
    :pswitch_a1
    move-wide/from16 v0, p1

    iput-wide v0, p0, mLastWakeTime:J

    .line 1674
    iget v3, p0, mDirty:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, mDirty:I

    .line 1675
    const/4 v3, 0x1

    iput v3, p0, mWakefulness:I

    .line 1676
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, setInteractiveStateLocked(ZI)V

    .line 1678
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-wide/from16 v4, p1

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, userActivityNoUpdateLocked(JIII)Z
    :try_end_bd
    .catchall {:try_start_9c .. :try_end_bd} :catchall_e4

    .line 1681
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    move v3, v10

    .line 1683
    goto/16 :goto_17

    .line 1663
    :pswitch_c3
    :try_start_c3
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Waking up from sleep (uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catchall {:try_start_c3 .. :try_end_e3} :catchall_e4

    goto :goto_a1

    .line 1681
    :catchall_e4
    move-exception v3

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    .line 1666
    :pswitch_e9
    :try_start_e9
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Waking up from dream (uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 1669
    :pswitch_10a
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Waking up from dozing (uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12a
    .catchall {:try_start_e9 .. :try_end_12a} :catchall_e4

    goto/16 :goto_a1

    .line 1661
    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_c3
        :pswitch_a1
        :pswitch_e9
        :pswitch_10a
    .end packed-switch
.end method

.method private wakeUpWithReasonInternal(JII)V
    .registers 8
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "uid"    # I

    .prologue
    const/4 v2, 0x1

    .line 1592
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1593
    :try_start_4
    invoke-direct {p0}, isProximityPositve()Z

    move-result v0

    if-eqz v0, :cond_26

    if-ne p3, v2, :cond_26

    .line 1595
    const/4 v0, 0x1

    iput-boolean v0, p0, mWakeUpEvenThoughProximityPositive:Z

    .line 1597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, mScreenOnReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (proxEnabled)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mScreenOnReason:Ljava/lang/String;

    .line 1601
    :cond_26
    invoke-direct {p0, p1, p2, p4}, wakeUpNoUpdateLocked(JI)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1602
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 1604
    :cond_2f
    monitor-exit v1

    .line 1605
    return-void

    .line 1604
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    throw v0
.end method

.method private static wakefulnessToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "wakefulness"    # I

    .prologue
    .line 3812
    packed-switch p0, :pswitch_data_14

    .line 3822
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 3814
    :pswitch_8
    const-string v0, "Asleep"

    goto :goto_7

    .line 3816
    :pswitch_b
    const-string v0, "Awake"

    goto :goto_7

    .line 3818
    :pswitch_e
    const-string v0, "Dreaming"

    goto :goto_7

    .line 3820
    :pswitch_11
    const-string v0, "Dozing"

    goto :goto_7

    .line 3812
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method dumpDebugLog()V
    .registers 4

    .prologue
    .line 5666
    const-string v1, "PowerManagerService"

    const-string v2, "dumpDebugLog +"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5668
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/power/PowerManagerService$10;

    invoke-direct {v1, p0}, Lcom/android/server/power/PowerManagerService$10;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5698
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 5699
    return-void
.end method

.method public monitor()V
    .registers 3

    .prologue
    .line 3607
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3608
    :try_start_3
    monitor-exit v1

    .line 3609
    return-void

    .line 3608
    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public onBootPhase(I)V
    .registers 10
    .param p1, "phase"    # I

    .prologue
    const/16 v5, 0x3e8

    .line 682
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[api] onBootPhase() phase= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 685
    if-ne p1, v5, :cond_37

    .line 686
    :try_start_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 687
    .local v2, "now":J
    const/4 v0, 0x1

    iput-boolean v0, p0, mBootCompleted:Z

    .line 688
    iget v0, p0, mDirty:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, mDirty:I

    .line 689
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, userActivityNoUpdateLocked(JIII)Z

    .line 691
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 693
    .end local v2    # "now":J
    :cond_37
    monitor-exit v7

    .line 694
    return-void

    .line 693
    :catchall_39
    move-exception v0

    monitor-exit v7
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 672
    const-string/jumbo v0, "power"

    new-instance v1, Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {p0, v0, v1}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 673
    const-class v0, Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/power/PowerManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/PowerManagerService$LocalService;-><init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V

    invoke-virtual {p0, v0, v1}, publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 675
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 676
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 677
    return-void
.end method

.method public systemReady(Lcom/android/internal/app/IAppOpsService;)V
    .registers 13
    .param p1, "appOps"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 698
    const-string v0, "PowerManagerService"

    const-string v1, "[api] systemReady()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v10, p0, mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 701
    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, mSystemReady:Z

    .line 702
    iput-object p1, p0, mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 703
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {p0, v0}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    iput-object v0, p0, mDreamManager:Landroid/service/dreams/DreamManagerInternal;

    .line 704
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {p0, v0}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 705
    const-class v0, Landroid/view/WindowManagerPolicy;

    invoke-virtual {p0, v0}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    .line 706
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v0}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 708
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 709
    .local v7, "pm":Landroid/os/PowerManager;
    invoke-virtual {v7}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, mScreenBrightnessSettingMinimum:I

    .line 710
    invoke-virtual {v7}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, mScreenBrightnessSettingMaximum:I

    .line 711
    invoke-virtual {v7}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, mScreenBrightnessSettingDefault:I

    .line 713
    new-instance v9, Landroid/hardware/SystemSensorManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 717
    .local v9, "sensorManager":Landroid/hardware/SensorManager;
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 721
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NotifierInSeperateThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mHandlerNotifierInSeperateThread:Landroid/os/HandlerThread;

    .line 722
    iget-object v0, p0, mHandlerNotifierInSeperateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 723
    new-instance v0, Lcom/android/server/power/Notifier;

    iget-object v1, p0, mHandlerNotifierInSeperateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v4, p0, mAppOps:Lcom/android/internal/app/IAppOpsService;

    const-string v5, "PowerManagerService.Broadcasts"

    invoke-direct {p0, v5}, createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v5

    iget-object v6, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/Notifier;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V

    iput-object v0, p0, mNotifier:Lcom/android/server/power/Notifier;

    .line 734
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector;

    const-string v1, "PowerManagerService.WirelessChargerDetector"

    invoke-direct {p0, v1}, createSuspendBlockerLocked(Ljava/lang/String;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v1

    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v0, v9, v1, v2}, Lcom/android/server/power/WirelessChargerDetector;-><init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V

    iput-object v0, p0, mWirelessChargerDetector:Lcom/android/server/power/WirelessChargerDetector;

    .line 737
    new-instance v0, Lcom/android/server/power/PowerManagerService$SettingsObserver;

    iget-object v1, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$SettingsObserver;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    .line 739
    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    iput-object v0, p0, mLightsManager:Lcom/android/server/lights/LightsManager;

    .line 740
    iget-object v0, p0, mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, mAttentionLight:Lcom/android/server/lights/Light;

    .line 743
    new-instance v0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    iput-object v0, p0, mTouchkeyLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 744
    new-instance v0, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/PowerManagerService$InputDeviceLightState;-><init>(Lcom/android/server/power/PowerManagerService;I)V

    iput-object v0, p0, mKeyboardLightState:Lcom/android/server/power/PowerManagerService$InputDeviceLightState;

    .line 745
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsKeyboardVisible:Z

    .line 750
    invoke-direct {p0}, isSupportCover()Z

    move-result v0

    iput-boolean v0, p0, mFeatureCoverSysfs:Z

    .line 754
    iget-object v0, p0, mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v2, p0, mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    invoke-virtual {v0, v1, v2, v9}, Landroid/hardware/display/DisplayManagerInternal;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V

    .line 781
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 782
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "screensaver_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 785
    const-string/jumbo v0, "screensaver_activate_on_sleep"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 788
    const-string/jumbo v0, "screensaver_activate_on_dock"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 791
    const-string/jumbo v0, "screen_off_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 794
    const-string/jumbo v0, "sleep_timeout"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 797
    const-string/jumbo v0, "stay_on_while_plugged_in"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 800
    const-string/jumbo v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 803
    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 806
    const-string/jumbo v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 809
    const-string v0, "low_power"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 812
    const-string v0, "low_power_trigger_level"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 817
    const-string v0, "button_key_light"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 823
    const-string v0, "auto_brightness_detail"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 829
    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 836
    const-string v0, "intelligent_sleep_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 843
    iget-boolean v0, p0, USE_DEVICE_LOCK_TIME:Z

    if-eqz v0, :cond_1cd

    .line 844
    const-string v0, "is_secured_lock"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 847
    const-string v0, "lock_screen_lock_after_timeout"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 855
    :cond_1cd
    const-string/jumbo v0, "user_activity_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mSettingsObserver:Lcom/android/server/power/PowerManagerService$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 862
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cocktailbar"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, mIsCocktailBarCover:Z

    .line 866
    invoke-direct {p0}, readConfigurationLocked()V

    .line 867
    invoke-direct {p0}, updateSettingsLocked()V

    .line 868
    iget v0, p0, mDirty:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, mDirty:I

    .line 869
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 870
    monitor-exit v10
    :try_end_1f9
    .catchall {:try_start_b .. :try_end_1f9} :catchall_1fd

    .line 873
    invoke-direct {p0}, registerReceiverInSystemReady()V

    .line 875
    return-void

    .line 870
    .end local v7    # "pm":Landroid/os/PowerManager;
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    .end local v9    # "sensorManager":Landroid/hardware/SensorManager;
    :catchall_1fd
    move-exception v0

    :try_start_1fe
    monitor-exit v10
    :try_end_1ff
    .catchall {:try_start_1fe .. :try_end_1ff} :catchall_1fd

    throw v0
.end method

.method public timeSinceScreenWasLastOn()J
    .registers 7

    .prologue
    .line 3398
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3399
    :try_start_3
    iget-object v0, p0, mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v0, :cond_d

    .line 3400
    const-wide/16 v0, 0x0

    monitor-exit v2

    .line 3402
    :goto_c
    return-wide v0

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, mLastScreenOffEventElapsedRealTime:J

    sub-long/2addr v0, v4

    monitor-exit v2

    goto :goto_c

    .line 3403
    :catchall_16
    move-exception v0

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public updateLidState(Z)V
    .registers 5
    .param p1, "closed"    # Z

    .prologue
    .line 2693
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2694
    :try_start_3
    iget-boolean v0, p0, mIsLidClosed:Z

    if-eq v0, p1, :cond_13

    .line 2695
    iput-boolean p1, p0, mIsLidClosed:Z

    .line 2696
    iget v0, p0, mDirty:I

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    iput v0, p0, mDirty:I

    .line 2697
    invoke-direct {p0}, updatePowerStateLocked()V

    .line 2699
    :cond_13
    monitor-exit v1

    .line 2700
    return-void

    .line 2699
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method updateLowPowerModeLocked()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1155
    iget-boolean v3, p0, mLowPowerModeSetting:Z

    if-eqz v3, :cond_78

    iget-boolean v3, p0, mAutoLowPowerModeConfigured:Z

    if-eqz v3, :cond_10

    iget v3, p0, mBatteryLevel:I

    iget v4, p0, mLowBatteryTriggerLevel:I

    if-gt v3, v4, :cond_78

    :cond_10
    move v0, v1

    .line 1157
    .local v0, "lowPowerModeEnabled":Z
    :goto_11
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PSM] lowPowerModeEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (mLowPowerModeSetting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mLowPowerModeSetting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mAutoLowPowerModeConfigured: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mAutoLowPowerModeConfigured:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mBatteryLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mBatteryLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLowBatteryTriggerLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mLowBatteryTriggerLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-boolean v3, p0, mLowPowerModeEnabled:Z

    if-eq v3, v0, :cond_77

    .line 1164
    iput-boolean v0, p0, mLowPowerModeEnabled:Z

    .line 1165
    const/4 v3, 0x5

    if-eqz v0, :cond_7a

    :goto_68
    invoke-direct {p0, v3, v1}, powerHintInternal(II)V

    .line 1166
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/power/PowerManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerService$1;-><init>(Lcom/android/server/power/PowerManagerService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1196
    :cond_77
    return-void

    .end local v0    # "lowPowerModeEnabled":Z
    :cond_78
    move v0, v2

    .line 1155
    goto :goto_11

    .restart local v0    # "lowPowerModeEnabled":Z
    :cond_7a
    move v1, v2

    .line 1165
    goto :goto_68
.end method
