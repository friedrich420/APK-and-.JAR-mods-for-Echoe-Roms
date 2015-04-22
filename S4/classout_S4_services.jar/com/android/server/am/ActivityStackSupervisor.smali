.class public final Lcom/android/server/am/ActivityStackSupervisor;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;,
        Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;,
        Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    }
.end annotation


# static fields
.field private static final ANDROID_INTERNAL_PKGNAME:Ljava/lang/String; = "com.android.internal.app"

.field static final CONTAINER_CALLBACK_TASK_LIST_EMPTY:I = 0x6f

.field static final CONTAINER_CALLBACK_VISIBILITY:I = 0x6c

.field static final CONTAINER_TASK_LIST_EMPTY_TIMEOUT:I = 0x70

.field static final DEBUG:Z = false

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_APP:Z = false

.field static final DEBUG_CONTAINERS:Z = false

.field static final DEBUG_IDLE:Z = false

.field static final DEBUG_MULTIWINDOW:Z = false

.field static final DEBUG_RELEASE:Z = false

.field static final DEBUG_SAVED_STATE:Z = false

.field static final DEBUG_SCREENSHOTS:Z = false

.field static final DEBUG_STATES:Z = false

.field static final DEBUG_VISIBLE_BEHIND:Z = false

.field public static final FLOATING_APP_STACK_TYPE:I = 0x3

.field static final FLOATING_TASK_LIST_EMPTY_MSG:I = 0xc9

.field private static final FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String; = "com.android.internal.app.ForwardIntentToManagedProfile"

.field static final HANDLE_DISPLAY_ADDED:I = 0x69

.field static final HANDLE_DISPLAY_CHANGED:I = 0x6a

.field static final HANDLE_DISPLAY_REMOVED:I = 0x6b

.field public static final HOME_STACK_ID:I = 0x0

.field public static final HOME_STACK_TYPE:I = 0x1

.field static final IDLE_NOW_MSG:I = 0x65

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x64

.field public static final KNOX_PACKAGE_PREFIX:Ljava/lang/String; = "sec_container_1"

.field static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0x71

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final LOCK_TASK_END_MSG:I = 0x6e

.field static final LOCK_TASK_START_MSG:I = 0x6d

.field private static final LOCK_TASK_TAG:Ljava/lang/String; = "Lock-to-App"

.field public static final NORMAL_APP_STACK_TYPE:I = 0x2

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x66

.field static final SHOW_TOAST_UNABLE_PENWINDOW_MSG:I = 0xc8

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x67

.field static final VALIDATE_WAKE_LOCK_CALLER:Z = false

.field private static final VIRTUAL_DISPLAY_BASE_NAME:Ljava/lang/String; = "ActivityViewVirtualDisplay"

.field private static isLaunchKnoxApps:Z

.field private static final sEmptyGlobalTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final PENDING_RESUME_TOP_ACTIVITIES_TIMEOUT_DURATION:I

.field private SAMP_ENABLE:Z

.field public lBoostCpuBoost:I

.field public lBoostKsmBoost:I

.field public lBoostPcDisblBoost:I

.field public lBoostSchedBoost:I

.field public lBoostTimeOut:I

.field private mActivityContainers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private mCurTaskId:I

.field private mCurrentUser:I

.field private mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusedStack:Lcom/android/server/am/ActivityStack;

.field mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field private mHasMultiWindowStack:Z

.field private mHasRunningCascadeApp:Z

.field private mHasRunningSplitApp:Z

.field private mHomeStack:Lcom/android/server/am/ActivityStack;

.field mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field public mIsPerfBoostEnabled:Z

.field private mLastFocusedStack:Lcom/android/server/am/ActivityStack;

.field private mLastStackId:I

.field mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field private mLeanbackOnlyDevice:Z

.field private mLockTaskIsLocked:Z

.field mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

.field private mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

.field private mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

.field final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

.field public mPerf:Lorg/codeaurora/Performance;

.field final mRunningTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSleepTimeout:Z

.field final mStartingBackgroundUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserStartedState;",
            ">;"
        }
    .end annotation
.end field

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserStartedState;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:Landroid/os/IBinder;

.field mUserLeaving:Z

.field mUserStackInFront:Landroid/util/SparseIntArray;

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 253
    const/4 v0, 0x0

    sput-boolean v0, isLaunchKnoxApps:Z

    .line 6343
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$3;

    invoke-direct {v0}, Lcom/android/server/am/ActivityStackSupervisor$3;-><init>()V

    sput-object v0, sEmptyGlobalTaskHistory:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v2, 0x0

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, mPerf:Lorg/codeaurora/Performance;

    .line 226
    iput-boolean v2, p0, mIsPerfBoostEnabled:Z

    .line 227
    iput v2, p0, lBoostTimeOut:I

    .line 228
    iput v2, p0, lBoostCpuBoost:I

    .line 229
    iput v2, p0, lBoostSchedBoost:I

    .line 230
    iput v2, p0, lBoostPcDisblBoost:I

    .line 231
    iput v2, p0, lBoostKsmBoost:I

    .line 258
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, mToken:Landroid/os/IBinder;

    .line 263
    iput-boolean v2, p0, SAMP_ENABLE:Z

    .line 279
    iput v2, p0, mLastStackId:I

    .line 283
    iput v2, p0, mCurTaskId:I

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWaitingVisibleActivities:Ljava/util/ArrayList;

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWaitingActivityVisible:Ljava/util/ArrayList;

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mStoppingActivities:Ljava/util/ArrayList;

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mFinishingActivities:Ljava/util/ArrayList;

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mStartingUsers:Ljava/util/ArrayList;

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mStartingBackgroundUsers:Ljava/util/ArrayList;

    .line 334
    iput-boolean v2, p0, mUserLeaving:Z

    .line 337
    iput-boolean v2, p0, mSleepTimeout:Z

    .line 359
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, mUserStackInFront:Landroid/util/SparseIntArray;

    .line 367
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mActivityContainers:Landroid/util/SparseArray;

    .line 370
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mActivityDisplays:Landroid/util/SparseArray;

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPendingActivityLaunches:Ljava/util/ArrayList;

    .line 1145
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor$1;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, mRunningTaskComparator:Ljava/util/Comparator;

    .line 3998
    const/16 v0, 0x1388

    iput v0, p0, PENDING_RESUME_TOP_ACTIVITIES_TIMEOUT_DURATION:I

    .line 3999
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor$2;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

    .line 5936
    iput-boolean v2, p0, mHasMultiWindowStack:Z

    .line 5937
    iput-boolean v2, p0, mHasRunningCascadeApp:Z

    .line 5938
    iput-boolean v2, p0, mHasRunningSplitApp:Z

    .line 409
    iput-object p1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    .line 410
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 412
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, mIsPerfBoostEnabled:Z

    .line 414
    iget-boolean v0, p0, mIsPerfBoostEnabled:Z

    if-eqz v0, :cond_10c

    .line 415
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, lBoostSchedBoost:I

    .line 417
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, lBoostTimeOut:I

    .line 419
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, lBoostCpuBoost:I

    .line 421
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, lBoostPcDisblBoost:I

    .line 423
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, lBoostKsmBoost:I

    .line 429
    :cond_10c
    const/4 v0, 0x1

    iput-boolean v0, p0, SAMP_ENABLE:Z

    .line 431
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityStackSupervisor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 189
    iget-boolean v0, p0, SAMP_ENABLE:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 189
    iget-object v0, p0, mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # Lcom/android/server/am/LockTaskNotify;

    .prologue
    .line 189
    iput-object p1, p0, mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityStackSupervisor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 189
    iget-boolean v0, p0, mLockTaskIsLocked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/am/ActivityStackSupervisor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p1, "x1"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, mLockTaskIsLocked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 189
    invoke-direct {p0}, getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 189
    iget-object v0, p0, mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 189
    invoke-direct {p0}, getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 189
    iget-object v0, p0, mActivityDisplays:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/ActivityStackSupervisor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 189
    iget v0, p0, mCurrentUser:I

    return v0
.end method

.method private checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z
    .registers 17
    .param p1, "sr"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6410
    const-string v8, ""

    .line 6411
    .local v8, "simNum":Ljava/lang/String;
    const-string v5, ""

    .line 6412
    .local v5, "imsi":Ljava/lang/String;
    const/4 v9, 0x0

    .line 6414
    .local v9, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 6415
    .restart local v9    # "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v9, :cond_16

    .line 6416
    const/4 v0, 0x0

    .line 6477
    :cond_15
    :goto_15
    return v0

    .line 6418
    :cond_16
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v11

    if-eqz v11, :cond_199

    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_199

    .line 6419
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v3

    .line 6420
    .local v3, "currentDataActiveSim":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v11

    if-eqz v11, :cond_35

    .line 6421
    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    .line 6426
    .end local v3    # "currentDataActiveSim":I
    :cond_35
    :goto_35
    if-eqz v5, :cond_44

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_44

    .line 6427
    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 6430
    :cond_44
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v12, "connectivity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 6431
    .local v2, "connMgr":Landroid/net/ConnectivityManager;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v10

    .line 6432
    .local v10, "wifiNetwork":Landroid/net/NetworkInfo;
    const/4 v0, 0x0

    .line 6434
    .local v0, "checkFlag":Z
    const/4 v7, 0x0

    .line 6435
    .local v7, "packages":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 6436
    .local v1, "classes":[Ljava/lang/String;
    const-string v11, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19f

    const-string v11, "46001"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19f

    const-string v11, "45407"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19f

    const-string v11, "46009"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19f

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v11, v12, :cond_19f

    .line 6438
    const/16 v11, 0xc

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "packages":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "com.neusoft.td.android.wo116114"

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const-string v12, "com.android.wo3g"

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "com.infinit.wostore.ui"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    const-string v12, "com.sinovatech.unicom.ui"

    aput-object v12, v7, v11

    const/4 v11, 0x4

    const-string v12, "com.neusoft.td.android.wo116114"

    aput-object v12, v7, v11

    const/4 v11, 0x5

    const-string v12, "com.asiainfo.android"

    aput-object v12, v7, v11

    const/4 v11, 0x6

    const-string v12, "com.asiainfo.android"

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, "com.samsung.wo3g"

    aput-object v12, v7, v11

    const/16 v11, 0x8

    const-string v12, "com.samsung.mobilebusinesshall"

    aput-object v12, v7, v11

    const/16 v11, 0x9

    const-string v12, "com.neusoft.td.android.wo116114"

    aput-object v12, v7, v11

    const/16 v11, 0xa

    const-string v12, "cn.com.wo"

    aput-object v12, v7, v11

    const/16 v11, 0xb

    const-string v12, "com.infinit.wostore.ui"

    aput-object v12, v7, v11

    .line 6440
    .restart local v7    # "packages":[Ljava/lang/String;
    const/16 v11, 0xc

    new-array v1, v11, [Ljava/lang/String;

    .end local v1    # "classes":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "com.neusoft.td.android.wo116114.ui.main.MainActivity"

    aput-object v12, v1, v11

    const/4 v11, 0x1

    const-string v12, "com.android.wo3g.wo3g"

    aput-object v12, v1, v11

    const/4 v11, 0x2

    const-string v12, "com.infinit.wostore.ui.ZBeginActivity"

    aput-object v12, v1, v11

    const/4 v11, 0x3

    const-string v12, "com.sinovatech.unicom.ui.WelcomeClient"

    aput-object v12, v1, v11

    const/4 v11, 0x4

    const-string v12, "com.neusoft.td.android.wo116114.activity.WelcomeActivity"

    aput-object v12, v1, v11

    const/4 v11, 0x5

    const-string v12, "com.asiainfo.android.MainActivity"

    aput-object v12, v1, v11

    const/4 v11, 0x6

    const-string v12, "com.asiainfo.mail.ui.LoginAcivity"

    aput-object v12, v1, v11

    const/4 v11, 0x7

    const-string v12, "com.samsung.wo3g.wo3g"

    aput-object v12, v1, v11

    const/16 v11, 0x8

    const-string v12, "com.samsung.mobilebusinesshall.MobileBusinessHall"

    aput-object v12, v1, v11

    const/16 v11, 0x9

    const-string v12, "com.neusoft.td.android.wo116114.activity.StartActivity"

    aput-object v12, v1, v11

    const/16 v11, 0xa

    const-string v12, "cn.com.wo.ui.TipActivity"

    aput-object v12, v1, v11

    const/16 v11, 0xb

    const-string v12, "com.infinit.wostore.ui.BeginActivity"

    aput-object v12, v1, v11

    .line 6449
    .restart local v1    # "classes":[Ljava/lang/String;
    :cond_112
    :goto_112
    if-eqz v7, :cond_15

    .line 6450
    const-string v11, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_201

    .line 6451
    if-eqz p1, :cond_15

    .line 6453
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 6454
    .local v6, "in":Landroid/content/Intent;
    if-eqz v6, :cond_158

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_158

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_158

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_158

    .line 6455
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15

    .line 6458
    :cond_158
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_15

    .line 6459
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_173
    array-length v11, v1

    if-ge v4, v11, :cond_15

    .line 6460
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v7, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1fd

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v1, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1fd

    .line 6461
    const/4 v0, 0x1

    .line 6462
    goto/16 :goto_15

    .line 6424
    .end local v0    # "checkFlag":Z
    .end local v1    # "classes":[Ljava/lang/String;
    .end local v2    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v4    # "i":I
    .end local v6    # "in":Landroid/content/Intent;
    .end local v7    # "packages":[Ljava/lang/String;
    .end local v10    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_199
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_35

    .line 6443
    .restart local v0    # "checkFlag":Z
    .restart local v1    # "classes":[Ljava/lang/String;
    .restart local v2    # "connMgr":Landroid/net/ConnectivityManager;
    .restart local v7    # "packages":[Ljava/lang/String;
    .restart local v10    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_19f
    const-string v11, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_112

    const-string v11, "46000"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_112

    const-string v11, "46002"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_112

    const-string v11, "46007"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_112

    .line 6445
    const/16 v11, 0x9

    new-array v7, v11, [Ljava/lang/String;

    .end local v7    # "packages":[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "com.aspire.mm"

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const-string v12, "com.autonavi.cmccmap"

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "com.cmcc.mobilevideo"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    const-string v12, "cmccwm.mobilemusic"

    aput-object v12, v7, v11

    const/4 v11, 0x4

    const-string v12, "com.chinamobile.cmccwifi"

    aput-object v12, v7, v11

    const/4 v11, 0x5

    const-string v12, "cn.emagsoftware.gamehall"

    aput-object v12, v7, v11

    const/4 v11, 0x6

    const-string v12, "com.hisunflytone.android"

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, "com.huawei.pisa.activity"

    aput-object v12, v7, v11

    const/16 v11, 0x8

    const-string v12, "com.sec.android.app.customerservice"

    aput-object v12, v7, v11

    .restart local v7    # "packages":[Ljava/lang/String;
    goto/16 :goto_112

    .line 6459
    .restart local v4    # "i":I
    .restart local v6    # "in":Landroid/content/Intent;
    :cond_1fd
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_173

    .line 6466
    .end local v4    # "i":I
    .end local v6    # "in":Landroid/content/Intent;
    :cond_201
    const-string v11, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 6467
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_15

    .line 6468
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_224
    array-length v11, v7

    if-ge v4, v11, :cond_15

    .line 6469
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v7, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23a

    .line 6470
    const/4 v0, 0x1

    .line 6471
    goto/16 :goto_15

    .line 6468
    :cond_23a
    add-int/lit8 v4, v4, 0x1

    goto :goto_224
.end method

.method private checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILandroid/os/Bundle;Landroid/content/ComponentName;Ljava/lang/String;)I
    .registers 37
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "callingUid"    # I
    .param p4, "options"    # Landroid/os/Bundle;
    .param p5, "cmp"    # Landroid/content/ComponentName;
    .param p6, "className"    # Ljava/lang/String;

    .prologue
    .line 5712
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v22

    .line 5713
    .local v22, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5716
    if-eqz p2, :cond_16d

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v28

    .line 5718
    .local v28, "userId":I
    :goto_22
    if-eqz p5, :cond_1b9

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b9

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b9

    .line 5720
    :try_start_36
    const-string/jumbo v3, "restriction_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v25

    .line 5721
    .local v25, "rp":Landroid/app/enterprise/IRestrictionPolicy;
    if-eqz v25, :cond_ac

    const/4 v3, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-interface {v0, v3, v1}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v3

    if-nez v3, :cond_ac

    .line 5722
    const/16 v16, 0x0

    .line 5723
    .local v16, "isActivityAllowed":Z
    const-string v3, ":android:show_fragment"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5724
    .local v9, "activity":Ljava/lang/String;
    if-nez v9, :cond_5e

    .line 5725
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 5727
    :cond_5e
    sget-object v12, Landroid/app/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v20, v0

    .local v20, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_64
    move/from16 v0, v20

    if-ge v15, v0, :cond_72

    aget-object v14, v12, v15

    .line 5728
    .local v14, "exception":Ljava/lang/String;
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_171

    .line 5729
    const/16 v16, 0x1

    .line 5733
    .end local v14    # "exception":Ljava/lang/String;
    :cond_72
    if-eqz v16, :cond_175

    .line 5734
    const/high16 v3, 0x800000

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5735
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Start activity "

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v29, " succeeded"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_ac} :catch_1b3

    .line 5785
    .end local v9    # "activity":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "isActivityAllowed":Z
    .end local v20    # "len$":I
    .end local v25    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :cond_ac
    :goto_ac
    if-eqz p5, :cond_2f4

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2f4

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2f4

    .line 5787
    :try_start_ba
    const-string/jumbo v3, "password_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPasswordPolicy;

    move-result-object v24

    .line 5788
    .local v24, "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    const-string/jumbo v3, "security_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ISecurityPolicy;

    move-result-object v26

    .line 5789
    .local v26, "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    if-eqz v24, :cond_dc

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/app/enterprise/IPasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v3

    if-gtz v3, :cond_e8

    :cond_dc
    if-eqz v26, :cond_2b9

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/app/enterprise/ISecurityPolicy;->isDodBannerVisibleAsUser(I)Z

    move-result v3

    if-eqz v3, :cond_2b9

    .line 5791
    :cond_e8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    move-result-object v21

    .line 5792
    .local v21, "list":Ljava/util/List;
    if-eqz v21, :cond_2b9

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2b9

    .line 5793
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v27

    .line 5794
    .local v27, "topActivity":Ljava/lang/String;
    const/16 v16, 0x0

    .line 5795
    .restart local v16    # "isActivityAllowed":Z
    const/16 v18, 0x0

    .line 5796
    .local v18, "isTopActivityException":Z
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 5797
    .restart local v9    # "activity":Ljava/lang/String;
    sget-object v12, Landroid/app/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    .restart local v12    # "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v20, v0

    .restart local v20    # "len$":I
    const/4 v15, 0x0

    .restart local v15    # "i$":I
    :goto_117
    move/from16 v0, v20

    if-ge v15, v0, :cond_133

    aget-object v14, v12, v15

    .line 5798
    .restart local v14    # "exception":Ljava/lang/String;
    if-eqz v27, :cond_129

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_129

    .line 5799
    const/16 v18, 0x1

    .line 5801
    :cond_129
    if-eqz v9, :cond_2b1

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b1

    .line 5802
    const/16 v16, 0x1

    .line 5806
    .end local v14    # "exception":Ljava/lang/String;
    :cond_133
    if-eqz v18, :cond_2b9

    if-nez v16, :cond_2b9

    .line 5807
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5808
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Start activity "

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v29, " failed. Blocked due to password change enforcement."

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_16b} :catch_2b5

    .line 5811
    const/4 v3, 0x0

    .line 5876
    .end local v9    # "activity":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "isActivityAllowed":Z
    .end local v18    # "isTopActivityException":Z
    .end local v20    # "len$":I
    .end local v21    # "list":Ljava/util/List;
    .end local v24    # "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    .end local v26    # "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    .end local v27    # "topActivity":Ljava/lang/String;
    :goto_16c
    return v3

    .line 5716
    .end local v28    # "userId":I
    :cond_16d
    const/16 v28, 0x0

    goto/16 :goto_22

    .line 5727
    .restart local v9    # "activity":Ljava/lang/String;
    .restart local v12    # "arr$":[Ljava/lang/String;
    .restart local v14    # "exception":Ljava/lang/String;
    .restart local v15    # "i$":I
    .restart local v16    # "isActivityAllowed":Z
    .restart local v20    # "len$":I
    .restart local v25    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    .restart local v28    # "userId":I
    :cond_171
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_64

    .line 5739
    .end local v14    # "exception":Ljava/lang/String;
    :cond_175
    const/4 v3, 0x1

    :try_start_176
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-interface {v0, v3, v1}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    .line 5740
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5741
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Start activity "

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v29, " failed. Blocked due to settings changes not allowed."

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_1b1} :catch_1b3

    .line 5744
    const/4 v3, 0x0

    goto :goto_16c

    .line 5747
    .end local v9    # "activity":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "isActivityAllowed":Z
    .end local v20    # "len$":I
    .end local v25    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :catch_1b3
    move-exception v13

    .line 5748
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_ac

    .line 5750
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_1b9
    if-eqz p5, :cond_231

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_231

    sget-object v3, Landroid/app/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d9

    sget-object v3, Landroid/app/enterprise/kioskmode/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_231

    .line 5754
    :cond_1d9
    :try_start_1d9
    const-string v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v19

    .line 5756
    .local v19, "km":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v19, :cond_ac

    const/4 v3, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-interface {v0, v3, v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->isTaskManagerAllowedAsUser(ZI)Z

    move-result v3

    if-nez v3, :cond_ac

    .line 5757
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5758
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Start activity "

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v29, " failed. Task manager is not allowed."

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_224
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_224} :catch_227

    .line 5761
    const/4 v3, 0x0

    goto/16 :goto_16c

    .line 5763
    .end local v19    # "km":Landroid/app/enterprise/kioskmode/IKioskMode;
    :catch_227
    move-exception v13

    .line 5764
    .restart local v13    # "e":Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    const-string v4, "Is edm running?"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ac

    .line 5766
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_231
    if-eqz p5, :cond_ac

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ac

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.vlingo.midas"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 5768
    :try_start_245
    const-string/jumbo v3, "restriction_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v25

    .line 5769
    .restart local v25    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    if-eqz v25, :cond_ac

    const/4 v3, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-interface {v0, v3, v1}, Landroid/app/enterprise/IRestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    move-result v3

    if-eqz v3, :cond_268

    const/4 v3, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-interface {v0, v3, v1}, Landroid/app/enterprise/IRestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v3

    if-nez v3, :cond_ac

    .line 5770
    :cond_268
    const-string v3, ":android:show_fragment"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5771
    .restart local v9    # "activity":Ljava/lang/String;
    if-nez v9, :cond_276

    .line 5772
    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 5774
    :cond_276
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5775
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Start activity "

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v29, " failed. Blocked due to S Voice not allowed."

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_2a8
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_2a8} :catch_2ab

    .line 5778
    const/4 v3, 0x0

    goto/16 :goto_16c

    .line 5780
    .end local v9    # "activity":Ljava/lang/String;
    .end local v25    # "rp":Landroid/app/enterprise/IRestrictionPolicy;
    :catch_2ab
    move-exception v13

    .line 5781
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_ac

    .line 5797
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v9    # "activity":Ljava/lang/String;
    .restart local v12    # "arr$":[Ljava/lang/String;
    .restart local v14    # "exception":Ljava/lang/String;
    .restart local v15    # "i$":I
    .restart local v16    # "isActivityAllowed":Z
    .restart local v18    # "isTopActivityException":Z
    .restart local v20    # "len$":I
    .restart local v21    # "list":Ljava/util/List;
    .restart local v24    # "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    .restart local v26    # "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    .restart local v27    # "topActivity":Ljava/lang/String;
    :cond_2b1
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_117

    .line 5815
    .end local v9    # "activity":Ljava/lang/String;
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v14    # "exception":Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v16    # "isActivityAllowed":Z
    .end local v18    # "isTopActivityException":Z
    .end local v20    # "len$":I
    .end local v21    # "list":Ljava/util/List;
    .end local v24    # "pwdPolicy":Landroid/app/enterprise/IPasswordPolicy;
    .end local v26    # "secPolicy":Landroid/app/enterprise/ISecurityPolicy;
    .end local v27    # "topActivity":Ljava/lang/String;
    :catch_2b5
    move-exception v13

    .line 5816
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 5821
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_2b9
    :try_start_2b9
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move/from16 v0, v28

    invoke-virtual {v3, v4, v5, v0}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v17

    .line 5824
    .local v17, "isAllowed":Z
    if-nez v17, :cond_2f4

    .line 5825
    const-string v3, "ActivityStack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5826
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_2ed
    .catch Ljava/lang/Exception; {:try_start_2b9 .. :try_end_2ed} :catch_2f0

    .line 5827
    const/4 v3, 0x0

    goto/16 :goto_16c

    .line 5829
    .end local v17    # "isAllowed":Z
    :catch_2f0
    move-exception v13

    .line 5830
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 5836
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_2f4
    if-eqz p4, :cond_30a

    const-string v3, "edm:nonSystemUid"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30a

    const-string v3, "edm:startedByAdmin"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c9

    .line 5839
    :cond_30a
    if-eqz p2, :cond_3be

    .line 5841
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 5842
    .local v23, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 5846
    .local v11, "ar":Lcom/android/server/am/ActivityRecord;
    if-nez v11, :cond_3be

    .line 5848
    :try_start_31e
    const-string v3, "application_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v10

    .line 5851
    .local v10, "appPolicy":Landroid/app/enterprise/IApplicationPolicy;
    if-eqz v10, :cond_38d

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v10, v0, v1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_38d

    .line 5852
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to start "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is at prevent start black list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5854
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5855
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Start activity "

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v29, " failed"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 5857
    const/4 v3, 0x0

    goto/16 :goto_16c

    .line 5860
    :cond_38d
    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Start activity "

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v29, " succeeded"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_3be
    .catch Ljava/lang/Exception; {:try_start_31e .. :try_end_3be} :catch_3c4

    .line 5874
    .end local v10    # "appPolicy":Landroid/app/enterprise/IApplicationPolicy;
    .end local v11    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v23    # "pkgName":Ljava/lang/String;
    :cond_3be
    :goto_3be
    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 5876
    const/4 v3, -0x1

    goto/16 :goto_16c

    .line 5863
    .restart local v11    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v23    # "pkgName":Ljava/lang/String;
    :catch_3c4
    move-exception v13

    .line 5864
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3be

    .line 5871
    .end local v11    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v23    # "pkgName":Ljava/lang/String;
    :cond_3c9
    const/16 p4, 0x0

    goto :goto_3be
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .registers 26
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "complete"    # Z
    .param p6, "brief"    # Z
    .param p7, "client"    # Z
    .param p8, "dumpPackage"    # Ljava/lang/String;
    .param p9, "needNL"    # Z
    .param p10, "header1"    # Ljava/lang/String;
    .param p11, "header2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4621
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v7, 0x0

    .line 4622
    .local v7, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v6, 0x0

    .line 4623
    .local v6, "innerPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4624
    .local v2, "args":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 4625
    .local v8, "printed":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .local v5, "i":I
    :goto_a
    if-ltz v5, :cond_161

    .line 4626
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 4627
    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p8, :cond_23

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_23

    .line 4625
    :cond_20
    :goto_20
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 4630
    :cond_23
    if-nez v6, :cond_3d

    .line 4631
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "      "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4632
    const/4 v11, 0x0

    new-array v2, v11, [Ljava/lang/String;

    .line 4634
    :cond_3d
    const/4 v8, 0x1

    .line 4635
    if-nez p6, :cond_ea

    if-nez p5, :cond_48

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v11

    if-nez v11, :cond_ea

    :cond_48
    const/4 v4, 0x1

    .line 4636
    .local v4, "full":Z
    :goto_49
    if-eqz p9, :cond_52

    .line 4637
    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4638
    const/16 p9, 0x0

    .line 4640
    :cond_52
    if-eqz p10, :cond_5b

    .line 4641
    move-object/from16 v0, p10

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4642
    const/16 p10, 0x0

    .line 4644
    :cond_5b
    if-eqz p11, :cond_64

    .line 4645
    move-object/from16 v0, p11

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4646
    const/16 p11, 0x0

    .line 4648
    :cond_64
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v7, v11, :cond_93

    .line 4649
    iget-object v7, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4650
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4651
    if-eqz v4, :cond_ed

    const-string v11, "* "

    :goto_73
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4652
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4653
    if-eqz v4, :cond_f0

    .line 4654
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, p1, v11}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4663
    :cond_93
    :goto_93
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_10a

    const-string v11, "  * "

    :goto_9c
    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4664
    const-string v11, " #"

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, ": "

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4665
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4666
    if-eqz v4, :cond_10d

    .line 4667
    invoke-virtual {v9, p1, v6}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4675
    :cond_b9
    :goto_b9
    if-eqz p7, :cond_20

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_20

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v11, :cond_20

    .line 4678
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 4680
    :try_start_c8
    new-instance v10, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v10}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cd} :catch_12d
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_cd} :catch_149

    .line 4682
    .local v10, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_cd
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    iget-object v13, v9, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v11, v12, v13, v6, v2}, Landroid/app/IApplicationThread;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4686
    const-wide/16 v12, 0x7d0

    invoke-virtual {v10, p0, v12, v13}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_e3
    .catchall {:try_start_cd .. :try_end_e3} :catchall_128

    .line 4688
    :try_start_e3
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_12d
    .catch Landroid/os/RemoteException; {:try_start_e3 .. :try_end_e6} :catch_149

    .line 4695
    .end local v10    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_e6
    const/16 p9, 0x1

    goto/16 :goto_20

    .line 4635
    .end local v4    # "full":Z
    :cond_ea
    const/4 v4, 0x0

    goto/16 :goto_49

    .line 4651
    .restart local v4    # "full":Z
    :cond_ed
    const-string v11, "  "

    goto :goto_73

    .line 4655
    :cond_f0
    if-eqz p5, :cond_93

    .line 4657
    iget-object v11, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v11, :cond_93

    .line 4658
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  "

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4659
    iget-object v11, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_93

    .line 4663
    :cond_10a
    const-string v11, "    "

    goto :goto_9c

    .line 4668
    :cond_10d
    if-eqz p5, :cond_b9

    .line 4670
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4671
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_b9

    .line 4672
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_b9

    .line 4688
    .restart local v10    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_128
    move-exception v11

    :try_start_129
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v11
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12d} :catch_12d
    .catch Landroid/os/RemoteException; {:try_start_129 .. :try_end_12d} :catch_149

    .line 4690
    .end local v10    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_12d
    move-exception v3

    .line 4691
    .local v3, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Failure while dumping the activity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e6

    .line 4692
    .end local v3    # "e":Ljava/io/IOException;
    :catch_149
    move-exception v3

    .line 4693
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Got a RemoteException while dumping the activity"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e6

    .line 4698
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "full":Z
    .end local v9    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_161
    return v8
