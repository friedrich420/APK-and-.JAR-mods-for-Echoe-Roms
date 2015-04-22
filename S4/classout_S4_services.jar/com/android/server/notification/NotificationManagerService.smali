.class public Lcom/android/server/notification/NotificationManagerService;
.super Lcom/android/server/SystemService;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;,
        Lcom/android/server/notification/NotificationManagerService$PickupPlayer;,
        Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;,
        Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;,
        Lcom/android/server/notification/NotificationManagerService$DumpFilter;,
        Lcom/android/server/notification/NotificationManagerService$NotificationListeners;,
        Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;,
        Lcom/android/server/notification/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/notification/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/notification/NotificationManagerService$ToastRecord;,
        Lcom/android/server/notification/NotificationManagerService$Archive;
    }
.end annotation


# static fields
.field private static final ANDROID:Ljava/lang/String; = "android"

.field private static final ANDROID_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BRIDGE:Ljava/lang/String; = "com.sec.knox.bridge"

.field static final DBG:Z = false

.field private static final DB_VERSION:I = 0x1

.field static final DEFAULT_STREAM_TYPE:I = 0x5

.field static final DEFAULT_VIBRATE_PATTERN:[J

.field static final ENABLE_BLOCKED_NOTIFICATIONS:Z = true

.field static final ENABLE_BLOCKED_TOASTS:Z = true

.field private static final ENABLE_DENIAL_LOG:Ljava/lang/String; = "com.sec.esdk.elm"

.field static final JUNK_SCORE:I = -0x3e8

.field private static final KEYGUARD:Ljava/lang/String; = "com.android.keyguard"

.field static final LONG_DELAY:I = 0xdac

.field private static final LONG_DOUBLE_DELAY:I = 0x1b58

.field static final MATCHES_CALL_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field static final MATCHES_CALL_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field static final MATCHES_MESSAGE_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field static final MATCHES_MESSAGE_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field static final MESSAGE_LISTENER_HINTS_CHANGED:I = 0x7

.field static final MESSAGE_LISTENER_NOTIFICATION_FILTER_CHANGED:I = 0x8

.field static final MESSAGE_RANKING_CONFIG_CHANGE:I = 0x5

.field static final MESSAGE_RECONSIDER_RANKING:I = 0x4

.field static final MESSAGE_SAVE_POLICY_FILE:I = 0x3

.field static final MESSAGE_SEND_RANKING_UPDATE:I = 0x6

.field static final MESSAGE_TIMEOUT:I = 0x2

.field private static final MY_PID:I

.field private static final MY_UID:I

.field static final NOTIFICATION_PRIORITY_MULTIPLIER:I = 0xa

.field private static final NOTIF_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.knox.rcp.components"

.field private static final REASON_DELEGATE_CANCEL:I = 0x2

.field private static final REASON_DELEGATE_CANCEL_ALL:I = 0x3

.field private static final REASON_DELEGATE_CLICK:I = 0x1

.field private static final REASON_DELEGATE_ERROR:I = 0x4

.field private static final REASON_GROUP_SUMMARY_CANCELED:I = 0xc

.field private static final REASON_LISTENER_CANCEL:I = 0xa

.field private static final REASON_LISTENER_CANCEL_ALL:I = 0xb

.field private static final REASON_NOMAN_CANCEL:I = 0x8

.field private static final REASON_NOMAN_CANCEL_ALL:I = 0x9

.field private static final REASON_PACKAGE_BANNED:I = 0x7

.field private static final REASON_PACKAGE_CHANGED:I = 0x5

.field private static final REASON_USER_STOPPED:I = 0x6

.field static final SCORE_DISPLAY_THRESHOLD:I = -0x14

.field static final SCORE_INTERRUPTION_THRESHOLD:I = -0xa

.field static final SCORE_ONGOING_HIGHER:Z = false

.field private static final SD_CARD:Ljava/lang/String; = "com.android.systemui"

.field static final SHORT_DELAY:I = 0x7d0

.field private static final S_PEN:Ljava/lang/String; = "com.sec.android.pagebuddynotisvc"

.field static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_BODY:Ljava/lang/String; = "notification-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field static final VIBRATE_PATTERN_MAXLEN:I = 0x11


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

.field mAttentionLight:Lcom/android/server/lights/Light;

.field mAudioManager:Landroid/media/AudioManager;

.field private mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBuzzBeepBlinked:Ljava/lang/Runnable;

.field private mCallState:I

.field private mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mDefaultNotificationColor:I

.field private mDefaultNotificationLedOff:I

.field private mDefaultNotificationLedOn:I

.field private mDefaultVibrationPattern:[J

.field private mDisableNotificationEffects:Z

.field private mEffectsSuppressor:Landroid/content/ComponentName;

.field private mFallbackVibrationPattern:[J

.field final mForegroundToken:Landroid/os/IBinder;

.field private mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

.field private mInCall:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

.field private mInterruptionFilter:I

.field private final mIsAmericano:Z

.field private mIsDormantModeLedDisabled:Z

.field private mIsDormantModeOn:Z

.field private mIsPlaying:Z

.field mLedNotification:Lcom/android/server/notification/NotificationRecord;

.field mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerHints:I

.field private mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field private final mListenersDisablingEffects:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMethodRingtonePlayer:Ljava/lang/reflect/Method;

.field private mMissedNotificationLightEnabled:Z

.field private final mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field final mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPlayerBinder:Landroid/os/IBinder;

.field private mNotificationPulseEnabled:Z

.field final mNotificationsByKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

.field private mPM:Landroid/os/PowerManager;

.field mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private mRankingHelper:Lcom/android/server/notification/RankingHelper;

.field private final mRankingThread:Landroid/os/HandlerThread;

.field private mScreenOn:Z

.field private final mService:Landroid/os/IBinder;

.field private mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

.field mSoundNotification:Lcom/android/server/notification/NotificationRecord;

.field mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field mSystemReady:Z

.field final mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUseAttentionLight:Z

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field mVibrateNotification:Lcom/android/server/notification/NotificationRecord;

.field mVibrator:Landroid/os/SystemVibrator;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWindowManager:Landroid/view/WindowManagerInternal;

.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 184
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_16

    sput-object v0, DEFAULT_VIBRATE_PATTERN:[J

    .line 308
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, MY_UID:I

    .line 309
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, MY_PID:I

    return-void

    .line 184
    nop

    :array_16
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 965
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 194
    const-string/jumbo v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "americano"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, mIsAmericano:Z

    .line 242
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, mForegroundToken:Landroid/os/IBinder;

    .line 244
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ranker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, mRankingThread:Landroid/os/HandlerThread;

    .line 264
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mListenersDisablingEffects:Landroid/util/ArraySet;

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, mScreenOn:Z

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, mInCall:Z

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mNotificationList:Ljava/util/ArrayList;

    .line 277
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mNotificationsByKey:Landroid/util/ArrayMap;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mToastQueue:Ljava/util/ArrayList;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mLights:Ljava/util/ArrayList;

    .line 290
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mBlockedPackages:Ljava/util/HashSet;

    .line 303
    new-instance v0, Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;-><init>()V

    iput-object v0, p0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 557
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 737
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 944
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, mBuzzBeepBlinked:Ljava/lang/Runnable;

    .line 1210
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$5;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, mService:Landroid/os/IBinder;

    .line 1941
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    .line 3646
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    invoke-direct {v0, p0, v3}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V

    iput-object v0, p0, mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    .line 3877
    iput-object v3, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 3878
    iput-object v3, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 966
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 967
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, mDisableNotificationEffects:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 165
    invoke-direct {p0, p1}, disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/reflect/Method;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    invoke-direct {p0}, updateNotificationPulse()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-boolean v0, p0, mInCall:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, mInCall:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mNotificationLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/notification/NotificationManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    invoke-direct {p0, p1}, setLEDCoverState(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-boolean v0, p0, mNotificationPulseEnabled:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, mNotificationPulseEnabled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-boolean v0, p0, mMissedNotificationLightEnabled:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, mMissedNotificationLightEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    invoke-direct {p0}, updateInterruptionFilterLocked()V

    return-void
.end method

.method static synthetic access$2200()Z
    .registers 1

    .prologue
    .line 165
    invoke-static {}, isCallerSystem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, noteNotificationOp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {p0}, checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500()V
    .registers 0

    .prologue
    .line 165
    invoke-static {}, checkCallerIsSystem()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mRankingHelper:Lcom/android/server/notification/RankingHelper;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "x2"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-boolean v0, p0, mIsPlaying:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mListenersDisablingEffects:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, mIsPlaying:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    invoke-direct {p0}, updateListenerHintsLocked()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    invoke-direct {p0}, updateEffectsSuppressorLocked()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget v0, p0, mListenerHints:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget v0, p0, mInterruptionFilter:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mEffectsSuppressor:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3, p4}, cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-boolean v0, p0, mScreenOn:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 165
    invoke-direct {p0, p1}, applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, mScreenOn:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 165
    invoke-direct {p0, p1}, buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 165
    iput-object p1, p0, mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    .line 165
    invoke-direct {p0, p1}, handleTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    invoke-direct {p0}, handleSavePolicyFile()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    invoke-direct {p0}, handleSendRankingUpdate()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, handleListenerHintsChanged(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, handleListenerInterruptionFilterChanged(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 165
    invoke-direct {p0, p1}, handleRankingReconsideration(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    invoke-direct {p0}, handleRankingConfigChange()V

    return-void
.end method

.method static synthetic access$500()I
    .registers 1

    .prologue
    .line 165
    sget v0, MY_UID:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZI)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget v0, p0, mCallState:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/server/notification/NotificationManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 165
    iput p1, p0, mCallState:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 165
    invoke-direct {p0, p1}, makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()I
    .registers 1

    .prologue
    .line 165
    sget v0, MY_PID:I

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 165
    iget-object v0, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    return-object v0
.end method

.method private applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 2592
    iget-object v0, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    .line 2593
    return-void
.end method

.method private static audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;
    .registers 6
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    .line 2412
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_7

    .line 2413
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 2423
    :goto_6
    return-object v0

    .line 2414
    :cond_7
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    if-ltz v0, :cond_23

    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2416
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_6

    .line 2419
    :cond_23
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 2420
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    goto :goto_6

    .line 2422
    :cond_2b
    const-string v0, "NotificationService"

    const-string v1, "Invalid stream type: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    goto :goto_6
.end method

.method private buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 32
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 2186
    const/4 v5, 0x0

    .line 2187
    .local v5, "buzzBeepBlinked":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v16

    .line 2190
    .local v16, "notification":Landroid/app/Notification;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/notification/NotificationRecord;->score:I

    move/from16 v27, v0

    const/16 v28, -0xa

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2e7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v27

    if-nez v27, :cond_2e7

    const/4 v6, 0x1

    .line 2192
    .local v6, "canInterrupt":Z
    :goto_20
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v27

    if-eqz v27, :cond_63

    .line 2193
    const-string v27, "NotificationService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "pkg="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " canInterrupt="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " intercept="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    :cond_63
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 2201
    .local v22, "token":J
    :try_start_67
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_2ea

    move-result v8

    .line 2203
    .local v8, "currentUser":I
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2207
    invoke-direct/range {p0 .. p1}, disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v9

    .line 2208
    .local v9, "disableEffects":Ljava/lang/String;
    if-eqz v9, :cond_79

    .line 2209
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 2211
    :cond_79
    if-nez v9, :cond_275

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    move/from16 v27, v0

    if-eqz v27, :cond_8d

    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x8

    if-nez v27, :cond_275

    :cond_8d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_b1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v27

    move/from16 v0, v27

    if-eq v0, v8, :cond_b1

    move-object/from16 v0, p0

    iget-object v0, v0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-object/from16 v27, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v27

    if-eqz v27, :cond_275

    :cond_b1
    if-eqz v6, :cond_275

    move-object/from16 v0, p0

    iget-boolean v0, v0, mSystemReady:Z

    move/from16 v27, v0

    if-eqz v27, :cond_275

    move-object/from16 v0, p0

    iget-object v0, v0, mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v27, v0

    if-eqz v27, :cond_275

    .line 2222
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 2229
    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x1

    if-nez v27, :cond_ee

    sget-object v27, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2ef

    :cond_ee
    const/16 v21, 0x1

    .line 2234
    .local v21, "useDefaultSound":Z
    :goto_f0
    const/16 v20, 0x0

    .line 2235
    .local v20, "soundUri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 2237
    .local v12, "hasValidSound":Z
    if-eqz v21, :cond_2f6

    .line 2238
    sget-object v20, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 2241
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 2242
    .local v19, "resolver":Landroid/content/ContentResolver;
    const-string v27, "notification_sound"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_2f3

    const/4 v12, 0x1

    .line 2249
    .end local v19    # "resolver":Landroid/content/ContentResolver;
    :cond_10c
    :goto_10c
    if-eqz v12, :cond_1e8

    .line 2250
    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x4

    if-eqz v27, :cond_30b

    const/4 v13, 0x1

    .line 2253
    .local v13, "looping":Z
    :goto_119
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    move-object/from16 v27, v0

    if-eqz v27, :cond_30e

    .line 2254
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 2258
    .local v4, "audioAttributes":Landroid/media/AudioAttributes;
    :goto_125
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mSoundNotification:Lcom/android/server/notification/NotificationRecord;

    .line 2261
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v27, v0

    invoke-static {v4}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v27

    if-eqz v27, :cond_1e8

    move-object/from16 v0, p0

    iget-object v0, v0, mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v27

    if-nez v27, :cond_1e8

    .line 2264
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2266
    .local v14, "identity":J
    :try_start_14b
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v18

    .line 2268
    .local v18, "player":Landroid/media/IRingtonePlayer;
    if-eqz v18, :cond_1e5

    .line 2271
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2, v13, v4}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V

    .line 2273
    const/4 v5, 0x1

    .line 2276
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsPlaying:Z

    .line 2277
    move-object/from16 v0, p0

    iget-object v0, v0, mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1e5

    .line 2278
    move-object/from16 v0, p0

    iget-object v0, v0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isEnable()Z

    move-result v27

    if-eqz v27, :cond_1e5

    move-object/from16 v0, p0

    iget-object v0, v0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v27

    if-nez v27, :cond_1e5

    .line 2279
    move-object/from16 v0, p0

    iget-object v0, v0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->register()V

    .line 2281
    move-object/from16 v0, p0

    iget-object v0, v0, mNotificationPlayerBinder:Landroid/os/IBinder;

    move-object/from16 v27, v0

    if-nez v27, :cond_1e5

    .line 2282
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v27, 0x0

    new-instance v28, Lcom/android/server/notification/NotificationManagerService$8;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationManagerService$8;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    aput-object v28, v17, v27
    :try_end_1b9
    .catch Landroid/os/RemoteException; {:try_start_14b .. :try_end_1b9} :catch_341
    .catchall {:try_start_14b .. :try_end_1b9} :catchall_376

    .line 2291
    .local v17, "parameter":[Ljava/lang/Object;
    :try_start_1b9
    move-object/from16 v0, p0

    iget-object v0, v0, mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/IBinder;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 2292
    move-object/from16 v0, p0

    iget-object v0, v0, mNotificationPlayerBinder:Landroid/os/IBinder;

    move-object/from16 v27, v0

    new-instance v28, Lcom/android/server/notification/NotificationManagerService$9;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationManagerService$9;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b9 .. :try_end_1e5} :catch_312
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1b9 .. :try_end_1e5} :catch_347
    .catch Landroid/os/RemoteException; {:try_start_1b9 .. :try_end_1e5} :catch_341
    .catchall {:try_start_1b9 .. :try_end_1e5} :catchall_376

    .line 2328
    .end local v17    # "parameter":[Ljava/lang/Object;
    :cond_1e5
    :goto_1e5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2335
    .end local v4    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v13    # "looping":Z
    .end local v14    # "identity":J
    .end local v18    # "player":Landroid/media/IRingtonePlayer;
    :cond_1e8
    :goto_1e8
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v27, v0

    if-eqz v27, :cond_37b

    const/4 v11, 0x1

    .line 2339
    .local v11, "hasCustomVibrate":Z
    :goto_1f1
    if-nez v11, :cond_37e

    if-eqz v12, :cond_37e

    move-object/from16 v0, p0

    iget-object v0, v0, mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_37e

    const/4 v7, 0x1

    .line 2346
    .local v7, "convertSoundToVibration":Z
    :goto_208
    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x2

    if-eqz v27, :cond_381

    const/16 v24, 0x1

    .line 2350
    .local v24, "useDefaultVibrate":Z
    :goto_214
    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->haptic:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, doesItUseHaptic(I)Z

    move-result v25

    .line 2352
    .local v25, "useHaptic":Z
    if-nez v24, :cond_22a

    if-nez v7, :cond_22a

    if-nez v11, :cond_22a

    if-eqz v25, :cond_275

    :cond_22a
    move-object/from16 v0, p0

    iget-object v0, v0, mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v27

    if-eqz v27, :cond_275

    .line 2355
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mVibrateNotification:Lcom/android/server/notification/NotificationRecord;

    .line 2385
    const-string v27, "NotificationService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Noti Alert - doVibrate "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " convertStoV="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    if-nez v24, :cond_268

    if-eqz v7, :cond_385

    :cond_268
    const/16 v27, 0x1

    :goto_26a
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v25

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, doVibrate(ZZLandroid/app/Notification;)V

    .line 2392
    .end local v7    # "convertSoundToVibration":Z
    .end local v11    # "hasCustomVibrate":Z
    .end local v12    # "hasValidSound":Z
    .end local v20    # "soundUri":Landroid/net/Uri;
    .end local v21    # "useDefaultSound":Z
    .end local v24    # "useDefaultVibrate":Z
    .end local v25    # "useHaptic":Z
    :cond_275
    move-object/from16 v0, p0

    iget-object v0, v0, mLights:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v26

    .line 2393
    .local v26, "wasShowLights":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mLedNotification:Lcom/android/server/notification/NotificationRecord;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2a7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, mLedNotification:Lcom/android/server/notification/NotificationRecord;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2a7

    .line 2394
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, mLedNotification:Lcom/android/server/notification/NotificationRecord;

    .line 2396
    :cond_2a7
    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x1

    if-eqz v27, :cond_389

    if-eqz v6, :cond_389

    .line 2397
    move-object/from16 v0, p0

    iget-object v0, v0, mLights:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2398
    invoke-virtual/range {p0 .. p0}, updateLightsLocked()V

    .line 2399
    move-object/from16 v0, p0

    iget-boolean v0, v0, mUseAttentionLight:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2d4

    .line 2400
    move-object/from16 v0, p0

    iget-object v0, v0, mAttentionLight:Lcom/android/server/lights/Light;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/lights/Light;->pulse()V

    .line 2402
    :cond_2d4
    const/4 v5, 0x1

    .line 2406
    :cond_2d5
    :goto_2d5
    if-eqz v5, :cond_2e6

    .line 2407
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mBuzzBeepBlinked:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2409
    :cond_2e6
    return-void

    .line 2190
    .end local v6    # "canInterrupt":Z
    .end local v8    # "currentUser":I
    .end local v9    # "disableEffects":Ljava/lang/String;
    .end local v22    # "token":J
    .end local v26    # "wasShowLights":Z
    :cond_2e7
    const/4 v6, 0x0

    goto/16 :goto_20

    .line 2203
    .restart local v6    # "canInterrupt":Z
    .restart local v22    # "token":J
    :catchall_2ea
    move-exception v27

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v27

    .line 2229
    .restart local v8    # "currentUser":I
    .restart local v9    # "disableEffects":Ljava/lang/String;
    :cond_2ef
    const/16 v21, 0x0

    goto/16 :goto_f0

    .line 2242
    .restart local v12    # "hasValidSound":Z
    .restart local v19    # "resolver":Landroid/content/ContentResolver;
    .restart local v20    # "soundUri":Landroid/net/Uri;
    .restart local v21    # "useDefaultSound":Z
    :cond_2f3
    const/4 v12, 0x0

    goto/16 :goto_10c

    .line 2244
    .end local v19    # "resolver":Landroid/content/ContentResolver;
    :cond_2f6
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10c

    .line 2245
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v20, v0

    .line 2246
    if-eqz v20, :cond_309

    const/4 v12, 0x1

    :goto_307
    goto/16 :goto_10c

    :cond_309
    const/4 v12, 0x0

    goto :goto_307

    .line 2250
    :cond_30b
    const/4 v13, 0x0

    goto/16 :goto_119

    .line 2256
    .restart local v13    # "looping":Z
    :cond_30e
    sget-object v4, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .restart local v4    # "audioAttributes":Landroid/media/AudioAttributes;
    goto/16 :goto_125

    .line 2304
    .restart local v14    # "identity":J
    .restart local v17    # "parameter":[Ljava/lang/Object;
    .restart local v18    # "player":Landroid/media/IRingtonePlayer;
    :catch_312
    move-exception v10

    .line 2305
    .local v10, "ex":Ljava/lang/IllegalAccessException;
    :try_start_313
    const-string v27, "NotificationService"

    const-string v28, "IllegalAccessException"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 2308
    move-object/from16 v0, p0

    iget-object v0, v0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v27

    if-eqz v27, :cond_337

    .line 2309
    move-object/from16 v0, p0

    iget-object v0, v0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 2311
    :cond_337
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsPlaying:Z
    :try_end_33f
    .catch Landroid/os/RemoteException; {:try_start_313 .. :try_end_33f} :catch_341
    .catchall {:try_start_313 .. :try_end_33f} :catchall_376

    goto/16 :goto_1e5

    .line 2326
    .end local v10    # "ex":Ljava/lang/IllegalAccessException;
    .end local v17    # "parameter":[Ljava/lang/Object;
    .end local v18    # "player":Landroid/media/IRingtonePlayer;
    :catch_341
    move-exception v27

    .line 2328
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1e8

    .line 2312
    .restart local v17    # "parameter":[Ljava/lang/Object;
    .restart local v18    # "player":Landroid/media/IRingtonePlayer;
    :catch_347
    move-exception v10

    .line 2313
    .local v10, "ex":Ljava/lang/reflect/InvocationTargetException;
    :try_start_348
    const-string v27, "NotificationService"

    const-string v28, "InvocationTargetException"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, mNotificationPlayerBinder:Landroid/os/IBinder;

    .line 2316
    move-object/from16 v0, p0

    iget-object v0, v0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v27

    if-eqz v27, :cond_36c

    .line 2317
    move-object/from16 v0, p0

    iget-object v0, v0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 2319
    :cond_36c
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsPlaying:Z
    :try_end_374
    .catch Landroid/os/RemoteException; {:try_start_348 .. :try_end_374} :catch_341
    .catchall {:try_start_348 .. :try_end_374} :catchall_376

    goto/16 :goto_1e5

    .line 2328
    .end local v10    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v17    # "parameter":[Ljava/lang/Object;
    .end local v18    # "player":Landroid/media/IRingtonePlayer;
    :catchall_376
    move-exception v27

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v27

    .line 2335
    .end local v4    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v13    # "looping":Z
    .end local v14    # "identity":J
    :cond_37b
    const/4 v11, 0x0

    goto/16 :goto_1f1

    .line 2339
    .restart local v11    # "hasCustomVibrate":Z
    :cond_37e
    const/4 v7, 0x0

    goto/16 :goto_208

    .line 2346
    .restart local v7    # "convertSoundToVibration":Z
    :cond_381
    const/16 v24, 0x0

    goto/16 :goto_214

    .line 2386
    .restart local v24    # "useDefaultVibrate":Z
    .restart local v25    # "useHaptic":Z
    :cond_385
    const/16 v27, 0x0

    goto/16 :goto_26a

    .line 2403
    .end local v7    # "convertSoundToVibration":Z
    .end local v11    # "hasCustomVibrate":Z
    .end local v12    # "hasValidSound":Z
    .end local v20    # "soundUri":Landroid/net/Uri;
    .end local v21    # "useDefaultSound":Z
    .end local v24    # "useDefaultVibrate":Z
    .end local v25    # "useHaptic":Z
    .restart local v26    # "wasShowLights":Z
    :cond_389
    if-eqz v26, :cond_2d5

    .line 2404
    invoke-virtual/range {p0 .. p0}, updateLightsLocked()V

    goto/16 :goto_2d5
.end method

.method private static callStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .prologue
    .line 3216
    packed-switch p0, :pswitch_data_20

    .line 3220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALL_STATE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    .line 3217
    :pswitch_17
    const-string v0, "CALL_STATE_IDLE"

    goto :goto_16

    .line 3218
    :pswitch_1a
    const-string v0, "CALL_STATE_RINGING"

    goto :goto_16

    .line 3219
    :pswitch_1d
    const-string v0, "CALL_STATE_OFFHOOK"

    goto :goto_16

    .line 3216
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method private cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;)V
    .registers 21
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "listenerName"    # Ljava/lang/String;

    .prologue
    .line 3040
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v15

    .line 3041
    .local v15, "n":Landroid/app/Notification;
    invoke-virtual {v15}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-nez v1, :cond_b

    .line 3068
    :cond_a
    return-void

    .line 3045
    :cond_b
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3046
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v6

    .line 3048
    .local v6, "userId":I
    if-eqz v3, :cond_a

    .line 3053
    move-object/from16 v0, p0

    iget-object v1, v0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3054
    .local v11, "N":I
    add-int/lit8 v14, v11, -0x1

    .local v14, "i":I
    :goto_23
    if-ltz v14, :cond_a

    .line 3055
    move-object/from16 v0, p0

    iget-object v1, v0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/notification/NotificationRecord;

    .line 3056
    .local v12, "childR":Lcom/android/server/notification/NotificationRecord;
    iget-object v13, v12, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3057
    .local v13, "childSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupChild()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 3059
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v10, p4

    invoke-static/range {v1 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 3062
    move-object/from16 v0, p0

    iget-object v1, v0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3064
    const/4 v1, 0x0

    const/16 v2, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1, v2}, cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 3054
    :cond_6d
    add-int/lit8 v14, v14, -0x1

    goto :goto_23
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    .registers 13
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2712
    if-eqz p2, :cond_15

    .line 2713
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_15

    .line 2715
    :try_start_c
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_15
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_c .. :try_end_15} :catch_8a

    .line 2725
    :cond_15
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->icon:I

    if-eqz v4, :cond_27

    .line 2726
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 2727
    iget-object v4, p0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Landroid/service/notification/StatusBarNotification;)V

    .line 2731
    :cond_27
    iget-object v4, p0, mSoundNotification:Lcom/android/server/notification/NotificationRecord;

    if-ne v4, p1, :cond_4e

    .line 2732
    iput-object v8, p0, mSoundNotification:Lcom/android/server/notification/NotificationRecord;

    .line 2733
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2735
    .local v2, "identity":J
    :try_start_31
    iget-object v4, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v1

    .line 2736
    .local v1, "player":Landroid/media/IRingtonePlayer;
    if-eqz v1, :cond_3c

    .line 2737
    invoke-interface {v1}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3c} :catch_ab
    .catchall {:try_start_31 .. :try_end_3c} :catchall_bf

    .line 2741
    :cond_3c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2744
    iget-object v4, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 2745
    iget-object v4, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 2747
    :cond_4c
    iput-boolean v7, p0, mIsPlaying:Z

    .line 2753
    .end local v1    # "player":Landroid/media/IRingtonePlayer;
    .end local v2    # "identity":J
    :cond_4e
    :goto_4e
    iget-object v4, p0, mVibrateNotification:Lcom/android/server/notification/NotificationRecord;

    if-ne v4, p1, :cond_60

    .line 2754
    iput-object v8, p0, mVibrateNotification:Lcom/android/server/notification/NotificationRecord;

    .line 2755
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2757
    .restart local v2    # "identity":J
    :try_start_58
    iget-object v4, p0, mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v4}, Landroid/os/SystemVibrator;->cancel()V
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_d3

    .line 2760
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2765
    .end local v2    # "identity":J
    :cond_60
    iget-object v4, p0, mLights:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2766
    iget-object v4, p0, mLedNotification:Lcom/android/server/notification/NotificationRecord;

    if-ne v4, p1, :cond_6f

    .line 2767
    iput-object v8, p0, mLedNotification:Lcom/android/server/notification/NotificationRecord;

    .line 2792
    :cond_6f
    packed-switch p3, :pswitch_data_ea

    .line 2807
    :pswitch_72
    iget-object v4, p0, mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerCancelUnknown(Lcom/android/server/notification/NotificationRecord;)V

    .line 2811
    :goto_77
    iget-object v4, p0, mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2814
    iget-object v4, p0, mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;)V

    .line 2815
    return-void

    .line 2716
    :catch_8a
    move-exception v0

    .line 2719
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canceled PendingIntent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 2739
    .end local v0    # "ex":Landroid/app/PendingIntent$CanceledException;
    .restart local v2    # "identity":J
    :catch_ab
    move-exception v4

    .line 2741
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2744
    iget-object v4, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_bc

    .line 2745
    iget-object v4, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 2747
    :cond_bc
    iput-boolean v7, p0, mIsPlaying:Z

    goto :goto_4e

    .line 2741
    :catchall_bf
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2744
    iget-object v5, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 2745
    iget-object v5, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 2747
    :cond_d0
    iput-boolean v7, p0, mIsPlaying:Z

    throw v4

    .line 2760
    :catchall_d3
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2797
    .end local v2    # "identity":J
    :pswitch_d8
    iget-object v4, p0, mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_77

    .line 2801
    :pswitch_de
    iget-object v4, p0, mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_77

    .line 2804
    :pswitch_e4
    iget-object v4, p0, mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerCancelDueToClick(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_77

    .line 2792
    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_e4
        :pswitch_d8
        :pswitch_d8
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_de
        :pswitch_de
        :pswitch_d8
        :pswitch_d8
    .end packed-switch
.end method

.method private static checkCallerIsSystem()V
    .registers 3

    .prologue
    .line 3189
    invoke-static {}, isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3190
    return-void

    .line 3192
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .registers 7
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 3196
    invoke-static {}, isCallerSystem()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3213
    :cond_6
    return-void

    .line 3199
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3201
    .local v2, "uid":I
    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-interface {v3, p0, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3203
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_57

    .line 3204
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_33} :catch_33

    .line 3210
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_33
    move-exception v1

    .line 3211
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3206
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_57
    :try_start_57
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3207
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is owned by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_8e} :catch_33
.end method

