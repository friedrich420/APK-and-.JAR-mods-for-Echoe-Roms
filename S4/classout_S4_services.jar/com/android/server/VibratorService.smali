.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$5;,
        Lcom/android/server/VibratorService$SecSettingsObserver;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$Vibration;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static HAS_DUAL_MOTORS:I = 0x0

.field private static final IMMVIBE_LICENSE_KEY:Ljava/lang/String; = "DH75NDX26JR75GCZ5CKKTD25M9JP62TG"

.field private static LEVEL_TO_MAGNITUDE:[I = null

.field private static final TAG:Ljava/lang/String; = "VibratorService"

.field private static final TYPE_MAGNITUDE_FEEDBACK:I = 0x0

.field private static final TYPE_MAGNITUDE_NOTIFICATION:I = 0x2

.field private static final TYPE_MAGNITUDE_RECVCALL:I = 0x1

.field private static USE_SET_MAX_MAGNITUE:Z = false

.field private static final USE_VIBETONZ:Z

.field private static final VIB_DEBUG:Z = true

.field private static final mTypeURIs:[Ljava/lang/String;


# instance fields
.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

.field private mDefaultMagnitude:I

.field private mDevHandle:I

.field private final mH:Landroid/os/Handler;

.field private mHMTMount:Z

.field private mIm:Landroid/hardware/input/InputManager;

.field private mImmVibeAlertOnCallMagnitude:I

.field private mImmVibeCallMagnitude:I

.field private mImmVibeNotiMagnitude:I

.field private mImmVibeTouchMagnitude:I

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLowPowerMode:Z

.field private mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private mTempMagnitude:I

.field volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

.field private mVibe:Lcom/immersion/android/ImmVibe;

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationRunnable:Ljava/lang/Runnable;

.field private final mVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$Vibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "VIB_RECVCALL_MAGNITUDE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "VIB_NOTIFICATION_MAGNITUDE"

    aput-object v2, v0, v1

    sput-object v0, mTypeURIs:[Ljava/lang/String;

    .line 84
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    sput-object v0, LEVEL_TO_MAGNITUDE:[I

    .line 85
    sput v3, HAS_DUAL_MOTORS:I

    .line 86
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, USE_VIBETONZ:Z

    .line 87
    const-string v0, "Max"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Framework_ConfigVibService"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, USE_SET_MAX_MAGNITUE:Z

    return-void

    .line 84
    nop

    :array_3e
    .array-data 4
        0x0
        0x7d0
        0xfa0
        0x1770
        0x1f40
        0x2710
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 205
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 91
    iput v4, p0, mDevHandle:I

    .line 92
    const/16 v2, 0x7d0

    iput v2, p0, mImmVibeAlertOnCallMagnitude:I

    .line 93
    sget-object v2, LEVEL_TO_MAGNITUDE:[I

    aget v2, v2, v3

    iput v2, p0, mImmVibeTouchMagnitude:I

    .line 94
    sget-object v2, LEVEL_TO_MAGNITUDE:[I

    aget v2, v2, v3

    iput v2, p0, mImmVibeCallMagnitude:I

    .line 95
    sget-object v2, LEVEL_TO_MAGNITUDE:[I

    aget v2, v2, v3

    iput v2, p0, mImmVibeNotiMagnitude:I

    .line 96
    sget-object v2, LEVEL_TO_MAGNITUDE:[I

    aget v2, v2, v3

    iput v2, p0, mDefaultMagnitude:I

    .line 104
    iput-boolean v4, p0, mHMTMount:Z

    .line 109
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    iput-object v2, p0, mTmpWorkSource:Landroid/os/WorkSource;

    .line 110
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, mH:Landroid/os/Handler;

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 127
    iput v6, p0, mCurVibUid:I

    .line 450
    new-instance v2, Lcom/android/server/VibratorService$3;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, mVibrationRunnable:Ljava/lang/Runnable;

    .line 815
    new-instance v2, Lcom/android/server/VibratorService$4;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1147
    iput v6, p0, mTempMagnitude:I

    .line 208
    sget-boolean v2, USE_VIBETONZ:Z

    if-nez v2, :cond_55

    .line 209
    invoke-static {}, vibratorOff()V

    .line 212
    :cond_55
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 213
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 215
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v2, "VibratorService"

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 216
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 218
    const-string v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    iput-object v2, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 219
    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 222
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, mVibrations:Ljava/util/LinkedList;

    .line 224
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v2, "android.intent.action.proximity_sensor"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    sget-boolean v2, USE_VIBETONZ:Z

    if-eqz v2, :cond_c8

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 243
    new-instance v2, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v2, p0, mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 244
    new-instance v2, Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v2, p0, mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 245
    new-instance v2, Lcom/android/server/VibratorService$SecSettingsObserver;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/server/VibratorService$SecSettingsObserver;-><init>(Lcom/android/server/VibratorService;I)V

    iput-object v2, p0, mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    .line 247
    invoke-direct {p0, p1}, openDevice(Landroid/content/Context;)V

    .line 249
    :cond_c8
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 67
    iget-object v0, p0, mVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 67
    iget-object v0, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 67
    iget-object v0, p0, mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 67
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1600()Z
    .registers 1

    .prologue
    .line 67
    sget-boolean v0, USE_VIBETONZ:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 67
    iget v0, p0, mDefaultMagnitude:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, mDefaultMagnitude:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/VibratorService;JIILjava/lang/String;I)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # I

    .prologue
    .line 67
    invoke-direct/range {p0 .. p6}, doVibratorOn(JIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/VibratorService;JII)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, doVibratorOn(JII)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 67
    invoke-direct {p0}, doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 67
    invoke-direct {p0, p1}, unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/server/VibratorService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, mHMTMount:Z

    return p1
.end method

.method static synthetic access$2200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 67
    sget-object v0, mTypeURIs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 67
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/VibratorService;)Lcom/immersion/android/ImmVibe;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 67
    iget-object v0, p0, mVibe:Lcom/immersion/android/ImmVibe;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, mImmVibeTouchMagnitude:I

    return p1
.end method

.method static synthetic access$2600()[I
    .registers 1

    .prologue
    .line 67
    sget-object v0, LEVEL_TO_MAGNITUDE:[I

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, mImmVibeCallMagnitude:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 67
    iget v0, p0, mImmVibeNotiMagnitude:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, mImmVibeNotiMagnitude:I

    return p1
.end method

.method static synthetic access$2900()Z
    .registers 1

    .prologue
    .line 67
    sget-boolean v0, USE_SET_MAX_MAGNITUE:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 67
    invoke-direct {p0}, startNextVibrationLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 67
    invoke-direct {p0}, updateInputDeviceVibrators()V

    return-void
.end method

.method private closeDevice(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1236
    :try_start_0
    iget-object v2, p0, mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, mDevHandle:I

    invoke-virtual {v2, v3}, Lcom/immersion/android/ImmVibe;->closeDevice(I)V

    .line 1237
    iget-object v2, p0, mVibe:Lcom/immersion/android/ImmVibe;

    invoke-virtual {v2}, Lcom/immersion/android/ImmVibe;->terminate()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_16

    .line 1243
    :goto_c
    return-void

    .line 1238
    :catch_d
    move-exception v1

    .line 1239
    .local v1, "re":Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at closeDevice()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1240
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :catch_16
    move-exception v0

    .line 1241
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Exception occured at closeDevice()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private doCancelVibrateLocked()V
    .registers 4

    .prologue
    .line 462
    iget-object v0, p0, mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_15

    .line 463
    iget-object v1, p0, mThread:Lcom/android/server/VibratorService$VibrateThread;

    monitor-enter v1

    .line 464
    :try_start_7
    iget-object v0, p0, mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    .line 465
    iget-object v0, p0, mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 466
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_23

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 469
    :cond_15
    invoke-direct {p0}, doVibratorOff()V

    .line 470
    iget-object v0, p0, mH:Landroid/os/Handler;

    iget-object v1, p0, mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 471
    invoke-direct {p0}, reportFinishVibrationLocked()V

    .line 472
    return-void

    .line 466
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method private doVibratorExists()Z
    .registers 2

    .prologue
    .line 644
    invoke-static {}, vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .registers 6

    .prologue
    .line 694
    iget-object v3, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    .line 698
    :try_start_3
    iget v2, p0, mCurVibUid:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_44

    if-ltz v2, :cond_11

    .line 700
    :try_start_7
    iget-object v2, p0, mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget v4, p0, mCurVibUid:I

    invoke-interface {v2, v4}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_54
    .catchall {:try_start_7 .. :try_end_e} :catchall_44

    .line 703
    :goto_e
    const/4 v2, -0x1

    :try_start_f
    iput v2, p0, mCurVibUid:I

    .line 705
    :cond_11
    iget-object v2, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 706
    .local v1, "vibratorCount":I
    if-eqz v1, :cond_2a

    .line 707
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    if-ge v0, v1, :cond_42

    .line 708
    iget-object v2, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 711
    .end local v0    # "i":I
    :cond_2a
    sget-boolean v2, USE_VIBETONZ:Z

    if-eqz v2, :cond_47

    .line 712
    iget-object v2, p0, mVibe:Lcom/immersion/android/ImmVibe;

    if-nez v2, :cond_34

    monitor-exit v3

    .line 724
    :goto_33
    return-void

    .line 713
    :cond_34
    const-string v2, "VibratorService"

    const-string v4, "Turning vibrator off - ImmVibe."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_f .. :try_end_3b} :catchall_44

    .line 715
    :try_start_3b
    iget-object v2, p0, mVibe:Lcom/immersion/android/ImmVibe;

    iget v4, p0, mDevHandle:I

    invoke-virtual {v2, v4}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_42} :catch_52
    .catchall {:try_start_3b .. :try_end_42} :catchall_44

    .line 723
    :cond_42
    :goto_42
    :try_start_42
    monitor-exit v3

    goto :goto_33

    .end local v1    # "vibratorCount":I
    :catchall_44
    move-exception v2

    monitor-exit v3
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_44

    throw v2

    .line 719
    .restart local v1    # "vibratorCount":I
    :cond_47
    :try_start_47
    const-string v2, "VibratorService"

    const-string v4, "Turning vibrator off - google."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-static {}, vibratorOff()V
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_44

    goto :goto_42

    .line 716
    :catch_52
    move-exception v2

    goto :goto_42

    .line 701
    .end local v1    # "vibratorCount":I
    :catch_54
    move-exception v2

    goto :goto_e
.end method

.method private doVibratorOn(JII)V
    .registers 10
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I

    .prologue
    .line 648
    iget-object v4, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v4

    .line 653
    :try_start_3
    iget-object v3, p0, mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 654
    iput p3, p0, mCurVibUid:I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_38
    .catchall {:try_start_3 .. :try_end_a} :catchall_35

    .line 657
    :goto_a
    :try_start_a
    iget-object v3, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 658
    .local v2, "vibratorCount":I
    if-eqz v2, :cond_30

    .line 659
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, p4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 661
    .local v0, "attributes":Landroid/media/AudioAttributes;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    if-ge v1, v2, :cond_33

    .line 662
    iget-object v3, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 661
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 665
    .end local v0    # "attributes":Landroid/media/AudioAttributes;
    .end local v1    # "i":I
    :cond_30
    invoke-static {p1, p2}, vibratorOn(J)V

    .line 667
    :cond_33
    monitor-exit v4

    .line 668
    return-void

    .line 667
    .end local v2    # "vibratorCount":I
    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_35

    throw v3

    .line 655
    :catch_38
    move-exception v3

    goto :goto_a
.end method

.method private doVibratorOn(JIILjava/lang/String;I)V
    .registers 24
    .param p1, "millis"    # J
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I
    .param p5, "opPkg"    # Ljava/lang/String;
    .param p6, "magnitude"    # I

    .prologue
    .line 671
    move-object/from16 v0, p0

    iget-object v15, v0, mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v15

    .line 676
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    move/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-interface {v5, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 677
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, mCurVibUid:I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_16} :catch_59
    .catchall {:try_start_5 .. :try_end_16} :catchall_56

    .line 680
    :goto_16
    :try_start_16
    move-object/from16 v0, p0

    iget-object v5, v0, mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 681
    .local v14, "vibratorCount":I
    if-eqz v14, :cond_44

    .line 682
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 684
    .local v4, "attributes":Landroid/media/AudioAttributes;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_30
    if-ge v13, v14, :cond_54

    .line 685
    move-object/from16 v0, p0

    iget-object v5, v0, mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1, v4}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 684
    add-int/lit8 v13, v13, 0x1

    goto :goto_30

    .line 688
    .end local v4    # "attributes":Landroid/media/AudioAttributes;
    .end local v13    # "i":I
    :cond_44
    const/4 v11, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p3

    move-object/from16 v7, p5

    move-wide/from16 v8, p1

    move/from16 v10, p4

    move/from16 v12, p6

    invoke-virtual/range {v5 .. v12}, vibrateMagnitude(ILjava/lang/String;JILandroid/os/IBinder;I)V

    .line 690
    :cond_54
    monitor-exit v15

    .line 691
    return-void

    .line 690
    .end local v14    # "vibratorCount":I
    :catchall_56
    move-exception v5

    monitor-exit v15
    :try_end_58
    .catchall {:try_start_16 .. :try_end_58} :catchall_56

    throw v5

    .line 678
    :catch_59
    move-exception v5

    goto :goto_16
.end method

.method private isAll0([J)Z
    .registers 8
    .param p1, "pattern"    # [J

    .prologue
    .line 356
    array-length v0, p1

    .line 357
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_11

    .line 358
    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 359
    const/4 v2, 0x0

    .line 362
    :goto_d
    return v2

    .line 357
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 362
    :cond_11
    const/4 v2, 0x1

    goto :goto_d
.end method

.method private openDevice(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x5

    .line 1203
    :try_start_1
    new-instance v2, Lcom/immersion/android/ImmVibe;

    invoke-direct {v2}, Lcom/immersion/android/ImmVibe;-><init>()V

    iput-object v2, p0, mVibe:Lcom/immersion/android/ImmVibe;

    .line 1204
    iget-object v2, p0, mVibe:Lcom/immersion/android/ImmVibe;

    invoke-virtual {v2}, Lcom/immersion/android/ImmVibe;->initialize()V

    .line 1210
    iget-object v2, p0, mVibe:Lcom/immersion/android/ImmVibe;

    const/4 v3, 0x0

    const-string v4, "DH75NDX26JR75GCZ5CKKTD25M9JP62TG"

    invoke-virtual {v2, v3, v4}, Lcom/immersion/android/ImmVibe;->openDevice(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, mDevHandle:I

    .line 1211
    const/4 v2, 0x0

    sput v2, HAS_DUAL_MOTORS:I

    .line 1215
    iget-object v2, p0, mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, mTypeURIs:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x5

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1216
    .local v1, "magnitudeLevel":I
    if-le v1, v6, :cond_57

    .end local v1    # "magnitudeLevel":I
    :goto_2a
    iput v1, p0, mImmVibeTouchMagnitude:I

    .line 1218
    iget-object v2, p0, mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, mTypeURIs:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x5

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1219
    .restart local v1    # "magnitudeLevel":I
    if-le v1, v6, :cond_5c

    .end local v1    # "magnitudeLevel":I
    :goto_3b
    iput v1, p0, mImmVibeCallMagnitude:I

    .line 1221
    iget-object v2, p0, mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, mTypeURIs:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x5

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1222
    .restart local v1    # "magnitudeLevel":I
    if-le v1, v6, :cond_61

    .end local v1    # "magnitudeLevel":I
    :goto_4c
    iput v1, p0, mImmVibeNotiMagnitude:I

    .line 1224
    sget-boolean v2, USE_SET_MAX_MAGNITUE:Z

    if-nez v2, :cond_56

    .line 1225
    iget v2, p0, mImmVibeNotiMagnitude:I

    iput v2, p0, mDefaultMagnitude:I

    .line 1232
    :cond_56
    :goto_56
    return-void

    .line 1216
    .restart local v1    # "magnitudeLevel":I
    :cond_57
    sget-object v2, LEVEL_TO_MAGNITUDE:[I

    aget v1, v2, v1

    goto :goto_2a

    .line 1219
    :cond_5c
    sget-object v2, LEVEL_TO_MAGNITUDE:[I

    aget v1, v2, v1

    goto :goto_3b

    .line 1222
    :cond_61
    sget-object v2, LEVEL_TO_MAGNITUDE:[I

    aget v1, v2, v1
    :try_end_65
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_65} :catch_66
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_65} :catch_84

    goto :goto_4c

    .line 1227
    .end local v1    # "magnitudeLevel":I
    :catch_66
    move-exception v0

    .line 1228
    .local v0, "e":Ljava/lang/Error;
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImmVibeJ loading failed!! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 1229
    .end local v0    # "e":Ljava/lang/Error;
    :catch_84
    move-exception v0

    .line 1230
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImmVibeJ loading failed!! : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56
.end method

.method private removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 540
    iget-object v2, p0, mVibrations:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 541
    .local v0, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 542
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$Vibration;

    .line 543
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_7

    .line 544
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 545
    invoke-direct {p0, v1}, unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 555
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :goto_1f
    return-object v1

    .line 551
    :cond_20
    iget-object v2, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_34

    iget-object v2, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_34

    .line 552
    iget-object v2, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v2}, unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 553
    iget-object v1, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    goto :goto_1f

    .line 555
    :cond_34
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private reportFinishVibrationLocked()V
    .registers 6

    .prologue
    .line 527
    iget-object v0, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_1f

    .line 529
    :try_start_4
    iget-object v0, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    iget-object v4, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1c} :catch_20

    .line 534
    :goto_1c
    const/4 v0, 0x0

    iput-object v0, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 536
    :cond_1f
    return-void

    .line 532
    :catch_20
    move-exception v0

    goto :goto_1c
.end method

.method private setVibeStrength(I)V
    .registers 7
    .param p1, "strength"    # I

    .prologue
    .line 865
    :try_start_0
    iget-object v2, p0, mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, mDevHandle:I

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, p1}, Lcom/immersion/android/ImmVibe;->setDevicePropertyInt32(III)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_12

    .line 871
    :goto_8
    return-void

    .line 866
    :catch_9
    move-exception v1

    .line 867
    .local v1, "re":Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at setDevicePropertyInt32, setVibeStrength()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 868
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :catch_12
    move-exception v0

    .line 869
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Exception occured at setDevicePropertyInt32, setVibeStrength()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private startNextVibrationLocked()V
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_f

    .line 477
    invoke-direct {p0}, reportFinishVibrationLocked()V

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 483
    :goto_e
    return-void

    .line 481
    :cond_f
    iget-object v0, p0, mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$Vibration;

    iput-object v0, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 482
    iget-object v0, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v0}, startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto :goto_e
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 11
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 488
    :try_start_0
    iget-boolean v1, p0, mLowPowerMode:Z

    if-eqz v1, :cond_c

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_c

    .line 524
    :goto_b
    return-void

    .line 493
    :cond_c
    iget-object v1, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/4 v2, 0x3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    .line 495
    .local v0, "mode":I
    if-nez v0, :cond_36

    .line 496
    iget-object v1, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v0

    .line 499
    :cond_36
    if-eqz v0, :cond_60

    .line 500
    const/4 v1, 0x2

    if-ne v0, v1, :cond_57

    .line 501
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Would be an error: vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_57
    iget-object v1, p0, mH:Landroid/os/Handler;

    iget-object v2, p0, mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5e} :catch_5f

    goto :goto_b

    .line 506
    .end local v0    # "mode":I
    :catch_5f
    move-exception v1

    .line 508
    :cond_60
    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b0

    .line 509
    sget-boolean v1, USE_VIBETONZ:Z

    if-eqz v1, :cond_a0

    .line 511
    const/4 v1, 0x0

    iput-object v1, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 512
    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    const/4 v6, 0x0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v7

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUseMagnitude:Z
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v1

    if-eqz v1, :cond_9d

    # getter for: Lcom/android/server/VibratorService$Vibration;->mMagnitude:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    :goto_8c
    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, vibrateMagnitude(ILjava/lang/String;JILandroid/os/IBinder;I)V

    .line 517
    :goto_90
    iget-object v1, p0, mH:Landroid/os/Handler;

    iget-object v2, p0, mVibrationRunnable:Ljava/lang/Runnable;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_b

    .line 512
    :cond_9d
    iget v8, p0, mDefaultMagnitude:I

    goto :goto_8c

    .line 515
    :cond_a0
    # getter for: Lcom/android/server/VibratorService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$800(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    invoke-direct {p0, v2, v3, v1, v4}, doVibratorOn(JII)V

    goto :goto_90

    .line 521
    :cond_b0
    new-instance v1, Lcom/android/server/VibratorService$VibrateThread;

    invoke-direct {v1, p0, p1}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    iput-object v1, p0, mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 522
    iget-object v1, p0, mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto/16 :goto_b
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .registers 4
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 559
    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$1200(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v0

    if-eqz v0, :cond_e

    .line 563
    :try_start_6
    # getter for: Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    .line 568
    :cond_e
    :goto_e
    return-void

    .line 564
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method private updateInputDeviceVibrators()V
    .registers 12

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 571
    iget-object v6, p0, mVibrations:Ljava/util/LinkedList;

    monitor-enter v6

    .line 572
    :try_start_5
    invoke-direct {p0}, doCancelVibrateLocked()V

    .line 574
    iget-object v7, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_79

    .line 575
    const/4 v8, 0x0

    :try_start_c
    iput-boolean v8, p0, mVibrateInputDevicesSetting:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_76

    .line 577
    :try_start_e
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "vibrate_input_devices"

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_67

    :goto_1e
    iput-boolean v4, p0, mVibrateInputDevicesSetting:Z
    :try_end_20
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_e .. :try_end_20} :catch_82
    .catchall {:try_start_e .. :try_end_20} :catchall_76

    .line 583
    :goto_20
    :try_start_20
    iget-object v4, p0, mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v4}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v4

    iput-boolean v4, p0, mLowPowerMode:Z

    .line 585
    iget-boolean v4, p0, mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_69

    .line 586
    iget-boolean v4, p0, mInputDeviceListenerRegistered:Z

    if-nez v4, :cond_3a

    .line 587
    const/4 v4, 0x1

    iput-boolean v4, p0, mInputDeviceListenerRegistered:Z

    .line 588
    iget-object v4, p0, mIm:Landroid/hardware/input/InputManager;

    iget-object v5, p0, mH:Landroid/os/Handler;

    invoke-virtual {v4, p0, v5}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 597
    :cond_3a
    :goto_3a
    iget-object v4, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 598
    iget-boolean v4, p0, mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_7c

    .line 599
    iget-object v4, p0, mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    .line 600
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4a
    array-length v4, v2

    if-ge v1, v4, :cond_7c

    .line 601
    iget-object v4, p0, mIm:Landroid/hardware/input/InputManager;

    aget v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 602
    .local v0, "device":Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    .line 603
    .local v3, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 604
    iget-object v4, p0, mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    .end local v3    # "vibrator":Landroid/os/Vibrator;
    :cond_67
    move v4, v5

    .line 577
    goto :goto_1e

    .line 591
    :cond_69
    iget-boolean v4, p0, mInputDeviceListenerRegistered:Z

    if-eqz v4, :cond_3a

    .line 592
    const/4 v4, 0x0

    iput-boolean v4, p0, mInputDeviceListenerRegistered:Z

    .line 593
    iget-object v4, p0, mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    goto :goto_3a

    .line 614
    :catchall_76
    move-exception v4

    monitor-exit v7
    :try_end_78
    .catchall {:try_start_20 .. :try_end_78} :catchall_76

    :try_start_78
    throw v4

    .line 617
    :catchall_79
    move-exception v4

    monitor-exit v6
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_79

    throw v4

    .line 614
    :cond_7c
    :try_start_7c
    monitor-exit v7
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_76

    .line 616
    :try_start_7d
    invoke-direct {p0}, startNextVibrationLocked()V

    .line 617
    monitor-exit v6
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_79

    .line 618
    return-void

    .line 580
    :catch_82
    move-exception v4

    goto :goto_20
.end method

.method private verifyIncomingUid(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 297
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 305
    :cond_6
    :goto_6
    return-void

    .line 300
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 303
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_6
.end method

.method private vibrate(ILjava/lang/String;II)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "usageHint"    # I
    .param p4, "type"    # I

    .prologue
    .line 874
    const/4 v0, 0x0

    .line 875
    .local v0, "duration":I
    sparse-switch p4, :sswitch_data_20

    .line 902
    const/16 v0, 0x28

    .line 905
    :goto_6
    int-to-long v4, v0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-virtual/range {v1 .. v7}, vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V

    .line 906
    return-void

    .line 884
    :sswitch_10
    const/16 v0, 0x32

    .line 885
    goto :goto_6

    .line 887
    :sswitch_13
    const/16 v0, 0x64

    .line 888
    goto :goto_6

    .line 890
    :sswitch_16
    const/16 v0, 0x1f4

    .line 891
    goto :goto_6

    .line 896
    :sswitch_19
    const/16 v0, 0x5dc

    .line 897
    goto :goto_6

    .line 899
    :sswitch_1c
    const/16 v0, 0xb

    .line 900
    goto :goto_6

    .line 875
    nop

    :sswitch_data_20
    .sparse-switch
        0x0 -> :sswitch_10
        0x1 -> :sswitch_10
        0x3 -> :sswitch_10
        0x9 -> :sswitch_10
        0xa -> :sswitch_13
        0xc -> :sswitch_16
        0xd -> :sswitch_19
        0xe -> :sswitch_10
        0x10 -> :sswitch_19
        0x11 -> :sswitch_19
        0x12 -> :sswitch_19
        0x16 -> :sswitch_1c
        0x2710 -> :sswitch_10
        0x2711 -> :sswitch_10
    .end sparse-switch
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 427
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    const-string v5, "cancelVibrate"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 434
    .local v0, "identity":J
    :try_start_d
    iget-object v4, p0, mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_26

    .line 435
    :try_start_10
    invoke-direct {p0, p1}, removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    .line 436
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v3, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-ne v2, v3, :cond_1e

    .line 440
    invoke-direct {p0}, doCancelVibrateLocked()V

    .line 441
    invoke-direct {p0}, startNextVibrationLocked()V

    .line 443
    :cond_1e
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_23

    .line 446
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 448
    return-void

    .line 443
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    .line 446
    :catchall_26
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getMagnitude(Ljava/lang/String;)I
    .registers 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1187
    invoke-static {p1}, Landroid/os/SystemVibrator$MagnitudeType;->valueOf(Ljava/lang/String;)Landroid/os/SystemVibrator$MagnitudeType;

    move-result-object v0

    .line 1188
    .local v0, "magnitudeType":Landroid/os/SystemVibrator$MagnitudeType;
    sget-object v1, Lcom/android/server/VibratorService$5;->$SwitchMap$android$os$SystemVibrator$MagnitudeType:[I

    invoke-virtual {v0}, Landroid/os/SystemVibrator$MagnitudeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_20

    .line 1198
    const/4 v1, 0x0

    :goto_10
    return v1

    .line 1190
    :pswitch_11
    iget v1, p0, mImmVibeTouchMagnitude:I

    goto :goto_10

    .line 1192
    :pswitch_14
    iget v1, p0, mImmVibeNotiMagnitude:I

    goto :goto_10

    .line 1194
    :pswitch_17
    iget v1, p0, mImmVibeCallMagnitude:I

    goto :goto_10

    .line 1196
    :pswitch_1a
    invoke-virtual {p0}, getMaxMagnitude()I

    move-result v1

    goto :goto_10

    .line 1188
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method public getMaxMagnitude()I
    .registers 5

    .prologue
    .line 1177
    const/16 v1, 0x2710

    .line 1179
    .local v1, "magnitude":I
    :try_start_2
    sget-object v2, LEVEL_TO_MAGNITUDE:[I

    sget-object v3, LEVEL_TO_MAGNITUDE:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    .line 1183
    :goto_b
    return v1

    .line 1180
    :catch_c
    move-exception v0

    .line 1181
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Default magnitude = 10000"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public hasVibrator()Z
    .registers 4

    .prologue
    .line 292
    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasVibrator - useVibetonz: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, USE_VIBETONZ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-direct {p0}, doVibratorExists()Z

    move-result v0

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .prologue
    .line 622
    invoke-direct {p0}, updateInputDeviceVibrators()V

    .line 623
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .prologue
    .line 627
    invoke-direct {p0}, updateInputDeviceVibrators()V

    .line 628
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .prologue
    .line 632
    invoke-direct {p0}, updateInputDeviceVibrators()V

    .line 633
    return-void
.end method

.method reloadContentObserver()V
    .registers 2

    .prologue
    .line 1246
    sget-boolean v0, USE_VIBETONZ:Z

    if-eqz v0, :cond_13

    .line 1247
    iget-object v0, p0, mTouchMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 1248
    iget-object v0, p0, mCallMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 1249
    iget-object v0, p0, mNotiMagnitudeObserver:Lcom/android/server/VibratorService$SecSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$SecSettingsObserver;->reload()V

    .line 1251
    :cond_13
    return-void
.end method

.method public resetMagnitude()V
    .registers 3

    .prologue
    .line 1164
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 1166
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1169
    :cond_12
    iget v0, p0, mTempMagnitude:I

    if-gez v0, :cond_17

    .line 1174
    :goto_16
    return-void

    .line 1172
    :cond_17
    iget v0, p0, mTempMagnitude:I

    iput v0, p0, mImmVibeTouchMagnitude:I

    .line 1173
    const/4 v0, -0x1

    iput v0, p0, mTempMagnitude:I

    goto :goto_16
.end method

.method public setMagnitude(I)V
    .registers 4
    .param p1, "magnitude"    # I

    .prologue
    .line 1149
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 1151
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires VIBRATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1154
    :cond_12
    if-gez p1, :cond_1c

    .line 1155
    const/4 p1, 0x0

    .line 1159
    :cond_15
    :goto_15
    iget v0, p0, mImmVibeTouchMagnitude:I

    iput v0, p0, mTempMagnitude:I

    .line 1160
    iput p1, p0, mImmVibeTouchMagnitude:I

    .line 1161
    return-void

    .line 1156
    :cond_1c
    const/16 v0, 0x2710

    if-le p1, v0, :cond_15

    .line 1157
    const/16 p1, 0x2710

    goto :goto_15
.end method

.method public systemReady()V
    .registers 6

    .prologue
    .line 252
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, mIm:Landroid/hardware/input/InputManager;

    .line 253
    new-instance v0, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v1, p0, mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v0, p0, mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 255
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 256
    iget-object v0, p0, mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/VibratorService$1;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 264
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_input_devices"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 268
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/VibratorService$2;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, mH:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 276
    invoke-direct {p0}, updateInputDeviceVibrators()V

    .line 277
    return-void
.end method

.method public vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V
    .registers 22
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;

    .prologue
    .line 310
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_12

    .line 312
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    :cond_12
    iget-boolean v2, p0, mHMTMount:Z

    if-eqz v2, :cond_17

    .line 353
    :cond_16
    :goto_16
    return-void

    .line 321
    :cond_17
    invoke-direct/range {p0 .. p1}, verifyIncomingUid(I)V

    .line 325
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-lez v2, :cond_16

    iget-object v2, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_2e

    iget-object v2, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    if-nez v2, :cond_16

    .line 337
    :cond_2e
    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v3, Lcom/android/server/VibratorService$Vibration;

    move-object v4, p0

    move-object/from16 v5, p6

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;JIILjava/lang/String;)V

    .line 342
    .local v3, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 344
    .local v12, "ident":J
    :try_start_75
    iget-object v4, p0, mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_8d

    .line 345
    :try_start_78
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 346
    invoke-direct {p0}, doCancelVibrateLocked()V

    .line 347
    iput-object v3, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 348
    invoke-direct {p0, v3}, startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 349
    monitor-exit v4
    :try_end_86
    .catchall {:try_start_78 .. :try_end_86} :catchall_8a

    .line 351
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_16

    .line 349
    :catchall_8a
    move-exception v2

    :try_start_8b
    monitor-exit v4
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    :try_start_8c
    throw v2
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8d

    .line 351
    :catchall_8d
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public vibrateImmVibe(ILjava/lang/String;II)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "magnitude"    # I

    .prologue
    const/4 v4, 0x0

    .line 1056
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_13

    .line 1058
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires VIBRATE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1062
    :cond_13
    iget-boolean v2, p0, mHMTMount:Z

    if-eqz v2, :cond_18

    .line 1102
    :cond_17
    :goto_17
    return-void

    .line 1067
    :cond_18
    sget-boolean v2, USE_VIBETONZ:Z

    if-nez v2, :cond_20

    .line 1068
    invoke-direct {p0, p1, p2, v4, p3}, vibrate(ILjava/lang/String;II)V

    goto :goto_17

    .line 1072
    :cond_20
    iget-object v2, p0, mVibe:Lcom/immersion/android/ImmVibe;

    if-eqz v2, :cond_17

    const/16 v2, 0x9

    if-lt p3, v2, :cond_17

    const/16 v2, 0x16

    if-gt p3, v2, :cond_17

    .line 1077
    if-nez p4, :cond_32

    .line 1078
    invoke-direct {p0}, doVibratorOff()V

    goto :goto_17

    .line 1082
    :cond_32
    if-gez p4, :cond_8c

    .line 1083
    iget p4, p0, mDefaultMagnitude:I

    .line 1088
    :cond_36
    :goto_36
    invoke-direct {p0}, doVibratorOff()V

    .line 1092
    :try_start_39
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vibrateImmVibe - package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", magnitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    invoke-direct {p0, p4}, setVibeStrength(I)V

    .line 1095
    iget-object v2, p0, mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, mDevHandle:I

    invoke-virtual {v2, v3}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 1096
    iget-object v2, p0, mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, mDevHandle:I

    sget-object v4, Lcom/immersion/android/ImmVibeConstants;->ivt:[[[B

    sget v5, HAS_DUAL_MOTORS:I

    aget-object v4, v4, v5

    add-int/lit8 v5, p3, -0x9

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/immersion/android/ImmVibe;->playIVTEffect(I[BI)I
    :try_end_82
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_82} :catch_83
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_82} :catch_93

    goto :goto_17

    .line 1097
    :catch_83
    move-exception v1

    .line 1098
    .local v1, "re":Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at vibrateImmVibe()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1084
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :cond_8c
    const/16 v2, 0x2710

    if-le p4, v2, :cond_36

    .line 1085
    const/16 p4, 0x2710

    goto :goto_36

    .line 1099
    :catch_93
    move-exception v0

    .line 1100
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Exception occured at vibrateImmVibe()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17
.end method

.method public vibrateImmVibePattern(ILjava/lang/String;[BI)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [B
    .param p4, "magnitude"    # I

    .prologue
    const/4 v6, 0x0

    .line 1105
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_13

    .line 1107
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1111
    :cond_13
    iget-boolean v1, p0, mHMTMount:Z

    if-eqz v1, :cond_18

    .line 1145
    :cond_17
    :goto_17
    return-void

    .line 1116
    :cond_18
    sget-boolean v1, USE_VIBETONZ:Z

    if-nez v1, :cond_26

    .line 1117
    const-wide/16 v4, 0x64

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V

    goto :goto_17

    .line 1121
    :cond_26
    iget-object v1, p0, mVibe:Lcom/immersion/android/ImmVibe;

    if-eqz v1, :cond_17

    if-eqz p3, :cond_17

    .line 1125
    if-gez p4, :cond_72

    .line 1126
    iget p4, p0, mDefaultMagnitude:I

    .line 1131
    :cond_30
    :goto_30
    invoke-direct {p0}, doVibratorOff()V

    .line 1135
    :try_start_33
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibrateImmVibePattern - package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", magnitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-direct {p0, p4}, setVibeStrength(I)V

    .line 1138
    iget-object v1, p0, mVibe:Lcom/immersion/android/ImmVibe;

    iget v2, p0, mDevHandle:I

    invoke-virtual {v1, v2}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 1139
    iget-object v1, p0, mVibe:Lcom/immersion/android/ImmVibe;

    iget v2, p0, mDevHandle:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Lcom/immersion/android/ImmVibe;->playIVTEffect(I[BI)I
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_68} :catch_69
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_68} :catch_79

    goto :goto_17

    .line 1140
    :catch_69
    move-exception v8

    .line 1141
    .local v8, "re":Ljava/lang/RuntimeException;
    const-string v1, "VibratorService"

    const-string v2, "RuntimeException occured at vibrateImmVibePattern()."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1127
    .end local v8    # "re":Ljava/lang/RuntimeException;
    :cond_72
    const/16 v1, 0x2710

    if-le p4, v1, :cond_30

    .line 1128
    const/16 p4, 0x2710

    goto :goto_30

    .line 1142
    :catch_79
    move-exception v0

    .line 1143
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VibratorService"

    const-string v2, "Exception occured at vibrateImmVibePattern()."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public vibrateMagnitude(ILjava/lang/String;JILandroid/os/IBinder;I)V
    .registers 23
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "magnitude"    # I

    .prologue
    .line 910
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_12

    .line 912
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires VIBRATE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 916
    :cond_12
    iget-boolean v2, p0, mHMTMount:Z

    if-eqz v2, :cond_17

    .line 974
    :cond_16
    :goto_16
    return-void

    .line 921
    :cond_17
    sget-boolean v2, USE_VIBETONZ:Z

    if-nez v2, :cond_1f

    .line 922
    invoke-virtual/range {p0 .. p6}, vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V

    goto :goto_16

    .line 926
    :cond_1f
    invoke-direct/range {p0 .. p1}, verifyIncomingUid(I)V

    .line 930
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_16

    iget-object v2, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_36

    iget-object v2, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v2

    if-nez v2, :cond_16

    .line 937
    :cond_36
    iget-object v2, p0, mVibe:Lcom/immersion/android/ImmVibe;

    if-eqz v2, :cond_16

    .line 940
    if-nez p7, :cond_40

    .line 941
    invoke-direct {p0}, doVibratorOff()V

    goto :goto_16

    .line 945
    :cond_40
    if-gez p7, :cond_bb

    .line 946
    iget v0, p0, mDefaultMagnitude:I

    move/from16 p7, v0

    .line 951
    :cond_46
    :goto_46
    invoke-direct {p0}, doVibratorOff()V

    .line 955
    :try_start_49
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vibrateMagnitude - package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", magnitude: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/16 v2, 0x2710

    invoke-direct {p0, v2}, setVibeStrength(I)V

    .line 959
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p3, v2

    if-lez v2, :cond_c4

    const v11, 0x7fffffff

    .line 960
    .local v11, "duration":I
    :goto_97
    iget-object v2, p0, mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, mDevHandle:I

    invoke-virtual {v2, v3}, Lcom/immersion/android/ImmVibe;->stopAllPlayingEffects(I)V

    .line 961
    iget-object v2, p0, mVibe:Lcom/immersion/android/ImmVibe;

    iget v3, p0, mDevHandle:I

    move-wide/from16 v0, p3

    long-to-int v4, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v5, p7

    invoke-virtual/range {v2 .. v10}, Lcom/immersion/android/ImmVibe;->playMagSweepEffect(IIIIIIII)I
    :try_end_af
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_af} :catch_b1
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_af} :catch_c8

    goto/16 :goto_16

    .line 969
    .end local v11    # "duration":I
    :catch_b1
    move-exception v13

    .line 970
    .local v13, "re":Ljava/lang/RuntimeException;
    const-string v2, "VibratorService"

    const-string v3, "RuntimeException occured at vibrateMagnitude()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 947
    .end local v13    # "re":Ljava/lang/RuntimeException;
    :cond_bb
    const/16 v2, 0x2710

    move/from16 v0, p7

    if-le v0, v2, :cond_46

    .line 948
    const/16 p7, 0x2710

    goto :goto_46

    .line 959
    :cond_c4
    move-wide/from16 v0, p3

    long-to-int v11, v0

    goto :goto_97

    .line 971
    :catch_c8
    move-exception v12

    .line 972
    .local v12, "e":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Exception occured at vibrateMagnitude()."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16
.end method

.method public vibratePattern(ILjava/lang/String;[JIILandroid/os/IBinder;)V
    .registers 21
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;

    .prologue
    .line 368
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_12

    .line 370
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 374
    :cond_12
    iget-boolean v3, p0, mHMTMount:Z

    if-eqz v3, :cond_17

    .line 423
    :goto_16
    return-void

    .line 379
    :cond_17
    invoke-direct {p0, p1}, verifyIncomingUid(I)V

    .line 381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 393
    .local v12, "identity":J
    if-eqz p3, :cond_36

    :try_start_20
    move-object/from16 v0, p3

    array-length v3, v0

    if-eqz v3, :cond_36

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, isAll0([J)Z

    move-result v3

    if-nez v3, :cond_36

    move-object/from16 v0, p3

    array-length v3, v0
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_79

    move/from16 v0, p4

    if-ge v0, v3, :cond_36

    if-nez p6, :cond_3a

    .line 421
    :cond_36
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_16

    .line 399
    :cond_3a
    :try_start_3a
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    move-object v3, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_3a .. :try_end_4b} :catchall_79

    .line 401
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    const/4 v3, 0x0

    :try_start_4c
    move-object/from16 v0, p6

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_51} :catch_6b
    .catchall {:try_start_4c .. :try_end_51} :catchall_79

    .line 406
    :try_start_51
    iget-object v4, p0, mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_79

    .line 407
    :try_start_54
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 408
    invoke-direct {p0}, doCancelVibrateLocked()V

    .line 409
    if-ltz p4, :cond_70

    .line 410
    iget-object v3, p0, mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 411
    invoke-direct {p0}, startNextVibrationLocked()V

    .line 418
    :goto_66
    monitor-exit v4
    :try_end_67
    .catchall {:try_start_54 .. :try_end_67} :catchall_76

    .line 421
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_16

    .line 402
    :catch_6b
    move-exception v10

    .line 421
    .local v10, "e":Landroid/os/RemoteException;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_16

    .line 415
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_70
    :try_start_70
    iput-object v2, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 416
    invoke-direct {p0, v2}, startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto :goto_66

    .line 418
    :catchall_76
    move-exception v3

    monitor-exit v4
    :try_end_78
    .catchall {:try_start_70 .. :try_end_78} :catchall_76

    :try_start_78
    throw v3
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_79

    .line 421
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_79
    move-exception v3

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public vibratePatternMagnitude(ILjava/lang/String;[JIILandroid/os/IBinder;I)V
    .registers 22
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "usageHint"    # I
    .param p6, "token"    # Landroid/os/IBinder;
    .param p7, "magnitude"    # I

    .prologue
    .line 978
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_12

    .line 980
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires VIBRATE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 984
    :cond_12
    iget-boolean v3, p0, mHMTMount:Z

    if-eqz v3, :cond_17

    .line 1053
    :goto_16
    return-void

    .line 989
    :cond_17
    invoke-direct {p0, p1}, verifyIncomingUid(I)V

    .line 991
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1003
    .local v12, "identity":J
    if-eqz p3, :cond_36

    :try_start_20
    move-object/from16 v0, p3

    array-length v3, v0

    if-eqz v3, :cond_36

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, isAll0([J)Z

    move-result v3

    if-nez v3, :cond_36

    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, p4

    if-ge v0, v3, :cond_36

    if-nez p6, :cond_42

    .line 1006
    :cond_36
    const-string v3, "VibratorService"

    const-string/jumbo v4, "vibratePatternMagnitude() is failed by illegal argument."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_20 .. :try_end_3e} :catchall_c2

    .line 1051
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_16

    .line 1011
    :cond_42
    const/4 v3, -0x1

    move/from16 v0, p7

    if-ne v0, v3, :cond_ac

    .line 1013
    :try_start_47
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibratePatternMagnitude - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", repeat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    move-object v3, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_47 .. :try_end_8b} :catchall_c2

    .line 1031
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    :goto_8b
    const/4 v3, 0x0

    :try_start_8c
    move-object/from16 v0, p6

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_91} :catch_11b
    .catchall {:try_start_8c .. :try_end_91} :catchall_c2

    .line 1036
    :try_start_91
    iget-object v4, p0, mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_c2

    .line 1037
    :try_start_94
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 1038
    invoke-direct {p0}, doCancelVibrateLocked()V

    .line 1039
    if-ltz p4, :cond_121

    .line 1040
    iget-object v3, p0, mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1041
    invoke-direct {p0}, startNextVibrationLocked()V

    .line 1048
    :goto_a6
    monitor-exit v4
    :try_end_a7
    .catchall {:try_start_94 .. :try_end_a7} :catchall_127

    .line 1051
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_16

    .line 1017
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    :cond_ac
    if-nez p7, :cond_c7

    .line 1018
    :try_start_ae
    iget-object v4, p0, mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_c2

    .line 1019
    :try_start_b1
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/VibratorService$Vibration;

    .line 1020
    invoke-direct {p0}, doCancelVibrateLocked()V

    .line 1021
    monitor-exit v4
    :try_end_ba
    .catchall {:try_start_b1 .. :try_end_ba} :catchall_bf

    .line 1051
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_16

    .line 1021
    :catchall_bf
    move-exception v3

    :try_start_c0
    monitor-exit v4
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    :try_start_c1
    throw v3
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c2

    .line 1051
    :catchall_c2
    move-exception v3

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1025
    :cond_c7
    :try_start_c7
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibratePatternMagnitude - package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", repeat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    move-object v3, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;[JIIILjava/lang/String;I)V
    :try_end_119
    .catchall {:try_start_c7 .. :try_end_119} :catchall_c2

    .restart local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    goto/16 :goto_8b

    .line 1032
    :catch_11b
    move-exception v11

    .line 1051
    .local v11, "e":Landroid/os/RemoteException;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_16

    .line 1045
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_121
    :try_start_121
    iput-object v2, p0, mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 1046
    invoke-direct {p0, v2}, startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    goto :goto_a6

    .line 1048
    :catchall_127
    move-exception v3

    monitor-exit v4
    :try_end_129
    .catchall {:try_start_121 .. :try_end_129} :catchall_127

    :try_start_129
    throw v3
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_c2
.end method