.end method

.method private getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .registers 4

    .prologue
    .line 461
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 462
    :try_start_3
    iget-object v0, p0, mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_1f

    .line 463
    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    .line 465
    iget-object v0, p0, mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_1f

    .line 466
    const-string v0, "ActivityManager"

    const-string/jumbo v2, "warning: no DEVICE_POLICY_SERVICE"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_1f
    iget-object v0, p0, mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    monitor-exit v1

    return-object v0

    .line 470
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0
.end method

.method private getHomeIndex(Ljava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 6175
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 6176
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6177
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 6180
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 4

    .prologue
    .line 448
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 449
    :try_start_3
    iget-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_20

    .line 450
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 452
    iget-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_20

    .line 453
    const-string v0, "StatusBarManager"

    const-string/jumbo v2, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_20
    iget-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 457
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0
.end method

.method private getTopActivityByZone(I)Lcom/android/server/am/ActivityRecord;
    .registers 13
    .param p1, "zone"    # I

    .prologue
    .line 6006
    iget-object v9, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    .line 6007
    if-nez p1, :cond_17

    .line 6008
    :try_start_5
    invoke-virtual {p0}, getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 6009
    .local v1, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v8

    if-nez v8, :cond_5d

    .line 6010
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    monitor-exit v9

    .line 6031
    .end local v1    # "focusedStack":Lcom/android/server/am/ActivityStack;
    :goto_16
    return-object v7

    .line 6013
    :cond_17
    iget-object v8, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 6014
    .local v2, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_1e
    if-ge v0, v2, :cond_5d

    .line 6015
    iget-object v8, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6016
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6017
    .local v3, "size":I
    add-int/lit8 v5, v3, -0x1

    .local v5, "stackNdx":I
    :goto_30
    if-ltz v5, :cond_5a

    .line 6018
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 6019
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v8

    if-eqz v8, :cond_41

    .line 6017
    :cond_3e
    add-int/lit8 v5, v5, -0x1

    goto :goto_30

    .line 6022
    :cond_41
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 6023
    .local v7, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_3e

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v10, :cond_3e

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v8

    if-ne v8, p1, :cond_3e

    .line 6026
    monitor-exit v9

    goto :goto_16

    .line 6032
    .end local v0    # "displayNdx":I
    .end local v2    # "numDisplays":I
    .end local v3    # "size":I
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v7    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_57
    move-exception v8

    monitor-exit v9
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_57

    throw v8

    .line 6014
    .restart local v0    # "displayNdx":I
    .restart local v2    # "numDisplays":I
    .restart local v3    # "size":I
    .restart local v5    # "stackNdx":I
    .restart local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 6031
    .end local v0    # "displayNdx":I
    .end local v2    # "numDisplays":I
    .end local v3    # "size":I
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5d
    const/4 v7, 0x0

    :try_start_5e
    monitor-exit v9
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_57

    goto :goto_16
.end method

.method private isKnoxmode()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 6485
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6486
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6487
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 6489
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 6490
    .local v0, "HomeReceiver":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_2e

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.android.internal.app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 6491
    const/4 v3, 0x1

    .line 6493
    :cond_2e
    return v3
.end method

.method private isLeanbackOnlyDevice()Z
    .registers 4

    .prologue
    .line 5695
    const/4 v0, 0x0

    .line 5697
    .local v0, "onLeanbackOnly":Z
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "android.software.leanback_only"

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    .line 5703
    :goto_b
    return v0

    .line 5699
    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method private needsCascadeForceHidden()Z
    .registers 2

    .prologue
    .line 6275
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 6276
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 6277
    const/4 v0, 0x1

    .line 6280
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 4528
    if-eqz p1, :cond_19

    .line 4529
    if-eqz p2, :cond_c

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4530
    :cond_c
    if-eqz p3, :cond_11

    .line 4531
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 4533
    :cond_11
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4534
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4535
    const/4 v0, 0x1

    .line 4538
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method acquireLaunchWakelock()V
    .registers 5

    .prologue
    const/16 v1, 0x68

    .line 3131
    iget-object v0, p0, mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3132
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 3134
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3136
    :cond_16
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .registers 23
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromTimeout"    # Z
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 3143
    const/16 v18, 0x0

    .line 3144
    .local v18, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v14, 0x0

    .line 3145
    .local v14, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v17, 0x0

    .line 3146
    .local v17, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    const/4 v10, 0x0

    .line 3147
    .local v10, "NS":I
    const/4 v2, 0x0

    .line 3148
    .local v2, "NF":I
    const/4 v12, 0x0

    .line 3149
    .local v12, "booting":Z
    const/4 v13, 0x0

    .line 3150
    .local v13, "enableScreen":Z
    const/4 v11, 0x0

    .line 3152
    .local v11, "activityRemoved":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 3153
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_79

    .line 3156
    move-object/from16 v0, p0

    iget-object v3, v0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3159
    move-object/from16 v0, p0

    iget-boolean v3, v0, SAMP_ENABLE:Z

    if-eqz v3, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v3, :cond_35

    .line 3160
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    const/4 v4, 0x4

    const/4 v6, 0x0

    const-string/jumbo v7, "resume completed"

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/app/usage/UsageStatsManagerInternal;->reportPpmEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3163
    :cond_35
    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 3164
    if-eqz p2, :cond_45

    .line 3165
    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object/from16 v3, p0

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v9}, reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 3173
    :cond_45
    if-eqz p3, :cond_4b

    .line 3174
    move-object/from16 v0, p3

    iput-object v0, v5, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 3179
    :cond_4b
    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 3182
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_5c

    if-eqz p2, :cond_10b

    .line 3183
    :cond_5c
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v12, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 3184
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 3185
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v3, :cond_79

    .line 3186
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 3187
    const/4 v13, 0x1

    .line 3200
    :cond_79
    :goto_79
    invoke-virtual/range {p0 .. p0}, allResumedActivitiesIdle()Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 3201
    if-eqz v5, :cond_88

    .line 3202
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 3205
    :cond_88
    move-object/from16 v0, p0

    iget-object v3, v0, mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 3206
    move-object/from16 v0, p0

    iget-object v3, v0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 3211
    move-object/from16 v0, p0

    iget-object v3, v0, mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3213
    :cond_a2
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 3217
    :cond_a9
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    move-result-object v18

    .line 3218
    if-eqz v18, :cond_150

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3219
    :goto_b6
    move-object/from16 v0, p0

    iget-object v3, v0, mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d0

    .line 3220
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3221
    .restart local v14    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3224
    :cond_d0
    move-object/from16 v0, p0

    iget-object v3, v0, mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_ec

    .line 3225
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, mStartingUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3226
    .restart local v17    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3231
    :cond_ec
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_ed
    if-ge v15, v10, :cond_159

    .line 3232
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 3233
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v16, v0

    .line 3234
    .local v16, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_153

    .line 3235
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .line 3231
    :goto_108
    add-int/lit8 v15, v15, 0x1

    goto :goto_ed

    .line 3189
    .end local v15    # "i":I
    .end local v16    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_10b
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-eqz v3, :cond_79

    .line 3190
    move-object/from16 v0, p0

    iget-object v3, v0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_147

    move-object/from16 v0, p0

    iget-object v3, v0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_147

    .line 3192
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@Boot: FocusedStack is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v6, v6, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_79

    .line 3195
    :cond_147
    const-string v3, "ActivityManager"

    const-string v4, "!@Boot: mFocusedStack is not mHomeStack "

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_79

    .line 3218
    :cond_150
    const/4 v10, 0x0

    goto/16 :goto_b6

    .line 3237
    .restart local v15    # "i":I
    .restart local v16    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_153
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_108

    .line 3243
    .end local v16    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_159
    const/4 v15, 0x0

    :goto_15a
    if-ge v15, v2, :cond_171

    .line 3244
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 3245
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, 0x1

    const-string v6, "finish-idle"

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v3

    or-int/2addr v11, v3

    .line 3243
    add-int/lit8 v15, v15, 0x1

    goto :goto_15a

    .line 3248
    :cond_171
    if-nez v12, :cond_1c3

    .line 3250
    if-eqz v17, :cond_18e

    .line 3251
    const/4 v15, 0x0

    :goto_176
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_18e

    .line 3252
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserStartedState;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->finishUserSwitch(Lcom/android/server/am/UserStartedState;)V

    .line 3251
    add-int/lit8 v15, v15, 0x1

    goto :goto_176

    .line 3256
    :cond_18e
    move-object/from16 v0, p0

    iget-object v3, v0, mStartingBackgroundUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1c3

    .line 3257
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, mStartingBackgroundUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3258
    .restart local v17    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, mStartingBackgroundUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3259
    const/4 v15, 0x0

    :goto_1ab
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_1c3

    .line 3260
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserStartedState;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->finishUserBoot(Lcom/android/server/am/UserStartedState;)V

    .line 3259
    add-int/lit8 v15, v15, 0x1

    goto :goto_1ab

    .line 3265
    :cond_1c3
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 3269
    if-nez v12, :cond_1ce

    if-eqz v13, :cond_1d5

    .line 3270
    :cond_1ce
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v12, v13}, Lcom/android/server/am/ActivityManagerService;->postFinishBooting(ZZ)V

    .line 3273
    :cond_1d5
    if-eqz v11, :cond_1da

    .line 3274
    invoke-virtual/range {p0 .. p0}, resumeTopActivitiesLocked()Z

    .line 3277
    :cond_1da
    return-object v5
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 4039
    iget-object v0, p0, mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4040
    invoke-virtual {p0}, checkReadyForSleepLocked()V

    .line 4041
    return-void
.end method

.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z

    .prologue
    .line 2109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, adjustStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2113
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2123
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/am/MultiWindowPolicy;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method allPausedActivitiesComplete()Z
    .registers 10

    .prologue
    .line 942
    const/4 v2, 0x1

    .line 943
    .local v2, "pausing":Z
    iget-object v7, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "displayNdx":I
    :goto_9
    if-ltz v0, :cond_48

    .line 944
    iget-object v7, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 945
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "stackNdx":I
    :goto_1b
    if-ltz v5, :cond_4c

    .line 946
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 949
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v7, v4, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 950
    .local v3, "record":Lcom/android/server/am/ActivityRecord;
    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_29

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_29

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_29

    .line 957
    const/4 v2, 0x0

    .line 977
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pausing":Z
    .end local v3    # "record":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "stackNdx":I
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_48
    return v2

    .line 945
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "pausing":Z
    .restart local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "stackNdx":I
    .restart local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_49
    add-int/lit8 v5, v5, -0x1

    goto :goto_1b

    .line 943
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4c
    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method

.method allResumedActivitiesComplete()Z
    .registers 2

    .prologue
    .line 870
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, allResumedActivitiesComplete(Z)Z

    move-result v0

    return v0
.end method

.method allResumedActivitiesComplete(Z)Z
    .registers 9
    .param p1, "resumedActivityMustBeNotNull"    # Z

    .prologue
    .line 874
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_4c

    .line 875
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 876
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1a
    if-ltz v3, :cond_49

    .line 877
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 878
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 881
    if-eqz p1, :cond_43

    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_43

    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:Z

    if-nez v5, :cond_43

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 884
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    :goto_39
    if-eqz v1, :cond_46

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_46

    .line 885
    const/4 v5, 0x0

    .line 902
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_42
    return v5

    .line 881
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_43
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_39

    .line 876
    :cond_46
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 874
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_49
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 901
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4c
    iget-object v5, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v5, p0, mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 902
    const/4 v5, 0x1

    goto :goto_42
.end method

.method allResumedActivitiesIdle()Z
    .registers 7

    .prologue
    .line 850
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_3e

    .line 851
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 852
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1a
    if-ltz v3, :cond_3b

    .line 853
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 854
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v5

    if-nez v5, :cond_31

    .line 852
    :cond_2e
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 857
    :cond_31
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 858
    .local v1, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_39

    iget-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v5, :cond_2e

    .line 861
    :cond_39
    const/4 v5, 0x0

    .line 865
    .end local v1    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_3a
    return v5

    .line 850
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 865
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3e
    const/4 v5, 0x1

    goto :goto_3a
.end method

.method allResumedActivitiesVisible()Z
    .registers 7

    .prologue
    .line 906
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_36

    .line 907
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 908
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1a
    if-ltz v3, :cond_33

    .line 909
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 910
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 911
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_30

    iget-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v5, :cond_2e

    iget-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_30

    .line 912
    :cond_2e
    const/4 v5, 0x0

    .line 916
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_2f
    return v5

    .line 908
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_30
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 906
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 916
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_36
    const/4 v5, 0x1

    goto :goto_2f
.end method

.method anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .registers 9
    .param p1, "id"    # I

    .prologue
    .line 748
    iget-object v6, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 749
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_7
    if-ge v0, v1, :cond_2e

    .line 750
    iget-object v6, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 751
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_2b

    .line 752
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 753
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .line 754
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v5, :cond_28

    .line 759
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :goto_27
    return-object v5

    .line 751
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_28
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 749
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 759
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2e
    const/4 v5, 0x0

    goto :goto_27
.end method

.method arrangeTaskToReturnTo(I)V
    .registers 8
    .param p1, "displayId"    # I

    .prologue
    .line 3976
    invoke-virtual {p0, p1}, getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 3977
    .local v0, "globalTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    if-eqz v0, :cond_51

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_51

    .line 3978
    const/4 v1, -0x1

    .line 3979
    .local v1, "homeTaskNdx":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_32

    .line 3980
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 3981
    .local v4, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 3982
    move v1, v2

    .line 3979
    :cond_22
    :goto_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 3983
    :cond_25
    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 3984
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_22

    .line 3987
    .end local v4    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_51

    const/4 v5, -0x1

    if-le v1, v5, :cond_51

    .line 3988
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3989
    .local v3, "overHomeTask":Lcom/android/server/am/TaskRecord;
    iget-object v5, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 3990
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 3994
    .end local v1    # "homeTaskNdx":I
    .end local v2    # "i":I
    .end local v3    # "overHomeTask":Lcom/android/server/am/TaskRecord;
    :cond_51
    return-void
.end method

.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 13
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 817
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 818
    .local v4, "processName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 819
    .local v0, "didSomething":Z
    iget-object v8, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "displayNdx":I
    :goto_c
    if-ltz v1, :cond_7c

    .line 820
    iget-object v8, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 821
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "stackNdx":I
    :goto_1e
    if-ltz v6, :cond_79

    .line 822
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 823
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v5}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-nez v8, :cond_2f

    .line 821
    :cond_2c
    :goto_2c
    add-int/lit8 v6, v6, -0x1

    goto :goto_1e

    .line 826
    :cond_2f
    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 827
    .local v3, "hr":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_2c

    .line 828
    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v8, :cond_2c

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v8, v9, :cond_2c

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 831
    const/4 v8, 0x1

    const/4 v9, 0x1

    :try_start_4d
    invoke-virtual {p0, v3, p1, v8, v9}, realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_50} :catch_55

    move-result v8

    if-eqz v8, :cond_2c

    .line 832
    const/4 v0, 0x1

    goto :goto_2c

    .line 834
    :catch_55
    move-exception v2

    .line 835
    .local v2, "e":Landroid/os/RemoteException;
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in new application when starting activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 837
    throw v2

    .line 819
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "hr":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_79
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 843
    .end local v6    # "stackNdx":I
    .end local v7    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_7c
    if-nez v0, :cond_82

    .line 844
    const/4 v8, 0x0

    invoke-virtual {p0, v10, v8}, ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 846
    :cond_82
    return v0
.end method

.method public changeTypeOfTaskToCascade(Landroid/graphics/Point;IZ)Z
    .registers 30
    .param p1, "touchPoint"    # Landroid/graphics/Point;
    .param p2, "zone"    # I
    .param p3, "bMinimize"    # Z

    .prologue
    .line 6084
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 6085
    :try_start_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getTopActivityByZone(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    .line 6086
    .local v18, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v18, :cond_245

    .line 6087
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v11

    .line 6088
    .local v11, "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 6089
    .local v8, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v8, :cond_61

    .line 6090
    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5e

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 6091
    .local v9, "metaData":Landroid/os/Bundle;
    :goto_29
    invoke-virtual {v11, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v21

    if-nez v21, :cond_61

    if-eqz v9, :cond_3b

    const-string v21, "com.samsung.android.sdk.multiwindow.penwindow.enable"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_61

    .line 6093
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    move-object/from16 v21, v0

    const/16 v23, 0xc8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 6094
    .local v10, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    move-object/from16 v21, v0

    const-wide/16 v24, 0xc8

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6095
    const/16 v21, 0x0

    monitor-exit v22

    .line 6164
    .end local v8    # "info":Landroid/content/pm/ActivityInfo;
    .end local v9    # "metaData":Landroid/os/Bundle;
    .end local v10    # "msg":Landroid/os/Message;
    .end local v11    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :goto_5d
    return v21

    .line 6090
    .restart local v8    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :cond_5e
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_29

    .line 6099
    :cond_61
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 6100
    .local v7, "displaySize":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/MultiWindowPolicy;->getDefaultScale()F

    move-result v4

    .line 6101
    .local v4, "defaultPenWindowScale":F
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 6102
    .local v6, "displayId":I
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v5

    .line 6103
    .local v5, "display":Landroid/view/Display;
    if-eqz v5, :cond_95

    invoke-virtual {v5, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 6104
    :cond_95
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v4

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    .line 6105
    .local v20, "windowDefWidth":I
    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v4

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 6107
    .local v19, "windowDefHeight":I
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 6108
    .local v15, "rect":Landroid/graphics/Rect;
    if-eqz p1, :cond_27c

    .line 6109
    if-eqz p3, :cond_24a

    .line 6110
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1, v7}, Lcom/android/server/am/MultiWindowPolicy;->calculateMinimizePosition(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v14

    .line 6112
    .local v14, "point":Landroid/graphics/Point;
    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    add-int v24, v24, v20

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    add-int v25, v25, v19

    move/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 6121
    .end local v14    # "point":Landroid/graphics/Point;
    :goto_fb
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    const/16 v23, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 6122
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    const/16 v23, 0x800

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 6123
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 6124
    if-eqz p3, :cond_13d

    .line 6125
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v21, v0

    const/16 v23, 0x4

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 6128
    :cond_13d
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1aa

    .line 6129
    if-eqz p3, :cond_16e

    .line 6130
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 6131
    .local v17, "tmp":Landroid/graphics/Bitmap;
    if-eqz v17, :cond_16e

    .line 6132
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 6135
    .end local v17    # "tmp":Landroid/graphics/Bitmap;
    :cond_16e
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 6136
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 6139
    :cond_1aa
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v12

    .line 6143
    .local v12, "newFloatingStack":Lcom/android/server/am/ActivityStack;
    const/16 v21, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, pauseBackStacks(ZZZ)Z

    .line 6144
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    if-eq v12, v0, :cond_222

    .line 6145
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    const/16 v23, 0x64

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 6146
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v21, v0

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, moveTaskToStack(IIZ)V

    .line 6147
    if-nez p3, :cond_222

    .line 6148
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 6152
    :cond_222
    if-eqz p3, :cond_2c0

    .line 6153
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowManagerService;->findNextFocusableFloatingStackIdFromTop()I

    move-result v13

    .line 6154
    .local v13, "nextStackId":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v13, v0, :cond_2a8

    .line 6155
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 6163
    .end local v4    # "defaultPenWindowScale":F
    .end local v5    # "display":Landroid/view/Display;
    .end local v6    # "displayId":I
    .end local v7    # "displaySize":Landroid/graphics/Point;
    .end local v8    # "info":Landroid/content/pm/ActivityInfo;
    .end local v11    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .end local v12    # "newFloatingStack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "nextStackId":I
    .end local v15    # "rect":Landroid/graphics/Rect;
    .end local v19    # "windowDefHeight":I
    .end local v20    # "windowDefWidth":I
    :cond_245
    :goto_245
    monitor-exit v22

    .line 6164
    const/16 v21, 0x1

    goto/16 :goto_5d

    .line 6114
    .restart local v4    # "defaultPenWindowScale":F
    .restart local v5    # "display":Landroid/view/Display;
    .restart local v6    # "displayId":I
    .restart local v7    # "displaySize":Landroid/graphics/Point;
    .restart local v8    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .restart local v15    # "rect":Landroid/graphics/Rect;
    .restart local v19    # "windowDefHeight":I
    .restart local v20    # "windowDefWidth":I
    :cond_24a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    div-int/lit8 v23, v20, 0x2

    sub-int v21, v21, v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v24, v0

    div-int/lit8 v25, v20, 0x2

    add-int v24, v24, v25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    add-int v25, v25, v19

    move/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_fb

    .line 6163
    .end local v4    # "defaultPenWindowScale":F
    .end local v5    # "display":Landroid/view/Display;
    .end local v6    # "displayId":I
    .end local v7    # "displaySize":Landroid/graphics/Point;
    .end local v8    # "info":Landroid/content/pm/ActivityInfo;
    .end local v11    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .end local v15    # "rect":Landroid/graphics/Rect;
    .end local v18    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .end local v19    # "windowDefHeight":I
    .end local v20    # "windowDefWidth":I
    :catchall_279
    move-exception v21

    monitor-exit v22
    :try_end_27b
    .catchall {:try_start_7 .. :try_end_27b} :catchall_279

    throw v21

    .line 6117
    .restart local v4    # "defaultPenWindowScale":F
    .restart local v5    # "display":Landroid/view/Display;
    .restart local v6    # "displayId":I
    .restart local v7    # "displaySize":Landroid/graphics/Point;
    .restart local v8    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v11    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .restart local v15    # "rect":Landroid/graphics/Rect;
    .restart local v18    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v19    # "windowDefHeight":I
    .restart local v20    # "windowDefWidth":I
    :cond_27c
    :try_start_27c
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v23, 0x1050010

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 6118
    .local v16, "statusBarHeight":I
    const/16 v21, 0x0

    add-int v23, v16, v19

    move/from16 v0, v21

    move/from16 v1, v16

    move/from16 v2, v20

    move/from16 v3, v23

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_fb

    .line 6157
    .end local v16    # "statusBarHeight":I
    .restart local v12    # "newFloatingStack":Lcom/android/server/am/ActivityStack;
    .restart local v13    # "nextStackId":I
    :cond_2a8
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    goto :goto_245

    .line 6160
    .end local v13    # "nextStackId":I
    :cond_2c0
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    iget v0, v12, Lcom/android/server/am/ActivityStack;->mStackId:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V
    :try_end_2d1
    .catchall {:try_start_27c .. :try_end_2d1} :catchall_279

    goto/16 :goto_245
.end method

.method public changeTypeOfTaskToNormal(I)V
    .registers 16
    .param p1, "zone"    # I

    .prologue
    .line 6036
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 6037
    :try_start_3
    invoke-direct {p0, p1}, getTopActivityByZone(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 6038
    .local v9, "topActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v9, :cond_bb

    .line 6039
    iget-object v6, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 6040
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_bb

    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v10, :cond_bb

    .line 6041
    iget-object v10, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v12, v12, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v10, v12}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 6042
    const/4 v10, 0x0

    iget-object v12, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v12, v12, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p0, v10, v12}, getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 6043
    .local v2, "normalStack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_33

    .line 6044
    invoke-virtual {p0}, getNextStackId()I

    move-result v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v12, v13}, createStackOnDisplay(III)I

    move-result v3

    .line 6045
    .local v3, "normalStackId":I
    invoke-virtual {p0, v3}, getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 6049
    .end local v3    # "normalStackId":I
    :cond_33
    const-string/jumbo v10, "type-change"

    invoke-virtual {p0, v2, v10}, updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 6050
    const/4 v10, 0x1

    invoke-virtual {p0, v2, v10}, moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 6052
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 6053
    .local v8, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v8, :cond_99

    .line 6054
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 6055
    .local v1, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 6056
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10, v6, v1}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 6057
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v10, v8, v12, v13}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 6059
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v10, v10, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6060
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    .local v0, "i":I
    :goto_68
    if-lez v0, :cond_99

    .line 6061
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 6062
    .local v5, "target":Lcom/android/server/am/ActivityStack;
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_96

    iget-object v10, v5, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v10, :cond_96

    iget-object v10, v5, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v10, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v10

    if-eqz v10, :cond_96

    .line 6064
    iget-object v10, v5, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 6065
    .local v7, "tmp":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_96

    .line 6066
    iget-object v10, v5, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v12, 0x0

    invoke-virtual {v10, v7, v12}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 6060
    .end local v7    # "tmp":Landroid/graphics/Bitmap;
    :cond_96
    add-int/lit8 v0, v0, -0x1

    goto :goto_68

    .line 6071
    .end local v0    # "i":I
    .end local v1    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v5    # "target":Lcom/android/server/am/ActivityStack;
    :cond_99
    iget-object v10, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v12, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v10, v12, :cond_b6

    .line 6073
    const/4 v10, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {p0, v10, v12, v13}, pauseBackStacks(ZZZ)Z

    .line 6074
    iget-object v10, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10, v9}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 6075
    iget v10, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v12, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {p0, v10, v12, v13}, moveTaskToStack(IIZ)V

    .line 6077
    :cond_b6
    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v12}, ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 6080
    .end local v2    # "normalStack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v8    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_bb
    monitor-exit v11

    .line 6081
    return-void

    .line 6080
    .end local v9    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :catchall_bd
    move-exception v10

    monitor-exit v11
    :try_end_bf
    .catchall {:try_start_3 .. :try_end_bf} :catchall_bd

    throw v10
.end method