.method static clamp(III)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 2686
    if-ge p0, p1, :cond_3

    .end local p1    # "low":I
    :goto_2
    return p1

    .restart local p1    # "low":I
    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method private disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 1825
    iget-boolean v0, p0, mDisableNotificationEffects:Z

    if-eqz v0, :cond_7

    .line 1826
    const-string v0, "booleanState"

    .line 1834
    :goto_6
    return-object v0

    .line 1828
    :cond_7
    iget v0, p0, mListenerHints:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    .line 1829
    const-string v0, "listenerHints"

    goto :goto_6

    .line 1831
    :cond_10
    iget v0, p0, mCallState:I

    if-eqz v0, :cond_1f

    iget-object v0, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1832
    const-string v0, "callState"

    goto :goto_6

    .line 1834
    :cond_1f
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private doVibrate(ZZLandroid/app/Notification;)V
    .registers 12
    .param p1, "useDefaultVibrate"    # Z
    .param p2, "useHaptic"    # Z
    .param p3, "n"    # Landroid/app/Notification;

    .prologue
    .line 3301
    if-eqz p1, :cond_24

    .line 3305
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3307
    .local v0, "identity":J
    :try_start_6
    iget-boolean v4, p0, mIsAmericano:Z

    if-eqz v4, :cond_15

    .line 3308
    iget-object v4, p0, mVibrator:Landroid/os/SystemVibrator;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/os/SystemVibrator;->vibrateNotification(I)V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_1f

    .line 3314
    :goto_11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3333
    .end local v0    # "identity":J
    :goto_14
    return-void

    .line 3310
    .restart local v0    # "identity":J
    :cond_15
    :try_start_15
    iget-object v4, p0, mVibrator:Landroid/os/SystemVibrator;

    const/16 v5, 0xd

    sget-object v6, Landroid/os/SystemVibrator$MagnitudeType;->NotificationMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v4, v5, v6}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1f

    goto :goto_11

    .line 3314
    :catchall_1f
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3317
    .end local v0    # "identity":J
    :cond_24
    if-eqz p2, :cond_3c

    .line 3318
    iget-boolean v4, p0, mIsAmericano:Z

    if-eqz v4, :cond_32

    .line 3319
    iget-object v4, p0, mVibrator:Landroid/os/SystemVibrator;

    iget v5, p3, Landroid/app/Notification;->haptic:I

    invoke-virtual {v4, v5}, Landroid/os/SystemVibrator;->vibrateNotification(I)V

    goto :goto_14

    .line 3321
    :cond_32
    iget-object v4, p0, mVibrator:Landroid/os/SystemVibrator;

    iget v5, p3, Landroid/app/Notification;->haptic:I

    sget-object v6, Landroid/os/SystemVibrator$MagnitudeType;->NotificationMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v4, v5, v6}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V

    goto :goto_14

    .line 3326
    :cond_3c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3328
    .local v2, "identity2":J
    :try_start_40
    iget-object v5, p0, mVibrator:Landroid/os/SystemVibrator;

    iget-object v6, p3, Landroid/app/Notification;->vibrate:[J

    iget v4, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_54

    const/4 v4, 0x0

    :goto_4b
    sget-object v7, Landroid/os/SystemVibrator$MagnitudeType;->NotificationMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v5, v6, v4, v7}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V
    :try_end_50
    .catchall {:try_start_40 .. :try_end_50} :catchall_56

    .line 3330
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_14

    .line 3328
    :cond_54
    const/4 v4, -0x1

    goto :goto_4b

    .line 3330
    :catchall_56
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private doesItUseHaptic(I)Z
    .registers 3
    .param p1, "haptic"    # I

    .prologue
    .line 3290
    packed-switch p1, :pswitch_data_8

    .line 3297
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 3295
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 3290
    nop

    :pswitch_data_8
    .packed-switch 0xd
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I
    .registers 4
    .param p1, "target"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 2597
    iget-object v0, p0, mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0
.end method

.method private getActiveNotificationKeys(Landroid/service/notification/INotificationListener;)[Ljava/lang/String;
    .registers 9
    .param p1, "token"    # Landroid/service/notification/INotificationListener;

    .prologue
    .line 1808
    iget-object v5, p0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v5, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v2

    .line 1809
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1810
    .local v3, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 1811
    iget-object v6, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1812
    :try_start_14
    iget-object v5, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1813
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    if-ge v1, v0, :cond_3b

    .line 1814
    iget-object v5, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    iget-object v4, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1815
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1816
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1813
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1819
    .end local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_3b
    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_14 .. :try_end_3c} :catchall_49

    .line 1821
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_3c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5

    .line 1819
    :catchall_49
    move-exception v5

    :try_start_4a
    monitor-exit v6
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v5
.end method

.method static getLongArray(Landroid/content/res/Resources;II[J)[J
    .registers 10
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I
    .param p2, "maxlen"    # I
    .param p3, "def"    # [J

    .prologue
    .line 952
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 953
    .local v0, "ar":[I
    if-nez v0, :cond_7

    .line 961
    .end local p3    # "def":[J
    :goto_6
    return-object p3

    .line 956
    .restart local p3    # "def":[J
    :cond_7
    array-length v4, v0

    if-le v4, p2, :cond_18

    move v2, p2

    .line 957
    .local v2, "len":I
    :goto_b
    new-array v3, v2, [J

    .line 958
    .local v3, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_1a

    .line 959
    aget v4, v0, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 958
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 956
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "out":[J
    :cond_18
    array-length v2, v0

    goto :goto_b

    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "out":[J
    :cond_1a
    move-object p3, v3

    .line 961
    goto :goto_6
.end method

.method private handleListenerHintsChanged(I)V
    .registers 4
    .param p1, "hints"    # I

    .prologue
    .line 2626
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2627
    :try_start_3
    iget-object v0, p0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V

    .line 2628
    monitor-exit v1

    .line 2629
    return-void

    .line 2628
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private handleListenerInterruptionFilterChanged(I)V
    .registers 4
    .param p1, "interruptionFilter"    # I

    .prologue
    .line 2632
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2633
    :try_start_3
    iget-object v0, p0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(I)V

    .line 2634
    monitor-exit v1

    .line 2635
    return-void

    .line 2634
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private handleRankingConfigChange()V
    .registers 9

    .prologue
    .line 2568
    iget-object v6, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2569
    :try_start_3
    iget-object v5, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2570
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2571
    .local v2, "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v4, v0, [I

    .line 2572
    .local v4, "visibilities":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_30

    .line 2573
    iget-object v5, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 2574
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2575
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v5

    aput v5, v4, v1

    .line 2576
    iget-object v5, p0, mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v5, v3}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 2572
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2578
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_30
    const/4 v1, 0x0

    :goto_31
    if-ge v1, v0, :cond_62

    .line 2579
    iget-object v5, p0, mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v7, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 2580
    iget-object v5, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 2581
    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    aget v5, v4, v1

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v7

    if-eq v5, v7, :cond_5f

    .line 2583
    :cond_5a
    invoke-direct {p0}, scheduleSendRankingUpdate()V

    .line 2584
    monitor-exit v6

    .line 2588
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_5e
    return-void

    .line 2578
    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 2587
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_62
    monitor-exit v6

    goto :goto_5e

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "visibilities":[I
    :catchall_64
    move-exception v5

    monitor-exit v6
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_64

    throw v5
.end method

.method private handleRankingReconsideration(Landroid/os/Message;)V
    .registers 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2538
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v9, Lcom/android/server/notification/RankingReconsideration;

    if-nez v9, :cond_7

    .line 2565
    :cond_6
    :goto_6
    return-void

    .line 2539
    :cond_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/notification/RankingReconsideration;

    .line 2540
    .local v5, "recon":Lcom/android/server/notification/RankingReconsideration;
    invoke-virtual {v5}, Lcom/android/server/notification/RankingReconsideration;->run()V

    .line 2542
    iget-object v10, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v10

    .line 2543
    :try_start_11
    iget-object v9, p0, mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Lcom/android/server/notification/RankingReconsideration;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 2544
    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    if-nez v6, :cond_24

    .line 2545
    monitor-exit v10

    goto :goto_6

    .line 2561
    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    :catchall_21
    move-exception v9

    monitor-exit v10
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_21

    throw v9

    .line 2547
    .restart local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_24
    :try_start_24
    invoke-direct {p0, v6}, findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v2

    .line 2548
    .local v2, "indexBefore":I
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    .line 2549
    .local v4, "interceptBefore":Z
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v8

    .line 2550
    .local v8, "visibilityBefore":I
    invoke-virtual {v5, v6}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 2551
    invoke-direct {p0, v6}, applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 2552
    iget-object v9, p0, mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v11, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 2553
    invoke-direct {p0, v6}, findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v1

    .line 2554
    .local v1, "indexAfter":I
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    .line 2555
    .local v3, "interceptAfter":Z
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v7

    .line 2556
    .local v7, "visibilityAfter":I
    if-ne v2, v1, :cond_4f

    if-ne v4, v3, :cond_4f

    if-eq v8, v7, :cond_5e

    :cond_4f
    const/4 v0, 0x1

    .line 2558
    .local v0, "changed":Z
    :goto_50
    if-eqz v4, :cond_57

    if-nez v3, :cond_57

    .line 2559
    invoke-direct {p0, v6}, buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 2561
    :cond_57
    monitor-exit v10
    :try_end_58
    .catchall {:try_start_24 .. :try_end_58} :catchall_21

    .line 2562
    if-eqz v0, :cond_6

    .line 2563
    invoke-direct {p0}, scheduleSendRankingUpdate()V

    goto :goto_6

    .line 2556
    .end local v0    # "changed":Z
    :cond_5e
    const/4 v0, 0x0

    goto :goto_50
.end method

.method private handleSavePolicyFile()V
    .registers 8

    .prologue
    .line 481
    const-string v3, "NotificationService"

    const-string v4, "handleSavePolicyFile"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v4, p0, mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v4

    .line 485
    :try_start_a
    iget-object v3, p0, mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_50
    .catchall {:try_start_a .. :try_end_f} :catchall_5a

    move-result-object v2

    .line 492
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_10
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 493
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v3, "utf-8"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 494
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 495
    const/4 v3, 0x0

    const-string v5, "notification-policy"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 496
    const/4 v3, 0x0

    const-string/jumbo v5, "version"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 497
    iget-object v3, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/notification/ZenModeHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 498
    iget-object v3, p0, mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/notification/RankingHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 499
    const/4 v3, 0x0

    const-string v5, "notification-policy"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 500
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 501
    iget-object v3, p0, mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_4e} :catch_5d
    .catchall {:try_start_10 .. :try_end_4e} :catchall_5a

    .line 506
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_4e
    :try_start_4e
    monitor-exit v4

    .line 507
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :goto_4f
    return-void

    .line 486
    :catch_50
    move-exception v0

    .line 487
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "NotificationService"

    const-string v5, "Failed to save policy file"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    monitor-exit v4

    goto :goto_4f

    .line 506
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_5a
    move-exception v3

    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_5a

    throw v3

    .line 502
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :catch_5d
    move-exception v0

    .line 503
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_5e
    const-string v3, "NotificationService"

    const-string v5, "Failed to save policy file, restoring backup"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    iget-object v3, p0, mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_6a
    .catchall {:try_start_5e .. :try_end_6a} :catchall_5a

    goto :goto_4e
.end method

.method private handleSendRankingUpdate()V
    .registers 3

    .prologue
    .line 2607
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2608
    :try_start_3
    iget-object v0, p0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked()V

    .line 2609
    monitor-exit v1

    .line 2610
    return-void

    .line 2609
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private handleTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    .line 2495
    iget-object v2, p0, mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2496
    :try_start_3
    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {p0, v1, v3}, indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v0

    .line 2497
    .local v0, "index":I
    if-ltz v0, :cond_10

    .line 2498
    invoke-virtual {p0, v0}, cancelToastLocked(I)V

    .line 2500
    :cond_10
    monitor-exit v2

    .line 2501
    return-void

    .line 2500
    .end local v0    # "index":I
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private importOldBlockDb()V
    .registers 7

    .prologue
    .line 1101
    invoke-direct {p0}, loadPolicyFile()V

    .line 1103
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1104
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1105
    .local v2, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1107
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    :try_start_1f
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1108
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_2b} :catch_2c

    goto :goto_11

    .line 1109
    :catch_2c
    move-exception v4

    goto :goto_11

    .line 1113
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2e
    iget-object v4, p0, mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1114
    return-void
.end method

.method private static isCallerSystem()Z
    .registers 1

    .prologue
    .line 3185
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private static isUidSystem(I)Z
    .registers 3
    .param p0, "uid"    # I

    .prologue
    .line 3180
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3181
    .local v0, "appid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_e

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_e

    if-nez p0, :cond_10

    :cond_e
    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3281
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 3282
    const/4 v0, 0x0

    .line 3285
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private listenForCallState()V
    .registers 4

    .prologue
    .line 3225
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$11;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$11;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 3233
    return-void
.end method

.method private loadPolicyFile()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 428
    iget-object v7, p0, mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v7

    .line 429
    :try_start_4
    iget-object v6, p0, mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_7f

    .line 431
    const/4 v1, 0x0

    .line 433
    .local v1, "infile":Ljava/io/FileInputStream;
    :try_start_a
    iget-object v6, p0, mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 434
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 435
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    invoke-interface {v2, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 439
    const/4 v5, 0x1

    .line 440
    .local v5, "version":I
    :goto_19
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v10, :cond_8e

    .line 441
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, "tag":Ljava/lang/String;
    const/4 v6, 0x2

    if-ne v4, v6, :cond_3a

    .line 443
    const-string v6, "notification-policy"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 444
    const/4 v6, 0x0

    const-string/jumbo v8, "version"

    invoke-interface {v2, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 458
    :cond_3a
    :goto_3a
    iget-object v6, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6, v2}, Lcom/android/server/notification/ZenModeHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 459
    iget-object v6, p0, mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v6, v2}, Lcom/android/server/notification/RankingHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_44} :catch_45
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_44} :catch_73
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_44} :catch_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_44} :catch_9e
    .catchall {:try_start_a .. :try_end_44} :catchall_aa

    goto :goto_19

    .line 461
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "type":I
    .end local v5    # "version":I
    :catch_45
    move-exception v6

    .line 470
    :try_start_46
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 472
    :goto_49
    monitor-exit v7
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_7f

    .line 473
    return-void

    .line 446
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "type":I
    .restart local v5    # "version":I
    :cond_4b
    :try_start_4b
    const-string v6, "blocked-packages"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 447
    :cond_53
    :goto_53
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v10, :cond_3a

    .line 448
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 449
    const-string/jumbo v6, "package"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 450
    iget-object v6, p0, mBlockedPackages:Ljava/util/HashSet;

    const/4 v8, 0x0

    const-string v9, "name"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_72
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_72} :catch_45
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_72} :catch_73
    .catch Ljava/lang/NumberFormatException; {:try_start_4b .. :try_end_72} :catch_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4b .. :try_end_72} :catch_9e
    .catchall {:try_start_4b .. :try_end_72} :catchall_aa

    goto :goto_53

    .line 463
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "type":I
    .end local v5    # "version":I
    :catch_73
    move-exception v0

    .line 464
    .local v0, "e":Ljava/io/IOException;
    :try_start_74
    const-string v6, "NotificationService"

    const-string v8, "Unable to read notification policy"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_aa

    .line 470
    :try_start_7b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_49

    .line 472
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "infile":Ljava/io/FileInputStream;
    :catchall_7f
    move-exception v6

    monitor-exit v7
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_7f

    throw v6

    .line 452
    .restart local v1    # "infile":Ljava/io/FileInputStream;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "type":I
    .restart local v5    # "version":I
    :cond_82
    :try_start_82
    const-string v6, "blocked-packages"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_87
    .catch Ljava/io/FileNotFoundException; {:try_start_82 .. :try_end_87} :catch_45
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_87} :catch_73
    .catch Ljava/lang/NumberFormatException; {:try_start_82 .. :try_end_87} :catch_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_82 .. :try_end_87} :catch_9e
    .catchall {:try_start_82 .. :try_end_87} :catchall_aa

    move-result v6

    if-eqz v6, :cond_53

    const/4 v6, 0x3

    if-ne v4, v6, :cond_53

    goto :goto_3a

    .line 470
    .end local v3    # "tag":Ljava/lang/String;
    :cond_8e
    :try_start_8e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_7f

    goto :goto_49

    .line 465
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    .end local v5    # "version":I
    :catch_92
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_93
    const-string v6, "NotificationService"

    const-string v8, "Unable to parse notification policy"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_aa

    .line 470
    :try_start_9a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_7f

    goto :goto_49

    .line 467
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_9e
    move-exception v0

    .line 468
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_9f
    const-string v6, "NotificationService"

    const-string v8, "Unable to parse notification policy"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catchall {:try_start_9f .. :try_end_a6} :catchall_aa

    .line 470
    :try_start_a6
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_49

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_aa
    move-exception v6

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_af
    .catchall {:try_start_a6 .. :try_end_af} :catchall_7f