.method checkFullScreenOnlyExist(Ljava/util/ArrayList;Lcom/android/server/am/ActivityStack;)Z
    .registers 15
    .param p2, "curStack"    # Lcom/android/server/am/ActivityStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Lcom/android/server/am/ActivityStack;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v10, 0x0

    .line 543
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 544
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    if-ge v4, v0, :cond_6f

    .line 545
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    iget-object v5, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 546
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v5, :cond_18

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 544
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 548
    :cond_1b
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 549
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .local v7, "taskNdx":I
    :goto_25
    if-ltz v7, :cond_18

    .line 550
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 551
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget v9, v6, Lcom/android/server/am/TaskRecord;->userId:I

    iget v11, p0, mCurrentUser:I

    if-ne v9, v11, :cond_6c

    .line 552
    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 553
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "activityNdx":I
    :goto_3b
    if-ltz v2, :cond_6c

    .line 554
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 555
    .local v3, "activityRecord":Lcom/android/server/am/ActivityRecord;
    iget-boolean v9, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_4f

    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v9

    if-eqz v9, :cond_52

    .line 553
    :cond_4f
    add-int/lit8 v2, v2, -0x1

    goto :goto_3b

    .line 558
    :cond_52
    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v9

    if-eqz v9, :cond_6a

    iget-object v9, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v11, 0x200000

    invoke-virtual {v9, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 560
    iget-boolean v9, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v9, :cond_4f

    .line 561
    const/4 v9, 0x1

    .line 570
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    .end local v3    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "taskNdx":I
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :goto_69
    return v9

    .restart local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v2    # "activityNdx":I
    .restart local v3    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "taskNdx":I
    .restart local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_6a
    move v9, v10

    .line 564
    goto :goto_69

    .line 549
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    .end local v3    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    :cond_6c
    add-int/lit8 v7, v7, -0x1

    goto :goto_25

    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "taskNdx":I
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_6f
    move v9, v10

    .line 570
    goto :goto_69
.end method

.method checkReadyForSleepLocked()V
    .registers 7

    .prologue
    .line 4044
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v4

    if-nez v4, :cond_9

    .line 4099
    :cond_8
    :goto_8
    return-void

    .line 4049
    :cond_9
    iget-boolean v4, p0, mSleepTimeout:Z

    if-nez v4, :cond_52

    .line 4050
    const/4 v1, 0x0

    .line 4051
    .local v1, "dontSleep":Z
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_16
    if-ltz v0, :cond_3b

    .line 4052
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4053
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_28
    if-ltz v2, :cond_38

    .line 4054
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v4

    or-int/2addr v1, v4

    .line 4053
    add-int/lit8 v2, v2, -0x1

    goto :goto_28

    .line 4051
    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 4058
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_3b
    iget-object v4, p0, mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_47

    .line 4062
    invoke-virtual {p0}, scheduleIdleLocked()V

    .line 4063
    const/4 v1, 0x1

    .line 4066
    :cond_47
    iget-object v4, p0, mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_50

    .line 4070
    const/4 v1, 0x1

    .line 4073
    :cond_50
    if-nez v1, :cond_8

    .line 4080
    .end local v0    # "displayNdx":I
    .end local v1    # "dontSleep":Z
    :cond_52
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 4084
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .restart local v0    # "displayNdx":I
    :goto_5f
    if-ltz v0, :cond_82

    .line 4085
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4086
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .restart local v2    # "stackNdx":I
    :goto_71
    if-ltz v2, :cond_7f

    .line 4087
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 4086
    add-int/lit8 v2, v2, -0x1

    goto :goto_71

    .line 4084
    :cond_7f
    add-int/lit8 v0, v0, -0x1

    goto :goto_5f

    .line 4091
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_82
    invoke-virtual {p0}, removeSleepTimeouts()V

    .line 4093
    iget-object v4, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_92

    .line 4094
    iget-object v4, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4096
    :cond_92
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v4, :cond_8

    .line 4097
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_8
.end method

.method closeSystemDialogsLocked()V
    .registers 5

    .prologue
    .line 3292
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_2b

    .line 3293
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3294
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_1a
    if-ltz v1, :cond_28

    .line 3295
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->closeSystemDialogsLocked()V

    .line 3294
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 3292
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3298
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2b
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .registers 2

    .prologue
    .line 4009
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, comeOutOfSleepIfNeededLocked(Z)V

    .line 4010
    return-void
.end method

.method comeOutOfSleepIfNeededLocked(Z)V
    .registers 10
    .param p1, "causeKeyguardWaitingForActivityDrawn"    # Z

    .prologue
    .line 4014
    invoke-virtual {p0}, removeSleepTimeouts()V

    .line 4015
    iget-object v4, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 4016
    iget-object v4, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4018
    :cond_10
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_18
    if-ltz v0, :cond_5b

    .line 4019
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4020
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_2a
    if-ltz v2, :cond_58

    .line 4021
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 4022
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->awakeFromSleepingLocked()V

    .line 4023
    invoke-virtual {p0, v1}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 4025
    if-nez p1, :cond_43

    .line 4026
    invoke-virtual {p0}, resumeTopActivitiesLocked()Z

    .line 4020
    :cond_40
    :goto_40
    add-int/lit8 v2, v2, -0x1

    goto :goto_2a

    .line 4028
    :cond_43
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, p0, mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4029
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v5, p0, mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_40

    .line 4018
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_58
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 4035
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5b
    iget-object v4, p0, mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4036
    return-void
.end method

.method createActivityContainer(Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .registers 6
    .param p1, "parentActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "callback"    # Landroid/app/IActivityContainerCallback;

    .prologue
    .line 3559
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)V

    .line 3561
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v1, p0, mActivityContainers:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3563
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3564
    return-object v0
.end method

.method createStackForRestoredTaskHistory(Ljava/util/ArrayList;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3649
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {p0 .. p0}, getNextStackId()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, createStackOnDisplay(II)I

    move-result v6

    .line 3650
    .local v6, "stackId":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v17

    .line 3651
    .local v17, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v19, v2, -0x1

    .local v19, "taskNdx":I
    :goto_17
    if-ltz v19, :cond_82

    .line 3652
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/TaskRecord;

    .line 3653
    .local v18, "task":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3654
    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 3655
    .local v5, "taskId":I
    move-object/from16 v0, v18

    iget-object v14, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3656
    .local v14, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .local v15, "activityNdx":I
    :goto_3a
    if-ltz v15, :cond_7f

    .line 3657
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ActivityRecord;

    .line 3658
    .local v16, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v2, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, v16

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_7b

    const/4 v9, 0x1

    :goto_60
    move-object/from16 v0, v16

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v12, :cond_7d

    const/4 v12, 0x1

    :goto_71
    move-object/from16 v0, v16

    iget-boolean v13, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    .line 3656
    add-int/lit8 v15, v15, -0x1

    goto :goto_3a

    .line 3658
    :cond_7b
    const/4 v9, 0x0

    goto :goto_60

    :cond_7d
    const/4 v12, 0x0

    goto :goto_71

    .line 3651
    .end local v16    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7f
    add-int/lit8 v19, v19, -0x1

    goto :goto_17

    .line 3665
    .end local v5    # "taskId":I
    .end local v14    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v15    # "activityNdx":I
    .end local v18    # "task":Lcom/android/server/am/TaskRecord;
    :cond_82
    return-void
.end method

.method createStackOnDisplay(II)I
    .registers 4
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 3604
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, createStackOnDisplay(III)I

    move-result v0

    return v0
.end method

.method public createStackOnDisplay(III)I
    .registers 9
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "zone"    # I

    .prologue
    .line 3609
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3610
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v1, :cond_c

    .line 3611
    const/4 p1, -0x1

    .line 3633
    .end local p1    # "stackId":I
    :goto_b
    return p1

    .line 3616
    .restart local p1    # "stackId":I
    :cond_c
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-nez p1, :cond_34

    const/4 v3, 0x1

    :goto_11
    invoke-direct {v0, p0, p1, v3, p3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;III)V

    .line 3620
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v3, p0, mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3621
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    .line 3624
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v3, :cond_36

    .line 3625
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3626
    .local v2, "outRect":Landroid/graphics/Rect;
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v3, v2, p3}, Lcom/android/server/am/MultiWindowPolicy;->getBounds(Landroid/graphics/Rect;I)V

    .line 3627
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;)V

    goto :goto_b

    .line 3616
    .end local v0    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v2    # "outRect":Landroid/graphics/Rect;
    :cond_34
    const/4 v3, 0x2

    goto :goto_11

    .line 3629
    .restart local v0    # "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_36
    const-string v3, "ActivityManager"

    const-string v4, "createStackOnDisplay: System is not ready yet!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public createStackOnDisplay(IILandroid/graphics/Rect;)I
    .registers 8
    .param p1, "stackId"    # I
    .param p2, "displayId"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 3590
    iget-object v2, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3591
    .local v1, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v1, :cond_c

    .line 3592
    const/4 p1, -0x1

    .line 3598
    .end local p1    # "stackId":I
    :goto_b
    return p1

    .line 3594
    .restart local p1    # "stackId":I
    :cond_c
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;III)V

    .line 3595
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v2, p0, mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3596
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    .line 3597
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;)V

    goto :goto_b
.end method

.method deleteActivityContainer(Landroid/app/IActivityContainer;)V
    .registers 5
    .param p1, "container"    # Landroid/app/IActivityContainer;

    .prologue
    .line 3578
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 3579
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_11

    .line 3582
    iget v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    .line 3583
    .local v1, "stackId":I
    iget-object v2, p0, mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 3584
    iget-object v2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->removeStack(I)V

    .line 3586
    .end local v1    # "stackId":I
    :cond_11
    return-void
.end method

.method final doPendingActivityLaunchesLocked(Z)V
    .registers 13
    .param p1, "doResume"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 3111
    :goto_2
    iget-object v0, p0, mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 3112
    iget-object v0, p0, mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 3113
    .local v9, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v1, v9, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v9, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    iget v5, v9, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    if-eqz p1, :cond_2b

    iget-object v0, p0, mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v6, 0x1

    :goto_23
    move-object v0, p0

    move-object v4, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I

    goto :goto_2

    :cond_2b
    move v6, v10

    goto :goto_23

    .line 3116
    .end local v9    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_2d
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 4497
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFocusedStack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4498
    const-string v4, " mLastFocusedStack="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4499
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSleepTimeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mSleepTimeout:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4500
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurTaskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mCurTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4501
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUserStackInFront="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4502
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mActivityContainers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4505
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v4, "GlobalTaskHistory"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4506
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_a1
    if-ltz v1, :cond_16f

    .line 4507
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 4508
    .local v0, "d":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActivityDisplay #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4511
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "j":I
    :goto_fd
    if-ltz v2, :cond_16b

    .line 4512
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 4513
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TASK id #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4514
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t(Stack #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v5, v5, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_168

    const-string v4, "f)"

    :goto_142
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4515
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4511
    add-int/lit8 v2, v2, -0x1

    goto :goto_fd

    .line 4514
    :cond_168
    const-string v4, ")"

    goto :goto_142

    .line 4506
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_16b
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_a1

    .line 4520
    .end local v0    # "d":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v2    # "j":I
    :cond_16f
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .registers 37
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;

    .prologue
    .line 4543
    const/16 v26, 0x0

    .line 4544
    .local v26, "printed":Z
    const/4 v9, 0x0

    .line 4545
    .local v9, "needSep":Z
    const/16 v23, 0x0

    .local v23, "displayNdx":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_115

    .line 4546
    move-object/from16 v0, p0

    iget-object v4, v0, mActivityDisplays:Landroid/util/SparseArray;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 4547
    .local v22, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    const-string v4, "Display #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4548
    const-string v4, " (activities from top to bottom):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4549
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    .line 4550
    .local v30, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v29, v4, -0x1

    .local v29, "stackNdx":I
    :goto_40
    if-ltz v29, :cond_111

    .line 4551
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 4552
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v28, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4553
    .local v28, "stackHeader":Ljava/lang/StringBuilder;
    const-string v4, "  Stack #"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4554
    iget v4, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4555
    const-string v4, ":"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4556
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 4558
    iget-object v12, v3, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v13, "    "

    const-string v14, "Run"

    const/4 v15, 0x0

    if-nez p3, :cond_d6

    const/16 v16, 0x1

    :goto_89
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "    Running activities (most recent first):"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 4562
    move/from16 v9, v26

    .line 4563
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const-string v5, "    mPausingActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v25

    .line 4565
    .local v25, "pr":Z
    if-eqz v25, :cond_b0

    .line 4566
    const/16 v26, 0x1

    .line 4567
    const/4 v9, 0x0

    .line 4572
    :cond_b0
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :cond_b6
    :goto_b6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d9

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/am/ActivityRecord;

    .line 4573
    .local v27, "r":Lcom/android/server/am/ActivityRecord;
    move/from16 v9, v26

    .line 4574
    const-string v4, "    mPausingActivities: "

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2, v9, v4}, printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v25

    .line 4575
    if-eqz v25, :cond_b6

    .line 4576
    const/16 v26, 0x1

    .line 4577
    const/4 v9, 0x0

    goto :goto_b6

    .line 4558
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "pr":Z
    .end local v27    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_d6
    const/16 v16, 0x0

    goto :goto_89

    .line 4583
    .restart local v24    # "i$":Ljava/util/Iterator;
    .restart local v25    # "pr":Z
    :cond_d9
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v5, "    mResumedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v25

    .line 4585
    if-eqz v25, :cond_ea

    .line 4586
    const/16 v26, 0x1

    .line 4587
    const/4 v9, 0x0

    .line 4589
    :cond_ea
    if-eqz p3, :cond_10b

    .line 4590
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v5, "    mLastPausedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v25

    .line 4592
    if-eqz v25, :cond_fd

    .line 4593
    const/16 v26, 0x1

    .line 4594
    const/4 v9, 0x1

    .line 4596
    :cond_fd
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    const-string v5, "    mLastNoHistoryActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 4599
    :cond_10b
    move/from16 v9, v26

    .line 4550
    add-int/lit8 v29, v29, -0x1

    goto/16 :goto_40

    .line 4545
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "pr":Z
    .end local v28    # "stackHeader":Ljava/lang/StringBuilder;
    :cond_111
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_5

    .line 4603
    .end local v22    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v29    # "stackNdx":I
    .end local v30    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_115
    move-object/from16 v0, p0

    iget-object v12, v0, mFinishingActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Fin"

    const/4 v15, 0x0

    if-nez p3, :cond_1bb

    const/16 v16, 0x1

    :goto_122
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting to finish:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 4605
    move-object/from16 v0, p0

    iget-object v12, v0, mStoppingActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Stop"

    const/4 v15, 0x0

    if-nez p3, :cond_1bf

    const/16 v16, 0x1

    :goto_143
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting to stop:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 4607
    move-object/from16 v0, p0

    iget-object v12, v0, mWaitingVisibleActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Wait"

    const/4 v15, 0x0

    if-nez p3, :cond_1c2

    const/16 v16, 0x1

    :goto_164
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting for another to become visible:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 4610
    move-object/from16 v0, p0

    iget-object v12, v0, mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Sleep"

    const/4 v15, 0x0

    if-nez p3, :cond_1c5

    const/16 v16, 0x1

    :goto_185
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting to sleep:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 4612
    move-object/from16 v0, p0

    iget-object v12, v0, mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v13, "  "

    const-string v14, "Sleep"

    const/4 v15, 0x0

    if-nez p3, :cond_1c8

    const/16 v16, 0x1

    :goto_1a6
    const/16 v17, 0x0

    const/16 v19, 0x1

    const-string v20, "  Activities waiting to sleep:"

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v26, v26, v4

    .line 4615
    return v26

    .line 4603
    :cond_1bb
    const/16 v16, 0x0

    goto/16 :goto_122

    .line 4605
    :cond_1bf
    const/16 v16, 0x0

    goto :goto_143

    .line 4607
    :cond_1c2
    const/16 v16, 0x0

    goto :goto_164

    .line 4610
    :cond_1c5
    const/16 v16, 0x0

    goto :goto_185

    .line 4612
    :cond_1c8
    const/16 v16, 0x0

    goto :goto_1a6
.end method

.method endLockTaskModeIfTaskEnding(Lcom/android/server/am/TaskRecord;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 4871
    iget-object v1, p0, mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_1e

    iget-object v1, p0, mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-ne v1, p1, :cond_1e

    .line 4872
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4873
    .local v0, "lockTaskMsg":Landroid/os/Message;
    iget-object v1, p0, mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4874
    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4875
    const/4 v1, 0x0

    iput-object v1, p0, mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    .line 4876
    iget-object v1, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4878
    .end local v0    # "lockTaskMsg":Landroid/os/Message;
    :cond_1e
    return-void
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .registers 19
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    .prologue
    .line 4250
    move-object/from16 v0, p0

    iget-object v15, v0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    add-int/lit8 v4, v15, -0x1

    .local v4, "displayNdx":I
    :goto_a
    if-ltz v4, :cond_97

    .line 4251
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 4253
    .local v12, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, updateLastShownWhenLocked(I)V

    .line 4255
    const/4 v8, 0x0

    .line 4256
    .local v8, "obscuredZone":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4258
    .local v2, "N":I
    add-int/lit8 v5, v2, -0x1

    .local v5, "i":I
    :goto_1e
    if-ltz v5, :cond_5c

    .line 4259
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/TaskRecord;

    iget-object v9, v15, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 4260
    .local v9, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v9, :cond_30

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v15

    if-eqz v15, :cond_33

    .line 4258
    :cond_30
    :goto_30
    add-int/lit8 v5, v5, -0x1

    goto :goto_1e

    .line 4262
    :cond_33
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    .line 4263
    .local v10, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    .line 4267
    .local v13, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->isFullscreenVisible()Z

    move-result v7

    .line 4268
    .local v7, "isFullscreen":Z
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Lcom/android/server/am/TaskRecord;->getVisibleObscuredZone(Z)I

    move-result v11

    .line 4269
    .local v11, "taskObscuredZone":I
    const/16 v15, 0xf

    if-eq v8, v15, :cond_5a

    if-eqz v7, :cond_50

    and-int v15, v8, v11

    if-eq v15, v11, :cond_5a

    :cond_50
    const/4 v14, 0x1

    .line 4272
    .local v14, "visible":Z
    :goto_51
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v9, v0, v1, v10, v14}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Z)V

    .line 4273
    or-int/2addr v8, v11

    goto :goto_30

    .line 4269
    .end local v14    # "visible":Z
    :cond_5a
    const/4 v14, 0x0

    goto :goto_51

    .line 4276
    .end local v7    # "isFullscreen":Z
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    .end local v11    # "taskObscuredZone":I
    .end local v13    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_5c
    move-object/from16 v0, p0

    iget-object v15, v0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v15, v15, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_6c
    :goto_6c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_93

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStack;

    .line 4277
    .restart local v9    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v15

    if-eqz v15, :cond_6c

    .line 4278
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 4279
    .local v3, "ar":Lcom/android/server/am/ActivityRecord;
    if-nez v3, :cond_90

    const/4 v10, 0x0

    .line 4280
    .restart local v10    # "task":Lcom/android/server/am/TaskRecord;
    :goto_86
    if-eqz v10, :cond_6c

    .line 4281
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    goto :goto_6c

    .line 4279
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    :cond_90
    iget-object v10, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    goto :goto_86

    .line 4250
    .end local v3    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_93
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_a

    .line 4298
    .end local v2    # "N":I
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "obscuredZone":I
    .end local v12    # "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_97
    return-void
.end method

.method exchangeTaskToStack(IIZ)V
    .registers 19
    .param p1, "task1Id"    # I
    .param p2, "task2Id"    # I
    .param p3, "toTop"    # Z

    .prologue
    .line 3760
    invoke-virtual/range {p0 .. p1}, anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 3761
    .local v8, "task1":Lcom/android/server/am/TaskRecord;
    move/from16 v0, p2

    invoke-virtual {p0, v0}, anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v9

    .line 3762
    .local v9, "task2":Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_e

    if-nez v9, :cond_f

    .line 3825
    :cond_e
    return-void

    .line 3766
    :cond_f
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3767
    .local v2, "ar1":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 3768
    .local v3, "ar2":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3769
    .local v6, "stack1":Lcom/android/server/am/ActivityStack;
    iget-object v7, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3770
    .local v7, "stack2":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    if-eqz v6, :cond_e

    if-eqz v7, :cond_e

    .line 3774
    iget-object v12, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v10

    .line 3775
    .local v10, "zone1":I
    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v11

    .line 3778
    .local v11, "zone2":I
    const/4 v12, 0x3

    if-ne v10, v12, :cond_36

    const/16 v12, 0xc

    if-eq v11, v12, :cond_3d

    :cond_36
    const/16 v12, 0xc

    if-ne v10, v12, :cond_44

    const/4 v12, 0x3

    if-ne v11, v12, :cond_44

    .line 3780
    :cond_3d
    iget-object v12, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v12, v13, v14}, Lcom/android/server/wm/WindowManagerService;->prepareMutiWindowTransition(Landroid/os/IBinder;I)V

    .line 3784
    :cond_44
    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v7, v9, v12, v13}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3785
    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v6, v8, v12, v13}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3788
    const/4 v12, 0x1

    move/from16 v0, p3

    invoke-virtual {v7, v8, v0, v12}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3789
    const/4 v12, 0x1

    move/from16 v0, p3

    invoke-virtual {v6, v9, v0, v12}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3791
    iget-object v12, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v13

    const/4 v14, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v12, v0, v13, v1, v14}, Lcom/android/server/wm/WindowManagerService;->addTask(IIZZ)V

    .line 3792
    iget-object v12, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v13

    const/4 v14, 0x1

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v12, v0, v13, v1, v14}, Lcom/android/server/wm/WindowManagerService;->addTask(IIZZ)V

    .line 3795
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v12, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 3796
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v12, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 3797
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6, v8, v12}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 3798
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7, v9, v12}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 3799
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v6, v12, v13, v14}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3800
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v7, v12, v13, v14}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3802
    if-eqz p3, :cond_eb

    .line 3803
    iget-object v12, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3804
    iget-object v12, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v13, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 3805
    iput-object v3, v6, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3806
    iput-object v2, v7, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3811
    :goto_c4
    iget-object v12, v6, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .local v4, "index":I
    :goto_cc
    if-ltz v4, :cond_ef

    .line 3812
    iget-object v12, v6, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 3813
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v12, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v0, p1

    if-ne v0, v12, :cond_e8

    .line 3814
    iget-object v12, v6, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3815
    iget-object v12, v7, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3811
    :cond_e8
    add-int/lit8 v4, v4, -0x1

    goto :goto_cc

    .line 3808
    .end local v4    # "index":I
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_eb
    invoke-virtual {p0}, resumeTopActivitiesLocked()Z

    goto :goto_c4

    .line 3818
    .restart local v4    # "index":I
    :cond_ef
    iget-object v12, v7, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    :goto_f7
    if-ltz v4, :cond_e

    .line 3819
    iget-object v12, v7, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 3820
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v12, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v0, p2

    if-ne v0, v12, :cond_113

    .line 3821
    iget-object v12, v7, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3822
    iget-object v12, v6, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3818
    :cond_113
    add-int/lit8 v4, v4, -0x1

    goto :goto_f7
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 3888
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "displayNdx":I
    :goto_8
    if-ltz v1, :cond_2f

    .line 3889
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3890
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1a
    if-ltz v2, :cond_2c

    .line 3891
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3892
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_29

    .line 3897
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_28
    return-object v0

    .line 3890
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "stackNdx":I
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 3888
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 3897
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2f
    const/4 v0, 0x0

    goto :goto_28
.end method

.method findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3902
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "displayNdx":I
    :goto_8
    if-ltz v1, :cond_2f

    .line 3903
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3904
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1a
    if-ltz v2, :cond_2c

    .line 3905
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/am/ActivityStack;->findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3906
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_29

    .line 3911
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_28
    return-object v0

    .line 3904
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "stackNdx":I
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 3902
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 3911
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2f
    const/4 v0, 0x0

    goto :goto_28
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 15
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x1

    .line 3832
    const/4 v2, 0x0

    .line 3834
    .local v2, "multiInstanceAr":Lcom/android/server/am/ActivityRecord;
    iget-object v6, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "displayNdx":I
    :goto_b
    if-ltz v1, :cond_75

    .line 3835
    iget-object v6, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3836
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "stackNdx":I
    :goto_1d
    if-ltz v4, :cond_72

    .line 3837
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 3838
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v6

    if-nez v6, :cond_34

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v6

    if-nez v6, :cond_34

    .line 3836
    :cond_31
    :goto_31
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    .line 3842
    :cond_34
    iget-object v6, v3, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isEligibleForNewTasks()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 3847
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3848
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_31

    .line 3850
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 3852
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v6, :cond_5d

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getSpecificTaskId()I

    move-result v6

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v6, v8, :cond_5d

    .line 3884
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5c
    :goto_5c
    return-object v0

    .line 3855
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "stackNdx":I
    .restart local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5d
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v8, 0x8000000

    and-int/2addr v6, v8

    if-eqz v6, :cond_6a

    .line 3856
    move-object v2, v0

    goto :goto_31

    .line 3857
    :cond_6a
    invoke-virtual {v3, v7, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-ne v0, v6, :cond_5c

    .line 3858
    move-object v2, v0

    goto :goto_31

    .line 3834
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_72
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 3870
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_75
    if-eqz v2, :cond_79

    move-object v0, v2

    .line 3871
    goto :goto_5c

    .line 3875
    :cond_79
    iget-boolean v6, p0, mIsPerfBoostEnabled:Z

    if-ne v6, v12, :cond_88

    iget-object v6, p0, mPerf:Lorg/codeaurora/Performance;

    if-nez v6, :cond_88

    .line 3876
    new-instance v6, Lorg/codeaurora/Performance;

    invoke-direct {v6}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v6, p0, mPerf:Lorg/codeaurora/Performance;

    .line 3878
    :cond_88
    iget-object v6, p0, mPerf:Lorg/codeaurora/Performance;

    if-eqz v6, :cond_a9

    .line 3879
    iget-object v6, p0, mPerf:Lorg/codeaurora/Performance;

    iget v8, p0, lBoostTimeOut:I

    const/4 v9, 0x4

    new-array v9, v9, [I

    const/4 v10, 0x0

    iget v11, p0, lBoostPcDisblBoost:I

    aput v11, v9, v10

    iget v10, p0, lBoostSchedBoost:I

    aput v10, v9, v12

    const/4 v10, 0x2

    iget v11, p0, lBoostCpuBoost:I

    aput v11, v9, v10

    const/4 v10, 0x3

    iget v11, p0, lBoostKsmBoost:I

    aput v11, v9, v10

    invoke-virtual {v6, v8, v9}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    :cond_a9
    move-object v0, v7

    .line 3884
    goto :goto_5c
.end method

.method findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 3433
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_7

    .line 3434
    iput-boolean v1, p0, mUserLeaving:Z

    .line 3436
    :cond_7
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_e

    .line 3439
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 3443
    :cond_e
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3, p2}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;I)V

    .line 3453
    return-void
.end method

.method finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3411
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_2a

    .line 3412
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3413
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3414
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_19
    if-ge v3, v1, :cond_27

    .line 3415
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3416
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3414
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 3411
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3419
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2a
    return-void
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 8
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .prologue
    .line 3422
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_2a

    .line 3423
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3424
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3425
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_19
    if-ge v3, v1, :cond_27

    .line 3426
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3427
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 3425
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 3422
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3430
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2a
    return-void
.end method

.method forceStopPackageLocked(Ljava/lang/String;ZZI)Z
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "doit"    # Z
    .param p3, "evenPersistent"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 3308
    const/4 v0, 0x0

    .line 3309
    .local v0, "didSomething":Z
    iget-object v6, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "displayNdx":I
    :goto_9
    if-ltz v1, :cond_2f

    .line 3310
    iget-object v6, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3311
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3312
    .local v2, "numStacks":I
    const/4 v4, 0x0

    .local v4, "stackNdx":I
    :goto_1a
    if-ge v4, v2, :cond_2c

    .line 3313
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 3314
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStack;->forceStopPackageLocked(Ljava/lang/String;ZZI)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 3315
    const/4 v0, 0x1

    .line 3312
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 3309
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 3319
    .end local v2    # "numStacks":I
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2f
    return v0
.end method

.method getAllStackInfosLocked()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4824
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4825
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$StackInfo;>;"
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_6
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_33

    .line 4826
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4827
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "ndx":I
    :goto_1e
    if-ltz v2, :cond_30

    .line 4828
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v4}, getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4827
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 4825
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4831
    .end local v2    # "ndx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_33
    return-object v1
.end method

.method public getDefaultDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .registers 2

    .prologue
    .line 6222
    iget-object v0, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    return-object v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4523
    invoke-virtual {p0}, getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getFocusedStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method public getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6396
    iget-object v1, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 6397
    .local v0, "d":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v0, :cond_d

    .line 6398
    sget-object v1, sEmptyGlobalTaskHistory:Ljava/util/ArrayList;

    .line 6400
    :goto_c
    return-object v1

    :cond_d
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    goto :goto_c
.end method