.end method

.method private makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .registers 13
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 3242
    const/4 v7, -0x1

    .line 3243
    .local v7, "speedBumpIndex":I
    iget-object v9, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3244
    .local v0, "N":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3245
    .local v4, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3246
    .local v2, "interceptedKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 3247
    .local v8, "visibilityOverrides":Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v0, :cond_7a

    .line 3248
    iget-object v9, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 3249
    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v9, p1}, isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v9

    if-nez v9, :cond_2c

    .line 3247
    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 3252
    :cond_2c
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3253
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v9

    if-eqz v9, :cond_44

    .line 3254
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3256
    :cond_44
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v9

    const/16 v10, -0x3e8

    if-eq v9, v10, :cond_59

    .line 3258
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3262
    :cond_59
    const/4 v9, -0x1

    if-ne v7, v9, :cond_29

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    move-result v9

    if-nez v9, :cond_29

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v9

    if-gtz v9, :cond_29

    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->priority:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_29

    .line 3271
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    goto :goto_29

    .line 3274
    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_7a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 3275
    .local v5, "keysAr":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 3276
    .local v3, "interceptedKeysAr":[Ljava/lang/String;
    new-instance v9, Landroid/service/notification/NotificationRankingUpdate;

    invoke-direct {v9, v5, v3, v8, v7}, Landroid/service/notification/NotificationRankingUpdate;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)V

    return-object v9
.end method

.method private noteNotificationOp(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 514
    iget-object v0, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    .line 516
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifications are disabled by AppOps for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v0, 0x0

    .line 519
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23
.end method

.method private notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .prologue
    .line 2893
    invoke-direct {p0, p1, p2}, notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, -0x1

    .line 2878
    if-eq p2, v1, :cond_f

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    if-eq v0, v1, :cond_f

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private scheduleInterruptionFilterChanged(I)V
    .registers 5
    .param p1, "listenerInterruptionFilter"    # I

    .prologue
    const/16 v2, 0x8

    .line 2618
    iget-object v0, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 2619
    iget-object v0, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2623
    return-void
.end method

.method private scheduleListenerHintsChanged(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x7

    .line 2613
    iget-object v0, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 2614
    iget-object v0, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2615
    return-void
.end method

.method private scheduleSendRankingUpdate()V
    .registers 4

    .prologue
    const/4 v2, 0x6

    .line 2601
    iget-object v1, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 2602
    iget-object v1, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2603
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2604
    return-void
.end method

.method private scheduleTimeoutLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    const/4 v4, 0x2

    .line 2475
    iget-object v3, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2476
    iget-object v3, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2481
    .local v2, "m":Landroid/os/Message;
    iget v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    if-ne v3, v4, :cond_18

    .line 2482
    const-wide/16 v0, 0x1b58

    .line 2489
    .local v0, "delay":J
    :goto_12
    iget-object v3, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2490
    return-void

    .line 2483
    .end local v0    # "delay":J
    :cond_18
    iget v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    .line 2484
    const-wide/16 v0, 0xdac

    .restart local v0    # "delay":J
    goto :goto_12

    .line 2486
    .end local v0    # "delay":J
    :cond_20
    const-wide/16 v0, 0x7d0

    .restart local v0    # "delay":J
    goto :goto_12
.end method

.method private setLEDCoverState(Z)V
    .registers 9
    .param p1, "state"    # Z

    .prologue
    const/16 v6, 0x12

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3881
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_22

    .line 3882
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 3883
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_22

    .line 3884
    new-array v1, v5, [B

    .line 3885
    .local v1, "data":[B
    if-eqz p1, :cond_23

    .line 3886
    aput-byte v5, v1, v4

    .line 3887
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v2, v6, v1}, Lcom/samsung/android/cover/CoverManager;->sendDataToCover(I[B)V

    .line 3894
    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v1    # "data":[B
    :cond_22
    :goto_22
    return-void

    .line 3889
    .restart local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    .restart local v1    # "data":[B
    :cond_23
    const/4 v2, 0x2

    aput-byte v2, v1, v4

    .line 3890
    iget-object v2, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v2, v6, v1}, Lcom/samsung/android/cover/CoverManager;->sendDataToCover(I[B)V

    goto :goto_22
.end method

.method private updateEffectsSuppressorLocked()V
    .registers 5

    .prologue
    .line 1178
    iget-object v1, p0, mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, mListenersDisablingEffects:Landroid/util/ArraySet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 1180
    .local v0, "suppressor":Landroid/content/ComponentName;
    :goto_13
    iget-object v1, p0, mEffectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1184
    :goto_1b
    return-void

    .line 1178
    .end local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_1c
    const/4 v0, 0x0

    goto :goto_13

    .line 1181
    .restart local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_1e
    iput-object v0, p0, mEffectsSuppressor:Landroid/content/ComponentName;

    .line 1182
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1b
.end method

.method private updateInterruptionFilterLocked()V
    .registers 3

    .prologue
    .line 1187
    iget-object v1, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    .line 1188
    .local v0, "interruptionFilter":I
    iget v1, p0, mInterruptionFilter:I

    if-ne v0, v1, :cond_b

    .line 1191
    :goto_a
    return-void

    .line 1189
    :cond_b
    iput v0, p0, mInterruptionFilter:I

    .line 1190
    invoke-direct {p0, v0}, scheduleInterruptionFilterChanged(I)V

    goto :goto_a
.end method

.method private updateListenerHintsLocked()V
    .registers 3

    .prologue
    .line 1171
    iget-object v1, p0, mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    .line 1172
    .local v0, "hints":I
    :goto_9
    iget v1, p0, mListenerHints:I

    if-ne v0, v1, :cond_10

    .line 1175
    :goto_d
    return-void

    .line 1171
    .end local v0    # "hints":I
    :cond_e
    const/4 v0, 0x1

    goto :goto_9

    .line 1173
    .restart local v0    # "hints":I
    :cond_10
    iput v0, p0, mListenerHints:I

    .line 1174
    invoke-direct {p0, v0}, scheduleListenerHintsChanged(I)V

    goto :goto_d
.end method

.method private updateNotificationPulse()V
    .registers 3

    .prologue
    .line 3174
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3175
    :try_start_3
    invoke-virtual {p0}, updateLightsLocked()V

    .line 3176
    monitor-exit v1

    .line 3177
    return-void

    .line 3176
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method


# virtual methods
.method cancelAll(I)V
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 3014
    iget-object v4, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3015
    :try_start_3
    iget-object v3, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3016
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_34

    .line 3017
    iget-object v3, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 3019
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v2, p1}, notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3016
    :cond_1b
    :goto_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 3023
    :cond_1e
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x22

    if-nez v3, :cond_1b

    .line 3025
    iget-object v3, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3027
    const/4 v3, 0x1

    const/4 v5, 0x3

    invoke-direct {p0, v2, v3, v5}, cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    goto :goto_1b

    .line 3033
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_31
    move-exception v3

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v3

    .line 3032
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_34
    :try_start_34
    invoke-virtual {p0}, updateLightsLocked()V

    .line 3033
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_31

    .line 3034
    return-void
.end method

.method cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .registers 21
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # I
    .param p5, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p6, "includeCurrentProfiles"    # Z

    .prologue
    .line 2975
    if-nez p5, :cond_30

    const/4 v8, 0x0

    .line 2976
    .local v8, "listenerName":Ljava/lang/String;
    :goto_3
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move/from16 v7, p4

    invoke-static/range {v1 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 2979
    const/4 v11, 0x0

    .line 2980
    .local v11, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2981
    .local v10, "N":I
    add-int/lit8 v12, v10, -0x1

    .local v12, "i":I
    :goto_19
    if-ltz v12, :cond_5f

    .line 2982
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 2983
    .local v13, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz p6, :cond_39

    .line 2984
    move/from16 v0, p3

    invoke-direct {p0, v13, v0}, notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v1

    if-nez v1, :cond_41

    .line 2981
    :cond_2d
    :goto_2d
    add-int/lit8 v12, v12, -0x1

    goto :goto_19

    .line 2975
    .end local v8    # "listenerName":Ljava/lang/String;
    .end local v10    # "N":I
    .end local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v12    # "i":I
    .end local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_30
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 2988
    .restart local v8    # "listenerName":Ljava/lang/String;
    .restart local v10    # "N":I
    .restart local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v12    # "i":I
    .restart local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_39
    move/from16 v0, p3

    invoke-direct {p0, v13, v0}, notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2993
    :cond_41
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x22

    if-nez v1, :cond_2d

    .line 2995
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2996
    const/4 v1, 0x1

    move/from16 v0, p4

    invoke-direct {p0, v13, v1, v0}, cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 2998
    if-nez v11, :cond_5b

    .line 2999
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3001
    .restart local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    :cond_5b
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 3004
    .end local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_5f
    if-eqz v11, :cond_76

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 3005
    .local v9, "M":I
    :goto_65
    const/4 v12, 0x0

    :goto_66
    if-ge v12, v9, :cond_78

    .line 3006
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    move/from16 v0, p2

    invoke-direct {p0, v1, p1, v0, v8}, cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;)V

    .line 3005
    add-int/lit8 v12, v12, 0x1

    goto :goto_66

    .line 3004
    .end local v9    # "M":I
    :cond_76
    const/4 v9, 0x0

    goto :goto_65

    .line 3009
    .restart local v9    # "M":I
    :cond_78
    invoke-virtual {p0}, updateLightsLocked()V

    .line 3010
    return-void
.end method

.method cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 24
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "mustHaveFlags"    # I
    .param p5, "mustNotHaveFlags"    # I
    .param p6, "doit"    # Z
    .param p7, "userId"    # I
    .param p8, "reason"    # I
    .param p9, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 2904
    if-nez p9, :cond_34

    const/4 v8, 0x0

    .local v8, "listenerName":Ljava/lang/String;
    :goto_3
    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p8

    .line 2905
    invoke-static/range {v1 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 2909
    iget-object v2, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2910
    :try_start_16
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2911
    .local v10, "N":I
    const/4 v11, 0x0

    .line 2917
    .local v11, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    add-int/lit8 v12, v10, -0x1

    .local v12, "i":I
    :goto_1f
    if-ltz v12, :cond_86

    .line 2918
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 2929
    .local v13, "r":Lcom/android/server/notification/NotificationRecord;
    move/from16 v0, p7

    invoke-direct {p0, v13, v0}, notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_83

    move-result v1

    if-nez v1, :cond_3d

    .line 2917
    :cond_31
    :goto_31
    add-int/lit8 v12, v12, -0x1

    goto :goto_1f

    .line 2904
    .end local v8    # "listenerName":Ljava/lang/String;
    .end local v10    # "N":I
    .end local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v12    # "i":I
    .end local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_34
    move-object/from16 v0, p9

    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 2933
    .restart local v8    # "listenerName":Ljava/lang/String;
    .restart local v10    # "N":I
    .restart local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v12    # "i":I
    .restart local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3d
    :try_start_3d
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_46

    if-eqz p3, :cond_31

    .line 2936
    :cond_46
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v1

    and-int v1, v1, p4

    move/from16 v0, p4

    if-ne v1, v0, :cond_31

    .line 2939
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v1

    and-int v1, v1, p5

    if-nez v1, :cond_31

    .line 2942
    if-eqz p3, :cond_68

    iget-object v1, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2947
    :cond_68
    if-nez v11, :cond_6f

    .line 2948
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2950
    .restart local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    :cond_6f
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2951
    if-nez p6, :cond_77

    .line 2952
    const/4 v1, 0x1

    monitor-exit v2

    .line 2969
    .end local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_76
    return v1

    .line 2954
    .restart local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_77
    iget-object v1, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2956
    const/4 v1, 0x0

    move/from16 v0, p8

    invoke-direct {p0, v13, v1, v0}, cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    goto :goto_31

    .line 2970
    .end local v10    # "N":I
    .end local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v12    # "i":I
    .end local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_83
    move-exception v1

    monitor-exit v2
    :try_end_85
    .catchall {:try_start_3d .. :try_end_85} :catchall_83

    throw v1

    .line 2959
    .restart local v10    # "N":I
    .restart local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v12    # "i":I
    :cond_86
    if-eqz p6, :cond_9f

    if-eqz v11, :cond_9f

    .line 2960
    :try_start_8a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2961
    .local v9, "M":I
    const/4 v12, 0x0

    :goto_8f
    if-ge v12, v9, :cond_9f

    .line 2962
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    move/from16 v0, p2

    invoke-direct {p0, v1, p1, v0, v8}, cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;)V

    .line 2961
    add-int/lit8 v12, v12, 0x1

    goto :goto_8f

    .line 2966
    .end local v9    # "M":I
    :cond_9f
    if-eqz v11, :cond_a4

    .line 2967
    invoke-virtual {p0}, updateLightsLocked()V

    .line 2969
    :cond_a4
    if-eqz v11, :cond_a9

    const/4 v1, 0x1

    :goto_a7
    monitor-exit v2
    :try_end_a8
    .catchall {:try_start_8a .. :try_end_a8} :catchall_83

    goto :goto_76

    :cond_a9
    const/4 v1, 0x0

    goto :goto_a7
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 26
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "mustHaveFlags"    # I
    .param p7, "mustNotHaveFlags"    # I
    .param p8, "sendDelete"    # Z
    .param p9, "userId"    # I
    .param p10, "reason"    # I
    .param p11, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 2829
    iget-object v13, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$10;

    move-object v1, p0

    move-object/from16 v2, p11

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move/from16 v8, p9

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p10

    move/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/android/server/notification/NotificationManagerService$10;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIZ)V

    invoke-virtual {v13, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2871
    return-void
.end method

.method cancelToastLocked(I)V
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 2454
    iget-object v2, p0, mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2456
    .local v1, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :try_start_8
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v2}, Landroid/app/ITransientNotification;->hide()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_23

    .line 2463
    :goto_d
    iget-object v2, p0, mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2464
    iget v2, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v2}, keepProcessAliveLocked(I)V

    .line 2465
    iget-object v2, p0, mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_22

    .line 2469
    invoke-virtual {p0}, showNextToastLocked()V

    .line 2471
    :cond_22
    return-void

    .line 2457
    :catch_23
    move-exception v0

    .line 2458
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object died trying to hide notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 1838
    const-string v7, "Current Notification Manager state"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1839
    if-eqz p2, :cond_14

    .line 1840
    const-string v7, " (filtered to "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ")"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1842
    :cond_14
    const/16 v7, 0x3a

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 1844
    if-eqz p2, :cond_45

    iget-boolean v7, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v7, :cond_45

    const/4 v6, 0x1

    .line 1846
    .local v6, "zenOnly":Z
    :goto_20
    if-nez v6, :cond_4d

    .line 1847
    iget-object v8, p0, mToastQueue:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1848
    :try_start_25
    iget-object v7, p0, mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1849
    .local v0, "N":I
    if-lez v0, :cond_4c

    .line 1850
    const-string v7, "  Toast Queue:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1851
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    if-ge v1, v0, :cond_47

    .line 1852
    iget-object v7, p0, mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    const-string v9, "    "

    invoke-virtual {v7, p1, v9, p2}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 1851
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 1844
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v6    # "zenOnly":Z
    :cond_45
    const/4 v6, 0x0

    goto :goto_20

    .line 1854
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v6    # "zenOnly":Z
    :cond_47
    const-string v7, "  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1856
    .end local v1    # "i":I
    :cond_4c
    monitor-exit v8
    :try_end_4d
    .catchall {:try_start_25 .. :try_end_4d} :catchall_77

    .line 1859
    .end local v0    # "N":I
    :cond_4d
    iget-object v8, p0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1860
    if-nez v6, :cond_1cd

    .line 1861
    :try_start_52
    iget-object v7, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1862
    .restart local v0    # "N":I
    if-lez v0, :cond_8c

    .line 1863
    const-string v7, "  Notification List:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1864
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_60
    if-ge v1, v0, :cond_87

    .line 1865
    iget-object v7, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 1866
    .local v4, "nr":Lcom/android/server/notification/NotificationRecord;
    if-eqz p2, :cond_7a

    iget-object v7, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v7}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_84

    move-result v7

    if-nez v7, :cond_7a

    .line 1864
    :goto_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 1856
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "nr":Lcom/android/server/notification/NotificationRecord;
    :catchall_77
    move-exception v7

    :try_start_78
    monitor-exit v8
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v7

    .line 1867
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v4    # "nr":Lcom/android/server/notification/NotificationRecord;
    :cond_7a
    :try_start_7a
    const-string v7, "    "

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4, p1, v7, v9}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_74

    .line 1935
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "nr":Lcom/android/server/notification/NotificationRecord;
    :catchall_84
    move-exception v7

    monitor-exit v8
    :try_end_86
    .catchall {:try_start_7a .. :try_end_86} :catchall_84

    throw v7

    .line 1869
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_87
    :try_start_87
    const-string v7, "  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1872
    .end local v1    # "i":I
    :cond_8c
    if-nez p2, :cond_170

    .line 1873
    iget-object v7, p0, mLights:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1874
    if-lez v0, :cond_c4

    .line 1875
    const-string v7, "  Lights List:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1876
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9c
    if-ge v1, v0, :cond_bf

    .line 1877
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, mLights:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1876
    add-int/lit8 v1, v1, 0x1

    goto :goto_9c

    .line 1879
    :cond_bf
    const-string v7, "  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1881
    .end local v1    # "i":I
    :cond_c4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mUseAttentionLight="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mUseAttentionLight:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1882
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mNotificationPulseEnabled="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mNotificationPulseEnabled:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1883
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSoundNotification="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, mSoundNotification:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1884
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mVibrateNotification="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, mVibrateNotification:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1885
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDisableNotificationEffects="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, mDisableNotificationEffects:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1886
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mCallState="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, mCallState:I

    invoke-static {v9}, callStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1887
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

    .line 1889
    :cond_170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mArchive="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v9}, Lcom/android/server/notification/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1890
    iget-object v7, p0, mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1891
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v1, 0x0

    .line 1892
    .restart local v1    # "i":I
    :cond_193
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1cd

    .line 1893
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/StatusBarNotification;

    .line 1894
    .local v5, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz p2, :cond_1a7

    invoke-virtual {p2, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    if-eqz v7, :cond_193

    .line 1895
    :cond_1a7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1896
    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x5

    if-lt v1, v7, :cond_193

    .line 1897
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1cd

    const-string v7, "    ..."

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1903
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    .end local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1cd
    if-nez v6, :cond_1db

    .line 1904
    const-string v7, "\n  Usage Stats:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1905
    iget-object v7, p0, mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const-string v9, "    "

    invoke-virtual {v7, p1, v9, p2}, Lcom/android/server/notification/NotificationUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 1908
    :cond_1db
    if-eqz p2, :cond_1df

    if-eqz v6, :cond_1f5

    .line 1909
    :cond_1df
    const-string v7, "\n  Zen Mode:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1910
    iget-object v7, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v9, "    "

    invoke-virtual {v7, p1, v9}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1912
    const-string v7, "\n  Zen Log:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1913
    const-string v7, "    "

    invoke-static {p1, v7}, Lcom/android/server/notification/ZenLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1916
    :cond_1f5
    if-nez v6, :cond_241

    .line 1917
    const-string v7, "\n  Ranking Config:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1918
    iget-object v7, p0, mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-string v9, "    "

    invoke-virtual {v7, p1, v9, p2}, Lcom/android/server/notification/RankingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 1920
    const-string v7, "\n  Notification listeners:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1921
    iget-object v7, p0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 1922
    const-string v7, "    mListenerHints: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, mListenerHints:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 1923
    const-string v7, "    mListenersDisablingEffects: ("

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1924
    iget-object v7, p0, mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1925
    .restart local v0    # "N":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_223
    if-ge v1, v0, :cond_23c

    .line 1926
    iget-object v7, p0, mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v7, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1927
    .local v3, "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-lez v1, :cond_234

    const/16 v7, 0x2c

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 1928
    :cond_234
    iget-object v7, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1925
    add-int/lit8 v1, v1, 0x1

    goto :goto_223

    .line 1930
    .end local v3    # "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_23c
    const/16 v7, 0x29

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 1933
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_241
    const-string v7, "\n  Condition providers:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1934
    iget-object v7, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/notification/ConditionProviders;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 1935
    monitor-exit v8
    :try_end_24c
    .catchall {:try_start_87 .. :try_end_24c} :catchall_84

    .line 1936
    return-void
.end method

.method enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
    .registers 34
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "idOut"    # [I
    .param p9, "incomingUserId"    # I

    .prologue
    .line 1981
    invoke-static/range {p1 .. p1}, checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 1982
    invoke-static/range {p3 .. p3}, isUidSystem(I)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "android"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    :cond_13
    const/16 v18, 0x1

    .line 1983
    .local v18, "isSystemNotification":Z
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->access$3700(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Ljava/lang/String;)Z

    move-result v22

    .line 1985
    .local v22, "isNotificationFromListener":Z
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "enqueueNotification"

    move/from16 v2, p4

    move/from16 v3, p3

    move/from16 v4, p9

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1987
    .local v7, "userId":I
    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 1991
    .local v17, "user":Landroid/os/UserHandle;
    if-nez v18, :cond_af

    if-nez v22, :cond_af

    .line 1992
    move-object/from16 v0, p0

    iget-object v3, v0, mNotificationList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1993
    const/16 v20, 0x0

    .line 1994
    .local v20, "count":I
    :try_start_41
    move-object/from16 v0, p0

    iget-object v2, v0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1995
    .local v19, "N":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_4b
    move/from16 v0, v21

    move/from16 v1, v19

    if-ge v0, v1, :cond_ae

    .line 1996
    move-object/from16 v0, p0

    iget-object v2, v0, mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/notification/NotificationRecord;

    .line 1997
    .local v23, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    if-ne v2, v7, :cond_ab

    .line 1998
    add-int/lit8 v20, v20, 0x1

    .line 1999
    const/16 v2, 0x32

    move/from16 v0, v20

    if-lt v0, v2, :cond_ab

    .line 2000
    const-string v2, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package has already posted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " notifications.  Not showing more.  package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    monitor-exit v3

    .line 2183
    .end local v19    # "N":I
    .end local v20    # "count":I
    .end local v21    # "i":I
    .end local v23    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_a6
    return-void

    .line 1982
    .end local v7    # "userId":I
    .end local v17    # "user":Landroid/os/UserHandle;
    .end local v18    # "isSystemNotification":Z
    .end local v22    # "isNotificationFromListener":Z
    :cond_a7
    const/16 v18, 0x0

    goto/16 :goto_15

    .line 1995
    .restart local v7    # "userId":I
    .restart local v17    # "user":Landroid/os/UserHandle;
    .restart local v18    # "isSystemNotification":Z
    .restart local v19    # "N":I
    .restart local v20    # "count":I
    .restart local v21    # "i":I
    .restart local v22    # "isNotificationFromListener":Z
    .restart local v23    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_ab
    add-int/lit8 v21, v21, 0x1

    goto :goto_4b

    .line 2006
    .end local v23    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_ae
    monitor-exit v3
    :try_end_af
    .catchall {:try_start_41 .. :try_end_af} :catchall_10a

    .line 2011
    .end local v19    # "N":I
    .end local v20    # "count":I
    .end local v21    # "i":I
    :cond_af
    const-string v2, "com.android.providers.downloads"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    const-string v2, "DownloadManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 2013
    :cond_c2
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p1

    move/from16 v5, p6

    move-object/from16 v6, p5

    invoke-static/range {v2 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationEnqueue(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 2017
    :cond_d3
    if-eqz p1, :cond_d7

    if-nez p7, :cond_10d

    .line 2018
    :cond_d7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null not allowed: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " notification="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2006
    .restart local v20    # "count":I
    :catchall_10a
    move-exception v2

    :try_start_10b
    monitor-exit v3
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_10a

    throw v2

    .line 2021
    .end local v20    # "count":I
    :cond_10d
    move-object/from16 v0, p7

    iget v2, v0, Landroid/app/Notification;->icon:I

    if-eqz v2, :cond_14c

    .line 2022
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->isValid()Z

    move-result v2

    if-nez v2, :cond_14c

    .line 2023
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid notification (): pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " notification="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2028
    :cond_14c
    move-object/from16 v0, p0

    iget-object v2, v0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v8, Lcom/android/server/notification/NotificationManagerService$7;

    move-object/from16 v9, p0

    move-object/from16 v10, p7

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p6

    move-object/from16 v14, p5

    move/from16 v15, p3

    move/from16 v16, p4

    invoke-direct/range {v8 .. v18}, Lcom/android/server/notification/NotificationManagerService$7;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/os/UserHandle;Z)V

    invoke-virtual {v2, v8}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2182
    const/4 v2, 0x0

    aput p6, p8, v2

    goto/16 :goto_a6
.end method

.method indexOfNotificationLocked(Ljava/lang/String;)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3164
    iget-object v2, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3165
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 3166
    iget-object v2, p0, mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3170
    .end local v1    # "i":I
    :goto_1b
    return v1

    .line 3165
    .restart local v1    # "i":I
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3170
    :cond_1f
    const/4 v1, -0x1

    goto :goto_1b
.end method

.method indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    .line 3139
    iget-object v2, p0, mNotificationList:Ljava/util/ArrayList;

    .line 3140
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3141
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_44

    .line 3142
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 3143
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v3, p4}, notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-eq v4, p3, :cond_20

    .line 3141
    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3146
    :cond_20
    if-nez p2, :cond_37

    .line 3147
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1d

    .line 3155
    :cond_2a
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 3159
    .end local v0    # "i":I
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_36
    return v0

    .line 3151
    .restart local v0    # "i":I
    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_37
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_1d

    .line 3159
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_44
    const/4 v0, -0x1

    goto :goto_36
.end method

.method indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;

    .prologue
    .line 2506
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2507
    .local v0, "cbak":Landroid/os/IBinder;
    iget-object v3, p0, mToastQueue:Ljava/util/ArrayList;

    .line 2508
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2509
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_27

    .line 2510
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2511
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v0, :cond_24

    .line 2515
    .end local v1    # "i":I
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :goto_23
    return v1

    .line 2509
    .restart local v1    # "i":I
    .restart local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2515
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_27
    const/4 v1, -0x1

    goto :goto_23
.end method

.method keepProcessAliveLocked(I)V
    .registers 10
    .param p1, "pid"    # I

    .prologue
    .line 2521
    const/4 v4, 0x0

    .line 2522
    .local v4, "toastCount":I
    iget-object v2, p0, mToastQueue:Ljava/util/ArrayList;

    .line 2523
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2524
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_19

    .line 2525
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2526
    .local v3, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget v5, v3, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    if-ne v5, p1, :cond_16

    .line 2527
    add-int/lit8 v4, v4, 0x1

    .line 2524
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2531
    .end local v3    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_19
    :try_start_19
    iget-object v6, p0, mAm:Landroid/app/IActivityManager;

    iget-object v7, p0, mForegroundToken:Landroid/os/IBinder;

    if-lez v4, :cond_24

    const/4 v5, 0x1

    :goto_20
    invoke-interface {v6, v7, p1, v5}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_23} :catch_26

    .line 2535
    :goto_23
    return-void

    .line 2531
    :cond_24
    const/4 v5, 0x0

    goto :goto_20

    .line 2532
    :catch_26
    move-exception v5

    goto :goto_23