.method getHomeActivity()Lcom/android/server/am/ActivityRecord;
    .registers 8

    .prologue
    .line 3528
    iget-object v6, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 3529
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_c
    if-ltz v4, :cond_37

    .line 3530
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 3531
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v6

    if-eqz v6, :cond_34

    .line 3532
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3533
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_22
    if-ltz v1, :cond_34

    .line 3534
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 3535
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 3541
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_30
    return-object v2

    .line 3533
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    .line 3529
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_34
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    .line 3541
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_37
    const/4 v2, 0x0

    goto :goto_30
.end method

.method getHomeActivityToken()Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 3520
    invoke-virtual {p0}, getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3521
    .local v0, "homeActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_9

    .line 3522
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 3524
    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method getHomeStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    .prologue
    .line 6404
    iget-object v0, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getHomeTask()Lcom/android/server/am/TaskRecord;
    .registers 5

    .prologue
    .line 3546
    iget-object v3, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 3547
    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "taskNdx":I
    :goto_c
    if-ltz v1, :cond_1e

    .line 3548
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 3549
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 3553
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :goto_1a
    return-object v0

    .line 3547
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 3553
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method getLastStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getNextStackId()I
    .registers 2

    .prologue
    .line 3638
    :cond_0
    iget v0, p0, mLastStackId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mLastStackId:I

    if-gtz v0, :cond_b

    .line 3639
    const/4 v0, 0x1

    iput v0, p0, mLastStackId:I

    .line 3641
    :cond_b
    iget v0, p0, mLastStackId:I

    invoke-virtual {p0, v0}, getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3645
    iget v0, p0, mLastStackId:I

    return v0
.end method

.method getNextTaskId()I
    .registers 2

    .prologue
    .line 784
    :cond_0
    iget v0, p0, mCurTaskId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mCurTaskId:I

    .line 785
    iget v0, p0, mCurTaskId:I

    if-gtz v0, :cond_d

    .line 786
    const/4 v0, 0x1

    iput v0, p0, mCurTaskId:I

    .line 788
    :cond_d
    iget v0, p0, mCurTaskId:I

    invoke-virtual {p0, v0}, anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 789
    iget v0, p0, mCurTaskId:I

    return v0
.end method

.method getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    .prologue
    .line 5930
    iget-object v0, p0, mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_7

    .line 5931
    iget-object v0, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 5933
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_6
.end method

.method getStack(I)Lcom/android/server/am/ActivityStack;
    .registers 4
    .param p1, "stackId"    # I

    .prologue
    .line 3456
    iget-object v1, p0, mActivityContainers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 3457
    .local v0, "activityContainer":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v0, :cond_d

    .line 3458
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    .line 3460
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method getStack(II)Lcom/android/server/am/ActivityStack;
    .registers 8
    .param p1, "zone"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 3469
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3470
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_30

    .line 3471
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_30

    .line 3472
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3473
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 3471
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 3476
    :cond_24
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v3

    if-ne v3, p1, :cond_21

    .line 3489
    .end local v1    # "i":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_2f
    return-object v2

    :cond_30
    const/4 v2, 0x0

    goto :goto_2f
.end method

.method getStack(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)Lcom/android/server/am/ActivityStack;
    .registers 4
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "displayId"    # I

    .prologue
    .line 3465
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v0

    invoke-virtual {p0, v0, p2}, getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method public getStackCount(I)I
    .registers 8
    .param p1, "stackType"    # I

    .prologue
    .line 6330
    const/4 v0, 0x0

    .line 6331
    .local v0, "count":I
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 6332
    .local v2, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_8
    if-ge v1, v2, :cond_2e

    .line 6333
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6334
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1a
    if-ltz v3, :cond_2b

    .line 6335
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    iget v5, v5, Lcom/android/server/am/ActivityStack;->mStackType:I

    if-ne v5, p1, :cond_28

    .line 6336
    add-int/lit8 v0, v0, 0x1

    .line 6334
    :cond_28
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 6332
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 6340
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2e
    return v0
.end method

.method getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;
    .registers 12
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 4793
    new-instance v1, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    .line 4794
    .local v1, "info":Landroid/app/ActivityManager$StackInfo;
    iget-object v7, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v9, v1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(ILandroid/graphics/Rect;)V

    .line 4795
    const/4 v7, 0x0

    iput v7, v1, Landroid/app/ActivityManager$StackInfo;->displayId:I

    .line 4796
    iget v7, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iput v7, v1, Landroid/app/ActivityManager$StackInfo;->stackId:I

    .line 4798
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 4799
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4800
    .local v2, "numTasks":I
    new-array v4, v2, [I

    .line 4801
    .local v4, "taskIds":[I
    new-array v5, v2, [Ljava/lang/String;

    .line 4802
    .local v5, "taskNames":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    if-ge v0, v2, :cond_59

    .line 4803
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 4804
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v7, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    aput v7, v4, v0

    .line 4805
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_3d

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    :goto_38
    aput-object v7, v5, v0

    .line 4802
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 4805
    :cond_3d
    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_48

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    goto :goto_38

    :cond_48
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_55

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_38

    :cond_55
    const-string/jumbo v7, "unknown"

    goto :goto_38

    .line 4810
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_59
    iput-object v4, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    .line 4811
    iput-object v5, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    .line 4812
    return-object v1
.end method

.method getStackInfoLocked(I)Landroid/app/ActivityManager$StackInfo;
    .registers 4
    .param p1, "stackId"    # I

    .prologue
    .line 4816
    invoke-virtual {p0, p1}, getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 4817
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_b

    .line 4818
    invoke-virtual {p0, v0}, getStackInfo(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 4820
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method getStackOrder(ZLcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)Ljava/util/ArrayList;
    .registers 13
    .param p1, "allStack"    # Z
    .param p2, "display"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 6226
    if-nez p2, :cond_5

    move-object v4, v8

    .line 6268
    :cond_4
    :goto_4
    return-object v4

    .line 6229
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6230
    .local v4, "resultStackOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v7, p2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    .line 6232
    .local v7, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v1, -0x1

    .line 6236
    .local v1, "currStackId":I
    const/4 v3, 0x0

    .line 6238
    .local v3, "mask":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "i":I
    :goto_14
    if-ltz v2, :cond_4

    .line 6239
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 6240
    .local v6, "taskInfo":Lcom/android/server/am/TaskRecord;
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v9, :cond_23

    .line 6238
    :cond_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 6242
    :cond_23
    iget-object v5, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 6243
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v9, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eq v1, v9, :cond_20

    if-eqz v5, :cond_20

    .line 6246
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v1, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 6248
    if-nez p1, :cond_46

    .line 6249
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v9

    if-nez v9, :cond_46

    .line 6250
    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 6251
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_20

    .line 6252
    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v9

    or-int/2addr v3, v9

    .line 6258
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_46
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v9, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5f

    .line 6259
    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v9, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6261
    :cond_5f
    if-nez p1, :cond_20

    .line 6262
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0xf

    if-eq v3, v9, :cond_4

    if-nez v3, :cond_20

    goto :goto_4
.end method

.method getStacks()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3513
    .local v0, "allStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    iget-object v2, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "displayNdx":I
    :goto_d
    if-ltz v1, :cond_1f

    .line 3514
    iget-object v2, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3513
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 3516
    :cond_1f
    return-object v0
.end method

.method getTasksLocked(ILjava/util/List;IZI)V
    .registers 26
    .param p1, "maxNum"    # I
    .param p3, "callingUid"    # I
    .param p4, "allowed"    # Z
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 1081
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    .local v11, "runningTaskLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityDisplays:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1084
    .local v5, "numDisplays":I
    const/4 v4, 0x0

    .local v4, "displayNdx":I
    :goto_10
    if-ge v4, v5, :cond_4d

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityDisplays:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 1086
    .local v16, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v14, v18, -0x1

    .local v14, "stackNdx":I
    :goto_2c
    if-ltz v14, :cond_4a

    .line 1087
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityStack;

    .line 1088
    .local v13, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    .local v15, "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v13, v15, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Ljava/util/List;IZI)V

    .line 1086
    add-int/lit8 v14, v14, -0x1

    goto :goto_2c

    .line 1084
    .end local v13    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1096
    .end local v14    # "stackNdx":I
    .end local v16    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_4d
    :goto_4d
    if-lez p1, :cond_fb

    .line 1097
    const-wide/high16 v8, -0x8000000000000000L

    .line 1098
    .local v8, "mostRecentActiveTime":J
    const/4 v12, 0x0

    .line 1100
    .local v12, "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v17, 0x0

    .line 1102
    .local v17, "taskIsInitState":Z
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1103
    .local v10, "numTaskLists":I
    const/4 v14, 0x0

    .restart local v14    # "stackNdx":I
    :goto_59
    if-ge v14, v10, :cond_bc

    .line 1104
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 1105
    .restart local v15    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_f5

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d1

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v18

    if-nez v18, :cond_d1

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d1

    .line 1111
    move-object v12, v15

    .line 1131
    .end local v15    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_bc
    :goto_bc
    if-eqz v12, :cond_f9

    .line 1132
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1133
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_4d

    .line 1115
    .restart local v15    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_d1
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v18

    iget-wide v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 1119
    .local v6, "lastActiveTime":J
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_ef

    .line 1120
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1121
    const/16 v17, 0x1

    .line 1122
    goto :goto_bc

    .line 1125
    :cond_ef
    cmp-long v18, v6, v8

    if-lez v18, :cond_f5

    .line 1126
    move-wide v8, v6

    .line 1127
    move-object v12, v15

    .line 1103
    .end local v6    # "lastActiveTime":J
    :cond_f5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_59

    .line 1137
    .end local v15    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_f9
    if-nez v17, :cond_4d

    .line 1142
    .end local v8    # "mostRecentActiveTime":J
    .end local v10    # "numTaskLists":I
    .end local v12    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v14    # "stackNdx":I
    .end local v17    # "taskIsInitState":Z
    :cond_fb
    move-object/from16 v0, p0

    iget-object v0, v0, mRunningTaskComparator:Ljava/util/Comparator;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1143
    return-void
.end method

.method getVRStack(I)Lcom/android/server/am/ActivityStack;
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 3495
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3496
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_2b

    .line 3497
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2b

    .line 3498
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3499
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 3497
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 3502
    :cond_24
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isVRStack()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 3507
    .end local v1    # "i":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_2a
    return-object v2

    :cond_2b
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method goingToSleepLocked()V
    .registers 3

    .prologue
    .line 3917
    invoke-virtual {p0}, scheduleSleepTimeout()V

    .line 3918
    iget-object v0, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_26

    .line 3919
    iget-object v0, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3920
    iget-object v0, p0, mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3924
    iget-object v0, p0, mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3925
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 3928
    :cond_26
    invoke-virtual {p0}, checkReadyForSleepLocked()V

    .line 3929
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 4120
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_2a

    .line 4121
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4122
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4123
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_19
    if-ge v3, v1, :cond_27

    .line 4124
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 4125
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4123
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 4120
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4128
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2a
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3281
    const/4 v1, 0x0

    .line 3282
    .local v1, "hasVisibleActivities":Z
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_9
    if-ltz v0, :cond_2e

    .line 3283
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3284
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1b
    if-ltz v2, :cond_2b

    .line 3285
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 3284
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    .line 3282
    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 3288
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2e
    return v1
.end method

.method public handleDisplayAddedLocked(I)V
    .registers 8
    .param p1, "displayId"    # I

    .prologue
    .line 4752
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4753
    :try_start_3
    iget-object v2, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_37

    const/4 v1, 0x1

    .line 4754
    .local v1, "newDisplay":Z
    :goto_c
    if-eqz v1, :cond_3e

    .line 4755
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 4756
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_39

    .line 4757
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gone before initialization complete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4758
    monitor-exit v3

    .line 4766
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :cond_36
    :goto_36
    return-void

    .line 4753
    .end local v1    # "newDisplay":Z
    :cond_37
    const/4 v1, 0x0

    goto :goto_c

    .line 4760
    .restart local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .restart local v1    # "newDisplay":Z
    :cond_39
    iget-object v2, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4762
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :cond_3e
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_47

    .line 4763
    if-eqz v1, :cond_36

    .line 4764
    iget-object v2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayAdded(I)V

    goto :goto_36

    .line 4762
    .end local v1    # "newDisplay":Z
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v2
.end method

.method public handleDisplayChangedLocked(I)V
    .registers 5
    .param p1, "displayId"    # I

    .prologue
    .line 4783
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 4784
    :try_start_3
    iget-object v1, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 4785
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_d

    .line 4788
    :cond_d
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_14

    .line 4789
    iget-object v1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayChanged(I)V

    .line 4790
    return-void

    .line 4788
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public handleDisplayRemovedLocked(I)V
    .registers 7
    .param p1, "displayId"    # I

    .prologue
    .line 4769
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 4770
    :try_start_3
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 4771
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_2a

    .line 4772
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4773
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_15
    if-ltz v1, :cond_25

    .line 4774
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->detachLocked()V

    .line 4773
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 4776
    :cond_25
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4778
    .end local v1    # "stackNdx":I
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2a
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_31

    .line 4779
    iget-object v3, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    .line 4780
    return-void

    .line 4778
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_31
    move-exception v3

    :try_start_32
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v3
.end method

.method handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 4184
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    .line 4185
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4186
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setLastThumbnail(Landroid/graphics/Bitmap;)Z

    .line 4187
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 4188
    iget-object v1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 4189
    return-void
.end method

.method initPowerManagement()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 438
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 439
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 440
    const-string v1, "ActivityManager-Launch"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 442
    iget-object v1, p0, mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 443
    return-void
.end method

.method isFrontStack(Lcom/android/server/am/ActivityStack;)Z
    .registers 15
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 578
    if-nez p1, :cond_4

    .line 579
    const/4 v2, 0x0

    .line 653
    :goto_3
    return v2

    .line 583
    :cond_4
    iget-object v9, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v9

    if-nez v9, :cond_e

    .line 584
    const/4 v2, 0x0

    goto :goto_3

    .line 585
    :cond_e
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1, v9, v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 586
    .local v8, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v8, :cond_49

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_49

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_47

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_47

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v10, 0x800000

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_49

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v9

    iget-object v10, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v10}, Lcom/android/server/am/MultiWindowPolicy;->getTabFrontStack()I

    move-result v10

    if-eq v9, v10, :cond_49

    .line 591
    :cond_47
    const/4 v2, 0x0

    goto :goto_3

    .line 594
    :cond_49
    iget-object v10, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 595
    :try_start_4c
    iget-object v9, p1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v9, :cond_58

    .line 596
    const/4 v2, 0x0

    monitor-exit v10

    goto :goto_3

    .line 654
    :catchall_55
    move-exception v9

    monitor-exit v10
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_55

    throw v9

    .line 598
    :cond_58
    :try_start_58
    iget v9, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p0, v9}, getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 599
    .local v7, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v4, 0x0

    .line 600
    .local v4, "obscuredZone":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 601
    .local v0, "N":I
    if-nez v0, :cond_6e

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 602
    const/4 v2, 0x1

    monitor-exit v10

    goto :goto_3

    .line 605
    :cond_6e
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v9

    if-eqz v9, :cond_94

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v9

    if-nez v9, :cond_94

    .line 606
    const/4 v2, 0x1

    .line 607
    .local v2, "homeIsFront":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7c
    if-ge v3, v0, :cond_8c

    .line 608
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_91

    .line 609
    const/4 v2, 0x0

    .line 613
    :cond_8c
    if-eqz v2, :cond_94

    .line 614
    monitor-exit v10

    goto/16 :goto_3

    .line 607
    :cond_91
    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    .line 627
    .end local v2    # "homeIsFront":Z
    .end local v3    # "i":I
    :cond_94
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isSplitStack()Z

    move-result v9

    if-eqz v9, :cond_aa

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v9

    if-nez v9, :cond_aa

    invoke-virtual {p0, v7, p1}, checkFullScreenOnlyExist(Ljava/util/ArrayList;Lcom/android/server/am/ActivityStack;)Z

    move-result v9

    if-eqz v9, :cond_aa

    .line 629
    const/4 v2, 0x0

    monitor-exit v10

    goto/16 :goto_3

    .line 631
    :cond_aa
    add-int/lit8 v3, v0, -0x1

    .restart local v3    # "i":I
    :goto_ac
    if-ltz v3, :cond_108

    .line 632
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 633
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v1, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 634
    .local v1, "currStack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_d7

    .line 635
    const-string v9, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isFrontStack: stack is not exist. id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_d4
    add-int/lit8 v3, v3, -0x1

    goto :goto_ac

    .line 638
    :cond_d7
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/android/server/am/TaskRecord;->getVisibleObscuredZone(Z)I

    move-result v6

    .line 639
    .local v6, "taskObscuredZone":I
    if-ne v1, p1, :cond_ff

    .line 640
    const/16 v9, 0xf

    if-ne v6, v9, :cond_ec

    .line 641
    and-int/lit8 v9, v4, 0xf

    if-nez v9, :cond_ea

    const/4 v2, 0x1

    :goto_e7
    monitor-exit v10

    goto/16 :goto_3

    :cond_ea
    const/4 v2, 0x0

    goto :goto_e7

    .line 642
    :cond_ec
    if-nez v6, :cond_f5

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_d4

    .line 646
    :cond_f5
    const/16 v9, 0xf

    if-eq v4, v9, :cond_fd

    const/4 v2, 0x1

    :goto_fa
    monitor-exit v10

    goto/16 :goto_3

    :cond_fd
    const/4 v2, 0x0

    goto :goto_fa

    .line 649
    :cond_ff
    or-int/2addr v4, v6

    .line 650
    const/16 v9, 0xf

    if-ne v4, v9, :cond_d4

    .line 651
    const/4 v2, 0x0

    monitor-exit v10

    goto/16 :goto_3

    .line 653
    .end local v1    # "currStack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v6    # "taskObscuredZone":I
    :cond_108
    const/4 v2, 0x0

    monitor-exit v10
    :try_end_10a
    .catchall {:try_start_58 .. :try_end_10a} :catchall_55

    goto/16 :goto_3
.end method

.method isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 763
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 764
    .local v1, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_7
    if-ge v0, v1, :cond_2e

    .line 765
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 766
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_19
    if-ltz v3, :cond_2b

    .line 767
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 768
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_28

    .line 773
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :goto_27
    return-object v2

    .line 766
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "stackNdx":I
    .restart local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_28
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 764
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 773
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2e
    const/4 v2, 0x0

    goto :goto_27
.end method

.method isInLockTaskMode()Z
    .registers 2

    .prologue
    .line 4881
    iget-object v0, p0, mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isIsolated(I)Z
    .registers 9
    .param p1, "displayId"    # I

    .prologue
    const/16 v6, 0x1000

    const/4 v4, 0x1

    .line 515
    const/4 v2, 0x0

    .line 516
    .local v2, "bPopup":Z
    const/4 v1, 0x0

    .line 517
    .local v1, "bHasVisible":Z
    invoke-virtual {p0}, getStacks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 518
    .local v0, "as":Lcom/android/server/am/ActivityStack;
    iget v5, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-ne v5, p1, :cond_5e

    invoke-virtual {p0, v0}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 519
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_42

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 539
    .end local v0    # "as":Lcom/android/server/am/ActivityStack;
    :cond_41
    :goto_41
    return v4

    .line 524
    .restart local v0    # "as":Lcom/android/server/am/ActivityStack;
    :cond_42
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v5, :cond_d

    .line 526
    const/4 v2, 0x1

    goto :goto_d

    .line 528
    :cond_5e
    iget v5, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-ne v5, p1, :cond_d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 533
    const/4 v1, 0x1

    goto :goto_d

    .line 536
    .end local v0    # "as":Lcom/android/server/am/ActivityStack;
    :cond_8a
    if-eqz v1, :cond_8e

    if-nez v2, :cond_41

    .line 539
    :cond_8e
    const/4 v4, 0x0

    goto :goto_41
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 4867
    iget-object v0, p0, mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_a

    iget-object v0, p0, mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-eq v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method keyguardWaitingForActivityDrawn()V
    .registers 2

    .prologue
    .line 744
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->keyguardWaitingForActivityDrawn()V

    .line 745
    return-void
.end method

.method moveHomeStack(Z)V
    .registers 3
    .param p1, "toFront"    # Z

    .prologue
    .line 672
    iget-object v0, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v0, p1}, moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 673
    return-void
.end method

.method moveHomeStackTaskToTop(I)V
    .registers 3
    .param p1, "homeStackTaskType"    # I

    .prologue
    .line 711
    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 712
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 717
    :goto_8
    return-void

    .line 715
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, moveHomeStack(Z)V

    .line 716
    iget-object v0, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop(I)V

    goto :goto_8
.end method

.method moveStack(Lcom/android/server/am/ActivityStack;Z)V
    .registers 8
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "toFront"    # Z

    .prologue
    .line 697
    iget-object v1, p1, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 698
    .local v1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 699
    .local v2, "topNdx":I
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 700
    if-eqz p2, :cond_36

    move v3, v2

    :goto_e
    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 701
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 702
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    iget-object v3, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, v3, :cond_35

    .line 703
    iget-object v3, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v3, p0, mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movestack to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 707
    :cond_35
    return-void

    .line 700
    .end local v0    # "focusedStack":Lcom/android/server/am/ActivityStack;
    :cond_36
    const/4 v3, 0x0

    goto :goto_e
.end method

.method moveTaskToStack(IIZ)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z

    .prologue
    .line 3669
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, moveTaskToStack(IIZZ)V

    .line 3670
    return-void
.end method

.method moveTaskToStack(IIZZ)V
    .registers 15
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z
    .param p4, "needsResumeTop"    # Z

    .prologue
    .line 3674
    invoke-virtual {p0, p1}, anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .line 3675
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    if-nez v4, :cond_7

    .line 3755
    :cond_6
    :goto_6
    return-void

    .line 3678
    :cond_7
    invoke-virtual {p0, p2}, getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 3679
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_26

    .line 3680
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "moveTaskToStack: no stack for id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3698
    :cond_26
    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    .line 3699
    .local v5, "wasInFloatingStack":Z
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v6

    .line 3701
    .local v6, "willBeInFloatingStack":Z
    iget-object v1, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3706
    .local v1, "prevStack":Lcom/android/server/am/ActivityStack;
    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3712
    const/4 v7, 0x1

    invoke-virtual {v3, v4, p3, v7}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 3728
    iget-object v7, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x1

    invoke-virtual {v7, p1, p2, p3, v8}, Lcom/android/server/wm/WindowManagerService;->addTask(IIZZ)V

    .line 3729
    invoke-virtual {v1, v4, v3, p3}, Lcom/android/server/am/ActivityStack;->postProcessAfterMovingTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V

    .line 3730
    const/4 v0, 0x0

    .line 3731
    .local v0, "isNeedEnsureVisibleCall":Z
    if-eqz p3, :cond_5e

    .line 3732
    if-nez v5, :cond_4d

    if-eqz v6, :cond_59

    .line 3733
    :cond_4d
    iget-object v7, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Z)V

    .line 3734
    const/4 v0, 0x1

    .line 3736
    :cond_59
    iget-object v7, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, p1}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 3738
    :cond_5e
    if-eqz p4, :cond_89

    .line 3739
    invoke-virtual {p0}, resumeTopActivitiesLocked()Z

    .line 3740
    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    iget-object v8, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 3741
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_89

    if-eqz v2, :cond_89

    iget-boolean v7, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_89

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_89

    .line 3743
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 3751
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_89
    if-eqz p4, :cond_6

    .line 3753
    invoke-virtual {p0}, resumeTopActivitiesLocked()Z

    goto/16 :goto_6
.end method

.method public multiWindowSettingChanged(Z)V
    .registers 15
    .param p1, "value"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 6184
    if-nez p1, :cond_83

    .line 6185
    iget-object v11, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .local v2, "displayNdx":I
    :goto_c
    if-ltz v2, :cond_80

    .line 6186
    iget-object v11, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 6187
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    new-instance v7, Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6188
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_21
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 6189
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 6190
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_21

    .line 6193
    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->isMultiWindowStack()Z

    move-result v11

    if-eqz v11, :cond_21

    .line 6196
    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v11

    if-nez v11, :cond_21

    .line 6199
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-direct {p0, v7}, getHomeIndex(Ljava/util/ArrayList;)I

    move-result v12

    if-le v11, v12, :cond_78

    move v8, v9

    .line 6201
    .local v8, "toTop":Z
    :goto_4e
    iget v11, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v10, v11}, getStack(II)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 6202
    .local v4, "normalStack":Lcom/android/server/am/ActivityStack;
    const/4 v5, -0x1

    .line 6203
    .local v5, "normalStackId":I
    if-nez v4, :cond_7a

    .line 6204
    invoke-virtual {p0}, getNextStackId()I

    move-result v11

    iget v12, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {p0, v11, v12, v10}, createStackOnDisplay(III)I

    move-result v5

    .line 6208
    :goto_61
    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v11, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 6209
    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v12, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v11, v6, v12}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 6210
    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v11, v1, v10, v9}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 6211
    iget v11, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v11, v5, v8, v10}, moveTaskToStack(IIZZ)V

    goto :goto_21

    .end local v4    # "normalStack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "normalStackId":I
    .end local v8    # "toTop":Z
    :cond_78
    move v8, v10

    .line 6199
    goto :goto_4e

    .line 6206
    .restart local v4    # "normalStack":Lcom/android/server/am/ActivityStack;
    .restart local v5    # "normalStackId":I
    .restart local v8    # "toTop":Z
    :cond_7a
    iget v5, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_61

    .line 6185
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "normalStack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "normalStackId":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v8    # "toTop":Z
    :cond_7d
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 6214
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_80
    invoke-virtual {p0}, resumeTopActivitiesLocked()Z

    .line 6216
    .end local v2    # "displayNdx":I
    :cond_83
    return-void
.end method

.method notifyActivityDrawnForKeyguard()V
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->notifyActivityDrawnForKeyguard()V

    .line 503
    return-void
.end method