.end method

.method public onBootPhase(I)V
    .registers 9
    .param p1, "phase"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1118
    const/16 v4, 0x1f4

    if-ne p1, v4, :cond_5c

    .line 1120
    iput-boolean v5, p0, mSystemReady:Z

    .line 1123
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, mAudioManager:Landroid/media/AudioManager;

    .line 1124
    iget-object v4, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v5, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Lcom/android/server/notification/ZenModeHelper;->setAudioManager(Landroid/media/AudioManager;)V

    .line 1127
    new-instance v3, Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;

    iget-object v4, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    .line 1128
    .local v3, "pickupObserver":Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;->observe()V

    .line 1132
    new-instance v4, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    invoke-direct {v4, p0}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v4, p0, mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    .line 1135
    :try_start_2e
    const-string v4, "android.media.IRingtonePlayer"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1136
    .local v0, "classRingtonePlayer":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/INotificationPlayerOnCompletionListener;

    aput-object v5, v2, v4

    .line 1138
    .local v2, "parameterRingtonePlayer":[Ljava/lang/Class;
    const-string/jumbo v4, "setOnCompletionListener"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    :try_end_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2e .. :try_end_45} :catch_46
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2e .. :try_end_45} :catch_51

    .line 1155
    .end local v0    # "classRingtonePlayer":Ljava/lang/Class;
    .end local v2    # "parameterRingtonePlayer":[Ljava/lang/Class;
    .end local v3    # "pickupObserver":Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;
    :cond_45
    :goto_45
    return-void

    .line 1140
    .restart local v3    # "pickupObserver":Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;
    :catch_46
    move-exception v1

    .line 1141
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    const-string v4, "NotificationService"

    const-string v5, "ClassNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iput-object v6, p0, mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    goto :goto_45

    .line 1143
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_51
    move-exception v1

    .line 1144
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    const-string v4, "NotificationService"

    const-string v5, "NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iput-object v6, p0, mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    goto :goto_45

    .line 1148
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    .end local v3    # "pickupObserver":Lcom/android/server/notification/NotificationManagerService$PickupSettingsObserver;
    :cond_5c
    const/16 v4, 0x258

    if-ne p1, v4, :cond_45

    .line 1151
    iget-object v4, p0, mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    .line 1152
    iget-object v4, p0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onBootPhaseAppsCanStart()V

    .line 1153
    iget-object v4, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v4}, Lcom/android/server/notification/ConditionProviders;->onBootPhaseAppsCanStart()V

    goto :goto_45