.method final notifyGlobalMultiWindowStatusChangedLocked()V
    .registers 13

    .prologue
    .line 5941
    const/4 v1, 0x0

    .line 5942
    .local v1, "hasMultiWindowStack":Z
    const/4 v2, 0x0

    .line 5943
    .local v2, "hasRunningCascadeApp":Z
    const/4 v3, 0x0

    .line 5945
    .local v3, "hasRunningSplitApp":Z
    iget-object v10, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 5946
    .local v6, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_a
    if-ge v0, v6, :cond_55

    .line 5947
    iget-object v10, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v8, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 5948
    .local v8, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStack;

    .line 5949
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v9, 0x0

    .line 5950
    .local v9, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v7}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-eqz v9, :cond_1a

    .line 5951
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    if-eqz v10, :cond_1a

    .line 5952
    const/4 v1, 0x1

    .line 5953
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_47

    .line 5954
    const/4 v2, 0x1

    goto :goto_1a

    .line 5955
    :cond_47
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1a

    .line 5956
    const/4 v3, 0x1

    goto :goto_1a

    .line 5946
    .end local v7    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v9    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 5963
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_55
    iget-boolean v10, p0, mHasMultiWindowStack:Z

    if-ne v1, v10, :cond_61

    iget-boolean v10, p0, mHasRunningCascadeApp:Z

    if-ne v2, v10, :cond_61

    iget-boolean v10, p0, mHasRunningSplitApp:Z

    if-eq v3, v10, :cond_8e

    .line 5965
    :cond_61
    const-string/jumbo v11, "sys.multiwindow.running"

    if-eqz v1, :cond_8f

    const-string v10, "1"

    :goto_68
    invoke-static {v11, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5967
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5968
    .local v5, "multiWindowModeIntent":Landroid/content/Intent;
    const-string v10, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    invoke-virtual {v5, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5969
    const-string v10, "com.sec.android.extra.MULTIWINDOW_FREESTYLE"

    invoke-virtual {v5, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5970
    const-string v10, "com.sec.android.extra.MULTIWINDOW_SPLIT"

    invoke-virtual {v5, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5971
    iget-object v10, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 5973
    iput-boolean v1, p0, mHasMultiWindowStack:Z

    .line 5974
    iput-boolean v2, p0, mHasRunningCascadeApp:Z

    .line 5975
    iput-boolean v3, p0, mHasRunningSplitApp:Z

    .line 5977
    .end local v5    # "multiWindowModeIntent":Landroid/content/Intent;
    :cond_8e
    return-void

    .line 5965
    :cond_8f
    const-string v10, "0"

    goto :goto_68
.end method

.method public notifyMinimizeMultiWindow(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 6168
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 6169
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_d

    .line 6170
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStack;->onNotifyMinimizeMultiWindow(Lcom/android/server/am/ActivityRecord;)V

    .line 6172
    :cond_d
    return-void
.end method

.method public notifyResizeStack()V
    .registers 16

    .prologue
    .line 5980
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 5981
    :try_start_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5982
    .local v7, "taskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 5983
    .local v4, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_f
    if-ge v0, v4, :cond_65

    .line 5984
    iget-object v10, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 5985
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 5986
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isNormalAppStack()Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 5987
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 5988
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_39
    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 5989
    .local v8, "taskRecord":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    if-eqz v10, :cond_39

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v12, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v10, v12, :cond_39

    .line 5990
    iget v10, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 6002
    .end local v0    # "displayNdx":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "numDisplays":I
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v7    # "taskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "taskRecord":Lcom/android/server/am/TaskRecord;
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :catchall_5f
    move-exception v10

    monitor-exit v11
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    throw v10

    .line 5983
    .restart local v0    # "displayNdx":I
    .restart local v4    # "numDisplays":I
    .restart local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v7    # "taskIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 5996
    .end local v6    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_66
    :try_start_66
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_8a

    .line 5997
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v10}, anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .line 5998
    .restart local v8    # "taskRecord":Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_87

    .line 5999
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v10, v12, v13, v14}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 5996
    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 6002
    .end local v8    # "taskRecord":Lcom/android/server/am/TaskRecord;
    :cond_8a
    monitor-exit v11
    :try_end_8b
    .catchall {:try_start_66 .. :try_end_8b} :catchall_5f

    .line 6003
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 4734
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display added displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4735
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4736
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 4746
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display changed displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4747
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4748
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 4740
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display removed displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4741
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4742
    return-void
.end method

.method pauseBackStacks(ZZZ)Z
    .registers 10
    .param p1, "userLeaving"    # Z
    .param p2, "resuming"    # Z
    .param p3, "dontWait"    # Z

    .prologue
    .line 925
    const/4 v1, 0x0

    .line 926
    .local v1, "someActivityPaused":Z
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_9
    if-ltz v0, :cond_39

    .line 927
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 928
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1b
    if-ltz v3, :cond_36

    .line 929
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 930
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-nez v5, :cond_33

    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_33

    .line 933
    const/4 v5, 0x0

    invoke-virtual {v2, p1, v5, p2, p3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    move-result v5

    or-int/2addr v1, v5

    .line 928
    :cond_33
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 926
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 938
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_39
    return v1
.end method

.method pauseChildStacks(Lcom/android/server/am/ActivityRecord;ZZZZ)V
    .registers 11
    .param p1, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "userLeaving"    # Z
    .param p3, "uiSleeping"    # Z
    .param p4, "resuming"    # Z
    .param p5, "dontWait"    # Z

    .prologue
    .line 983
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_35

    .line 984
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 985
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_1a
    if-ltz v2, :cond_32

    .line 986
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 987
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_2f

    iget-object v4, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v4, p1, :cond_2f

    .line 989
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    .line 985
    :cond_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 983
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 993
    .end local v2    # "stackNdx":I
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_35
    return-void
.end method

.method final processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;
    .registers 10
    .param p1, "remove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 4421
    iget-object v5, p0, mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4422
    .local v0, "N":I
    if-gtz v0, :cond_b

    const/4 v4, 0x0

    .line 4457
    :cond_a
    return-object v4

    .line 4424
    :cond_b
    const/4 v4, 0x0

    .line 4426
    .local v4, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p0}, allResumedActivitiesVisible()Z

    move-result v2

    .line 4427
    .local v2, "nowVisible":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_a

    .line 4428
    iget-object v5, p0, mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 4432
    .local v3, "s":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_33

    if-eqz v2, :cond_33

    .line 4433
    iget-object v5, p0, mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4434
    iput-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 4435
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_33

    .line 4442
    iget-object v5, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 4445
    :cond_33
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_3f

    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v5

    if-eqz v5, :cond_54

    :cond_3f
    if-eqz p1, :cond_54

    .line 4447
    if-nez v4, :cond_48

    .line 4448
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4450
    .restart local v4    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_48
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4451
    iget-object v5, p0, mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4452
    add-int/lit8 v0, v0, -0x1

    .line 4453
    add-int/lit8 v1, v1, -0x1

    .line 4427
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .registers 41
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "andResume"    # Z
    .param p4, "checkConfig"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1490
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1504
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 1512
    if-eqz p4, :cond_3e

    .line 1513
    move-object/from16 v0, p0

    iget-object v5, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_19a

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_2d
    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v26

    .line 1516
    .local v26, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 1519
    .end local v26    # "config":Landroid/content/res/Configuration;
    :cond_3e
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1520
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 1521
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 1522
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    .line 1525
    move-object/from16 v0, p0

    iget-boolean v4, v0, SAMP_ENABLE:Z

    if-eqz v4, :cond_77

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v4, :cond_77

    .line 1526
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v6, v0, v7}, Landroid/app/usage/UsageStatsManagerInternal;->reportPpmEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1532
    :cond_77
    const-string v4, "com.sec.android.app.camera/.Camera"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d5

    const-string v4, "com.sec.android.app.ocr/.OCR"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d5

    const-string v4, "com.cyworld.camera/com.cyworld.cymera.CameraMain"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10e

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10e

    .line 1539
    :cond_d5
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "realStartActivityLocked aggressive kill try "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    const-string/jumbo v4, "persist.sys.kill_support"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1544
    .local v29, "mSupportAggrKill":I
    if-lez v29, :cond_10e

    .line 1545
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string v6, "camera-start"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->killProcessesForMemoryLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1549
    .end local v29    # "mSupportAggrKill":I
    :cond_10e
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v28

    .line 1550
    .local v28, "idx":I
    if-gez v28, :cond_123

    .line 1551
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1553
    :cond_123
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 1556
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v35, v0

    .line 1558
    .local v35, "stack":Lcom/android/server/am/ActivityStack;
    :try_start_13d
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v4, :cond_19d

    .line 1559
    new-instance v4, Landroid/os/RemoteException;

    invoke-direct {v4}, Landroid/os/RemoteException;-><init>()V

    throw v4
    :try_end_149
    .catch Landroid/os/RemoteException; {:try_start_13d .. :try_end_149} :catch_149

    .line 1649
    :catch_149
    move-exception v27

    .line 1650
    .local v27, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v4, :cond_41a

    .line 1653
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second failure launching "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", giving up"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1656
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1657
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "2nd-crash"

    const/16 v25, 0x0

    move-object/from16 v20, v35

    invoke-virtual/range {v20 .. v25}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1659
    const/4 v4, 0x0

    .line 1701
    .end local v27    # "e":Landroid/os/RemoteException;
    :goto_199
    return v4

    .line 1513
    .end local v28    # "idx":I
    .end local v35    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_19a
    const/4 v4, 0x0

    goto/16 :goto_2d

    .line 1561
    .restart local v28    # "idx":I
    .restart local v35    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_19d
    const/4 v15, 0x0

    .line 1562
    .local v15, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/16 v16, 0x0

    .line 1563
    .local v16, "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_1ac

    .line 1564
    :try_start_1a2
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1565
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 1571
    :cond_1ac
    if-eqz p3, :cond_1e0

    .line 1572
    const/16 v4, 0x7536

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1576
    :cond_1e0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v4

    if-eqz v4, :cond_201

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v4

    if-eqz v4, :cond_201

    .line 1578
    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v5, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 1580
    :cond_201
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 1581
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1582
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 1583
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1584
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 1585
    const/16 v32, 0x0

    .line 1586
    .local v32, "profileFile":Ljava/lang/String;
    const/16 v31, 0x0

    .line 1587
    .local v31, "profileFd":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v4, :cond_27f

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27f

    .line 1588
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_267

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-ne v4, v0, :cond_27f

    .line 1589
    :cond_267
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 1590
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileFile:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 1591
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileFd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v31, v0

    .line 1594
    :cond_27f
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 1595
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z
    :try_end_289
    .catch Landroid/os/RemoteException; {:try_start_1a2 .. :try_end_289} :catch_149

    .line 1596
    if-eqz v31, :cond_28f

    .line 1598
    :try_start_28b
    invoke-virtual/range {v31 .. v31}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_28e
    .catch Ljava/io/IOException; {:try_start_28b .. :try_end_28e} :catch_408
    .catch Landroid/os/RemoteException; {:try_start_28b .. :try_end_28e} :catch_149

    move-result-object v31

    .line 1610
    :cond_28f
    :goto_28f
    if-eqz v32, :cond_412

    :try_start_291
    new-instance v19, Landroid/app/ProfilerInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mSamplingInterval:I

    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mAutoStopProfiler:Z

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/app/ProfilerInfo;-><init>(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;IZ)V

    .line 1613
    .local v19, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_2a8
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1615
    new-instance v9, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v9, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1616
    .local v9, "tmpConfig":Landroid/content/res/Configuration;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v4, :cond_2ed

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->isScaledPid(I)Z

    move-result v4

    if-eqz v4, :cond_2ed

    .line 1617
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDssHelper:Landroid/os/DssHelper;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/DssHelper;->getScalingFactor(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v34

    .line 1618
    .local v34, "scalfac":Ljava/lang/Double;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Double;->floatValue()F

    move-result v33

    .line 1619
    .local v33, "resolutionFactorf":F
    iget v4, v9, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v4, v4

    mul-float v4, v4, v33

    float-to-int v4, v4

    iput v4, v9, Landroid/content/res/Configuration;->densityDpi:I

    .line 1622
    .end local v33    # "resolutionFactorf":F
    .end local v34    # "scalfac":Ljava/lang/Double;
    :cond_2ed
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    if-nez p3, :cond_416

    const/16 v17, 0x1

    :goto_320
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    invoke-interface/range {v4 .. v20}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1629
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3af

    .line 1634
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3af

    .line 1635
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_38a

    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-eq v4, v0, :cond_38a

    .line 1637
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting new heavy weight process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " when already running "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    :cond_38a
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 1642
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v30

    .line 1644
    .local v30, "msg":Landroid/os/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1645
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3af
    .catch Landroid/os/RemoteException; {:try_start_291 .. :try_end_3af} :catch_149

    .line 1668
    .end local v30    # "msg":Landroid/os/Message;
    :cond_3af
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 1669
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_3de

    .line 1670
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " being launched, but already in LRU list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :cond_3de
    if-eqz p3, :cond_424

    .line 1677
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1693
    :goto_3e7
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_3f8

    .line 1694
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    .line 1699
    :cond_3f8
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 1701
    const/4 v4, 0x1

    goto/16 :goto_199

    .line 1599
    .end local v9    # "tmpConfig":Landroid/content/res/Configuration;
    .end local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    :catch_408
    move-exception v27

    .line 1600
    .local v27, "e":Ljava/io/IOException;
    if-eqz v31, :cond_28f

    .line 1602
    :try_start_40b
    invoke-virtual/range {v31 .. v31}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_40e
    .catch Ljava/io/IOException; {:try_start_40b .. :try_end_40e} :catch_430
    .catch Landroid/os/RemoteException; {:try_start_40b .. :try_end_40e} :catch_149

    .line 1605
    :goto_40e
    const/16 v31, 0x0

    goto/16 :goto_28f

    .line 1610
    .end local v27    # "e":Ljava/io/IOException;
    :cond_412
    const/16 v19, 0x0

    goto/16 :goto_2a8

    .line 1622
    .restart local v9    # "tmpConfig":Landroid/content/res/Configuration;
    .restart local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_416
    const/16 v17, 0x0

    goto/16 :goto_320

    .line 1664
    .end local v9    # "tmpConfig":Landroid/content/res/Configuration;
    .end local v15    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v16    # "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v31    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v32    # "profileFile":Ljava/lang/String;
    .local v27, "e":Landroid/os/RemoteException;
    :cond_41a
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1665
    throw v27

    .line 1685
    .end local v27    # "e":Landroid/os/RemoteException;
    .restart local v9    # "tmpConfig":Landroid/content/res/Configuration;
    .restart local v15    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v16    # "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v31    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .restart local v32    # "profileFile":Ljava/lang/String;
    :cond_424
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1686
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    goto :goto_3e7

    .line 1603
    .end local v9    # "tmpConfig":Landroid/content/res/Configuration;
    .end local v19    # "profilerInfo":Landroid/app/ProfilerInfo;
    .local v27, "e":Ljava/io/IOException;
    :catch_430
    move-exception v4

    goto :goto_40e
.end method

.method releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 14
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 4313
    const/4 v1, 0x0

    .line 4315
    .local v1, "firstTask":Lcom/android/server/am/TaskRecord;
    const/4 v8, 0x0

    .line 4317
    .local v8, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_68

    .line 4318
    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4322
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_23

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_23

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_24

    .line 4367
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_23
    return-void

    .line 4329
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_24
    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v9, :cond_48

    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v9, :cond_48

    iget-boolean v9, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v9, :cond_48

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_48

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_48

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_48

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_4b

    .line 4317
    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4335
    :cond_4b
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_48

    .line 4338
    if-nez v1, :cond_54

    .line 4339
    iget-object v1, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    goto :goto_48

    .line 4340
    :cond_54
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v1, v9, :cond_48

    .line 4341
    if-nez v8, :cond_62

    .line 4342
    new-instance v8, Landroid/util/ArraySet;

    .end local v8    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 4343
    .restart local v8    # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4345
    :cond_62
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 4349
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_68
    if-eqz v8, :cond_23

    .line 4355
    iget-object v9, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 4356
    .local v3, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_71
    if-ge v0, v3, :cond_23

    .line 4357
    iget-object v9, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4359
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    const/4 v6, 0x0

    .local v6, "stackNdx":I
    :goto_7e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_93

    .line 4360
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    .line 4362
    .local v5, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v5, p1, v8, p2}, Lcom/android/server/am/ActivityStack;->releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I

    move-result v9

    if-gtz v9, :cond_23

    .line 4359
    add-int/lit8 v6, v6, 0x1

    goto :goto_7e

    .line 4356
    .end local v5    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_93
    add-int/lit8 v0, v0, 0x1

    goto :goto_71
.end method

.method removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "parentActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3568
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    .line 3569
    .local v0, "childStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "containerNdx":I
    :goto_8
    if-ltz v2, :cond_16

    .line 3570
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 3573
    .local v1, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->release()V

    .line 3569
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 3575
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_16
    return-void
.end method

.method removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V
    .registers 5
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 3119
    iget-object v2, p0, mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "palNdx":I
    :goto_8
    if-ltz v1, :cond_1e

    .line 3120
    iget-object v2, p0, mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    .line 3121
    .local v0, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->stack:Lcom/android/server/am/ActivityStack;

    if-ne v2, p1, :cond_1b

    .line 3122
    iget-object v2, p0, mPendingActivityLaunches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3119
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 3125
    .end local v0    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1e
    return-void
.end method

.method removeSleepTimeouts()V
    .registers 3

    .prologue
    .line 4723
    const/4 v0, 0x0

    iput-boolean v0, p0, mSleepTimeout:Z

    .line 4724
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 4725
    return-void
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 4713
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4714
    return-void
.end method

.method removeUserLocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 3301
    iget-object v0, p0, mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3302
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .registers 14
    .param p1, "timeout"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "thisTime"    # J
    .param p5, "totalTime"    # J

    .prologue
    .line 1021
    const/4 v0, 0x0

    .line 1022
    .local v0, "changed":Z
    iget-object v3, p0, mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_32

    .line 1023
    iget-object v3, p0, mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager$WaitResult;

    .line 1024
    .local v2, "w":Landroid/app/IActivityManager$WaitResult;
    iget-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_2f

    .line 1025
    const/4 v0, 0x1

    .line 1026
    iput-boolean p1, v2, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 1027
    if-eqz p2, :cond_2b

    .line 1028
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 1030
    :cond_2b
    iput-wide p3, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 1031
    iput-wide p5, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 1022
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1034
    .end local v2    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_32
    if-eqz v0, :cond_39

    .line 1035
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1037
    :cond_39
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 996
    invoke-virtual {p0, p1}, sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 997
    invoke-virtual {p0}, notifyActivityDrawnForKeyguard()V

    .line 998
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4102
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 4103
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v0}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4104
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 4107
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskStarted(Lcom/android/server/am/ActivityRecord;)V

    .line 4111
    :cond_18
    invoke-virtual {p0}, allResumedActivitiesComplete()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 4112
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 4113
    iget-object v2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 4116
    :goto_27
    return v1

    :cond_28
    move v1, v2

    goto :goto_27
.end method

.method requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4131
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v7, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 4132
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_b

    move v4, v5

    .line 4179
    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_a
    return v4

    .line 4137
    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_b
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    move-result v0

    .line 4141
    .local v0, "isVisible":Z
    invoke-virtual {p0}, topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 4142
    .local v3, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_19

    if-eq v3, p1, :cond_19

    if-ne p2, v0, :cond_22

    .line 4144
    :cond_19
    if-eqz p2, :cond_20

    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1b
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    move v4, v6

    .line 4145
    goto :goto_a

    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_20
    move-object p1, v4

    .line 4144
    goto :goto_1b

    .line 4149
    :cond_22
    if-eqz p2, :cond_2a

    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v7, :cond_2a

    move v4, v5

    .line 4154
    goto :goto_a

    .line 4155
    :cond_2a
    if-nez p2, :cond_34

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eq v7, p1, :cond_34

    move v4, v5

    .line 4161
    goto :goto_a

    .line 4164
    :cond_34
    if-eqz p2, :cond_37

    move-object v4, p1

    :cond_37
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 4165
    if-nez p2, :cond_49

    .line 4167
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->findNextTranslucentActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 4168
    .local v1, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_49

    .line 4169
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->convertFromTranslucent(Landroid/os/IBinder;)Z

    .line 4172
    .end local v1    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_49
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_5c

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_5c

    .line 4175
    :try_start_53
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v5, p2}, Landroid/app/IApplicationThread;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5c} :catch_5e

    :cond_5c
    :goto_5c
    move v4, v6

    .line 4179
    goto :goto_a

    .line 4176
    :catch_5e
    move-exception v4

    goto :goto_5c
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "startFlags"    # I
    .param p4, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p5, "userId"    # I

    .prologue
    .line 1164
    const/4 v2, 0x0

    .line 1169
    .local v2, "rInfo":Landroid/content/pm/ResolveInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const v4, 0x10480

    invoke-interface {v3, p1, p2, v4, p5}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1174
    if-eqz v2, :cond_7a

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_7c

    .line 1189
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_10
    if-eqz v0, :cond_79

    .line 1194
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1198
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.android.internal.app.ForwardIntentToManagedProfile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    if-eqz v2, :cond_33

    .line 1199
    const-string v3, "crossProfileTargetUserId"

    iget v4, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1204
    :cond_33
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_4b

    .line 1205
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v4, "system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 1206
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1210
    :cond_4b
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_63

    .line 1211
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v4, "system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 1212
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->setOpenGlTraceApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 1216
    :cond_63
    if-eqz p4, :cond_79

    .line 1217
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v4, "system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    .line 1218
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p4}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;)V

    .line 1222
    :cond_79
    return-object v0

    .line 1174
    .end local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_7a
    const/4 v0, 0x0

    goto :goto_10

    .line 1185
    :catch_7c
    move-exception v1

    .line 1186
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .restart local v0    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_10
.end method

.method resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;)Z
    .registers 7
    .param p1, "homeStackTaskType"    # I
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 720
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v2, :cond_f

    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_f

    .line 740
    :goto_e
    return v1

    .line 725
    :cond_f
    const/4 v2, 0x2

    if-ne p1, v2, :cond_18

    .line 726
    iget-object v2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    goto :goto_e

    .line 729
    :cond_18
    invoke-virtual {p0, p1}, moveHomeStackTaskToTop(I)V

    .line 730
    if-eqz p2, :cond_22

    .line 731
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 734
    :cond_22
    iget-object v1, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 736
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 737
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 738
    iget-object v1, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v1, p2, v3}, resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v1

    goto :goto_e

    .line 740
    :cond_3c
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, mCurrentUser:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(I)Z

    move-result v1

    goto :goto_e
.end method

.method resumeTopActivitiesLocked()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 3357
    invoke-virtual {p0, v0, v0, v0}, resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .registers 12
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "targetOptions"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 3363
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v6, p0, mPendingResumeTopActivityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3366
    if-nez p1, :cond_10

    .line 3367
    invoke-virtual {p0}, getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 3370
    :cond_10
    const/4 v1, 0x0

    .line 3373
    .local v1, "result":Z
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5, p1}, Lcom/android/server/am/MultiWindowPolicy;->arrangeMultiWindowStyleOnResumeTopActivities(Lcom/android/server/am/ActivityStack;)V

    .line 3376
    invoke-virtual {p0, p1}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 3377
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v1

    .line 3379
    :cond_22
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_2a
    if-ltz v0, :cond_5e

    .line 3380
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3381
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_3c
    if-ltz v3, :cond_5b

    .line 3382
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3383
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-ne v2, p1, :cond_49

    .line 3381
    :cond_46
    :goto_46
    add-int/lit8 v3, v3, -0x1

    goto :goto_3c

    .line 3389
    :cond_49
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5, v2}, Lcom/android/server/am/MultiWindowPolicy;->arrangeMultiWindowStyleOnResumeTopActivities(Lcom/android/server/am/ActivityStack;)V

    .line 3392
    invoke-virtual {p0, v2}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 3393
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_46

    .line 3379
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_5b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    .line 3399
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_5e
    invoke-virtual {p0}, notifyGlobalMultiWindowStatusChangedLocked()V

    .line 3400
    invoke-virtual {p0, v7}, isIsolated(I)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 3401
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    const/4 v6, 0x1

    invoke-virtual {v5, v7, v6}, Lcom/android/server/am/MultiWindowPolicy;->resize2Split(IZ)V

    .line 3407
    :goto_6f
    return v1

    .line 3403
    :cond_70
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5, v7, v7}, Lcom/android/server/am/MultiWindowPolicy;->resize2Split(IZ)V

    goto :goto_6f
.end method

.method resumedAppLocked()Lcom/android/server/am/ActivityRecord;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 793
    invoke-virtual {p0}, getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 794
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_9

    move-object v1, v3

    .line 813
    :cond_8
    :goto_8
    return-object v1

    .line 797
    :cond_9
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 798
    .local v1, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_11

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_8

    .line 799
    :cond_11
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 802
    iget-object v4, v2, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 803
    .local v0, "N":I
    if-lez v0, :cond_25

    .line 805
    iget-object v4, v2, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 809
    .restart local v1    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_25
    if-eqz v1, :cond_2b

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_8

    .line 810
    :cond_2b
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_8
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 4301
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_2a

    .line 4302
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4303
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4304
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_19
    if-ge v3, v1, :cond_27

    .line 4305
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 4306
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4304
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 4301
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4309
    .end local v1    # "numStacks":I
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_2a
    return-void
.end method

.method final scheduleIdleLocked()V
    .registers 3

    .prologue
    .line 4708
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4709
    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 4703
    iget-object v1, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4704
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4705
    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 4192
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4193
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .registers 3

    .prologue
    const/16 v1, 0x66

    .line 4717
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 4718
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 4720
    :cond_f
    return-void
.end method

.method final scheduleSleepTimeout()V
    .registers 5

    .prologue
    .line 4728
    invoke-virtual {p0}, removeSleepTimeouts()V

    .line 4729
    iget-object v0, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4730
    return-void
.end method

.method sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1001
    const/4 v0, 0x0

    .line 1002
    .local v0, "changed":Z
    iget-object v3, p0, mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_3c

    .line 1003
    iget-object v3, p0, mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager$WaitResult;

    .line 1004
    .local v2, "w":Landroid/app/IActivityManager$WaitResult;
    iget-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_39

    .line 1005
    const/4 v0, 0x1

    .line 1006
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 1007
    if-eqz p1, :cond_2c

    .line 1008
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 1010
    :cond_2c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 1011
    iget-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iput-wide v4, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 1002
    :cond_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1014
    .end local v2    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_3c
    if-eqz v0, :cond_43

    .line 1015
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1017
    :cond_43
    return-void
.end method

.method setFocusedStack(Lcom/android/server/am/ActivityRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2180
    if-eqz p1, :cond_32

    .line 2181
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2182
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v5

    if-nez v5, :cond_33

    move v0, v3

    .line 2183
    .local v0, "isHomeActivity":Z
    :goto_d
    if-nez v0, :cond_18

    if-eqz v2, :cond_18

    .line 2184
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v5

    if-nez v5, :cond_35

    move v0, v3

    .line 2186
    :cond_18
    :goto_18
    if-nez v0, :cond_2b

    if-eqz v2, :cond_2b

    .line 2187
    iget-object v5, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v5, v5, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 2188
    .local v1, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v5

    if-eqz v5, :cond_37

    move v0, v3

    .line 2192
    .end local v1    # "parent":Lcom/android/server/am/ActivityRecord;
    :cond_2b
    :goto_2b
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v4, v3}, moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 2198
    .end local v0    # "isHomeActivity":Z
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_32
    return-void

    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_33
    move v0, v4

    .line 2182
    goto :goto_d

    .restart local v0    # "isHomeActivity":Z
    :cond_35
    move v0, v4

    .line 2184
    goto :goto_18

    .restart local v1    # "parent":Lcom/android/server/am/ActivityRecord;
    :cond_37
    move v0, v4

    .line 2188
    goto :goto_2b
.end method

.method setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;Z)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "isLocked"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 4839
    if-nez p1, :cond_1e

    .line 4841
    iget-object v1, p0, mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_1d

    .line 4842
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4843
    .local v0, "lockTaskMsg":Landroid/os/Message;
    iget-object v1, p0, mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4844
    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4845
    iput-object v3, p0, mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    .line 4846
    iget-object v1, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4864
    .end local v0    # "lockTaskMsg":Landroid/os/Message;
    :cond_1d
    :goto_1d
    return-void

    .line 4850
    :cond_1e
    invoke-virtual {p0, p1}, isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 4851
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "setLockTaskMode: Attempt to start a second Lock Task Mode task."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 4854
    :cond_2d
    iput-object p1, p0, mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    .line 4855
    invoke-virtual {p0, p1, v1, v3}, findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;)V

    .line 4856
    invoke-virtual {p0}, resumeTopActivitiesLocked()Z

    .line 4858
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4859
    .restart local v0    # "lockTaskMsg":Landroid/os/Message;
    iget-object v2, p0, mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4860
    iget-object v2, p0, mLockTaskModeTask:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->userId:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 4861
    const/16 v2, 0x6d

    iput v2, v0, Landroid/os/Message;->what:I

    .line 4862
    if-nez p2, :cond_54

    const/4 v1, 0x1

    :cond_54
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 4863
    iget-object v1, p0, mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1d
.end method