.end method

.method public onStart()V
    .registers 14

    .prologue
    .line 971
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 973
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    iput-object v8, p0, mAm:Landroid/app/IActivityManager;

    .line 974
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "appops"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager;

    iput-object v8, p0, mAppOps:Landroid/app/AppOpsManager;

    .line 980
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "vibrator"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/SystemVibrator;

    iput-object v8, p0, mVibrator:Landroid/os/SystemVibrator;

    .line 982
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    iput-object v8, p0, mPM:Landroid/os/PowerManager;

    .line 983
    iget-object v8, p0, mPM:Landroid/os/PowerManager;

    const/4 v9, 0x1

    const-string/jumbo v10, "pickup"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 986
    const-class v8, Landroid/view/WindowManagerInternal;

    invoke-virtual {p0, v8}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManagerInternal;

    iput-object v8, p0, mWindowManager:Landroid/view/WindowManagerInternal;

    .line 987
    new-instance v8, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V

    iput-object v8, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 988
    iget-object v8, p0, mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 991
    const v8, 0x1070031

    :try_start_60
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_63
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_60 .. :try_end_63} :catch_206

    move-result-object v1

    .line 995
    .local v1, "extractorNames":[Ljava/lang/String;
    :goto_64
    new-instance v8, Lcom/android/server/notification/RankingHelper;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;

    iget-object v11, p0, mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    invoke-direct {v8, v9, v10, v1}, Lcom/android/server/notification/RankingHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;[Ljava/lang/String;)V

    iput-object v8, p0, mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 998
    new-instance v8, Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v8, v9, v10}, Lcom/android/server/notification/ZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v8, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 999
    iget-object v8, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v9, Lcom/android/server/notification/NotificationManagerService$4;

    invoke-direct {v9, p0}, Lcom/android/server/notification/NotificationManagerService$4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v8, v9}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 1012
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "system"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1013
    .local v7, "systemDir":Ljava/io/File;
    new-instance v8, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string v10, "notification_policy.xml"

    invoke-direct {v9, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v8, p0, mPolicyFile:Landroid/util/AtomicFile;

    .line 1014
    new-instance v8, Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 1016
    invoke-direct {p0}, importOldBlockDb()V

    .line 1018
    new-instance v8, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-direct {v8, p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v8, p0, mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 1019
    new-instance v8, Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    iget-object v11, p0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    iget-object v12, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/android/server/notification/ConditionProviders;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$UserProfiles;Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v8, p0, mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 1021
    const-class v8, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-virtual {p0, v8}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v8, p0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1022
    iget-object v8, p0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object v9, p0, mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v8, v9}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V

    .line 1024
    const-class v8, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v8}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsManager;

    .line 1025
    .local v3, "lights":Lcom/android/server/lights/LightsManager;
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v8

    iput-object v8, p0, mNotificationLight:Lcom/android/server/lights/Light;

    .line 1026
    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v8

    iput-object v8, p0, mAttentionLight:Lcom/android/server/lights/Light;

    .line 1028
    const v8, 0x10600ff

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, mDefaultNotificationColor:I

    .line 1030
    const v8, 0x10e0042

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, mDefaultNotificationLedOn:I

    .line 1032
    const v8, 0x10e0043

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, mDefaultNotificationLedOff:I

    .line 1035
    const v8, 0x107002e

    const/16 v9, 0x11

    sget-object v10, DEFAULT_VIBRATE_PATTERN:[J

    invoke-static {v5, v8, v9, v10}, getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v8

    iput-object v8, p0, mDefaultVibrationPattern:[J

    .line 1040
    const v8, 0x107002f

    const/16 v9, 0x11

    sget-object v10, DEFAULT_VIBRATE_PATTERN:[J

    invoke-static {v5, v8, v9, v10}, getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v8

    iput-object v8, p0, mFallbackVibrationPattern:[J

    .line 1045
    const v8, 0x1120024

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, mUseAttentionLight:Z

    .line 1051
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "device_provisioned"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_14a

    .line 1053
    const/4 v8, 0x1

    iput-boolean v8, p0, mDisableNotificationEffects:Z

    .line 1055
    :cond_14a
    iget-object v8, p0, mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelper;->updateZenMode()V

    .line 1057
    iget-object v8, p0, mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 1058
    invoke-direct {p0}, listenForCallState()V

    .line 1061
    new-instance v8, Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 1062
    iget-object v8, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v8, :cond_172

    .line 1063
    iget-object v8, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v8}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v8

    iput-object v8, p0, mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 1068
    :cond_172
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1069
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1070
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1071
    const-string v8, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1072
    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1073
    const-string v8, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1074
    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1075
    const-string v8, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1077
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1078
    .local v4, "pkgFilter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1079
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1080
    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1081
    const-string v8, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1082
    const-string v8, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1083
    const-string/jumbo v8, "package"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1085
    new-instance v6, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v6, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1086
    .local v6, "sdFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1088
    new-instance v8, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    iget-object v9, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v8, p0, v9}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    iput-object v8, p0, mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    .line 1090
    new-instance v8, Lcom/android/server/notification/NotificationManagerService$Archive;

    const v9, 0x10e0049

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-direct {v8, v9}, Lcom/android/server/notification/NotificationManagerService$Archive;-><init>(I)V

    iput-object v8, p0, mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 1093
    const-string v8, "notification"

    iget-object v9, p0, mService:Landroid/os/IBinder;

    invoke-virtual {p0, v8, v9}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1094
    const-class v8, Lcom/android/server/notification/NotificationManagerInternal;

    iget-object v9, p0, mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-virtual {p0, v8, v9}, publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1095
    return-void

    .line 992
    .end local v1    # "extractorNames":[Ljava/lang/String;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "lights":Lcom/android/server/lights/LightsManager;
    .end local v4    # "pkgFilter":Landroid/content/IntentFilter;
    .end local v6    # "sdFilter":Landroid/content/IntentFilter;
    .end local v7    # "systemDir":Ljava/io/File;
    :catch_206
    move-exception v0

    .line 993
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v8, 0x0

    new-array v1, v8, [Ljava/lang/String;

    .restart local v1    # "extractorNames":[Ljava/lang/String;
    goto/16 :goto_64
.end method

.method public savePolicyFile()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 476
    iget-object v0, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 477
    iget-object v0, p0, mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendEmptyMessage(I)Z

    .line 478
    return-void
.end method

.method sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 2690
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 2691
    .local v1, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_f

    .line 2706
    :goto_e
    return-void

    .line 2695
    :cond_f
    const/16 v3, 0x40

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2697
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2698
    const-class v3, Landroid/app/Notification;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2699
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 2700
    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2701
    .local v2, "tickerText":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 2702
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2705
    :cond_33
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_e
.end method

.method setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V
    .registers 14
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1158
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_3f

    const-string v0, "en"

    :goto_d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "abling notifications for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    iget-object v1, p0, mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0xb

    if-eqz p3, :cond_42

    move v0, v4

    :goto_29
    invoke-virtual {v1, v2, p2, p1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 1164
    if-nez p3, :cond_3e

    .line 1165
    sget v1, MY_UID:I

    sget v2, MY_PID:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v9}, cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 1168
    :cond_3e
    return-void

    .line 1158
    :cond_3f
    const-string v0, "dis"

    goto :goto_d

    :cond_42
    move v0, v6

    .line 1160
    goto :goto_29
.end method

.method showNextToastLocked()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 2428
    iget-object v3, p0, mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2429
    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :goto_9
    if-eqz v2, :cond_13

    .line 2432
    :try_start_b
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v3}, Landroid/app/ITransientNotification;->show()V

    .line 2433
    invoke-direct {p0, v2}, scheduleTimeoutLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_14

    .line 2451
    :cond_13
    return-void

    .line 2435
    :catch_14
    move-exception v0

    .line 2436
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    iget-object v3, p0, mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2440
    .local v1, "index":I
    if-ltz v1, :cond_48

    .line 2441
    iget-object v3, p0, mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2443
    :cond_48
    iget v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v3}, keepProcessAliveLocked(I)V

    .line 2444
    iget-object v3, p0, mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5e

    .line 2445
    iget-object v3, p0, mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .restart local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    goto :goto_9

    .line 2447
    :cond_5e
    const/4 v2, 0x0

    goto :goto_9
.end method

.method updateLightsLocked()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 3074
    iget-object v6, p0, mLedNotification:Lcom/android/server/notification/NotificationRecord;

    if-nez v6, :cond_1f

    .line 3076
    iget-object v6, p0, mLights:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3077
    .local v5, "n":I
    if-lez v5, :cond_1f

    .line 3078
    iget-object v6, p0, mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v7, p0, mLights:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    iput-object v6, p0, mLedNotification:Lcom/android/server/notification/NotificationRecord;

    .line 3083
    .end local v5    # "n":I
    :cond_1f
    const/4 v0, 0x0

    .line 3084
    .local v0, "isForceLED":Z
    iget-object v6, p0, mLedNotification:Lcom/android/server/notification/NotificationRecord;

    if-eqz v6, :cond_2f

    iget-object v6, p0, mLedNotification:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_2f

    .line 3086
    const/4 v0, 0x1

    .line 3091
    :cond_2f
    iget-object v6, p0, mLedNotification:Lcom/android/server/notification/NotificationRecord;

    if-eqz v6, :cond_3d

    iget-boolean v6, p0, mInCall:Z

    if-nez v6, :cond_3d

    iget-boolean v6, p0, mScreenOn:Z

    if-eqz v6, :cond_4c

    if-nez v0, :cond_4c

    .line 3092
    :cond_3d
    iget-object v6, p0, mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v6}, Lcom/android/server/lights/Light;->turnOff()V

    .line 3093
    iget-object v6, p0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v6}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    .line 3095
    const/4 v6, 0x0

    invoke-direct {p0, v6}, setLEDCoverState(Z)V

    .line 3134
    :goto_4b
    return-void

    .line 3098
    :cond_4c
    iget-object v6, p0, mLedNotification:Lcom/android/server/notification/NotificationRecord;

    iget-object v6, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 3099
    .local v4, "ledno":Landroid/app/Notification;
    iget v1, v4, Landroid/app/Notification;->ledARGB:I

    .line 3100
    .local v1, "ledARGB":I
    iget v3, v4, Landroid/app/Notification;->ledOnMS:I

    .line 3101
    .local v3, "ledOnMS":I
    iget v2, v4, Landroid/app/Notification;->ledOffMS:I

    .line 3102
    .local v2, "ledOffMS":I
    iget v6, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_66

    .line 3103
    iget v1, p0, mDefaultNotificationColor:I

    .line 3104
    iget v3, p0, mDefaultNotificationLedOn:I

    .line 3105
    iget v2, p0, mDefaultNotificationLedOff:I

    .line 3117
    :cond_66
    iget-boolean v6, p0, mNotificationPulseEnabled:Z

    if-nez v6, :cond_6e

    iget-boolean v6, p0, mMissedNotificationLightEnabled:Z

    if-eqz v6, :cond_7e

    .line 3118
    :cond_6e
    iget v6, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_84

    .line 3119
    iget-object v6, p0, mNotificationLight:Lcom/android/server/lights/Light;

    const/16 v7, 0xc

    invoke-virtual {v6, v1, v7, v3, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 3126
    :goto_7b
    invoke-direct {p0, v9}, setLEDCoverState(Z)V

    .line 3132
    :cond_7e
    iget-object v6, p0, mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v6, v1, v3, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightPulse(III)V

    goto :goto_4b

    .line 3122
    :cond_84
    iget-object v6, p0, mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v6, v1, v9, v3, v2}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_7b
.end method