.method setNextTaskId(I)V
    .registers 3
    .param p1, "taskId"    # I

    .prologue
    .line 777
    iget v0, p0, mCurTaskId:I

    if-le p1, v0, :cond_6

    .line 778
    iput p1, p0, mCurTaskId:I

    .line 780
    :cond_6
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 9
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 474
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 475
    :try_start_3
    iput-object p1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 477
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v6, "display"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 479
    iget-object v4, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 481
    iget-object v4, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    .line 482
    .local v3, "displays":[Landroid/view/Display;
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "displayNdx":I
    :goto_22
    if-ltz v2, :cond_46

    .line 483
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 484
    .local v1, "displayId":I
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 485
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    if-nez v4, :cond_3e

    .line 486
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "Default Display does not exist"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 497
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "displayId":I
    .end local v2    # "displayNdx":I
    .end local v3    # "displays":[Landroid/view/Display;
    :catchall_3b
    move-exception v4

    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v4

    .line 488
    .restart local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .restart local v1    # "displayId":I
    .restart local v2    # "displayNdx":I
    .restart local v3    # "displays":[Landroid/view/Display;
    :cond_3e
    :try_start_3e
    iget-object v4, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    .line 490
    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .end local v1    # "displayId":I
    :cond_46
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, createStackOnDisplay(II)I

    .line 491
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iput-object v4, p0, mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 493
    const-class v4, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManagerInternal;

    iput-object v4, p0, mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 496
    invoke-direct {p0}, isLeanbackOnlyDevice()Z

    move-result v4

    iput-boolean v4, p0, mLeanbackOnlyDevice:Z

    .line 497
    monitor-exit v5
    :try_end_67
    .catchall {:try_start_3e .. :try_end_67} :catchall_3b

    .line 498
    return-void
.end method

.method showLockTaskToast()V
    .registers 3

    .prologue
    .line 4835
    iget-object v0, p0, mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    iget-boolean v1, p0, mLockTaskIsLocked:Z

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskNotify;->showToast(Z)V

    .line 4836
    return-void
.end method

.method shutdownLocked(I)Z
    .registers 16
    .param p1, "timeout"    # I

    .prologue
    .line 3932
    invoke-virtual {p0}, goingToSleepLocked()V

    .line 3934
    const/4 v8, 0x0

    .line 3935
    .local v8, "timedout":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    int-to-long v12, p1

    add-long v2, v10, v12

    .line 3937
    .local v2, "endTime":J
    :goto_b
    const/4 v0, 0x0

    .line 3938
    .local v0, "cantShutdown":Z
    iget-object v9, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "displayNdx":I
    :goto_14
    if-ltz v1, :cond_39

    .line 3939
    iget-object v9, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3940
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "stackNdx":I
    :goto_26
    if-ltz v4, :cond_36

    .line 3941
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v9

    or-int/2addr v0, v9

    .line 3940
    add-int/lit8 v4, v4, -0x1

    goto :goto_26

    .line 3938
    :cond_36
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 3944
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_39
    if-eqz v0, :cond_57

    .line 3945
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v2, v10

    .line 3946
    .local v6, "timeRemaining":J
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-lez v9, :cond_4f

    .line 3948
    :try_start_47
    iget-object v9, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_b

    .line 3949
    :catch_4d
    move-exception v9

    goto :goto_b

    .line 3952
    :cond_4f
    const-string v9, "ActivityManager"

    const-string v10, "Activity manager shutdown timed out"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    const/4 v8, 0x1

    .line 3962
    .end local v6    # "timeRemaining":J
    :cond_57
    const/4 v9, 0x1

    iput-boolean v9, p0, mSleepTimeout:Z

    .line 3963
    invoke-virtual {p0}, checkReadyForSleepLocked()V

    .line 3965
    return v8
.end method

.method final startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .registers 40
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .prologue
    .line 1410
    if-nez p4, :cond_a

    .line 1411
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "intents is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1413
    :cond_a
    if-nez p5, :cond_15

    .line 1414
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "resolvedTypes is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1416
    :cond_15
    move-object/from16 v0, p4

    array-length v2, v0

    move-object/from16 v0, p5

    array-length v4, v0

    if-eq v2, v4, :cond_25

    .line 1417
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "intents are length different than resolvedTypes"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1422
    :cond_25
    if-ltz p2, :cond_4a

    .line 1423
    const/4 v14, -0x1

    .line 1430
    .local v14, "callingPid":I
    :goto_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 1432
    .local v28, "origId":J
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    monitor-enter v30
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_6d

    .line 1433
    const/4 v2, 0x1

    :try_start_34
    new-array v0, v2, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v22, v0

    .line 1434
    .local v22, "outActivity":[Lcom/android/server/am/ActivityRecord;
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_3a
    move-object/from16 v0, p4

    array-length v2, v0

    move/from16 v0, v25

    if-ge v0, v2, :cond_f4

    .line 1435
    aget-object v26, p4, v25
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_6a

    .line 1436
    .local v26, "intent":Landroid/content/Intent;
    if-nez v26, :cond_5a

    move-object/from16 v3, v26

    .line 1434
    .end local v26    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_47
    add-int/lit8 v25, v25, 0x1

    goto :goto_3a

    .line 1424
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v14    # "callingPid":I
    .end local v22    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v25    # "i":I
    .end local v28    # "origId":J
    :cond_4a
    if-nez p1, :cond_55

    .line 1425
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 1426
    .restart local v14    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_28

    .line 1428
    .end local v14    # "callingPid":I
    :cond_55
    const/16 p2, -0x1

    move/from16 v14, p2

    .restart local v14    # "callingPid":I
    goto :goto_28

    .line 1441
    .restart local v22    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v25    # "i":I
    .restart local v26    # "intent":Landroid/content/Intent;
    .restart local v28    # "origId":J
    :cond_5a
    if-eqz v26, :cond_72

    :try_start_5c
    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 1442
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1478
    .end local v22    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v25    # "i":I
    .end local v26    # "intent":Landroid/content/Intent;
    :catchall_6a
    move-exception v2

    monitor-exit v30
    :try_end_6c
    .catchall {:try_start_5c .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw v2
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    .line 1480
    :catchall_6d
    move-exception v2

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1445
    .restart local v22    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v25    # "i":I
    .restart local v26    # "intent":Landroid/content/Intent;
    :cond_72
    :try_start_72
    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_aa

    const/16 v21, 0x1

    .line 1448
    .local v21, "componentSpecified":Z
    :goto_7a
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, v26

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1451
    .end local v26    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    aget-object v4, p5, v25

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 1453
    .local v8, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p8

    invoke-virtual {v2, v8, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 1455
    if-eqz v8, :cond_ad

    iget-object v2, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x10000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_ad

    .line 1458
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1445
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v21    # "componentSpecified":Z
    .restart local v26    # "intent":Landroid/content/Intent;
    :cond_aa
    const/16 v21, 0x0

    goto :goto_7a

    .line 1463
    .end local v26    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v21    # "componentSpecified":Z
    :cond_ad
    if-eqz p7, :cond_e0

    move-object/from16 v0, p4

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_e0

    .line 1464
    move-object/from16 v20, p7

    .line 1468
    .local v20, "theseOptions":Landroid/os/Bundle;
    :goto_ba
    aget-object v7, p5, v25

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v19, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v3

    move-object/from16 v11, p6

    move/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v17, v14

    move/from16 v18, p2

    invoke-virtual/range {v4 .. v24}, startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v27

    .line 1472
    .local v27, "res":I
    if-gez v27, :cond_e3

    .line 1473
    monitor-exit v30
    :try_end_dc
    .catchall {:try_start_72 .. :try_end_dc} :catchall_6a

    .line 1480
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1483
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "theseOptions":Landroid/os/Bundle;
    .end local v21    # "componentSpecified":Z
    .end local v27    # "res":I
    :goto_df
    return v27

    .line 1466
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v21    # "componentSpecified":Z
    :cond_e0
    const/16 v20, 0x0

    .restart local v20    # "theseOptions":Landroid/os/Bundle;
    goto :goto_ba

    .line 1476
    .restart local v27    # "res":I
    :cond_e3
    const/4 v2, 0x0

    :try_start_e4
    aget-object v2, v22, v2

    if-eqz v2, :cond_f1

    const/4 v2, 0x0

    aget-object v2, v22, v2

    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p6, v0

    :goto_ef
    goto/16 :goto_47

    :cond_f1
    const/16 p6, 0x0

    goto :goto_ef

    .line 1478
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "theseOptions":Landroid/os/Bundle;
    .end local v21    # "componentSpecified":Z
    .end local v27    # "res":I
    :cond_f4
    monitor-exit v30
    :try_end_f5
    .catchall {:try_start_e4 .. :try_end_f5} :catchall_6a

    .line 1480
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1483
    const/16 v27, 0x0

    goto :goto_df
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .registers 84
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "resultWho"    # Ljava/lang/String;
    .param p9, "requestCode"    # I
    .param p10, "callingPid"    # I
    .param p11, "callingUid"    # I
    .param p12, "callingPackage"    # Ljava/lang/String;
    .param p13, "realCallingPid"    # I
    .param p14, "realCallingUid"    # I
    .param p15, "startFlags"    # I
    .param p16, "options"    # Landroid/os/Bundle;
    .param p17, "componentSpecified"    # Z
    .param p18, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p19, "container"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p20, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 1769
    const/16 v51, 0x0

    .line 1771
    .local v51, "err":I
    const/16 v27, 0x0

    .line 1772
    .local v27, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_20

    .line 1773
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v27

    .line 1774
    if-eqz v27, :cond_52

    .line 1775
    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p10, v0

    .line 1776
    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p11, v0

    .line 1785
    :cond_20
    :goto_20
    const/4 v11, 0x0

    .line 1786
    .local v11, "cmp":Landroid/content/ComponentName;
    const-string v12, ""

    .line 1790
    .local v12, "className":Ljava/lang/String;
    :try_start_23
    new-instance v56, Landroid/content/Intent;

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1791
    .local v56, "mEdmIntent":Landroid/content/Intent;
    invoke-virtual/range {v56 .. v56}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 1792
    const-string v6, ":android:show_fragment"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1793
    if-nez v12, :cond_40

    if-eqz v11, :cond_40

    .line 1794
    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3f} :catch_89

    move-result-object v12

    .end local v56    # "mEdmIntent":Landroid/content/Intent;
    :cond_40
    :goto_40
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move/from16 v9, p11

    move-object/from16 v10, p16

    .line 1800
    invoke-direct/range {v6 .. v12}, checkStartActivityAllowedByEDM(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;ILandroid/os/Bundle;Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8e

    .line 1802
    const/4 v6, 0x0

    .line 2104
    :goto_51
    return v6

    .line 1778
    .end local v11    # "cmp":Landroid/content/ComponentName;
    .end local v12    # "className":Ljava/lang/String;
    :cond_52
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find app for caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p10

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") when starting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    const/16 v51, -0x4

    goto :goto_20

    .line 1796
    .restart local v11    # "cmp":Landroid/content/ComponentName;
    .restart local v12    # "className":Ljava/lang/String;
    :catch_89
    move-exception v50

    .line 1797
    .local v50, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "unknown"

    goto :goto_40

    .line 1806
    .end local v50    # "e":Ljava/lang/Exception;
    :cond_8e
    if-nez v51, :cond_ea

    .line 1807
    if-eqz p4, :cond_16c

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v61

    .line 1808
    .local v61, "userId":I
    :goto_9c
    const-string v7, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "START u"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v61

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " {"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9, v10, v14}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "} from uid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " on display "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p19, :cond_178

    move-object/from16 v0, p0

    iget-object v6, v0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v6, :cond_170

    const/4 v6, 0x0

    :goto_df
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    .end local v61    # "userId":I
    :cond_ea
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_EnableItsOn"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13c

    .line 1818
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v53

    .line 1819
    .local v53, "intentData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v54

    .line 1820
    .local v54, "intentType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v52

    .line 1821
    .local v52, "intentAction":Ljava/lang/String;
    if-eqz v52, :cond_13c

    const-string v6, "android.intent.action.VIEW"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13c

    if-eqz v54, :cond_13c

    const-string/jumbo v6, "video"

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_125

    const-string v6, "audio"

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13c

    :cond_125
    if-eqz v53, :cond_13c

    const-string v6, "http"

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13c

    .line 1824
    invoke-static {}, Lcom/itsoninc/android/ItsOnOemApi;->getInstance()Lcom/itsoninc/android/ItsOnOemApi;

    move-result-object v6

    move-object/from16 v0, v53

    move/from16 v1, p11

    invoke-virtual {v6, v0, v1}, Lcom/itsoninc/android/ItsOnOemApi;->registerActivityMapping(Ljava/lang/String;I)V

    .line 1829
    .end local v52    # "intentAction":Ljava/lang/String;
    .end local v53    # "intentData":Ljava/lang/String;
    .end local v54    # "intentType":Ljava/lang/String;
    :cond_13c
    const/16 v41, 0x0

    .line 1830
    .local v41, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v15, 0x0

    .line 1831
    .local v15, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz p7, :cond_155

    .line 1832
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v41

    .line 1835
    if-eqz v41, :cond_155

    .line 1836
    if-ltz p9, :cond_155

    move-object/from16 v0, v41

    iget-boolean v6, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_155

    .line 1837
    move-object/from16 v15, v41

    .line 1841
    :cond_155
    if-nez v15, :cond_189

    const/4 v13, 0x0

    .line 1843
    .local v13, "resultStack":Lcom/android/server/am/ActivityStack;
    :goto_158
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v55

    .line 1845
    .local v55, "launchFlags":I
    const/high16 v6, 0x2000000

    and-int v6, v6, v55

    if-eqz v6, :cond_1bc

    if-eqz v41, :cond_1bc

    .line 1848
    if-ltz p9, :cond_18e

    .line 1849
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1850
    const/4 v6, -0x3

    goto/16 :goto_51

    .line 1807
    .end local v13    # "resultStack":Lcom/android/server/am/ActivityStack;
    .end local v15    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v41    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .end local v55    # "launchFlags":I
    :cond_16c
    const/16 v61, 0x0

    goto/16 :goto_9c

    .line 1808
    .restart local v61    # "userId":I
    :cond_170
    move-object/from16 v0, p0

    iget-object v6, v0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    goto/16 :goto_df

    :cond_178
    move-object/from16 v0, p19

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v6, :cond_181

    const/4 v6, 0x0

    goto/16 :goto_df

    :cond_181
    move-object/from16 v0, p19

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v6, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    goto/16 :goto_df

    .line 1841
    .end local v61    # "userId":I
    .restart local v15    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v41    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_189
    iget-object v6, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v13, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    goto :goto_158

    .line 1852
    .restart local v13    # "resultStack":Lcom/android/server/am/ActivityStack;
    .restart local v55    # "launchFlags":I
    :cond_18e
    move-object/from16 v0, v41

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1853
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p8, v0

    .line 1854
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p9, v0

    .line 1855
    const/4 v6, 0x0

    move-object/from16 v0, v41

    iput-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1856
    if-eqz v15, :cond_1ae

    .line 1857
    move-object/from16 v0, v41

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 1859
    :cond_1ae
    move-object/from16 v0, v41

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v0, p11

    if-ne v6, v0, :cond_1bc

    .line 1870
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 p12, v0

    .line 1874
    :cond_1bc
    if-nez v51, :cond_1c6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_1c6

    .line 1877
    const/16 v51, -0x1

    .line 1880
    :cond_1c6
    if-nez v51, :cond_1cc

    if-nez p4, :cond_1cc

    .line 1883
    const/16 v51, -0x2

    .line 1886
    :cond_1cc
    if-nez v51, :cond_202

    if-eqz v41, :cond_202

    move-object/from16 v0, v41

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v6, :cond_202

    .line 1892
    const/high16 v6, 0x10000000

    and-int v6, v6, v55

    if-nez v6, :cond_202

    move-object/from16 v0, v41

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v6, v7, :cond_202

    .line 1895
    :try_start_1ee
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v6, v7, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_1fd
    .catch Landroid/os/RemoteException; {:try_start_1ee .. :try_end_1fd} :catch_261

    move-result v6

    if-nez v6, :cond_202

    .line 1897
    const/16 v51, -0x7

    .line 1905
    :cond_202
    :goto_202
    if-nez v51, :cond_21a

    if-eqz p5, :cond_21a

    .line 1909
    :try_start_206
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v6, v7, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_215
    .catch Landroid/os/RemoteException; {:try_start_206 .. :try_end_215} :catch_265

    move-result v6

    if-nez v6, :cond_21a

    .line 1911
    const/16 v51, -0x7

    .line 1918
    :cond_21a
    :goto_21a
    if-eqz v51, :cond_269

    .line 1919
    if-eqz v13, :cond_22c

    if-eqz v15, :cond_22c

    .line 1920
    const/4 v14, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p8

    move/from16 v17, p9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1924
    :cond_22c
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1926
    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v16 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move/from16 v6, v51

    .line 1931
    goto/16 :goto_51

    .line 1899
    :catch_261
    move-exception v50

    .line 1900
    .local v50, "e":Landroid/os/RemoteException;
    const/16 v51, -0x7

    goto :goto_202

    .line 1913
    .end local v50    # "e":Landroid/os/RemoteException;
    :catch_265
    move-exception v50

    .line 1914
    .restart local v50    # "e":Landroid/os/RemoteException;
    const/16 v51, -0x7

    goto :goto_21a

    .line 1934
    .end local v50    # "e":Landroid/os/RemoteException;
    :cond_269
    const/16 v24, 0x0

    .line 1936
    .local v24, "allowLaunchIntent":Z
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36a

    const-string v6, "android.intent.category.HOME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36a

    const/4 v6, 0x1

    :goto_282
    if-eqz v6, :cond_286

    .line 1938
    const/16 v24, 0x1

    .line 1943
    :cond_286
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "android.permission.START_ANY_ACTIVITY"

    move/from16 v0, p10

    move/from16 v1, p11

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v60

    .line 1948
    .local v60, "startAnyPerm":I
    const/16 v49, -0x1

    .line 1950
    .local v49, "componentPerm":I
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v21, v0

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p4

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move/from16 v23, v0

    move-object/from16 v17, p2

    move/from16 v19, p10

    move/from16 v20, p11

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v49

    .line 1957
    if-eqz v60, :cond_3be

    if-eqz v49, :cond_3be

    .line 1958
    if-eqz v13, :cond_2d6

    if-eqz v15, :cond_2d6

    .line 1959
    const/4 v14, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p8

    move/from16 v17, p9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1964
    :cond_2d6
    move-object/from16 v0, p4

    iget-boolean v6, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v6, :cond_36d

    .line 1965
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not exported from uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    .line 1975
    .local v57, "msg":Ljava/lang/String;
    :goto_32d
    const-string v6, "ActivityManager"

    move-object/from16 v0, v57

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v16 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 1981
    new-instance v6, Ljava/lang/SecurityException;

    move-object/from16 v0, v57

    invoke-direct {v6, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1936
    .end local v49    # "componentPerm":I
    .end local v57    # "msg":Ljava/lang/String;
    .end local v60    # "startAnyPerm":I
    :cond_36a
    const/4 v6, 0x0

    goto/16 :goto_282

    .line 1970
    .restart local v49    # "componentPerm":I
    .restart local v60    # "startAnyPerm":I
    :cond_36d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p11

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " requires "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    .restart local v57    # "msg":Ljava/lang/String;
    goto/16 :goto_32d

    .line 1984
    .end local v57    # "msg":Ljava/lang/String;
    :cond_3be
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v16, v0

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v17, p2

    move/from16 v18, p11

    move/from16 v19, p10

    move-object/from16 v20, p3

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-nez v6, :cond_445

    const/16 v48, 0x1

    .line 1987
    .local v48, "abort":Z
    :goto_3dc
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v6, :cond_3ff

    .line 1991
    :try_start_3e4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v62

    .line 1992
    .local v62, "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v62

    invoke-interface {v6, v0, v7}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_3f9
    .catch Landroid/os/RemoteException; {:try_start_3e4 .. :try_end_3f9} :catch_44a

    move-result v6

    if-nez v6, :cond_448

    const/4 v6, 0x1

    :goto_3fd
    or-int v48, v48, v6

    .line 1999
    .end local v62    # "watchIntent":Landroid/content/Intent;
    :cond_3ff
    :goto_3ff
    if-eqz v48, :cond_453

    .line 2000
    if-eqz v13, :cond_411

    if-eqz v15, :cond_411

    .line 2001
    const/4 v14, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p8

    move/from16 v17, p9

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2006
    :cond_411
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2008
    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " succeeded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v16 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2013
    const/4 v6, 0x0

    goto/16 :goto_51

    .line 1984
    .end local v48    # "abort":Z
    :cond_445
    const/16 v48, 0x0

    goto :goto_3dc

    .line 1992
    .restart local v48    # "abort":Z
    .restart local v62    # "watchIntent":Landroid/content/Intent;
    :cond_448
    const/4 v6, 0x0

    goto :goto_3fd

    .line 1994
    .end local v62    # "watchIntent":Landroid/content/Intent;
    :catch_44a
    move-exception v50

    .line 1995
    .restart local v50    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_3ff

    .line 2016
    .end local v50    # "e":Landroid/os/RemoteException;
    :cond_453
    new-instance v25, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v33, v0

    move/from16 v28, p11

    move-object/from16 v29, p12

    move-object/from16 v30, p2

    move-object/from16 v31, p3

    move-object/from16 v32, p4

    move-object/from16 v34, v15

    move-object/from16 v35, p8

    move/from16 v36, p9

    move/from16 v37, p17

    move-object/from16 v38, p0

    move-object/from16 v39, p19

    move-object/from16 v40, p16

    move-object/from16 v42, p7

    invoke-direct/range {v25 .. v42}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)V

    .line 2020
    .local v25, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p18, :cond_485

    .line 2021
    const/4 v6, 0x0

    aput-object v25, p18, v6

    .line 2025
    :cond_485
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v6

    if-eqz v6, :cond_53c

    .line 2026
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    .line 2034
    :goto_499
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, v41

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->applyMultiWindowLaunchStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 2035
    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v6

    if-nez v6, :cond_4c0

    .line 2036
    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 2041
    :cond_4c0
    invoke-virtual/range {p0 .. p0}, getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v59

    .line 2042
    .local v59, "stack":Lcom/android/server/am/ActivityStack;
    if-nez p5, :cond_54c

    move-object/from16 v0, v59

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_4da

    move-object/from16 v0, v59

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p11

    if-eq v6, v0, :cond_54c

    .line 2044
    :cond_4da
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    const-string v21, "Activity start"

    move/from16 v17, p10

    move/from16 v18, p11

    move/from16 v19, p13

    move/from16 v20, p14

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_54c

    .line 2046
    new-instance v58, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    move-object/from16 v0, v58

    move-object/from16 v1, v25

    move-object/from16 v2, v41

    move/from16 v3, p15

    move-object/from16 v4, v59

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    .line 2048
    .local v58, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2049
    invoke-static/range {p16 .. p16}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2051
    const/16 v16, 0x5

    const/16 v17, 0x5

    const/16 v18, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v16 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2056
    const/4 v6, 0x4

    goto/16 :goto_51

    .line 2028
    .end local v58    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v59    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_53c
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_499

    .line 2060
    .restart local v59    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_54c
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v6, :cond_57f

    .line 2066
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v8, 0x0

    iput-wide v8, v6, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 2071
    :goto_55c
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, doPendingActivityLaunchesLocked(Z)V

    .line 2094
    const/16 v45, 0x1

    move-object/from16 v39, p0

    move-object/from16 v40, v25

    move-object/from16 v42, p5

    move-object/from16 v43, p6

    move/from16 v44, p15

    move-object/from16 v46, p16

    move-object/from16 v47, p20

    invoke-virtual/range {v39 .. v47}, startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I

    move-result v51

    .line 2097
    if-gez v51, :cond_57b

    .line 2102
    invoke-virtual/range {p0 .. p0}, notifyActivityDrawnForKeyguard()V

    :cond_57b
    move/from16 v6, v51

    .line 2104
    goto/16 :goto_51

    .line 2068
    :cond_57f
    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_55c
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .registers 61
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/IActivityManager$WaitResult;
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "options"    # Landroid/os/Bundle;
    .param p16, "userId"    # I
    .param p17, "iContainer"    # Landroid/app/IActivityContainer;
    .param p18, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 1238
    if-eqz p4, :cond_10

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1239
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1241
    :cond_10
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_20e

    const/16 v25, 0x1

    .line 1244
    .local v25, "componentSpecified":Z
    :goto_18
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .end local p4    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    move-object/from16 v2, p0

    move-object/from16 v4, p5

    move/from16 v5, p11

    move-object/from16 v6, p12

    move/from16 v7, p16

    .line 1247
    invoke-virtual/range {v2 .. v7}, resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v29

    .local v29, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v27, p17

    .line 1250
    check-cast v27, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 1251
    .local v27, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v41, v0

    monitor-enter v41

    .line 1252
    :try_start_38
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    .line 1253
    .local v21, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    .line 1255
    .local v22, "realCallingUid":I
    if-ltz p2, :cond_212

    .line 1256
    const/16 v18, -0x1

    .line 1265
    .local v18, "callingPid":I
    :goto_44
    if-eqz v27, :cond_50

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v2

    if-eqz v2, :cond_220

    .line 1266
    :cond_50
    invoke-virtual/range {p0 .. p0}, getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v39

    .line 1270
    .local v39, "stack":Lcom/android/server/am/ActivityStack;
    :goto_54
    if-eqz p14, :cond_228

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_228

    const/4 v2, 0x1

    :goto_65
    move-object/from16 v0, v39

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    .line 1277
    .local v34, "origId":J
    if-eqz v29, :cond_2fa

    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x10000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_2fa

    .line 1281
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2fa

    .line 1282
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2fa

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v4, :cond_b6

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2fa

    .line 1285
    :cond_b6
    move/from16 v7, p2

    .line 1286
    .local v7, "appCallingUid":I
    if-eqz p1, :cond_cc

    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v30

    .line 1288
    .local v30, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v30, :cond_22b

    .line 1289
    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1299
    .end local v30    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_cc
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x2

    const-string v6, "android"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x1

    new-array v12, v2, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object v3, v12, v2

    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p5, v13, v2

    const/high16 v14, 0x50000000

    const/4 v15, 0x0

    move/from16 v8, p16

    invoke-virtual/range {v4 .. v15}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v40

    .line 1305
    .local v40, "target":Landroid/content/IIntentSender;
    new-instance v33, Landroid/content/Intent;

    invoke-direct/range {v33 .. v33}, Landroid/content/Intent;-><init>()V

    .line 1306
    .local v33, "newIntent":Landroid/content/Intent;
    if-ltz p10, :cond_fa

    .line 1308
    const-string v2, "has_result"

    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1310
    :cond_fa
    const-string v2, "intent"

    new-instance v4, Landroid/content/IntentSender;

    move-object/from16 v0, v40

    invoke-direct {v4, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1312
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_13d

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/am/ActivityRecord;

    .line 1314
    .local v32, "hist":Lcom/android/server/am/ActivityRecord;
    const-string v2, "cur_app"

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    const-string v2, "cur_task"

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1319
    .end local v32    # "hist":Lcom/android/server/am/ActivityRecord;
    :cond_13d
    const-string v2, "new_app"

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1321
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1322
    const-string v2, "android"

    const-class v4, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_15e
    .catchall {:try_start_38 .. :try_end_15e} :catchall_2e8

    .line 1324
    move-object/from16 p4, v33

    .line 1325
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    const/16 p5, 0x0

    .line 1326
    const/16 p1, 0x0

    .line 1327
    :try_start_164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 1328
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_16b
    .catchall {:try_start_164 .. :try_end_16b} :catchall_2ee

    move-result v18

    .line 1329
    const/16 v25, 0x1

    .line 1331
    :try_start_16e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x10480

    move-object/from16 v0, p4

    move/from16 v1, p16

    invoke-interface {v2, v0, v4, v5, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v37

    .line 1336
    .local v37, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v37, :cond_26a

    move-object/from16 v0, v37

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_184
    .catch Landroid/os/RemoteException; {:try_start_16e .. :try_end_184} :catch_26d
    .catchall {:try_start_16e .. :try_end_184} :catchall_2ee

    .line 1337
    .end local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_184
    :try_start_184
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p16

    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_18d
    .catch Landroid/os/RemoteException; {:try_start_184 .. :try_end_18d} :catch_2f7
    .catchall {:try_start_184 .. :try_end_18d} :catchall_2bf

    move-result-object v12

    .line 1345
    .end local v7    # "appCallingUid":I
    .end local v33    # "newIntent":Landroid/content/Intent;
    .end local v37    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v40    # "target":Landroid/content/IIntentSender;
    :goto_18e
    const/16 v26, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move/from16 v17, p10

    move/from16 v19, p2

    move-object/from16 v20, p3

    move/from16 v23, p11

    move-object/from16 v24, p15

    move-object/from16 v28, p18

    :try_start_1ac
    invoke-virtual/range {v8 .. v28}, startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v38

    .line 1351
    .local v38, "res":I
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1353
    move-object/from16 v0, v39

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v2, :cond_1d6

    .line 1358
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v5, "updateConfiguration()"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    const/4 v2, 0x0

    move-object/from16 v0, v39

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 1363
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p14

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 1367
    :cond_1d6
    if-eqz v27, :cond_1e2

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v2

    if-eqz v2, :cond_273

    .line 1368
    :cond_1e2
    invoke-virtual/range {p0 .. p0}, getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v39

    .line 1373
    :goto_1e6
    if-eqz p13, :cond_20c

    .line 1374
    move/from16 v0, v38

    move-object/from16 v1, p13

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 1375
    if-nez v38, :cond_27b

    .line 1376
    move-object/from16 v0, p0

    iget-object v2, v0, mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f9
    .catchall {:try_start_1ac .. :try_end_1f9} :catchall_2bf

    .line 1379
    :cond_1f9
    :try_start_1f9
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_200
    .catch Ljava/lang/InterruptedException; {:try_start_1f9 .. :try_end_200} :catch_2f4
    .catchall {:try_start_1f9 .. :try_end_200} :catchall_2bf

    .line 1382
    :goto_200
    :try_start_200
    move-object/from16 v0, p13

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_20c

    move-object/from16 v0, p13

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v2, :cond_1f9

    .line 1403
    :cond_20c
    :goto_20c
    monitor-exit v41
    :try_end_20d
    .catchall {:try_start_200 .. :try_end_20d} :catchall_2bf

    .end local v38    # "res":I
    :goto_20d
    return v38

    .line 1241
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v18    # "callingPid":I
    .end local v21    # "realCallingPid":I
    .end local v22    # "realCallingUid":I
    .end local v25    # "componentSpecified":Z
    .end local v27    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v34    # "origId":J
    .end local v39    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_20e
    const/16 v25, 0x0

    goto/16 :goto_18

    .line 1257
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v21    # "realCallingPid":I
    .restart local v22    # "realCallingUid":I
    .restart local v25    # "componentSpecified":Z
    .restart local v27    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .restart local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_212
    if-nez p1, :cond_21a

    .line 1258
    move/from16 v18, v21

    .line 1259
    .restart local v18    # "callingPid":I
    move/from16 p2, v22

    goto/16 :goto_44

    .line 1261
    .end local v18    # "callingPid":I
    :cond_21a
    const/16 p2, -0x1

    move/from16 v18, p2

    .restart local v18    # "callingPid":I
    goto/16 :goto_44

    .line 1268
    :cond_220
    :try_start_220
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v39, v0

    .restart local v39    # "stack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_54

    .line 1270
    :cond_228
    const/4 v2, 0x0

    goto/16 :goto_65

    .line 1291
    .restart local v7    # "appCallingUid":I
    .restart local v30    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v34    # "origId":J
    :cond_22b
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find app for caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") when starting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    invoke-static/range {p15 .. p15}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1295
    const/16 v38, -0x4

    monitor-exit v41
    :try_end_265
    .catchall {:try_start_220 .. :try_end_265} :catchall_2e8

    move-object/from16 v12, v29

    .end local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_20d

    .line 1336
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v30    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "newIntent":Landroid/content/Intent;
    .restart local v37    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v40    # "target":Landroid/content/IIntentSender;
    :cond_26a
    const/4 v12, 0x0

    goto/16 :goto_184

    .line 1338
    .end local v37    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_26d
    move-exception v31

    move-object/from16 v12, v29

    .line 1339
    .end local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v31, "e":Landroid/os/RemoteException;
    :goto_270
    const/4 v12, 0x0

    goto/16 :goto_18e

    .line 1370
    .end local v7    # "appCallingUid":I
    .end local v31    # "e":Landroid/os/RemoteException;
    .end local v33    # "newIntent":Landroid/content/Intent;
    .end local v40    # "target":Landroid/content/IIntentSender;
    .restart local v38    # "res":I
    :cond_273
    :try_start_273
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v39, v0

    goto/16 :goto_1e6

    .line 1383
    :cond_27b
    const/4 v2, 0x2

    move/from16 v0, v38

    if-ne v0, v2, :cond_20c

    .line 1384
    const/4 v2, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v36

    .line 1385
    .local v36, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v36, :cond_2c2

    move-object/from16 v0, v36

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_2c2

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v4, :cond_2c2

    .line 1386
    const/4 v2, 0x0

    move-object/from16 v0, p13

    iput-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 1387
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p13

    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 1388
    const-wide/16 v4, 0x0

    move-object/from16 v0, p13

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 1389
    const-wide/16 v4, 0x0

    move-object/from16 v0, p13

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    goto/16 :goto_20c

    .line 1404
    .end local v18    # "callingPid":I
    .end local v21    # "realCallingPid":I
    .end local v22    # "realCallingUid":I
    .end local v34    # "origId":J
    .end local v36    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v38    # "res":I
    .end local v39    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_2bf
    move-exception v2

    :goto_2c0
    monitor-exit v41
    :try_end_2c1
    .catchall {:try_start_273 .. :try_end_2c1} :catchall_2bf

    throw v2

    .line 1391
    .restart local v18    # "callingPid":I
    .restart local v21    # "realCallingPid":I
    .restart local v22    # "realCallingUid":I
    .restart local v34    # "origId":J
    .restart local v36    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v38    # "res":I
    .restart local v39    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2c2
    :try_start_2c2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p13

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 1392
    move-object/from16 v0, p0

    iget-object v2, v0, mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d3
    .catchall {:try_start_2c2 .. :try_end_2d3} :catchall_2bf

    .line 1395
    :cond_2d3
    :try_start_2d3
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2da
    .catch Ljava/lang/InterruptedException; {:try_start_2d3 .. :try_end_2da} :catch_2f2
    .catchall {:try_start_2d3 .. :try_end_2da} :catchall_2bf

    .line 1398
    :goto_2da
    :try_start_2da
    move-object/from16 v0, p13

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_20c

    move-object/from16 v0, p13

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;
    :try_end_2e4
    .catchall {:try_start_2da .. :try_end_2e4} :catchall_2bf

    if-eqz v2, :cond_2d3

    goto/16 :goto_20c

    .line 1404
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v18    # "callingPid":I
    .end local v21    # "realCallingPid":I
    .end local v22    # "realCallingUid":I
    .end local v34    # "origId":J
    .end local v36    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v38    # "res":I
    .end local v39    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_2e8
    move-exception v2

    move-object/from16 v12, v29

    .end local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_2c0

    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "appCallingUid":I
    .restart local v18    # "callingPid":I
    .restart local v21    # "realCallingPid":I
    .restart local v22    # "realCallingUid":I
    .restart local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "newIntent":Landroid/content/Intent;
    .restart local v34    # "origId":J
    .restart local v39    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v40    # "target":Landroid/content/IIntentSender;
    :catchall_2ee
    move-exception v2

    move-object/from16 v12, v29

    .end local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_2c0

    .line 1396
    .end local v7    # "appCallingUid":I
    .end local v33    # "newIntent":Landroid/content/Intent;
    .end local v40    # "target":Landroid/content/IIntentSender;
    .restart local v36    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v38    # "res":I
    :catch_2f2
    move-exception v2

    goto :goto_2da

    .line 1380
    .end local v36    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_2f4
    move-exception v2

    goto/16 :goto_200

    .line 1338
    .end local v38    # "res":I
    .restart local v7    # "appCallingUid":I
    .restart local v33    # "newIntent":Landroid/content/Intent;
    .restart local v37    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v40    # "target":Landroid/content/IIntentSender;
    :catch_2f7
    move-exception v31

    goto/16 :goto_270

    .end local v7    # "appCallingUid":I
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v33    # "newIntent":Landroid/content/Intent;
    .end local v37    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v40    # "target":Landroid/content/IIntentSender;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_2fa
    move-object/from16 v12, v29

    .end local v29    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_18e
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/os/Bundle;Lcom/android/server/am/TaskRecord;)I
    .registers 66
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 2205
    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->applyMultiInstanceStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 2206
    if-eqz p2, :cond_17

    .line 2207
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    .line 2211
    :cond_17
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v27, v0

    .line 2212
    .local v27, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 2218
    .local v15, "callingUid":I
    if-eqz p8, :cond_45

    move-object/from16 v0, p8

    iget-boolean v5, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-nez v5, :cond_45

    .line 2219
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting activity in task not in recents: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    const/16 p8, 0x0

    .line 2223
    :cond_45
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_186

    const/16 v36, 0x1

    .line 2224
    .local v36, "launchSingleTop":Z
    :goto_4e
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_18a

    const/16 v34, 0x1

    .line 2225
    .local v34, "launchSingleInstance":Z
    :goto_57
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_18e

    const/16 v35, 0x1

    .line 2227
    .local v35, "launchSingleTask":Z
    :goto_60
    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getFlags()I

    move-result v33

    .line 2228
    .local v33, "launchFlags":I
    const/high16 v5, 0x80000

    and-int v5, v5, v33

    if-eqz v5, :cond_192

    if-nez v34, :cond_6e

    if-eqz v35, :cond_192

    .line 2231
    :cond_6e
    const-string v5, "ActivityManager"

    const-string v6, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    const v5, -0x8080001

    and-int v33, v33, v5

    .line 2251
    :goto_7a
    :pswitch_7a
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v5, :cond_1b0

    if-nez v35, :cond_1b0

    if-nez v34, :cond_1b0

    const/high16 v5, 0x80000

    and-int v5, v5, v33

    if-eqz v5, :cond_1b0

    const/16 v37, 0x1

    .line 2255
    .local v37, "launchTaskBehind":Z
    :goto_8c
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_be

    const/high16 v5, 0x10000000

    and-int v5, v5, v33

    if-eqz v5, :cond_be

    .line 2261
    const-string v5, "ActivityManager"

    const-string v6, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v5, -0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2265
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2268
    :cond_be
    const/high16 v5, 0x80000

    and-int v5, v5, v33

    if-eqz v5, :cond_f6

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_f6

    .line 2271
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v5, :cond_1b4

    if-eqz p2, :cond_1b4

    const-string v5, "android"

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b4

    .line 2273
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_f6

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-nez v5, :cond_f6

    .line 2275
    const/high16 v5, 0x10000000

    or-int v33, v33, v5

    .line 2288
    :cond_f6
    :goto_f6
    const/high16 v5, 0x10000000

    and-int v5, v5, v33

    if-eqz v5, :cond_10b

    .line 2289
    if-nez v37, :cond_107

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_10b

    .line 2291
    :cond_107
    const/high16 v5, 0x8000000

    or-int v33, v33, v5

    .line 2297
    :cond_10b
    const/high16 v5, 0x40000

    and-int v5, v5, v33

    if-nez v5, :cond_1ba

    const/4 v5, 0x1

    :goto_112
    move-object/from16 v0, p0

    iput-boolean v5, v0, mUserLeaving:Z

    .line 2303
    if-nez p6, :cond_11d

    .line 2304
    const/4 v5, 0x1

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 2307
    :cond_11d
    const/high16 v5, 0x1000000

    and-int v5, v5, v33

    if-eqz v5, :cond_1bd

    move-object/from16 v42, p1

    .line 2314
    .local v42, "notTop":Lcom/android/server/am/ActivityRecord;
    :goto_125
    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_147

    .line 2315
    move-object/from16 v16, p2

    .line 2316
    .local v16, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez v16, :cond_137

    .line 2317
    invoke-virtual/range {p0 .. p0}, getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    .line 2319
    :cond_137
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_147

    .line 2321
    and-int/lit8 p5, p5, -0x2

    .line 2325
    .end local v16    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_147
    const/4 v12, 0x0

    .line 2326
    .local v12, "addingToTask":Z
    const/16 v45, 0x0

    .line 2331
    .local v45, "reuseTask":Lcom/android/server/am/TaskRecord;
    if-nez p2, :cond_3c8

    if-eqz p8, :cond_3c8

    move-object/from16 v0, p8

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_3c8

    move-object/from16 v0, p8

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-eqz v5, :cond_3c8

    .line 2336
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v14

    .line 2337
    .local v14, "baseIntent":Landroid/content/Intent;
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v46

    .line 2338
    .local v46, "root":Lcom/android/server/am/ActivityRecord;
    if-nez v14, :cond_1c1

    .line 2339
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2340
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Launching into task without base intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2223
    .end local v12    # "addingToTask":Z
    .end local v14    # "baseIntent":Landroid/content/Intent;
    .end local v33    # "launchFlags":I
    .end local v34    # "launchSingleInstance":Z
    .end local v35    # "launchSingleTask":Z
    .end local v36    # "launchSingleTop":Z
    .end local v37    # "launchTaskBehind":Z
    .end local v42    # "notTop":Lcom/android/server/am/ActivityRecord;
    .end local v45    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .end local v46    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_186
    const/16 v36, 0x0

    goto/16 :goto_4e

    .line 2224
    .restart local v36    # "launchSingleTop":Z
    :cond_18a
    const/16 v34, 0x0

    goto/16 :goto_57

    .line 2225
    .restart local v34    # "launchSingleInstance":Z
    :cond_18e
    const/16 v35, 0x0

    goto/16 :goto_60

    .line 2236
    .restart local v33    # "launchFlags":I
    .restart local v35    # "launchSingleTask":Z
    :cond_192
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    packed-switch v5, :pswitch_data_cba

    goto/16 :goto_7a

    .line 2240
    :pswitch_19d
    const/high16 v5, 0x80000

    or-int v33, v33, v5

    .line 2241
    goto/16 :goto_7a

    .line 2243
    :pswitch_1a3
    const/high16 v5, 0x80000

    or-int v33, v33, v5

    .line 2244
    goto/16 :goto_7a

    .line 2246
    :pswitch_1a9
    const v5, -0x8000001

    and-int v33, v33, v5

    goto/16 :goto_7a

    .line 2251
    :cond_1b0
    const/16 v37, 0x0

    goto/16 :goto_8c

    .line 2278
    .restart local v37    # "launchTaskBehind":Z
    :cond_1b4
    const/high16 v5, 0x10000000

    or-int v33, v33, v5

    goto/16 :goto_f6

    .line 2297
    :cond_1ba
    const/4 v5, 0x0

    goto/16 :goto_112

    .line 2307
    :cond_1bd
    const/16 v42, 0x0

    goto/16 :goto_125

    .line 2346
    .restart local v12    # "addingToTask":Z
    .restart local v14    # "baseIntent":Landroid/content/Intent;
    .restart local v42    # "notTop":Lcom/android/server/am/ActivityRecord;
    .restart local v45    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .restart local v46    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_1c1
    if-nez v34, :cond_1c5

    if-eqz v35, :cond_233

    .line 2347
    :cond_1c5
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_201

    .line 2348
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2349
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to launch singleInstance/Task "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " into different task "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2352
    :cond_201
    if-eqz v46, :cond_233

    .line 2353
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2354
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caller with inTask "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has root "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v46

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but target is singleInstance/Task"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2361
    :cond_233
    if-nez v46, :cond_3bc

    .line 2362
    const v21, 0x18082000

    .line 2365
    .local v21, "flagsOfInterest":I
    const v5, -0x18082001

    and-int v5, v5, v33

    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const v7, 0x18082000

    and-int/2addr v6, v7

    or-int v33, v5, v6

    .line 2367
    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2368
    move-object/from16 v0, p8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2369
    const/4 v12, 0x1

    .line 2381
    .end local v21    # "flagsOfInterest":I
    :goto_256
    move-object/from16 v45, p8

    .line 2386
    .end local v14    # "baseIntent":Landroid/content/Intent;
    .end local v46    # "root":Lcom/android/server/am/ActivityRecord;
    :goto_258
    if-nez p8, :cond_283

    .line 2387
    if-nez p2, :cond_3cc

    .line 2390
    const/high16 v5, 0x10000000

    and-int v5, v5, v33

    if-nez v5, :cond_283

    if-nez p8, :cond_283

    .line 2391
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    const/high16 v5, 0x10000000

    or-int v33, v33, v5

    .line 2407
    :cond_283
    :goto_283
    const/16 v40, 0x0

    .line 2408
    .local v40, "newTaskInfo":Landroid/content/pm/ActivityInfo;
    const/16 v41, 0x0

    .line 2410
    .local v41, "newTaskIntent":Landroid/content/Intent;
    if-eqz p2, :cond_3ed

    .line 2411
    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_3e3

    .line 2417
    const/high16 v5, 0x10000000

    and-int v5, v5, v33

    if-nez v5, :cond_2d4

    .line 2418
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startActivity called from finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; forcing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    const/high16 v5, 0x10000000

    or-int v33, v33, v5

    .line 2421
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v40, v0

    .line 2422
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v41, v0

    .line 2426
    :cond_2d4
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p2

    if-ne v5, v0, :cond_31b

    .line 2427
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity is launching from finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", so cancelling activity result."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v5, -0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2432
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2436
    :cond_31b
    const/16 v47, 0x0

    .line 2438
    .local v47, "sourceStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_33f

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_33f

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_33f

    .line 2441
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v47, v0

    .line 2444
    :cond_33f
    const/16 p2, 0x0

    .line 2452
    :goto_341
    const/16 v38, 0x0

    .line 2454
    .local v38, "movedHome":Z
    const/4 v4, 0x0

    .line 2457
    .local v4, "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2464
    const/high16 v5, 0x10000000

    and-int v5, v5, v33

    if-eqz v5, :cond_357

    const/high16 v5, 0x8000000

    and-int v5, v5, v33

    if-eqz v5, :cond_361

    :cond_357
    if-nez v34, :cond_35b

    if-eqz v35, :cond_80b

    :cond_35b
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-nez v5, :cond_80b

    .line 2472
    :cond_361
    if-nez p8, :cond_80b

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_80b

    .line 2477
    if-nez v34, :cond_3f1

    invoke-virtual/range {p0 .. p1}, findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v28

    .line 2484
    .local v28, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_36f
    const/16 v29, 0x0

    .line 2485
    .local v29, "isKnoxLauncher":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v5

    if-eqz v5, :cond_386

    .line 2486
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "sec_container_1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_386

    .line 2487
    const/16 v29, 0x1

    .line 2490
    :cond_386
    if-eqz v29, :cond_402

    .line 2491
    move-object/from16 v0, p0

    iget-object v5, v0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v20, v5, -0x1

    .local v20, "displayNdx":I
    :goto_392
    if-ltz v20, :cond_402

    .line 2492
    move-object/from16 v0, p0

    iget-object v5, v0, mActivityDisplays:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :cond_3a6
    :goto_3a6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3ff

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/server/am/ActivityStack;

    .line 2493
    .local v49, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_3a6

    .line 2494
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/am/ActivityStack;->finishAllActivities()Z

    goto :goto_3a6

    .line 2374
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v20    # "displayNdx":I
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v28    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v29    # "isKnoxLauncher":Z
    .end local v38    # "movedHome":Z
    .end local v40    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .end local v41    # "newTaskIntent":Landroid/content/Intent;
    .end local v47    # "sourceStack":Lcom/android/server/am/ActivityStack;
    .end local v49    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v14    # "baseIntent":Landroid/content/Intent;
    .restart local v46    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_3bc
    const/high16 v5, 0x10000000

    and-int v5, v5, v33

    if-eqz v5, :cond_3c5

    .line 2375
    const/4 v12, 0x0

    goto/16 :goto_256

    .line 2378
    :cond_3c5
    const/4 v12, 0x1

    goto/16 :goto_256

    .line 2383
    .end local v14    # "baseIntent":Landroid/content/Intent;
    .end local v46    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_3c8
    const/16 p8, 0x0

    goto/16 :goto_258

    .line 2395
    :cond_3cc
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3d9

    .line 2399
    const/high16 v5, 0x10000000

    or-int v33, v33, v5

    goto/16 :goto_283

    .line 2400
    :cond_3d9
    if-nez v34, :cond_3dd

    if-eqz v35, :cond_283

    .line 2403
    :cond_3dd
    const/high16 v5, 0x10000000

    or-int v33, v33, v5

    goto/16 :goto_283

    .line 2446
    .restart local v40    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .restart local v41    # "newTaskIntent":Landroid/content/Intent;
    :cond_3e3
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v47, v0

    .restart local v47    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_341

    .line 2449
    .end local v47    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :cond_3ed
    const/16 v47, 0x0

    .restart local v47    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_341

    .line 2477
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v38    # "movedHome":Z
    :cond_3f1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v28

    goto/16 :goto_36f

    .line 2491
    .restart local v20    # "displayNdx":I
    .restart local v24    # "i$":Ljava/util/Iterator;
    .restart local v28    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v29    # "isKnoxLauncher":Z
    :cond_3ff
    add-int/lit8 v20, v20, -0x1

    goto :goto_392

    .line 2501
    .end local v20    # "displayNdx":I
    .end local v24    # "i$":Ljava/util/Iterator;
    :cond_402
    if-eqz v28, :cond_80b

    .line 2502
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v5

    if-eqz v5, :cond_41d

    .line 2503
    invoke-virtual/range {p0 .. p0}, showLockTaskToast()V

    .line 2504
    const-string v5, "ActivityManager"

    const-string/jumbo v6, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    const/4 v5, 0x5

    .line 3107
    .end local v28    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v29    # "isKnoxLauncher":Z
    :goto_41c
    return v5

    .line 2507
    .restart local v28    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v29    # "isKnoxLauncher":Z
    :cond_41d
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v5, :cond_42b

    .line 2508
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2510
    :cond_42b
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2511
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2514
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->moveToFront()V

    .line 2517
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_448

    .line 2518
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 2524
    :cond_448
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v5, :cond_459

    .line 2529
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2537
    :cond_459
    invoke-virtual/range {p0 .. p0}, getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v32

    .line 2549
    .local v32, "lastStack":Lcom/android/server/am/ActivityStack;
    if-nez v32, :cond_579

    const/16 v19, 0x0

    .line 2551
    .local v19, "curTop":Lcom/android/server/am/ActivityRecord;
    :goto_461
    if-eqz v19, :cond_55a

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v5, v6, :cond_495

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-ne v5, v6, :cond_495

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v5

    if-eqz v5, :cond_495

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_55a

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-nez v5, :cond_55a

    .line 2559
    :cond_495
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_4b2

    .line 2562
    invoke-direct/range {p0 .. p0}, isKnoxmode()Z

    move-result v5

    if-nez v5, :cond_583

    .line 2563
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v6, 0x400000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2564
    const/4 v5, 0x0

    sput-boolean v5, isLaunchKnoxApps:Z

    .line 2579
    :cond_4b2
    :goto_4b2
    if-eqz p2, :cond_4c6

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_55a

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v5, v6, :cond_55a

    .line 2583
    :cond_4c6
    if-eqz v37, :cond_4d3

    if-eqz p2, :cond_4d3

    .line 2584
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    .line 2586
    :cond_4d3
    const/16 v38, 0x1

    .line 2589
    if-eqz v4, :cond_546

    .line 2590
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v5, v2}, adjustStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2591
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v4, v5, :cond_5ae

    .line 2592
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2593
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2594
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, moveTaskToStack(IIZ)V

    .line 2598
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2599
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/am/ActivityStack;->prepareTaskToFrontTransition(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 2600
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v5

    if-eqz v5, :cond_546

    invoke-virtual/range {p0 .. p0}, resumeTopActivitiesLocked()Z

    move-result v5

    if-nez v5, :cond_546

    .line 2601
    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 2602
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, pauseBackStacks(ZZZ)Z

    .line 2613
    :cond_546
    :goto_546
    const v5, 0x10004000

    and-int v5, v5, v33

    const v6, 0x10004000

    if-ne v5, v6, :cond_558

    .line 2617
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 2619
    :cond_558
    const/16 p7, 0x0

    .line 2624
    :cond_55a
    const/high16 v5, 0x200000

    and-int v5, v5, v33

    if-eqz v5, :cond_568

    .line 2625
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v28

    .line 2627
    :cond_568
    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_5c4

    .line 2632
    if-eqz p6, :cond_5c0

    .line 2633
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v4, v5, v1}, resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 2637
    :goto_576
    const/4 v5, 0x1

    goto/16 :goto_41c

    .line 2549
    .end local v19    # "curTop":Lcom/android/server/am/ActivityRecord;
    :cond_579
    move-object/from16 v0, v32

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v19

    goto/16 :goto_461

    .line 2566
    .restart local v19    # "curTop":Lcom/android/server/am/ActivityRecord;
    :cond_583
    sget-boolean v5, isLaunchKnoxApps:Z

    if-eqz v5, :cond_595

    .line 2567
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v6, 0x400000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2568
    const/4 v5, 0x0

    sput-boolean v5, isLaunchKnoxApps:Z

    goto/16 :goto_4b2

    .line 2571
    :cond_595
    :try_start_595
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    const-string v6, "com.sec.android.app.launcher"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4b2

    .line 2572
    const/4 v5, 0x1

    sput-boolean v5, isLaunchKnoxApps:Z
    :try_end_5a6
    .catch Ljava/lang/NullPointerException; {:try_start_595 .. :try_end_5a6} :catch_5a8

    goto/16 :goto_4b2

    .line 2573
    :catch_5a8
    move-exception v43

    .line 2574
    .local v43, "npe":Ljava/lang/NullPointerException;
    invoke-virtual/range {v43 .. v43}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_4b2

    .line 2605
    .end local v43    # "npe":Ljava/lang/NullPointerException;
    :cond_5ae
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 2606
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    goto :goto_546

    .line 2635
    :cond_5c0
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_576

    .line 2641
    :cond_5c4
    const/16 v25, 0x0

    .line 2644
    .local v25, "ignoreIntentActivity":Z
    const v5, 0x10008000

    and-int v5, v5, v33

    const v6, 0x10008000

    if-ne v5, v6, :cond_66c

    .line 2650
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v45, v0

    .line 2651
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 2652
    move-object/from16 v0, v45

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2744
    :cond_5e0
    :goto_5e0
    if-nez v12, :cond_80b

    if-nez v45, :cond_80b

    if-nez v25, :cond_80b

    .line 2751
    if-eqz p6, :cond_807

    .line 2755
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v5

    if-eqz v5, :cond_7e6

    .line 2756
    move-object/from16 v0, p0

    iget-object v5, v0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v20, v5, -0x1

    .restart local v20    # "displayNdx":I
    :goto_5f8
    if-ltz v20, :cond_7e6

    .line 2757
    move-object/from16 v0, p0

    iget-object v5, v0, mActivityDisplays:Landroid/util/SparseArray;

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    .line 2758
    .local v51, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v50, v5, -0x1

    .local v50, "stackNdx":I
    :goto_610
    if-ltz v50, :cond_7e2

    .line 2759
    move-object/from16 v0, v51

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/server/am/ActivityStack;

    .line 2760
    .restart local v49    # "stack":Lcom/android/server/am/ActivityStack;
    const/4 v5, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v55

    .line 2761
    .local v55, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v55, :cond_774

    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_774

    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v6, 0x20000

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_774

    .line 2763
    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2764
    .local v11, "N":I
    add-int/lit8 v23, v11, -0x1

    .local v23, "i":I
    :goto_643
    if-ltz v23, :cond_7de

    .line 2765
    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ActivityRecord;

    .line 2766
    .local v17, "cr":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_669

    move-object/from16 v0, v17

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_669

    .line 2767
    const/16 v5, 0x10

    const/4 v6, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2764
    :cond_669
    add-int/lit8 v23, v23, -0x1

    goto :goto_643

    .line 2653
    .end local v11    # "N":I
    .end local v17    # "cr":Lcom/android/server/am/ActivityRecord;
    .end local v20    # "displayNdx":I
    .end local v23    # "i":I
    .end local v49    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v50    # "stackNdx":I
    .end local v51    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .end local v55    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_66c
    const/high16 v5, 0x4000000

    and-int v5, v5, v33

    if-nez v5, :cond_676

    if-nez v34, :cond_676

    if-eqz v35, :cond_6f6

    .line 2659
    :cond_676
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v55

    .line 2661
    .restart local v55    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v55, :cond_6a9

    .line 2662
    move-object/from16 v0, v55

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v5, :cond_693

    .line 2667
    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2669
    :cond_693
    const/16 v5, 0x7533

    move-object/from16 v0, v55

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2671
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v55

    invoke-virtual {v0, v15, v5}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_5e0

    .line 2673
    :cond_6a9
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v5, v5, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    if-eqz v5, :cond_6cb

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-nez v5, :cond_6f1

    .line 2679
    :cond_6cb
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2680
    const/16 v25, 0x1

    .line 2682
    const/high16 v5, 0x10000000

    and-int v5, v5, v33

    if-nez v5, :cond_5e0

    .line 2686
    if-eqz p2, :cond_5e0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v6

    xor-int/2addr v5, v6

    if-eqz v5, :cond_5e0

    .line 2689
    const/16 p2, 0x0

    goto/16 :goto_5e0

    .line 2698
    :cond_6f1
    const/4 v12, 0x1

    .line 2702
    move-object/from16 p2, v28

    goto/16 :goto_5e0

    .line 2704
    .end local v55    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_6f6
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_756

    .line 2711
    const/high16 v5, 0x20000000

    and-int v5, v5, v33

    if-nez v5, :cond_70e

    if-eqz v36, :cond_741

    :cond_70e
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_741

    .line 2713
    const/16 v5, 0x7533

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2715
    move-object/from16 v0, v28

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v5, :cond_736

    .line 2716
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 2718
    :cond_736
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v28

    invoke-virtual {v0, v15, v5}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_5e0

    .line 2719
    :cond_741
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_5e0

    .line 2723
    const/4 v12, 0x1

    .line 2724
    move-object/from16 p2, v28

    goto/16 :goto_5e0

    .line 2726
    :cond_756
    const/high16 v5, 0x200000

    and-int v5, v5, v33

    if-nez v5, :cond_761

    .line 2732
    const/4 v12, 0x1

    .line 2733
    move-object/from16 p2, v28

    goto/16 :goto_5e0

    .line 2734
    :cond_761
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v5, v5, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v5, :cond_5e0

    .line 2742
    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_5e0

    .line 2771
    .restart local v20    # "displayNdx":I
    .restart local v49    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v50    # "stackNdx":I
    .restart local v51    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    .restart local v55    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_774
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v5

    if-eqz v5, :cond_7de

    .line 2772
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v13

    .line 2775
    .local v13, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v23, v5, -0x1

    .restart local v23    # "i":I
    :goto_784
    if-ltz v23, :cond_7de

    .line 2776
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/TaskRecord;

    .line 2777
    .local v18, "curTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/server/am/TaskRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    if-eq v5, v6, :cond_79d

    .line 2775
    :cond_79a
    add-int/lit8 v23, v23, -0x1

    goto :goto_784

    .line 2780
    :cond_79d
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v55

    .line 2781
    if-eqz v55, :cond_79a

    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_79a

    .line 2782
    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2783
    .restart local v11    # "N":I
    add-int/lit8 v30, v11, -0x1

    .local v30, "j":I
    :goto_7b5
    if-ltz v30, :cond_79a

    .line 2784
    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ActivityRecord;

    .line 2785
    .restart local v17    # "cr":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v5, :cond_7db

    move-object/from16 v0, v17

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_7db

    .line 2786
    const/16 v5, 0x10

    const/4 v6, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2783
    :cond_7db
    add-int/lit8 v30, v30, -0x1

    goto :goto_7b5

    .line 2758
    .end local v11    # "N":I
    .end local v13    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v17    # "cr":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "curTask":Lcom/android/server/am/TaskRecord;
    .end local v23    # "i":I
    .end local v30    # "j":I
    :cond_7de
    add-int/lit8 v50, v50, -0x1

    goto/16 :goto_610

    .line 2756
    .end local v49    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v55    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_7e2
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_5f8

    .line 2796
    .end local v20    # "displayNdx":I
    .end local v50    # "stackNdx":I
    .end local v51    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_7e6
    if-eqz v4, :cond_804

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_804

    .line 2797
    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v4, v5, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 2798
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v22

    .line 2799
    .local v22, "focusedActivity":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2808
    .end local v22    # "focusedActivity":Lcom/android/server/am/ActivityRecord;
    :cond_804
    :goto_804
    const/4 v5, 0x2

    goto/16 :goto_41c

    .line 2806
    :cond_807
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_804

    .end local v19    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local v25    # "ignoreIntentActivity":Z
    .end local v28    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v29    # "isKnoxLauncher":Z
    .end local v32    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_80b
    move-object/from16 v52, v4

    .line 2820
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .local v52, "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_88c

    .line 2824
    invoke-virtual/range {p0 .. p0}, getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v56

    .line 2825
    .local v56, "topStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v56

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v55

    .line 2826
    .restart local v55    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v55, :cond_8b4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_8b4

    .line 2827
    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b4

    move-object/from16 v0, v55

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, v6, :cond_8b4

    .line 2828
    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_8b4

    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_8b4

    .line 2829
    const/high16 v5, 0x20000000

    and-int v5, v5, v33

    if-nez v5, :cond_857

    if-nez v36, :cond_857

    if-eqz v35, :cond_8b4

    :cond_857
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-nez v5, :cond_8b4

    .line 2832
    const/16 v5, 0x7533

    move-object/from16 v0, v55

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v55

    invoke-static {v5, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2836
    const/4 v5, 0x0

    move-object/from16 v0, v56

    iput-object v5, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2837
    if-eqz p6, :cond_872

    .line 2838
    invoke-virtual/range {p0 .. p0}, resumeTopActivitiesLocked()Z

    .line 2840
    :cond_872
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2841
    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_87e

    .line 2845
    const/4 v5, 0x1

    move-object/from16 v4, v52

    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_41c

    .line 2847
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_87e
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v55

    invoke-virtual {v0, v15, v5}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2848
    const/4 v5, 0x3

    move-object/from16 v4, v52

    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_41c

    .line 2855
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v55    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v56    # "topStack":Lcom/android/server/am/ActivityStack;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_88c
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_8ac

    .line 2856
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v5, -0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2859
    :cond_8ac
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2860
    const/4 v5, -0x2

    move-object/from16 v4, v52

    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_41c

    .line 2863
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v55    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v56    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_8b4
    const-string v5, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_906

    .line 2864
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_944

    const-string v5, "CU_Flag"

    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_944

    .line 2865
    new-instance v26, Landroid/content/Intent;

    const-string v5, "android.intent.action.CHECK_CU_VAS"

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2866
    .local v26, "in":Landroid/content/Intent;
    const/high16 v5, 0x50000000

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2867
    const-string v5, "CU_Vas"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2868
    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2869
    const/4 v5, 0x4

    move-object/from16 v4, v52

    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_41c

    .line 2871
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v26    # "in":Landroid/content/Intent;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_906
    const-string v5, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_944

    .line 2872
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_944

    .line 2873
    new-instance v26, Landroid/content/Intent;

    const-string v5, "android.intent.action.CHECK_CMCC_VAS"

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2874
    .restart local v26    # "in":Landroid/content/Intent;
    const/high16 v5, 0x50000000

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2875
    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2876
    const/4 v5, 0x4

    move-object/from16 v4, v52

    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_41c

    .line 2880
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v26    # "in":Landroid/content/Intent;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_944
    const/16 v39, 0x0

    .line 2881
    .local v39, "newTask":Z
    const/16 v31, 0x0

    .line 2883
    .local v31, "keepCurTransition":Z
    if-eqz v37, :cond_98b

    if-eqz p2, :cond_98b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v54, v0

    .line 2887
    .local v54, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    :goto_952
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_a84

    if-nez p8, :cond_a84

    if-nez v12, :cond_a84

    const/high16 v5, 0x10000000

    and-int v5, v5, v33

    if-eqz v5, :cond_a84

    .line 2889
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v5

    if-eqz v5, :cond_98e

    .line 2890
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted Lock Task Mode violation r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    const/4 v5, 0x5

    move-object/from16 v4, v52

    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_41c

    .line 2883
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v54    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_98b
    const/16 v54, 0x0

    goto :goto_952

    .line 2893
    .restart local v54    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    :cond_98e
    const/16 v39, 0x1

    .line 2894
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, adjustStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 2895
    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    if-nez v37, :cond_9a1

    .line 2896
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->moveToFront()V

    .line 2898
    :cond_9a1
    if-nez v45, :cond_a79

    .line 2899
    invoke-virtual/range {p0 .. p0}, getNextTaskId()I

    move-result v5

    if-eqz v40, :cond_a6c

    move-object/from16 v6, v40

    :goto_9ab
    if-eqz v41, :cond_a72

    move-object/from16 v7, v41

    :goto_9af
    if-nez v37, :cond_a76

    const/4 v10, 0x1

    :goto_9b2
    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, v54

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2909
    :goto_9c1
    if-nez v38, :cond_9d5

    .line 2910
    const v5, 0x10004000

    and-int v5, v5, v33

    const v6, 0x10004000

    if-ne v5, v6, :cond_9d5

    .line 2915
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 3081
    :cond_9d5
    :goto_9d5
    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move v6, v15

    move-object/from16 v8, v27

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 3084
    if-eqz p2, :cond_9fb

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v5

    if-eqz v5, :cond_9fb

    .line 3085
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 3087
    :cond_9fb
    if-eqz v39, :cond_a1d

    .line 3088
    const/16 v5, 0x7534

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3092
    :cond_a1d
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-eqz v5, :cond_a36

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_a36

    .line 3093
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/high16 v6, 0x8000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3095
    :cond_a36
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v5, :cond_a43

    .line 3096
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->resetSpecificTaskId()V

    .line 3100
    :cond_a43
    const/16 v5, 0x7535

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3101
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v5, p1

    move/from16 v6, v39

    move/from16 v7, p6

    move/from16 v8, v31

    move-object/from16 v9, p7

    .line 3102
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V

    .line 3103
    if-nez v37, :cond_a69

    .line 3105
    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3107
    :cond_a69
    const/4 v5, 0x0

    goto/16 :goto_41c

    .line 2899
    :cond_a6c
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto/16 :goto_9ab

    :cond_a72
    move-object/from16 v7, v27

    goto/16 :goto_9af

    :cond_a76
    const/4 v10, 0x0

    goto/16 :goto_9b2

    .line 2907
    :cond_a79
    move-object/from16 v0, p1

    move-object/from16 v1, v45

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_9c1

    .line 2918
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_a84
    if-eqz p2, :cond_b98

    .line 2919
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v48, v0

    .line 2920
    .local v48, "sourceTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v5

    if-eqz v5, :cond_ab5

    .line 2921
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted Lock Task Mode violation r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    const/4 v5, 0x5

    move-object/from16 v4, v52

    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_41c

    .line 2924
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_ab5
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2927
    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 2928
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_ae2

    .line 2929
    move-object/from16 v0, v48

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v48

    invoke-virtual {v5, v0, v6}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2930
    move-object/from16 v0, v48

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 2942
    :cond_ae2
    if-nez v12, :cond_b26

    const/high16 v5, 0x4000000

    and-int v5, v5, v33

    if-eqz v5, :cond_b26

    .line 2946
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v55

    .line 2947
    const/16 v31, 0x1

    .line 2948
    if-eqz v55, :cond_b8e

    .line 2949
    const/16 v5, 0x7533

    move-object/from16 v0, v55

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2950
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v55

    invoke-virtual {v0, v15, v5}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2953
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2954
    if-eqz p6, :cond_b20

    .line 2955
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2957
    if-nez v37, :cond_b20

    .line 2958
    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v55

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2962
    :cond_b20
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2963
    const/4 v5, 0x3

    goto/16 :goto_41c

    .line 2965
    :cond_b26
    if-nez v12, :cond_b8e

    const/high16 v5, 0x20000

    and-int v5, v5, v33

    if-eqz v5, :cond_b8e

    .line 2970
    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v55

    .line 2971
    if-eqz v55, :cond_b8e

    .line 2972
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v53, v0

    .line 2975
    .local v53, "task":Lcom/android/server/am/TaskRecord;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b57

    .line 2978
    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v55

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusGain(Landroid/content/Context;Ljava/lang/String;)V

    .line 2981
    :cond_b57
    move-object/from16 v0, v53

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2982
    const/16 v5, 0x7533

    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-static {v5, v0, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2983
    move-object/from16 v0, v55

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 2984
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v55

    invoke-virtual {v0, v15, v5}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2985
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2986
    if-eqz p6, :cond_b8b

    .line 2987
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2989
    if-nez v37, :cond_b8b

    .line 2990
    move-object/from16 v0, p0

    iget-object v5, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v55

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2994
    :cond_b8b
    const/4 v5, 0x3

    goto/16 :goto_41c

    .line 3000
    .end local v53    # "task":Lcom/android/server/am/TaskRecord;
    :cond_b8e
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_9d5

    .line 3004
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v48    # "sourceTask":Lcom/android/server/am/TaskRecord;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_b98
    if-eqz p8, :cond_c7a

    .line 3007
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v5

    if-eqz v5, :cond_bc3

    .line 3008
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted Lock Task Mode violation r="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    const/4 v5, 0x5

    move-object/from16 v4, v52

    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_41c

    .line 3014
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_bc3
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v5, v2}, adjustStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 3015
    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p8

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v4, v5, :cond_c40

    .line 3016
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, p8

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 3017
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 3018
    move-object/from16 v0, p8

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v53

    .line 3019
    .restart local v53    # "task":Lcom/android/server/am/TaskRecord;
    if-nez v53, :cond_c30

    .line 3020
    move-object/from16 v0, p8

    iput-object v4, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3040
    .end local v53    # "task":Lcom/android/server/am/TaskRecord;
    :goto_bf6
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v55

    .line 3041
    if-eqz v55, :cond_c68

    move-object/from16 v0, v55

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c68

    move-object/from16 v0, v55

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, v6, :cond_c68

    .line 3042
    const/high16 v5, 0x20000000

    and-int v5, v5, v33

    if-nez v5, :cond_c1e

    if-nez v36, :cond_c1e

    if-eqz v35, :cond_c68

    .line 3044
    :cond_c1e
    const/16 v5, 0x7533

    move-object/from16 v0, v55

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v55

    invoke-static {v5, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3045
    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_c5c

    .line 3049
    const/4 v5, 0x1

    goto/16 :goto_41c

    .line 3022
    .restart local v53    # "task":Lcom/android/server/am/TaskRecord;
    :cond_c30
    move-object/from16 v0, p8

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, moveTaskToStack(IIZZ)V

    goto :goto_bf6

    .line 3025
    .end local v53    # "task":Lcom/android/server/am/TaskRecord;
    :cond_c40
    move-object/from16 v0, p8

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 3026
    move-object/from16 v0, p8

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 3027
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->moveToFront()V

    .line 3028
    move-object/from16 v0, p0

    iget-object v5, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p8

    iget v6, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    goto :goto_bf6

    .line 3051
    :cond_c5c
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v55

    invoke-virtual {v0, v15, v5}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 3052
    const/4 v5, 0x3

    goto/16 :goto_41c

    .line 3056
    :cond_c68
    if-nez v12, :cond_c70

    .line 3059
    invoke-static/range {p7 .. p7}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3060
    const/4 v5, 0x2

    goto/16 :goto_41c

    .line 3063
    :cond_c70
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_9d5

    .line 3071
    .end local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_c7a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v39

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, adjustStackFocus(Lcom/android/server/am/ActivityRecord;ZLcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    .line 3072
    .end local v52    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v4    # "targetStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->moveToFront()V

    .line 3073
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v44

    .line 3074
    .local v44, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v44, :cond_ca8

    move-object/from16 v0, v44

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_c93
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3076
    move-object/from16 v0, p0

    iget-object v5, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    goto/16 :goto_9d5

    .line 3074
    :cond_ca8
    invoke-virtual/range {p0 .. p0}, getNextTaskId()I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v7, v27

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    goto :goto_c93

    .line 2236
    :pswitch_data_cba
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_19d
        :pswitch_1a3
        :pswitch_1a9
    .end packed-switch
.end method

.method public startBackgroundUserLocked(ILcom/android/server/am/UserStartedState;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserStartedState;

    .prologue
    .line 4417
    iget-object v0, p0, mStartingBackgroundUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4418
    return-void
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1226
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, moveHomeStackTaskToTop(I)V

    .line 1227
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v21}, startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    .line 1229
    return-void
.end method

.method startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 21
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "andResume"    # Z
    .param p3, "checkConfig"    # Z

    .prologue
    .line 1707
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v14

    .line 1710
    .local v14, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1712
    if-eqz v14, :cond_94

    iget-object v4, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_94

    .line 1714
    move-object/from16 v0, p0

    iget-boolean v4, v0, SAMP_ENABLE:Z

    if-eqz v4, :cond_34

    .line 1715
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/am/ActivityManagerService;->updateHotnessAdj(Lcom/android/server/am/ProcessRecord;)V

    .line 1718
    :cond_34
    :try_start_34
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4c

    const-string v4, "android"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 1724
    :cond_4c
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->versionCode:I

    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v14, v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    .line 1727
    :cond_63
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v14, v2, v3}, realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_6e} :catch_6f

    .line 1759
    :cond_6e
    :goto_6e
    return-void

    .line 1729
    :catch_6f
    move-exception v15

    .line 1730
    .local v15, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when starting activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1738
    .end local v15    # "e":Landroid/os/RemoteException;
    :cond_94
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1740
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "activity"

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v16

    .line 1745
    .local v16, "startedApp":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-boolean v4, v0, SAMP_ENABLE:Z

    if-eqz v4, :cond_d0

    .line 1746
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->updateHotnessAdj(Lcom/android/server/am/ProcessRecord;)V

    .line 1750
    :cond_d0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 1753
    if-eqz v14, :cond_6e

    .line 1754
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v6, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v4, v5, v6}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStart(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_6e
.end method

.method switchUserLocked(ILcom/android/server/am/UserStartedState;)Z
    .registers 14
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserStartedState;

    .prologue
    const/4 v10, 0x1

    .line 4370
    iget-object v7, p0, mUserStackInFront:Landroid/util/SparseIntArray;

    iget v8, p0, mCurrentUser:I

    invoke-virtual {p0}, getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 4371
    iget-object v7, p0, mUserStackInFront:Landroid/util/SparseIntArray;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 4372
    .local v2, "restoreStackId":I
    iput p1, p0, mCurrentUser:I

    .line 4374
    iget-object v7, p0, mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4375
    iget-object v7, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "displayNdx":I
    :goto_26
    if-ltz v0, :cond_56

    .line 4376
    iget-object v7, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4377
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "stackNdx":I
    :goto_38
    if-ltz v4, :cond_53

    .line 4378
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 4379
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->switchUserLocked(I)V

    .line 4380
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 4381
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_50

    .line 4382
    iget-object v7, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 4377
    :cond_50
    add-int/lit8 v4, v4, -0x1

    goto :goto_38

    .line 4375
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_53
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 4387
    .end local v4    # "stackNdx":I
    .end local v5    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_56
    invoke-virtual {p0, v2}, getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 4388
    .restart local v3    # "stack":Lcom/android/server/am/ActivityStack;
    if-nez v3, :cond_5e

    .line 4389
    iget-object v3, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 4391
    :cond_5e
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v1

    .line 4392
    .local v1, "homeInFront":Z
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v7

    if-eqz v7, :cond_79

    .line 4395
    invoke-virtual {p0, v3, v10}, moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 4400
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    .line 4401
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_78

    .line 4402
    iget-object v7, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 4408
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_78
    :goto_78
    return v1

    .line 4406
    :cond_79
    const/4 v7, 0x0

    invoke-virtual {p0, v10, v7}, resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;)Z

    goto :goto_78
.end method

.method topResumedActivityExceptFloatingLocked(ZI)Lcom/android/server/am/ActivityRecord;
    .registers 10
    .param p1, "absoluteTop"    # Z
    .param p2, "displayId"    # I

    .prologue
    const/4 v4, 0x0

    .line 5883
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_22

    .line 5884
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is no ActivityDisplay for displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5901
    :goto_21
    return-object v4

    .line 5888
    :cond_22
    iget-object v3, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    .line 5889
    .local v2, "taskOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    if-eqz p1, :cond_47

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_47

    .line 5890
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    goto :goto_21

    .line 5892
    :cond_47
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "taskNdx":I
    :goto_4d
    if-ltz v1, :cond_7e

    .line 5893
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 5894
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_7b

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_7b

    .line 5895
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v5, :cond_7b

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_7b

    .line 5897
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_21

    .line 5892
    :cond_7b
    add-int/lit8 v1, v1, -0x1

    goto :goto_4d

    .line 5901
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_7e
    iget-object v3, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_88

    iget-object v3, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :goto_86
    move-object v4, v3

    goto :goto_21

    :cond_88
    move-object v3, v4

    goto :goto_86
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .registers 2

    .prologue
    .line 1041
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 12
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v8, 0x0

    .line 1046
    invoke-virtual {p0}, getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 1047
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    const/4 v2, 0x0

    .line 1048
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v0}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1049
    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1050
    if-eqz v2, :cond_16

    if-eq p1, v2, :cond_16

    move-object v7, v2

    .line 1076
    :cond_15
    :goto_15
    return-object v7

    .line 1056
    :cond_16
    iget-object v9, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "i":I
    :goto_22
    if-ltz v1, :cond_39

    .line 1057
    iget-object v9, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 1058
    .local v6, "top":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v6, v8}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 1059
    .local v7, "topRunningActivity":Lcom/android/server/am/ActivityRecord;
    if-nez v7, :cond_15

    .line 1056
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    .line 1066
    .end local v6    # "top":Lcom/android/server/am/TaskRecord;
    .end local v7    # "topRunningActivity":Lcom/android/server/am/ActivityRecord;
    :cond_39
    iget-object v9, p0, mHomeStack:Lcom/android/server/am/ActivityStack;

    iget-object v5, v9, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 1067
    .local v5, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "stackNdx":I
    :goto_43
    if-ltz v4, :cond_5e

    .line 1068
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 1069
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v3, v0, :cond_5b

    invoke-virtual {p0, v3}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v9

    if-eqz v9, :cond_5b

    .line 1070
    invoke-virtual {v3, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1071
    if-eqz v2, :cond_5b

    move-object v7, v2

    .line 1072
    goto :goto_15

    .line 1067
    :cond_5b
    add-int/lit8 v4, v4, -0x1

    goto :goto_43

    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_5e
    move-object v7, v8

    .line 1076
    goto :goto_15
.end method

.method updateCascadeHiddenFlag(Z)V
    .registers 17
    .param p1, "resumed"    # Z

    .prologue
    .line 6287
    invoke-direct {p0}, needsCascadeForceHidden()Z

    move-result v5

    .line 6288
    .local v5, "needsFlags":Z
    const/4 v1, 0x0

    .line 6289
    .local v1, "flagChanged":Z
    iget-object v11, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 6290
    .local v7, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_c
    if-ge v0, v7, :cond_56

    .line 6291
    iget-object v11, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v9, v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 6292
    .local v9, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    .line 6293
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 6294
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 6295
    .local v10, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_1c

    .line 6296
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eq v11, v5, :cond_1c

    .line 6297
    const/4 v1, 0x1

    .line 6298
    new-instance v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v4, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 6299
    .local v4, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v11, 0x8

    invoke-virtual {v4, v11, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 6300
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v8, v11, v4}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_1c

    .line 6290
    .end local v4    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v8    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 6307
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v9    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_56
    if-eqz v1, :cond_64

    .line 6308
    if-eqz v5, :cond_8d

    .line 6309
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, pauseBackStacks(ZZZ)Z

    .line 6315
    :cond_64
    :goto_64
    invoke-virtual {p0}, getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 6316
    .local v2, "focusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_8c

    .line 6317
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 6318
    .restart local v10    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_8c

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_8c

    .line 6319
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->findNextFocusableFloatingStackIdFromTop()I

    move-result v6

    .line 6320
    .local v6, "nextStackId":I
    const/4 v11, -0x1

    if-le v6, v11, :cond_97

    .line 6321
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 6327
    .end local v6    # "nextStackId":I
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_8c
    :goto_8c
    return-void

    .line 6310
    .end local v2    # "focusedStack":Lcom/android/server/am/ActivityStack;
    :cond_8d
    if-eqz p1, :cond_64

    .line 6311
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11}, resumeTopActivitiesLocked()Z

    goto :goto_64

    .line 6323
    .restart local v2    # "focusedStack":Lcom/android/server/am/ActivityStack;
    .restart local v6    # "nextStackId":I
    .restart local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_97
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v12

    iget v12, v12, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    goto :goto_8c
.end method

.method updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V
    .registers 7
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 5907
    if-eqz p1, :cond_34

    .line 5908
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v0

    if-nez v0, :cond_b

    .line 5909
    iput-object p1, p0, mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 5915
    :cond_b
    :goto_b
    iget-object v0, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v0, p1, :cond_31

    .line 5918
    const v1, 0x12c4b5

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    if-nez p1, :cond_37

    const/4 v0, -0x1

    :goto_18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p2, v2, v0

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5919
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->hasLastDrawnFocusedStackFrameId()Z

    move-result v0

    if-nez v0, :cond_31

    .line 5920
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowManagerService;->setLastDrawnFocusedStackFrameId(I)V

    .line 5926
    :cond_31
    iput-object p1, p0, mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 5927
    return-void

    .line 5912
    :cond_34
    iput-object p1, p0, mNonFloatingFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_b

    .line 5918
    :cond_37
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    goto :goto_18
.end method

.method updateLastShownWhenLocked(I)V
    .registers 17
    .param p1, "displayId"    # I

    .prologue
    .line 4197
    iget-object v11, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v11

    if-nez v11, :cond_11

    .line 4244
    :cond_10
    :goto_10
    return-void

    .line 4200
    :cond_11
    iget-object v11, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 4201
    :try_start_18
    invoke-virtual/range {p0 .. p1}, getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 4202
    .local v0, "globalTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    .line 4203
    .local v10, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v11, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 4204
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->mIsLastShownWhenLocked:Z

    .line 4205
    iget-object v11, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Lcom/android/server/wm/WindowManagerService;->setAppWindowIsLastShownWhenLocked(Landroid/view/IApplicationToken;Z)Z

    goto :goto_32

    .line 4243
    .end local v0    # "globalTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_4a
    move-exception v11

    monitor-exit v12
    :try_end_4c
    .catchall {:try_start_18 .. :try_end_4c} :catchall_4a

    throw v11

    .line 4209
    .restart local v0    # "globalTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_4d
    const/4 v6, 0x0

    .line 4210
    .local v6, "lastShowWhenLockedActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v4, 0x0

    .line 4212
    .local v4, "isUpperShowWhenLockedActivityFound":Z
    :try_start_4f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .local v1, "i":I
    :goto_55
    if-ltz v1, :cond_b3

    .line 4213
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    .line 4214
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .local v5, "j":I
    :goto_65
    if-ltz v5, :cond_b0

    .line 4215
    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 4216
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v11, :cond_76

    .line 4214
    :cond_73
    :goto_73
    add-int/lit8 v5, v5, -0x1

    goto :goto_65

    .line 4220
    :cond_76
    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v11

    const/high16 v13, 0x40000000    # 2.0f

    and-int/2addr v11, v13

    if-nez v11, :cond_73

    iget-object v11, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v11, v11, 0x80

    if-nez v11, :cond_73

    .line 4225
    iget-object v11, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v11, v13}, Lcom/android/server/wm/WindowManagerService;->getMainWindowAttributesLocked(Landroid/view/IApplicationToken;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 4226
    .local v7, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v7, :cond_73

    .line 4227
    iget v11, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, 0x80000

    and-int/2addr v11, v13

    if-eqz v11, :cond_a0

    .line 4228
    if-nez v4, :cond_9e

    .line 4229
    const/4 v4, 0x1

    goto :goto_73

    .line 4231
    :cond_9e
    move-object v6, v8

    goto :goto_73

    .line 4234
    :cond_a0
    if-eqz v6, :cond_ad

    .line 4235
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/android/server/am/ActivityRecord;->mIsLastShownWhenLocked:Z

    .line 4236
    iget-object v11, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Lcom/android/server/wm/WindowManagerService;->setAppWindowIsLastShownWhenLocked(Landroid/view/IApplicationToken;Z)Z

    .line 4238
    :cond_ad
    monitor-exit v12

    goto/16 :goto_10

    .line 4212
    .end local v7    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_b0
    add-int/lit8 v1, v1, -0x1

    goto :goto_55

    .line 4243
    .end local v5    # "j":I
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    :cond_b3
    monitor-exit v12
    :try_end_b4
    .catchall {:try_start_4f .. :try_end_b4} :catchall_4a

    goto/16 :goto_10
.end method

.method updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3330
    const/4 v1, 0x0

    .line 3331
    .local v1, "fgApp":Lcom/android/server/am/ProcessRecord;
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "displayNdx":I
    :goto_9
    if-ltz v0, :cond_40

    .line 3332
    iget-object v5, p0, mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 3333
    .local v4, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1b
    if-ltz v3, :cond_31

    .line 3334
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 3335
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v2}, isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 3336
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_34

    .line 3337
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3331
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_31
    :goto_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 3338
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_34
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_31

    .line 3339
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_31

    .line 3333
    :cond_3d
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 3348
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v3    # "stackNdx":I
    .end local v4    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_40
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_68

    if-eqz v1, :cond_68

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v1, :cond_68

    iget-wide v6, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v8, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_68

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v6, :cond_68

    .line 3351
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 3352
    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v6, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v6, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    .line 3354
    :cond_68
    return-void
.end method

.method validateTopActivitiesLocked()V
    .registers 1

    .prologue
    .line 4494
    return-void
.end method
