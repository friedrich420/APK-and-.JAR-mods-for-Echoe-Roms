.class final Lcom/android/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$1;,
        Lcom/android/server/am/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/am/ActivityStack$ActivityState;
    }
.end annotation


# static fields
.field static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x0L

.field static final DESTROY_ACTIVITIES_MSG:I = 0x69

.field static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x66

.field static final FINISH_AFTER_PAUSE:I = 0x1

.field static final FINISH_AFTER_VISIBLE:I = 0x2

.field static final FINISH_IMMEDIATELY:I = 0x0

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x67

.field static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field static final RELEASE_BACKGROUND_RESOURCES_TIMEOUT_MSG:I = 0x6b

.field static final SCREENSHOT_FORCE_565:Z

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final START_WARN_TIME:J = 0x1388L

.field static final STOP_TIMEOUT:I = 0x2710

.field static final STOP_TIMEOUT_MSG:I = 0x68

.field static final SUPPORT_MULTIPLE_PAUSING_ACTIVITIES:Z = true

.field static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field static final TRANSLUCENT_TIMEOUT_MSG:I = 0x6a

.field private static final bDSSEnabled:Z = true


# instance fields
.field private SAMP_ENABLE:Z

.field private inResumeTopActivity:Z

.field final mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

.field mConfigWillChange:Z

.field mCurrentUser:I

.field mDisplayId:I

.field mFeatureMultiwindowRecentUI:Z

.field mFullyDrawnStartTime:J

.field final mHandler:Landroid/os/Handler;

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field private mLastScreenshotActivity:Lcom/android/server/am/ActivityRecord;

.field private mLastScreenshotBitmap:Landroid/graphics/Bitmap;

.field mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

.field mLaunchStartTime:J

.field mNeedUpdateFocusWhileRemovingStack:Z

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mPausingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStackId:I

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field final mStackType:I

.field mStackZone:I

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

.field private mTwiceResumeTop:Z

.field private mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mVRStack:Z

.field final mValidateAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 175
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    sput-boolean v0, SCREENSHOT_FORCE_565:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;II)V
    .registers 10
    .param p1, "activityContainer"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p2, "stackType"    # I
    .param p3, "zone"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mValidateAppTokens:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mLRUActivities:Ljava/util/ArrayList;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mNoAnimActivities:Ljava/util/ArrayList;

    .line 222
    iput-object v1, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPausingActivities:Ljava/util/ArrayList;

    .line 238
    iput-object v1, p0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 245
    iput-object v1, p0, mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 250
    iput-object v1, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 257
    iput-object v1, p0, mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

    .line 265
    iput-object v1, p0, mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 275
    iput-wide v4, p0, mLaunchStartTime:J

    .line 276
    iput-wide v4, p0, mFullyDrawnStartTime:J

    .line 282
    iput-object v1, p0, mLastScreenshotActivity:Lcom/android/server/am/ActivityRecord;

    .line 283
    iput-object v1, p0, mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 295
    iput-boolean v2, p0, mNeedUpdateFocusWhileRemovingStack:Z

    .line 296
    iput-boolean v2, p0, mFeatureMultiwindowRecentUI:Z

    .line 320
    iput-boolean v2, p0, SAMP_ENABLE:Z

    .line 596
    iput v2, p0, mStackZone:I

    .line 421
    iput-object p1, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 422
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getOuter()Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v0

    iput-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 423
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    .line 424
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;

    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 425
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 426
    iget v0, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    iput v0, p0, mStackId:I

    .line 427
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    iput v0, p0, mCurrentUser:I

    .line 430
    iput p2, p0, mStackType:I

    .line 431
    iput p3, p0, mStackZone:I

    .line 432
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportRecentUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, mFeatureMultiwindowRecentUI:Z

    .line 435
    iput-boolean v2, p0, mVRStack:Z

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, SAMP_ENABLE:Z

    .line 442
    return-void
.end method

.method private adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3374
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_49

    .line 3375
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3376
    .local v0, "next":Lcom/android/server/am/ActivityRecord;
    if-eq v0, p1, :cond_3c

    .line 3377
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3378
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_3c

    invoke-virtual {p0}, topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-ne v1, v3, :cond_3c

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-nez v3, :cond_33

    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {p0}, isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 3380
    :cond_33
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(I)V

    .line 3383
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3c
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3384
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_49

    .line 3385
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3389
    .end local v0    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_49
    return-void
.end method

.method private clearWindowModeLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 1837
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1838
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1839
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto :goto_6

    .line 1842
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_26
    return-void
.end method

.method private completePauseLocked(Z)V
    .registers 3
    .param p1, "resumeNext"    # Z

    .prologue
    .line 1382
    iget-object v0, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1384
    .local v0, "prev":Lcom/android/server/am/ActivityRecord;
    invoke-direct {p0, p1, v0}, completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    .line 1385
    return-void
.end method

.method private completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V
    .registers 15
    .param p1, "resumeNext"    # Z
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 1391
    if-eqz p2, :cond_1b

    .line 1392
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1393
    iget-boolean v6, p2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_7d

    .line 1395
    const/4 v6, 0x2

    invoke-virtual {p0, p2, v6, v7}, finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object p2

    .line 1440
    :cond_14
    :goto_14
    iput-object v8, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1443
    iget-object v6, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1448
    :cond_1b
    if-eqz p1, :cond_30

    .line 1449
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    .line 1456
    .local v5, "topStack":Lcom/android/server/am/ActivityStack;
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v6

    if-nez v6, :cond_d7

    .line 1457
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v5, p2, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 1472
    .end local v5    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_30
    :goto_30
    if-eqz p2, :cond_7c

    .line 1473
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1475
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_7a

    iget-wide v6, p2, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_7a

    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 1477
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v6

    iget-wide v8, p2, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long v2, v6, v8

    .line 1479
    .local v2, "diff":J
    cmp-long v6, v2, v10

    if-lez v6, :cond_7a

    .line 1480
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .line 1481
    .local v0, "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v0

    .line 1482
    :try_start_66
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v1

    .line 1485
    .local v1, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v1, :cond_79

    .line 1486
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 1488
    :cond_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_66 .. :try_end_7a} :catchall_ed

    .line 1491
    .end local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v1    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v2    # "diff":J
    :cond_7a
    iput-wide v10, p2, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1493
    :cond_7c
    return-void

    .line 1396
    :cond_7d
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_d4

    .line 1398
    iget-boolean v6, p2, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v6, :cond_8e

    .line 1399
    iput-boolean v7, p2, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 1400
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1404
    :cond_8e
    iget-boolean v6, p2, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v6, :cond_9a

    .line 1411
    const-string/jumbo v6, "pause-config"

    invoke-virtual {p0, p2, v9, v6}, destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    goto/16 :goto_14

    .line 1412
    :cond_9a
    invoke-virtual {p0}, hasVisibleBehindActivity()Z

    move-result v6

    if-nez v6, :cond_14

    .line 1415
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1416
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-gt v6, v7, :cond_c6

    iget-boolean v6, p2, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v6, :cond_be

    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v9, :cond_c6

    :cond_be
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesIdle()Z

    move-result v6

    if-eqz v6, :cond_cd

    .line 1431
    :cond_c6
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto/16 :goto_14

    .line 1433
    :cond_cd
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    goto/16 :goto_14

    .line 1438
    :cond_d4
    const/4 p2, 0x0

    goto/16 :goto_14

    .line 1459
    .restart local v5    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_d7
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 1460
    invoke-virtual {v5, v8}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1461
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_e6

    if-eqz p2, :cond_30

    if-eq v4, p2, :cond_30

    .line 1467
    :cond_e6
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v5, v8, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    goto/16 :goto_30

    .line 1488
    .end local v4    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "topStack":Lcom/android/server/am/ActivityStack;
    .restart local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v2    # "diff":J
    :catchall_ed
    move-exception v6

    :try_start_ee
    monitor-exit v0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    throw v6
.end method

.method private completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 7
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1501
    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 1502
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1503
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1505
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1506
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1507
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_2c

    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v1, :cond_2c

    .line 1508
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 1512
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_2c
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v1, :cond_35

    .line 1514
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    .line 1518
    :cond_35
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowStyle:Z

    if-eqz v1, :cond_3d

    .line 1519
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v2, v1}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1524
    :cond_3d
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1526
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1528
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1529
    iget-object v1, p0, mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1534
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_7a

    .line 1535
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1542
    :goto_61
    iget-object v1, p0, mLastScreenshotActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v1, :cond_68

    .line 1543
    invoke-direct {p0}, invalidateLastScreenshot()V

    .line 1545
    :cond_68
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 1547
    iget-object v1, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_79

    .line 1549
    iget-object v1, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 1560
    :cond_79
    return-void

    .line 1537
    :cond_7a
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_61
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 2752
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, insertTaskAtTop(Lcom/android/server/am/TaskRecord;Z)V

    .line 2753
    return-void
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;Z)V
    .registers 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "arrangeReturnTo"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2758
    invoke-virtual {p0}, isOnHomeDisplay()Z

    move-result v6

    if-eqz v6, :cond_88

    .line 2759
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2761
    .local v1, "lastStack":Lcom/android/server/am/ActivityStack;
    const/4 v2, 0x0

    .line 2763
    .local v2, "skip":Z
    invoke-virtual {v1}, isFloatingStack()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 2764
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 2766
    :cond_1b
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, isSplitStack()Z

    move-result v2

    .line 2769
    invoke-virtual {v1}, isHomeStack()Z

    move-result v0

    .line 2770
    .local v0, "fromHome":Z
    invoke-virtual {p0}, isHomeStack()Z

    move-result v6

    if-nez v6, :cond_41

    if-nez v0, :cond_33

    invoke-virtual {p0}, topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eq v6, p1, :cond_41

    :cond_33
    if-nez v2, :cond_41

    .line 2772
    if-eqz v0, :cond_3e

    invoke-virtual {v1}, topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-nez v4, :cond_81

    move v4, v5

    :cond_3e
    :goto_3e
    invoke-virtual {p1, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 2782
    .end local v0    # "fromHome":Z
    .end local v1    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "skip":Z
    :cond_41
    :goto_41
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2784
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2785
    .local v3, "taskNdx":I
    iget v4, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v4}, isCurrentProfileLocked(I)Z

    move-result v4

    if-nez v4, :cond_6a

    .line 2787
    :cond_54
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_68

    .line 2788
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v4}, isCurrentProfileLocked(I)Z

    move-result v4

    if-nez v4, :cond_54

    .line 2792
    :cond_68
    add-int/lit8 v3, v3, 0x1

    .line 2794
    :cond_6a
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2798
    iget-object v4, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;)V

    .line 2799
    if-eqz p2, :cond_7d

    .line 2800
    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v6, p0, mDisplayId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->arrangeTaskToReturnTo(I)V

    .line 2805
    :cond_7d
    invoke-virtual {p0, p1, v5}, updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 2806
    return-void

    .line 2772
    .end local v3    # "taskNdx":I
    .restart local v0    # "fromHome":Z
    .restart local v1    # "lastStack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "skip":Z
    :cond_81
    invoke-virtual {v1}, topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskType:I

    goto :goto_3e

    .line 2779
    .end local v0    # "fromHome":Z
    .end local v1    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "skip":Z
    :cond_88
    invoke-virtual {p1, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_41
.end method

.method private invalidateLastScreenshot()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1072
    iput-object v1, p0, mLastScreenshotActivity:Lcom/android/server/am/ActivityRecord;

    .line 1073
    iget-object v0, p0, mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 1074
    iget-object v0, p0, mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1076
    :cond_c
    iput-object v1, p0, mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 1077
    return-void
.end method

.method private isStackVisible()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1620
    invoke-virtual {p0}, isAttached()Z

    move-result v7

    if-nez v7, :cond_a

    move v7, v8

    .line 1655
    :goto_9
    return v7

    .line 1624
    :cond_a
    iget-object v7, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v7

    if-eqz v7, :cond_14

    move v7, v9

    .line 1625
    goto :goto_9

    .line 1633
    :cond_14
    iget-object v7, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .local v2, "i":I
    :goto_1c
    iget-object v7, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_73

    .line 1634
    iget-object v7, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 1635
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v5, 0x0

    .local v5, "taskNdx":I
    :goto_31
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_70

    .line 1636
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1637
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1638
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v1, 0x0

    .local v1, "activityNdx":I
    :goto_40
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_6d

    .line 1639
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1647
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_6a

    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v7, :cond_6a

    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v7, :cond_68

    invoke-virtual {p0}, isHomeStack()Z

    move-result v7

    if-nez v7, :cond_6a

    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v7, :cond_6a

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v7

    if-eqz v7, :cond_6a

    :cond_68
    move v7, v8

    .line 1649
    goto :goto_9

    .line 1638
    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 1635
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 1633
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .end local v5    # "taskNdx":I
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_73
    move v7, v9

    .line 1655
    goto :goto_9
.end method

.method static final logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .registers 12
    .param p0, "tag"    # I
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4781
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 4782
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    .line 4784
    .local v1, "strData":Ljava/lang/String;
    :goto_11
    if-eqz v1, :cond_6c

    const-string v2, "nfc://secure"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 4785
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "nfc://secure:it should not be shown "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4795
    :goto_69
    return-void

    .line 4782
    .end local v1    # "strData":Ljava/lang/String;
    :cond_6a
    const/4 v1, 0x0

    goto :goto_11

    .line 4790
    .restart local v1    # "strData":Ljava/lang/String;
    :cond_6c
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_69
.end method

.method private relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z
    .registers 14
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "changes"    # I
    .param p3, "andResume"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 4955
    const/4 v2, 0x0

    .line 4956
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v3, 0x0

    .line 4957
    .local v3, "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_b

    .line 4958
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4959
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 4964
    :cond_b
    if-eqz p3, :cond_71

    const/16 v0, 0x7543

    :goto_f
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v8

    const/4 v4, 0x2

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    const/4 v4, 0x3

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4968
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0, v5}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 4973
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 4974
    iput-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 4978
    :cond_46
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V

    .line 4984
    const/4 v0, 0x0

    :try_start_4c
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 4985
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez p3, :cond_57

    move v5, v8

    :cond_57
    new-instance v6, Landroid/content/res/Configuration;

    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v6, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move v4, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_66} :catch_80

    .line 4995
    :goto_66
    if-eqz p3, :cond_74

    .line 4996
    iput-object v9, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4997
    iput-object v9, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 4998
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 5004
    :goto_70
    return v8

    .line 4964
    :cond_71
    const/16 v0, 0x7544

    goto :goto_f

    .line 5000
    :cond_74
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5001
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_70

    .line 4991
    :catch_80
    move-exception v0

    goto :goto_66
.end method

.method private removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    .line 4030
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V

    .line 4031
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v2}, finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 4032
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 4038
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 4039
    invoke-direct {p0, p1}, removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4041
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4043
    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4044
    iget-object v1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    .line 4048
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 4049
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_53

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 4052
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {p0}, topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne v0, v1, :cond_47

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 4054
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(I)V

    .line 4056
    :cond_47
    invoke-virtual {p0, v0}, removeTask(Lcom/android/server/am/TaskRecord;)V

    .line 4059
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskStopped(I)V

    .line 4063
    :cond_53
    invoke-virtual {p0, p1}, cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4064
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    .line 4065
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 7
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4347
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4351
    .local v0, "i":I
    :cond_4
    :goto_4
    if-lez v0, :cond_19

    .line 4352
    add-int/lit8 v0, v0, -0x1

    .line 4353
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 4355
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p2, :cond_4

    .line 4357
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4358
    invoke-direct {p0, v1}, removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_4

    .line 4361
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_19
    return-void
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 4022
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4023
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4024
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4025
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4026
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 4027
    return-void
.end method

.method private resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I
    .registers 29
    .param p1, "affinityTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "topTaskIsHigher"    # Z
    .param p4, "forceReset"    # Z
    .param p5, "taskInsertionPoint"    # I

    .prologue
    .line 3191
    const/4 v14, -0x1

    .line 3192
    .local v14, "replyChainEnd":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v22, v0

    .line 3193
    .local v22, "taskId":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 3195
    .local v21, "taskAffinity":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3196
    .local v8, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 3197
    .local v13, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v15

    .line 3200
    .local v15, "rootActivityNdx":I
    add-int/lit8 v12, v13, -0x1

    .local v12, "i":I
    :goto_1b
    if-le v12, v15, :cond_29

    .line 3201
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 3202
    .local v18, "target":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_2a

    .line 3289
    .end local v18    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_29
    return p5

    .line 3205
    .restart local v18    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_2a
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3206
    .local v11, "flags":I
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_46

    const/4 v10, 0x1

    .line 3207
    .local v10, "finishOnTaskLaunch":Z
    :goto_35
    and-int/lit8 v2, v11, 0x40

    if-eqz v2, :cond_48

    const/4 v9, 0x1

    .line 3209
    .local v9, "allowTaskReparenting":Z
    :goto_3a
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_4a

    .line 3216
    if-gez v14, :cond_43

    .line 3217
    move v14, v12

    .line 3200
    :cond_43
    :goto_43
    add-int/lit8 v12, v12, -0x1

    goto :goto_1b

    .line 3206
    .end local v9    # "allowTaskReparenting":Z
    .end local v10    # "finishOnTaskLaunch":Z
    :cond_46
    const/4 v10, 0x0

    goto :goto_35

    .line 3207
    .restart local v10    # "finishOnTaskLaunch":Z
    :cond_48
    const/4 v9, 0x0

    goto :goto_3a

    .line 3219
    .restart local v9    # "allowTaskReparenting":Z
    :cond_4a
    if-eqz p3, :cond_43

    if-eqz v9, :cond_43

    if-eqz v21, :cond_43

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 3233
    if-nez p4, :cond_60

    if-eqz v10, :cond_88

    .line 3234
    :cond_60
    if-ltz v14, :cond_79

    move/from16 v17, v14

    .line 3236
    .local v17, "start":I
    :goto_64
    move/from16 v16, v17

    .local v16, "srcPos":I
    :goto_66
    move/from16 v0, v16

    if-lt v0, v12, :cond_10d

    .line 3237
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3238
    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_7c

    .line 3236
    :goto_76
    add-int/lit8 v16, v16, -0x1

    goto :goto_66

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_79
    move/from16 v17, v12

    .line 3234
    goto :goto_64

    .line 3241
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "srcPos":I
    .restart local v17    # "start":I
    :cond_7c
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "reset"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_76

    .line 3244
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_88
    if-gez p5, :cond_92

    .line 3245
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p5

    .line 3249
    :cond_92
    if-ltz v14, :cond_bf

    move/from16 v17, v14

    .line 3252
    .restart local v17    # "start":I
    :goto_96
    move/from16 v16, v17

    .restart local v16    # "srcPos":I
    :goto_98
    move/from16 v0, v16

    if-lt v0, v12, :cond_c2

    .line 3253
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3254
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3255
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 3262
    move-object/from16 v0, p0

    iget-object v2, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v22

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 3252
    add-int/lit8 v16, v16, -0x1

    goto :goto_98

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_bf
    move/from16 v17, v12

    .line 3249
    goto :goto_96

    .line 3264
    .restart local v16    # "srcPos":I
    .restart local v17    # "start":I
    :cond_c2
    move-object/from16 v0, p0

    iget-object v2, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 3273
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_10d

    .line 3274
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 3275
    .local v20, "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 3276
    .local v19, "targetNdx":I
    if-lez v19, :cond_10d

    .line 3277
    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3278
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 3279
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "replace"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3286
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v19    # "targetNdx":I
    .end local v20    # "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_10d
    const/4 v14, -0x1

    goto/16 :goto_43
.end method

.method private setVisibile(Lcom/android/server/am/ActivityRecord;Z)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "visible"    # Z

    .prologue
    .line 1563
    iput-boolean p2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1564
    iget-object v3, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1565
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    .line 1566
    .local v2, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "containerNdx":I
    :goto_11
    if-ltz v1, :cond_1f

    .line 1567
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 1568
    .local v0, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setVisible(Z)V

    .line 1566
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 1570
    .end local v0    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_1f
    return-void
.end method

.method private startLaunchTraces()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x40

    const/4 v4, 0x0

    .line 961
    iget-wide v0, p0, mFullyDrawnStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 962
    const-string v0, "drawing"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 964
    :cond_10
    const-string v0, "launching"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 965
    const-string v0, "drawing"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 966
    return-void
.end method

.method private stopFullyDrawnTraceIfNeeded()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 969
    iget-wide v0, p0, mFullyDrawnStartTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_18

    iget-wide v0, p0, mLaunchStartTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_18

    .line 970
    const-wide/16 v0, 0x40

    const-string v2, "drawing"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 971
    iput-wide v4, p0, mFullyDrawnStartTime:J

    .line 973
    :cond_18
    return-void
.end method


# virtual methods
.method final activityDestroyedLocked(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 4276
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4278
    .local v0, "origId":J
    :try_start_4
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 4279
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_11

    .line 4280
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4284
    :cond_11
    invoke-virtual {p0, p1}, isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 4285
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_25

    .line 4286
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4287
    invoke-direct {p0, v2}, removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4290
    :cond_25
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_2e

    .line 4292
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4294
    return-void

    .line 4292
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_2e
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method final activityPausedLocked(Landroid/os/IBinder;Z)V
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z

    .prologue
    const/4 v8, 0x1

    .line 1294
    invoke-virtual {p0, p1}, isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 1295
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1d

    .line 1296
    iget-object v4, p0, mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1297
    iget-object v4, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v4, v2, :cond_1a

    iget-object v4, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1307
    :cond_1a
    invoke-direct {p0, v8, v2}, completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    .line 1338
    :cond_1d
    :goto_1d
    return-void

    .line 1315
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1316
    .local v0, "currentlyPausing":Ljava/lang/StringBuilder;
    iget-object v4, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1317
    .local v3, "record":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_40

    .line 1318
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1320
    :cond_40
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 1322
    .end local v3    # "record":Lcom/android/server/am/ActivityRecord;
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_51

    .line 1323
    const-string v4, "(none)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    :cond_51
    const/16 v4, 0x753c

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_1d
.end method

.method final activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;
    .param p4, "description"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x68

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1342
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_28

    .line 1343
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1379
    :cond_27
    :goto_27
    return-void

    .line 1347
    :cond_28
    if-eqz p3, :cond_33

    .line 1348
    iput-object p3, p1, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 1349
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 1352
    :cond_33
    if-eqz p2, :cond_3f

    .line 1355
    iput-object p2, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 1356
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 1357
    iput v2, p1, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 1358
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p4}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 1360
    :cond_3f
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v0, :cond_27

    .line 1362
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1363
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 1364
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1365
    iget-object v0, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_5b

    .line 1366
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    .line 1368
    :cond_5b
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_63

    .line 1369
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto :goto_27

    .line 1371
    :cond_63
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v0, :cond_73

    .line 1372
    const-string/jumbo v0, "stop-config"

    invoke-virtual {p0, p1, v3, v0}, destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 1373
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto :goto_27

    .line 1375
    :cond_73
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_27
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZZ)V
    .registers 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toTop"    # Z
    .param p3, "moving"    # Z

    .prologue
    const/4 v4, 0x0

    .line 5942
    iput-object p0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 5945
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5946
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 5947
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5948
    .local v1, "ar":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v3, :cond_f

    .line 5949
    const/4 v3, 0x1

    iput-boolean v3, p0, mNeedUpdateFocusWhileRemovingStack:Z

    goto :goto_f

    .line 5956
    .end local v1    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_23
    if-eqz p2, :cond_38

    .line 5957
    invoke-direct {p0, p1}, insertTaskAtTop(Lcom/android/server/am/TaskRecord;)V

    .line 5967
    :goto_28
    if-nez p3, :cond_37

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v3, :cond_37

    .line 5969
    :try_start_2e
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v5, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v3, v4, v5}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_37} :catch_46

    .line 5973
    :cond_37
    :goto_37
    return-void

    .line 5959
    :cond_38
    iget-object v3, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5962
    iget-object v3, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->add(ILcom/android/server/am/TaskRecord;)V

    .line 5965
    invoke-virtual {p0, p1, v4}, updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_28

    .line 5970
    :catch_46
    move-exception v3

    goto :goto_37
.end method

.method awakeFromSleepingLocked()V
    .registers 6

    .prologue
    .line 1002
    iget-object v3, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "taskNdx":I
    :goto_8
    if-ltz v2, :cond_2c

    .line 1003
    iget-object v3, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1004
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_29

    .line 1005
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1004
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 1002
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 1008
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2c
    return-void
.end method

.method final backgroundResourcesReleased(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 4322
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4323
    invoke-virtual {p0}, getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4324
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_18

    .line 4325
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4326
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 4328
    :cond_18
    iget-object v1, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4329
    return-void
.end method

.method cancelInitializingActivities()V
    .registers 9

    .prologue
    .line 2106
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 2107
    .local v5, "topActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x1

    .line 2108
    .local v0, "aboveTop":Z
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_e
    if-ltz v4, :cond_48

    .line 2109
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2110
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "activityNdx":I
    :goto_20
    if-ltz v2, :cond_45

    .line 2111
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2112
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_30

    .line 2113
    if-ne v3, v5, :cond_2d

    .line 2114
    const/4 v0, 0x0

    .line 2110
    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    .line 2119
    :cond_30
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_2d

    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    if-eqz v6, :cond_2d

    .line 2121
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    .line 2122
    iget-object v6, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->removeAppStartingWindow(Landroid/os/IBinder;)V

    goto :goto_2d

    .line 2108
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_45
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    .line 2126
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_48
    return-void
.end method

.method checkReadyForSleepLocked()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1014
    iget-object v2, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_a

    .line 1018
    invoke-virtual {p0, v1, v0, v1, v1}, startPausingLocked(ZZZZ)Z

    .line 1044
    :cond_9
    :goto_9
    return v0

    .line 1024
    :cond_a
    iget-object v2, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_9

    move v0, v1

    .line 1044
    goto :goto_9
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "cleanServices"    # Z
    .param p3, "setState"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3966
    iget-object v3, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_8

    .line 3967
    iput-object v5, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3969
    :cond_8
    iget-object v3, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_e

    .line 3970
    iput-object v5, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 3975
    :cond_e
    iget-object v3, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 3976
    iget-object v3, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3981
    :cond_1b
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService;->clearFocusedActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 3983
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 3984
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 3986
    if-eqz p3, :cond_2c

    .line 3988
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3990
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3996
    :cond_2c
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3997
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4000
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_64

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v3, :cond_64

    .line 4001
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_48
    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 4002
    .local v0, "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 4003
    .local v2, "rec":Lcom/android/server/am/PendingIntentRecord;
    if-eqz v2, :cond_48

    .line 4004
    iget-object v3, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    goto :goto_48

    .line 4007
    .end local v0    # "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2    # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_62
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 4010
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_64
    if-eqz p2, :cond_69

    .line 4011
    invoke-virtual {p0, p1}, cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4015
    :cond_69
    invoke-direct {p0, p1}, removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4016
    invoke-virtual {p0}, getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-ne v3, p1, :cond_77

    .line 4017
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    .line 4019
    :cond_77
    return-void
.end method

.method final cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 4072
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v2, :cond_21

    .line 4073
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4074
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4075
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 4076
    .local v0, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_b

    .line 4078
    .end local v0    # "c":Lcom/android/server/am/ConnectionRecord;
    :cond_1f
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 4080
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_21
    return-void
.end method

.method clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 990
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->fullLaunch:Z

    .line 992
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 993
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    .line 998
    :goto_13
    return-void

    .line 995
    :cond_14
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 996
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_13
.end method

.method closeSystemDialogsLocked()V
    .registers 10

    .prologue
    .line 5030
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "taskNdx":I
    :goto_8
    if-ltz v8, :cond_39

    .line 5031
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5032
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "activityNdx":I
    :goto_1a
    if-ltz v7, :cond_36

    .line 5033
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5034
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_33

    .line 5035
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "close-sys"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5032
    :cond_33
    add-int/lit8 v7, v7, -0x1

    goto :goto_1a

    .line 5030
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_36
    add-int/lit8 v8, v8, -0x1

    goto :goto_8

    .line 5039
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    :cond_39
    return-void
.end method

.method convertToTranslucent(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2064
    iput-object p1, p0, mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2065
    iget-object v0, p0, mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2066
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2067
    return-void
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;
    .registers 14
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"    # Z

    .prologue
    .line 5931
    new-instance v0, Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 5933
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p6, v1}, addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 5934
    return-object v0
.end method

.method final destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 10
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 4089
    const/4 v3, 0x0

    .line 4090
    .local v3, "lastIsOpaque":Z
    const/4 v2, 0x0

    .line 4091
    .local v2, "activityRemoved":Z
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "taskNdx":I
    :goto_a
    if-ltz v5, :cond_4a

    .line 4092
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4093
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1c
    if-ltz v1, :cond_47

    .line 4094
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4095
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_2b

    .line 4093
    :cond_28
    :goto_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 4098
    :cond_2b
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_30

    .line 4099
    const/4 v3, 0x1

    .line 4101
    :cond_30
    if-eqz p1, :cond_36

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, p1, :cond_28

    .line 4104
    :cond_36
    if-eqz v3, :cond_28

    .line 4107
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 4111
    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6, p2}, destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 4112
    const/4 v2, 0x1

    goto :goto_28

    .line 4091
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_47
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 4117
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_4a
    if-eqz v2, :cond_51

    .line 4118
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4120
    :cond_51
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
    .registers 15
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "removeFromApp"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 4186
    const/16 v6, 0x7542

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p3, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4190
    const/4 v3, 0x0

    .line 4192
    .local v3, "removedFromHistory":Z
    invoke-virtual {p0, p1, v5, v5}, cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4194
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_d5

    .line 4196
    .local v1, "hadApp":Z
    :goto_38
    if-eqz v1, :cond_ea

    .line 4197
    if-eqz p2, :cond_81

    .line 4198
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4199
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v7, :cond_62

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_62

    .line 4200
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v10, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 4201
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0x19

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessage(I)Z

    .line 4204
    :cond_62
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_81

    .line 4207
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 4209
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7, v5, v10}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 4210
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 4214
    :cond_81
    const/4 v4, 0x0

    .line 4218
    .local v4, "skipDestroy":Z
    :try_start_82
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v6, v7, v8, v9}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8f} :catch_d8

    .line 4232
    :cond_8f
    :goto_8f
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 4241
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_e3

    if-nez v4, :cond_e3

    .line 4244
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4245
    iget-object v6, p0, mHandler:Landroid/os/Handler;

    const/16 v7, 0x66

    invoke-virtual {v6, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 4246
    .local v2, "msg":Landroid/os/Message;
    iget-object v6, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4266
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "skipDestroy":Z
    :goto_aa
    iput v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 4268
    iget-object v5, p0, mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d4

    if-eqz v1, :cond_d4

    .line 4269
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " being finished, but not in LRU list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    :cond_d4
    return v3

    .end local v1    # "hadApp":Z
    :cond_d5
    move v1, v5

    .line 4194
    goto/16 :goto_38

    .line 4220
    .restart local v1    # "hadApp":Z
    .restart local v4    # "skipDestroy":Z
    :catch_d8
    move-exception v0

    .line 4225
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_8f

    .line 4226
    invoke-direct {p0, p1}, removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4227
    const/4 v3, 0x1

    .line 4228
    const/4 v4, 0x1

    goto :goto_8f

    .line 4249
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e3
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4251
    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_aa

    .line 4255
    .end local v4    # "skipDestroy":Z
    :cond_ea
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_f3

    .line 4256
    invoke-direct {p0, p1}, removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4257
    const/4 v3, 0x1

    goto :goto_aa

    .line 4260
    :cond_f3
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 4262
    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_aa
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z
    .registers 23
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z
    .param p7, "header"    # Ljava/lang/String;

    .prologue
    .line 5682
    const/4 v12, 0x0

    .line 5683
    .local v12, "printed":Z
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v14, v0, -0x1

    .local v14, "taskNdx":I
    :goto_9
    if-ltz v14, :cond_54

    .line 5684
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    .line 5685
    .local v13, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const-string v3, "    "

    const-string v4, "Hist"

    const/4 v5, 0x1

    if-nez p3, :cond_52

    const/4 v6, 0x1

    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Task id #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v12, v0

    .line 5689
    if-eqz v12, :cond_4f

    .line 5690
    const/16 p7, 0x0

    .line 5683
    :cond_4f
    add-int/lit8 v14, v14, -0x1

    goto :goto_9

    .line 5685
    :cond_52
    const/4 v6, 0x0

    goto :goto_25

    .line 5693
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    :cond_54
    return v12
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .registers 5
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    .prologue
    .line 1851
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Z)V

    .line 1852
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Z)V
    .registers 20
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "targetTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "visible"    # Z

    .prologue
    .line 1858
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {p0, v12, v13}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 1859
    .local v11, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v11, :cond_9

    .line 2061
    :cond_8
    :goto_8
    return-void

    .line 1866
    :cond_9
    if-eqz p3, :cond_16

    iget-object v12, p0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_8

    .line 1875
    :cond_16
    iget-object v12, p0, mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eq v12, v11, :cond_31

    .line 1876
    iget-object v12, p0, mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 1877
    iget-object v12, p0, mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v12, :cond_2a

    .line 1879
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1880
    const/4 v12, 0x0

    iput-object v12, p0, mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 1882
    :cond_2a
    iget-object v12, p0, mHandler:Landroid/os/Handler;

    const/16 v13, 0x6a

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1887
    :cond_31
    const/4 v1, 0x1

    .line 1889
    .local v1, "aboveTop":Z
    if-nez p4, :cond_5f

    const/4 v4, 0x1

    .line 1892
    .local v4, "behindFullscreen":Z
    :goto_35
    if-eqz p3, :cond_61

    .line 1893
    iget-object v12, p0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .local v8, "startNdx":I
    move v6, v8

    .line 1894
    .local v6, "endNdx":I
    const/4 v1, 0x0

    .line 1901
    :goto_41
    move v10, v8

    .local v10, "taskNdx":I
    :goto_42
    if-lt v10, v6, :cond_1d3

    .line 1903
    iget-object v12, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    .line 1904
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1905
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .local v3, "activityNdx":I
    :goto_54
    if-ltz v3, :cond_1cf

    .line 1906
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v3, v12, :cond_74

    .line 1905
    :cond_5c
    :goto_5c
    add-int/lit8 v3, v3, -0x1

    goto :goto_54

    .line 1889
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    .end local v4    # "behindFullscreen":Z
    .end local v6    # "endNdx":I
    .end local v8    # "startNdx":I
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "taskNdx":I
    :cond_5f
    const/4 v4, 0x0

    goto :goto_35

    .line 1896
    .restart local v4    # "behindFullscreen":Z
    :cond_61
    iget-object v12, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v8, v12, -0x1

    .line 1897
    .restart local v8    # "startNdx":I
    const/4 v6, 0x0

    .line 1898
    .restart local v6    # "endNdx":I
    invoke-direct {p0}, isStackVisible()Z

    move-result v12

    if-nez v12, :cond_72

    const/4 v4, 0x1

    :goto_71
    goto :goto_41

    :cond_72
    const/4 v4, 0x0

    goto :goto_71

    .line 1909
    .restart local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v3    # "activityNdx":I
    .restart local v9    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v10    # "taskNdx":I
    :cond_74
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 1910
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v12, v7, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v12, :cond_5c

    .line 1913
    if-eqz v1, :cond_82

    if-ne v7, v11, :cond_5c

    .line 1916
    :cond_82
    const/4 v1, 0x0

    .line 1919
    if-eqz v4, :cond_8d

    iget-boolean v12, v7, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v12, :cond_8d

    iget-boolean v12, v7, Lcom/android/server/am/ActivityRecord;->mIsLastShownWhenLocked:Z

    if-eqz v12, :cond_15e

    .line 1926
    :cond_8d
    move-object/from16 v0, p1

    if-eq v7, v0, :cond_95

    .line 1927
    const/4 v12, 0x0

    invoke-virtual {p0, v7, v12}, ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 1930
    :cond_95
    iget-object v12, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_9f

    iget-object v12, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v12, :cond_cf

    .line 1935
    :cond_9f
    move-object/from16 v0, p1

    if-eq v7, v0, :cond_aa

    .line 1936
    iget-object v12, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move/from16 v0, p2

    invoke-virtual {v7, v12, v0}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1938
    :cond_aa
    iget-boolean v12, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v12, :cond_b6

    iget-boolean v12, v7, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v12, :cond_b6

    iget-boolean v12, v7, Lcom/android/server/am/ActivityRecord;->mIsLastShownWhenLocked:Z

    if-eqz v12, :cond_ba

    .line 1941
    :cond_b6
    const/4 v12, 0x1

    invoke-direct {p0, v7, v12}, setVisibile(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1943
    :cond_ba
    move-object/from16 v0, p1

    if-eq v7, v0, :cond_c5

    .line 1944
    iget-object v12, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v7, v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1988
    :cond_c5
    :goto_c5
    iget v12, v7, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int p2, p2, v12

    .line 1990
    iget-boolean v12, v7, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v12, :cond_13f

    .line 1993
    const/4 v4, 0x1

    goto :goto_5c

    .line 1947
    :cond_cf
    iget-boolean v12, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v12, :cond_e9

    .line 1951
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 1953
    :try_start_d7
    iget-object v12, v7, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    if-eqz v12, :cond_c5

    .line 1954
    iget-object v12, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v13, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v14, v7, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-interface {v12, v13, v14}, Landroid/app/IApplicationThread;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    :try_end_e6
    .catch Landroid/os/RemoteException; {:try_start_d7 .. :try_end_e6} :catch_e7

    goto :goto_c5

    .line 1957
    :catch_e7
    move-exception v12

    goto :goto_c5

    .line 1962
    :cond_e9
    const/4 v12, 0x1

    iput-boolean v12, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1963
    iget-object v12, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v13, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v12, v13, :cond_c5

    move-object/from16 v0, p1

    if-eq v7, v0, :cond_c5

    .line 1969
    :try_start_f6
    iget-object v12, p0, mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v12, :cond_104

    .line 1970
    iget-object v12, v7, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v7, v12}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1971
    iget-object v12, p0, mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1973
    :cond_104
    const/4 v12, 0x1

    invoke-direct {p0, v7, v12}, setVisibile(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1974
    const/4 v12, 0x0

    iput-boolean v12, v7, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1975
    iget-object v12, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 1976
    iget-object v12, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v13, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 1977
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_11e} :catch_11f

    goto :goto_c5

    .line 1978
    :catch_11f
    move-exception v5

    .line 1981
    .local v5, "e":Ljava/lang/Exception;
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception thrown making visibile: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c5

    .line 1994
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_13f
    invoke-virtual {p0}, isHomeStack()Z

    move-result v12

    if-nez v12, :cond_152

    iget-boolean v12, v7, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v12, :cond_152

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v12

    if-eqz v12, :cond_152

    .line 1996
    const/4 v4, 0x1

    goto/16 :goto_5c

    .line 1998
    :cond_152
    iget-object v12, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_5c

    .line 2000
    const/4 v4, 0x1

    goto/16 :goto_5c

    .line 2010
    :cond_15e
    iget-boolean v12, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v12, :cond_5c

    .line 2013
    const/4 v12, 0x0

    :try_start_163
    invoke-direct {p0, v7, v12}, setVisibile(Lcom/android/server/am/ActivityRecord;Z)V

    .line 2014
    sget-object v12, Lcom/android/server/am/ActivityStack$1;->$SwitchMap$com$android$server$am$ActivityStack$ActivityState:[I

    iget-object v13, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_1e6

    goto/16 :goto_5c

    .line 2017
    :pswitch_175
    iget-object v12, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_5c

    iget-object v12, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v12, :cond_5c

    .line 2020
    iget-object v12, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v13, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_189} :catch_18b

    goto/16 :goto_5c

    .line 2043
    :catch_18b
    move-exception v5

    .line 2046
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception thrown making hidden: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5c

    .line 2030
    .end local v5    # "e":Ljava/lang/Exception;
    :pswitch_1ac
    :try_start_1ac
    invoke-virtual {p0}, getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-ne v12, v7, :cond_1b7

    .line 2031
    invoke-virtual {p0}, releaseBackgroundResources()V

    goto/16 :goto_5c

    .line 2033
    :cond_1b7
    iget-object v12, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1c8

    .line 2034
    iget-object v12, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2036
    :cond_1c8
    iget-object v12, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1cd} :catch_18b

    goto/16 :goto_5c

    .line 1901
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1cf
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_42

    .line 2056
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1d3
    iget-object v12, p0, mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v12, :cond_8

    iget-object v12, p0, mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 2059
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_8

    .line 2014
    nop

    :pswitch_data_1e6
    .packed-switch 0x1
        :pswitch_175
        :pswitch_175
        :pswitch_1ac
        :pswitch_1ac
        :pswitch_1ac
        :pswitch_1ac
    .end packed-switch
.end method

.method final ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .registers 15
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "globalChanges"    # I

    .prologue
    .line 4806
    iget-boolean v9, p0, mConfigWillChange:Z

    if-eqz v9, :cond_6

    .line 4809
    const/4 v9, 0x1

    .line 4950
    :goto_5
    return v9

    .line 4817
    :cond_6
    iget-object v9, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v9, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 4821
    .local v3, "newConfig":Landroid/content/res/Configuration;
    iget-object v9, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mScaledAppNames:Ljava/util/Map;

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_4b

    iget-object v9, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->isScaledPid(I)Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 4822
    :cond_28
    new-instance v2, Landroid/content/res/Configuration;

    iget-object v9, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v2, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 4823
    .local v2, "mScaledConfiguration":Landroid/content/res/Configuration;
    iget-object v9, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mDssHelper:Landroid/os/DssHelper;

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/os/DssHelper;->getScalingFactor(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 4824
    .local v7, "scalfac":Ljava/lang/Double;
    invoke-virtual {v7}, Ljava/lang/Double;->floatValue()F

    move-result v6

    .line 4825
    .local v6, "resolutionFactorf":F
    iget v9, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    float-to-int v9, v9

    iput v9, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 4826
    move-object v3, v2

    .line 4830
    .end local v2    # "mScaledConfiguration":Landroid/content/res/Configuration;
    .end local v6    # "resolutionFactorf":F
    .end local v7    # "scalfac":Ljava/lang/Double;
    :cond_4b
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    if-ne v9, v3, :cond_55

    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-nez v9, :cond_55

    .line 4833
    const/4 v9, 0x1

    goto :goto_5

    .line 4838
    :cond_55
    const/4 v8, 0x0

    .line 4839
    .local v8, "typeCascade":Z
    const/4 v1, 0x0

    .line 4840
    .local v1, "declaredFixedOrientation":Z
    const/4 v5, 0x0

    .line 4841
    .local v5, "optionFixedOrientation":Z
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v9, :cond_7a

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_7a

    .line 4842
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_a0

    const/4 v8, 0x1

    .line 4843
    :goto_6a
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v10, 0x400000

    invoke-virtual {v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    .line 4844
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p0, v9}, isFixedOrientationDeclared(I)Z

    move-result v1

    .line 4846
    :cond_7a
    if-eqz v8, :cond_a2

    if-eqz v5, :cond_a2

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8e

    iget-object v9, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_9d

    :cond_8e
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-nez v9, :cond_a2

    iget-object v9, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a2

    .line 4851
    :cond_9d
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 4842
    :cond_a0
    const/4 v8, 0x0

    goto :goto_6a

    .line 4857
    :cond_a2
    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v9, :cond_ad

    .line 4860
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 4861
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 4866
    :cond_ad
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 4867
    .local v4, "oldConfig":Landroid/content/res/Configuration;
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 4873
    invoke-virtual {v4, v3}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 4874
    .local v0, "changes":I
    if-nez v0, :cond_be

    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-nez v9, :cond_be

    .line 4877
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 4882
    :cond_be
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_c8

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v9, :cond_d2

    .line 4885
    :cond_c8
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 4886
    const/4 v9, 0x0

    iput-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 4887
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 4897
    :cond_d2
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v9

    xor-int/lit8 v9, v9, -0x1

    and-int/2addr v9, v0

    if-nez v9, :cond_e1

    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v9, :cond_127

    .line 4899
    :cond_e1
    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr v9, v0

    iput v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 4900
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v9, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 4901
    const/4 v9, 0x0

    iput-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 4902
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_f8

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v9, :cond_101

    .line 4905
    :cond_f8
    const/4 v9, 0x1

    const-string v10, "config"

    invoke-virtual {p0, p1, v9, v10}, destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 4932
    :goto_fe
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 4906
    :cond_101
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_10d

    .line 4912
    const/4 v9, 0x1

    iput-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 4913
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 4914
    :cond_10d
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_11d

    .line 4921
    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    const/4 v10, 0x1

    invoke-direct {p0, p1, v9, v10}, relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 4922
    const/4 v9, 0x0

    iput v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_fe

    .line 4926
    :cond_11d
    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    const/4 v10, 0x0

    invoke-direct {p0, p1, v9, v10}, relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 4927
    const/4 v9, 0x0

    iput v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_fe

    .line 4940
    :cond_127
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_13a

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v9, :cond_13a

    .line 4943
    :try_start_131
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v9, v10}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    :try_end_13a
    .catch Landroid/os/RemoteException; {:try_start_131 .. :try_end_13a} :catch_141

    .line 4948
    :cond_13a
    :goto_13a
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 4950
    const/4 v9, 0x1

    goto/16 :goto_5

    .line 4944
    :catch_141
    move-exception v9

    goto :goto_13a
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 816
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 817
    .local v2, "cls":Landroid/content/ComponentName;
    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v7, :cond_11

    .line 818
    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "cls":Landroid/content/ComponentName;
    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v2, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    .restart local v2    # "cls":Landroid/content/ComponentName;
    :cond_11
    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 822
    .local v6, "userId":I
    iget-object v7, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "taskNdx":I
    :goto_21
    if-ltz v5, :cond_5e

    .line 823
    iget-object v7, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 824
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget v7, v4, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v7}, isCurrentProfileLocked(I)Z

    move-result v7

    if-nez v7, :cond_36

    .line 822
    :cond_33
    add-int/lit8 v5, v5, -0x1

    goto :goto_21

    .line 827
    :cond_36
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 828
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "activityNdx":I
    :goto_3e
    if-ltz v1, :cond_33

    .line 829
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 830
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_5b

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    iget v7, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v7, v6, :cond_5b

    .line 839
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :goto_5a
    return-object v3

    .line 828
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5b
    add-int/lit8 v1, v1, -0x1

    goto :goto_3e

    .line 839
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5e
    const/4 v3, 0x0

    goto :goto_5a
.end method

.method findActivityLockedByName(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 873
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_8
    if-ltz v4, :cond_39

    .line 874
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 876
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 877
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_36

    .line 878
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 879
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_33

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, p1, :cond_33

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 884
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_32
    return-object v2

    .line 877
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 873
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_36
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 884
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_39
    const/4 v2, 0x0

    goto :goto_32
.end method

.method findActivityLockedByPackage(ILjava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 849
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_8
    if-ltz v4, :cond_39

    .line 850
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 851
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 852
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_36

    .line 853
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 854
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_33

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, p1, :cond_33

    .line 859
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_32
    return-object v2

    .line 852
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 849
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_36
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 859
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_39
    const/4 v2, 0x0

    goto :goto_32
.end method

.method findNextTranslucentActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 15
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v12, 0x0

    .line 1575
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1576
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    if-nez v8, :cond_6

    .line 1614
    :cond_5
    :goto_5
    return-object v12

    .line 1580
    :cond_6
    iget-object v6, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1581
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v6, :cond_5

    .line 1585
    iget-object v11, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1587
    .local v7, "stackNdx":I
    iget-object v10, v6, mTaskHistory:Ljava/util/ArrayList;

    .line 1588
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 1590
    .local v9, "taskNdx":I
    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1591
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    add-int/lit8 v2, v11, 0x1

    .line 1593
    .local v2, "activityNdx":I
    iget-object v11, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1594
    .local v4, "numStacks":I
    :goto_24
    if-ge v7, v4, :cond_5

    .line 1595
    iget-object v11, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStack;

    iget-object v10, v11, mTaskHistory:Ljava/util/ArrayList;

    .line 1596
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1597
    .local v5, "numTasks":I
    :goto_34
    if-ge v9, v5, :cond_5c

    .line 1598
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1599
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1600
    .local v3, "numActivities":I
    :goto_42
    if-ge v2, v3, :cond_58

    .line 1601
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1602
    .local v1, "activity":Lcom/android/server/am/ActivityRecord;
    iget-boolean v11, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v11, :cond_55

    .line 1603
    iget-boolean v11, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v11, :cond_53

    move-object v1, v12

    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_53
    move-object v12, v1

    goto :goto_5

    .line 1605
    .restart local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_55
    add-int/lit8 v2, v2, 0x1

    .line 1606
    goto :goto_42

    .line 1607
    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_58
    const/4 v2, 0x0

    .line 1608
    add-int/lit8 v9, v9, 0x1

    .line 1609
    goto :goto_34

    .line 1610
    .end local v3    # "numActivities":I
    :cond_5c
    const/4 v9, 0x0

    .line 1611
    add-int/lit8 v7, v7, 0x1

    .line 1612
    goto :goto_24
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 23
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 667
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 668
    .local v8, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 669
    .local v7, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 670
    .local v4, "cls":Landroid/content/ComponentName;
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_23

    .line 671
    new-instance v4, Landroid/content/ComponentName;

    .end local v4    # "cls":Landroid/content/ComponentName;
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    .restart local v4    # "cls":Landroid/content/ComponentName;
    :cond_23
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 676
    .local v18, "userId":I
    const/4 v6, 0x0

    .line 677
    .local v6, "findAr":Lcom/android/server/am/ActivityRecord;
    const/4 v11, 0x0

    .line 678
    .local v11, "multiInstanceAr":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v10

    .line 681
    .local v10, "isFront":Z
    if-eqz v8, :cond_78

    const/16 v19, 0x1

    :goto_45
    invoke-virtual {v8}, Landroid/content/Intent;->isDocument()Z

    move-result v20

    and-int v9, v19, v20

    .line 683
    .local v9, "isDocument":Z
    if-eqz v9, :cond_7b

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 686
    .local v5, "documentData":Landroid/net/Uri;
    :goto_51
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v17, v19, -0x1

    .local v17, "taskNdx":I
    :goto_5d
    if-ltz v17, :cond_1e1

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    .line 688
    .local v13, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7d

    .line 686
    :cond_75
    :goto_75
    add-int/lit8 v17, v17, -0x1

    goto :goto_5d

    .line 681
    .end local v5    # "documentData":Landroid/net/Uri;
    .end local v9    # "isDocument":Z
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    .end local v17    # "taskNdx":I
    :cond_78
    const/16 v19, 0x0

    goto :goto_45

    .line 683
    .restart local v9    # "isDocument":Z
    :cond_7b
    const/4 v5, 0x0

    goto :goto_51

    .line 693
    .restart local v5    # "documentData":Landroid/net/Uri;
    .restart local v13    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v17    # "taskNdx":I
    :cond_7d
    iget v0, v13, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_75

    .line 698
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 699
    .local v12, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_75

    iget-boolean v0, v12, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v19, v0

    if-nez v19, :cond_75

    iget v0, v12, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_75

    iget v0, v12, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_75

    .line 705
    iget-object v15, v13, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 706
    .local v15, "taskIntent":Landroid/content/Intent;
    iget-object v3, v13, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 709
    .local v3, "affinityIntent":Landroid/content/Intent;
    if-eqz v15, :cond_120

    invoke-virtual {v15}, Landroid/content/Intent;->isDocument()Z

    move-result v19

    if-eqz v19, :cond_120

    .line 710
    const/16 v16, 0x1

    .line 711
    .local v16, "taskIsDocument":Z
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 724
    .local v14, "taskDocumentData":Landroid/net/Uri;
    :goto_bb
    if-nez v9, :cond_133

    if-nez v16, :cond_133

    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_133

    .line 725
    iget-object v0, v13, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d6

    .line 729
    move-object v6, v12

    .line 775
    :cond_d6
    :goto_d6
    if-eqz v6, :cond_75

    .line 776
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const-string v20, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1de

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1de

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v19

    if-eqz v19, :cond_1de

    .line 778
    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v19

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16c

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_16c

    if-eqz v11, :cond_16c

    move-object v11, v6

    .line 807
    .end local v3    # "affinityIntent":Landroid/content/Intent;
    .end local v11    # "multiInstanceAr":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    .end local v14    # "taskDocumentData":Landroid/net/Uri;
    .end local v15    # "taskIntent":Landroid/content/Intent;
    .end local v16    # "taskIsDocument":Z
    :cond_11f
    :goto_11f
    return-object v11

    .line 712
    .restart local v3    # "affinityIntent":Landroid/content/Intent;
    .restart local v11    # "multiInstanceAr":Lcom/android/server/am/ActivityRecord;
    .restart local v12    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v13    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v15    # "taskIntent":Landroid/content/Intent;
    :cond_120
    if-eqz v3, :cond_12f

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v19

    if-eqz v19, :cond_12f

    .line 713
    const/16 v16, 0x1

    .line 714
    .restart local v16    # "taskIsDocument":Z
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .restart local v14    # "taskDocumentData":Landroid/net/Uri;
    goto :goto_bb

    .line 716
    .end local v14    # "taskDocumentData":Landroid/net/Uri;
    .end local v16    # "taskIsDocument":Z
    :cond_12f
    const/16 v16, 0x0

    .line 717
    .restart local v16    # "taskIsDocument":Z
    const/4 v14, 0x0

    .restart local v14    # "taskDocumentData":Landroid/net/Uri;
    goto :goto_bb

    .line 737
    :cond_133
    if-eqz v15, :cond_14f

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    if-eqz v19, :cond_14f

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v19

    if-nez v19, :cond_14f

    invoke-static {v5, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14f

    .line 746
    move-object v6, v12

    goto :goto_d6

    .line 753
    :cond_14f
    if-eqz v3, :cond_d6

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    if-eqz v19, :cond_d6

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v19

    if-nez v19, :cond_d6

    invoke-static {v5, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d6

    .line 762
    move-object v6, v12

    goto/16 :goto_d6

    .line 782
    :cond_16c
    if-nez v11, :cond_172

    .line 783
    move-object v11, v6

    .line 792
    :cond_16f
    :goto_16f
    const/4 v6, 0x0

    goto/16 :goto_75

    .line 784
    :cond_172
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1bc

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1ba

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1bc

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1bc

    .line 787
    :cond_1ba
    move-object v11, v6

    goto :goto_16f

    .line 788
    :cond_1bc
    if-eqz v10, :cond_16f

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v19

    move-object/from16 v0, v19

    if-ne v11, v0, :cond_16f

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_16f

    .line 790
    move-object v11, v6

    goto :goto_16f

    :cond_1de
    move-object v11, v6

    .line 794
    goto/16 :goto_11f

    .line 802
    .end local v3    # "affinityIntent":Landroid/content/Intent;
    .end local v12    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    .end local v14    # "taskDocumentData":Landroid/net/Uri;
    .end local v15    # "taskIntent":Landroid/content/Intent;
    .end local v16    # "taskIsDocument":Z
    :cond_1e1
    if-nez v11, :cond_11f

    .line 807
    const/4 v11, 0x0

    goto/16 :goto_11f
.end method

.method final finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 3557
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3560
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v0

    if-ne v0, v8, :cond_32

    .line 3562
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 3567
    .local v7, "index":I
    :goto_18
    if-ltz v7, :cond_41

    .line 3568
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3571
    .local v1, "cur":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v0

    if-ne v0, v8, :cond_37

    .line 3573
    const-string/jumbo v4, "request-affinity"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3567
    :goto_2f
    add-int/lit8 v7, v7, -0x1

    goto :goto_18

    .line 3564
    .end local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "index":I
    :cond_32
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .restart local v7    # "index":I
    goto :goto_18

    .line 3578
    .restart local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_37
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 3583
    .end local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_41
    return v5

    .line 3581
    .restart local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_42
    const-string/jumbo v4, "request-affinity"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_2f
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .registers 15
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .prologue
    .line 3624
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1e

    .line 3625
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate finish request for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    const/4 v5, 0x0

    .line 3719
    :goto_1d
    return v5

    .line 3629
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 3630
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3631
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    const/16 v5, 0x7531

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    aput-object p4, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3634
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3635
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3636
    .local v2, "index":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_7b

    .line 3637
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 3638
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_7b

    .line 3642
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3643
    .local v3, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v6, 0x80000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3647
    .end local v3    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_7b
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 3654
    const-string/jumbo v5, "reset"

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_92

    const-string v5, "clear"

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_92

    .line 3655
    invoke-direct {p0, p1}, adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3662
    :cond_92
    invoke-virtual {p0, p1, p2, p3}, finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 3664
    iget-object v5, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v5, p1, :cond_f1

    .line 3665
    if-gtz v2, :cond_d9

    const/4 v1, 0x1

    .line 3670
    .local v1, "endTask":Z
    :goto_9c
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v5

    if-nez v5, :cond_e4

    .line 3671
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_db

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_db

    .line 3672
    iget-object v5, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareMutiWindowTransition(Landroid/os/IBinder;I)V

    .line 3684
    :goto_bc
    iget-object v5, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 3686
    iget-object v5, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_c8

    .line 3692
    :cond_c8
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v6, v7, v8}, startPausingLocked(ZZZZ)Z

    .line 3695
    if-eqz v1, :cond_d6

    .line 3696
    iget-object v5, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityStackSupervisor;->endLockTaskModeIfTaskEnding(Lcom/android/server/am/TaskRecord;)V

    .line 3719
    .end local v1    # "endTask":Z
    :cond_d6
    const/4 v5, 0x0

    goto/16 :goto_1d

    .line 3665
    :cond_d9
    const/4 v1, 0x0

    goto :goto_9c

    .line 3674
    .restart local v1    # "endTask":Z
    :cond_db
    iget-object v5, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v6, 0x66

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_bc

    .line 3678
    :cond_e4
    iget-object v6, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_ef

    const/16 v5, 0x9

    :goto_ea
    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_bc

    :cond_ef
    const/4 v5, 0x7

    goto :goto_ea

    .line 3698
    .end local v1    # "endTask":Z
    :cond_f1
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_d6

    .line 3704
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_115

    const-string v5, "no-history"

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_115

    .line 3706
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5, p5}, finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_112

    const/4 v5, 0x1

    goto/16 :goto_1d

    :cond_112
    const/4 v5, 0x0

    goto/16 :goto_1d

    .line 3707
    :cond_115
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_134

    const-string/jumbo v5, "removeTask"

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_134

    .line 3709
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5, p5}, finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_131

    const/4 v5, 0x1

    goto/16 :goto_1d

    :cond_131
    const/4 v5, 0x0

    goto/16 :goto_1d

    .line 3710
    :cond_134
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_147

    .line 3711
    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5, p5}, finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_144

    const/4 v5, 0x1

    goto/16 :goto_1d

    :cond_144
    const/4 v5, 0x0

    goto/16 :goto_1d

    .line 3715
    :cond_147
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5, p5}, finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_151

    const/4 v5, 0x1

    goto/16 :goto_1d

    :cond_151
    const/4 v5, 0x0

    goto/16 :goto_1d
.end method

.method final finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .registers 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 3588
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3589
    .local v6, "resultTo":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_3b

    .line 3593
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v0, v1, :cond_12

    .line 3594
    if-eqz p3, :cond_12

    .line 3595
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setContentUserHint(I)V

    .line 3598
    :cond_12
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_2e

    .line 3599
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 3603
    :cond_2e
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3605
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 3612
    :cond_3b
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3613
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 3614
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3615
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 3616
    return-void
.end method

.method finishAllActivities()Z
    .registers 12

    .prologue
    const/4 v5, 0x1

    .line 5654
    const/4 v8, 0x0

    .line 5655
    .local v8, "lastTask":Lcom/android/server/am/TaskRecord;
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .local v10, "taskNdx":I
    :goto_a
    if-ltz v10, :cond_43

    .line 5656
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5657
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 5658
    .local v9, "numActivities":I
    const/4 v7, 0x0

    .local v7, "activityNdx":I
    :goto_1b
    if-ge v7, v9, :cond_40

    .line 5659
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 5660
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v0, :cond_2d

    .line 5661
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_30

    .line 5658
    :cond_2d
    :goto_2d
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 5667
    :cond_30
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "force-stop"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 5669
    add-int/lit8 v9, v9, -0x1

    .line 5670
    add-int/lit8 v7, v7, -0x1

    goto :goto_2d

    .line 5655
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_40
    add-int/lit8 v10, v10, -0x1

    goto :goto_a

    .line 5675
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    .end local v9    # "numActivities":I
    :cond_43
    return v5
.end method

.method finishAllActivitiesLocked(Z)V
    .registers 11
    .param p1, "immediately"    # Z

    .prologue
    const/4 v8, 0x0

    .line 3822
    const/4 v2, 0x1

    .line 3823
    .local v2, "noActivitiesInStack":Z
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_a
    if-ltz v4, :cond_53

    .line 3824
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3825
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1c
    if-ltz v1, :cond_50

    .line 3826
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3827
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    .line 3828
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_2e

    if-nez p1, :cond_2e

    .line 3825
    :goto_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 3831
    :cond_2e
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishAllActivitiesLocked: finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " immediately"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3832
    invoke-virtual {p0, v3, v8, v8}, finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    goto :goto_2b

    .line 3823
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_50
    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    .line 3835
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_53
    if-eqz v2, :cond_5a

    .line 3836
    iget-object v5, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    .line 3838
    :cond_5a
    return-void
.end method

.method final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "mode"    # I
    .param p3, "oomAdj"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 3730
    const/4 v3, 0x2

    if-ne p2, v3, :cond_71

    .line 3731
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_5a

    .line 3732
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 3733
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3734
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_31

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_42

    iget-object v2, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v5, :cond_42

    .line 3740
    :cond_31
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 3757
    :cond_36
    :goto_36
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3758
    if-eqz p3, :cond_41

    .line 3759
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3818
    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_41
    :goto_41
    return-object p1

    .line 3743
    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_42
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_54

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 3746
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto :goto_36

    .line 3749
    :cond_54
    iget-object v2, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    goto :goto_36

    .line 3768
    :cond_5a
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_71

    invoke-virtual {p0}, isMultiWindowStack()Z

    move-result v3

    if-eqz v3, :cond_71

    iget-object v3, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v5, :cond_71

    .line 3769
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 3777
    :cond_71
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3778
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3779
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3780
    iget-object v3, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_8c

    .line 3781
    iput-object v2, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3783
    :cond_8c
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3785
    .local v1, "prevState":Lcom/android/server/am/ActivityStack$ActivityState;
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3787
    if-eqz p2, :cond_9c

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v3, :cond_9c

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v3, :cond_c5

    .line 3792
    :cond_9c
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 3793
    const-string v3, "finish-imm"

    invoke-virtual {p0, p1, v5, v3}, destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    .line 3794
    .local v0, "activityRemoved":Z
    if-eqz v0, :cond_ac

    .line 3795
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 3800
    :cond_ac
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_c0

    invoke-virtual {p0, v2, v5}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_c0

    .line 3802
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 3809
    :cond_c0
    if-eqz v0, :cond_41

    move-object p1, v2

    goto/16 :goto_41

    .line 3815
    .end local v0    # "activityRemoved":Z
    :cond_c5
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3816
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3817
    iget-object v3, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    invoke-virtual {v3, v2}, resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_41
.end method

.method final finishSubActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .registers 13
    .param p1, "self"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 3481
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "taskNdx":I
    :goto_9
    if-ltz v8, :cond_4c

    .line 3482
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3483
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "activityNdx":I
    :goto_1b
    if-ltz v7, :cond_49

    .line 3484
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3485
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_46

    iget v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v0, p3, :cond_46

    .line 3486
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v0, :cond_31

    if-eqz p2, :cond_3d

    :cond_31
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v0, :cond_46

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 3488
    :cond_3d
    const/4 v3, 0x0

    const-string/jumbo v4, "request-sub"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3483
    :cond_46
    add-int/lit8 v7, v7, -0x1

    goto :goto_1b

    .line 3481
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_49
    add-int/lit8 v8, v8, -0x1

    goto :goto_9

    .line 3494
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    :cond_4c
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3495
    return-void
.end method

.method final finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3498
    invoke-virtual {p0, v3}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 3499
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_a8

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_a8

    .line 3502
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force finishing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 3505
    .local v7, "taskNdx":I
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 3506
    .local v6, "activityNdx":I
    const-string v4, "crashed"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3510
    add-int/lit8 v6, v6, -0x1

    .line 3511
    if-gez v6, :cond_4d

    .line 3513
    :cond_49
    add-int/lit8 v7, v7, -0x1

    .line 3514
    if-gez v7, :cond_a9

    .line 3520
    :cond_4d
    :goto_4d
    if-ltz v6, :cond_a8

    .line 3521
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3522
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v4, :cond_71

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v4, :cond_71

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v4, :cond_a8

    .line 3525
    :cond_71
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v4, :cond_a8

    .line 3526
    :cond_7f
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force finishing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    const-string v4, "crashed"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3533
    .end local v6    # "activityNdx":I
    .end local v7    # "taskNdx":I
    :cond_a8
    return-void

    .line 3517
    .restart local v6    # "activityNdx":I
    .restart local v7    # "taskNdx":I
    :cond_a9
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 3518
    if-ltz v6, :cond_49

    goto :goto_4d
.end method

.method final finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 13
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .prologue
    const/4 v2, 0x0

    .line 3536
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 3537
    .local v8, "sessionBinder":Landroid/os/IBinder;
    const/4 v7, 0x0

    .line 3538
    .local v7, "didOne":Z
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .local v9, "taskNdx":I
    :goto_e
    if-ltz v9, :cond_49

    .line 3539
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    .line 3540
    .local v10, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_46

    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, v8, :cond_46

    .line 3541
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "activityNdx":I
    :goto_2c
    if-ltz v6, :cond_46

    .line 3542
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3543
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_43

    .line 3544
    const/4 v3, 0x0

    const-string v4, "finish-voice"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3546
    const/4 v7, 0x1

    .line 3541
    :cond_43
    add-int/lit8 v6, v6, -0x1

    goto :goto_2c

    .line 3538
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "activityNdx":I
    :cond_46
    add-int/lit8 v9, v9, -0x1

    goto :goto_e

    .line 3551
    .end local v10    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_49
    if-eqz v7, :cond_50

    .line 3552
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3554
    :cond_50
    return-void
.end method

.method forceStopPackageLocked(Ljava/lang/String;ZZI)Z
    .registers 20
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "doit"    # Z
    .param p3, "evenPersistent"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 5042
    const/4 v9, 0x0

    .line 5043
    .local v9, "didSomething":Z
    const/4 v11, 0x0

    .line 5044
    .local v11, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v10, 0x0

    .line 5045
    .local v10, "homeActivity":Landroid/content/ComponentName;
    iget-object v1, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v14, v1, -0x1

    .local v14, "taskNdx":I
    :goto_b
    if-ltz v14, :cond_ca

    .line 5046
    iget-object v1, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v7, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5047
    .local v7, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 5048
    .local v12, "numActivities":I
    const/4 v8, 0x0

    .local v8, "activityNdx":I
    :goto_1c
    if-ge v8, v12, :cond_c6

    .line 5049
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 5050
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    if-nez p1, :cond_5d

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p4

    if-ne v1, v0, :cond_5d

    :cond_36
    const/4 v13, 0x1

    .line 5052
    .local v13, "samePackage":Z
    :goto_37
    const/4 v1, -0x1

    move/from16 v0, p4

    if-eq v0, v1, :cond_42

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p4

    if-ne v1, v0, :cond_5a

    :cond_42
    if-nez v13, :cond_48

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v1, v11, :cond_5a

    :cond_48
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_54

    if-nez p3, :cond_54

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v1, :cond_5a

    .line 5055
    :cond_54
    if-nez p2, :cond_61

    .line 5056
    iget-boolean v1, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_5f

    .line 5048
    :cond_5a
    :goto_5a
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    .line 5050
    .end local v13    # "samePackage":Z
    :cond_5d
    const/4 v13, 0x0

    goto :goto_37

    .line 5061
    .restart local v13    # "samePackage":Z
    :cond_5f
    const/4 v1, 0x1

    .line 5089
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "activityNdx":I
    .end local v12    # "numActivities":I
    .end local v13    # "samePackage":Z
    :goto_60
    return v1

    .line 5063
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v8    # "activityNdx":I
    .restart local v12    # "numActivities":I
    .restart local v13    # "samePackage":Z
    :cond_61
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 5064
    if-eqz v10, :cond_8a

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 5065
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip force-stop again "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 5068
    :cond_8a
    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 5071
    :cond_8c
    const/4 v9, 0x1

    .line 5072
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Force finishing activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5073
    if-eqz v13, :cond_b3

    .line 5074
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_b0

    .line 5075
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 5077
    :cond_b0
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 5079
    :cond_b3
    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 5080
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "force-stop"

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 5083
    add-int/lit8 v12, v12, -0x1

    .line 5084
    add-int/lit8 v8, v8, -0x1

    goto :goto_5a

    .line 5045
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "samePackage":Z
    :cond_c6
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_b

    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "activityNdx":I
    .end local v12    # "numActivities":I
    :cond_ca
    move v1, v9

    .line 5089
    goto :goto_60
.end method

.method getAllTasks()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5938
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
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
    .line 5697
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5699
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const-string v8, "all"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 5700
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "taskNdx":I
    :goto_15
    if-ltz v6, :cond_53

    .line 5701
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5700
    add-int/lit8 v6, v6, -0x1

    goto :goto_15

    .line 5703
    .end local v6    # "taskNdx":I
    :cond_27
    const-string/jumbo v8, "top"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 5704
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .line 5705
    .local v7, "top":I
    if-ltz v7, :cond_53

    .line 5706
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5707
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 5708
    .local v3, "listTop":I
    if-ltz v3, :cond_53

    .line 5709
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5725
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "listTop":I
    .end local v7    # "top":I
    :cond_53
    return-object v0

    .line 5713
    :cond_54
    new-instance v4, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v4}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 5714
    .local v4, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 5716
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .restart local v6    # "taskNdx":I
    :goto_64
    if-ltz v6, :cond_53

    .line 5717
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_74
    :goto_74
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_90

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 5718
    .local v5, "r1":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 5719
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 5716
    .end local v5    # "r1":Lcom/android/server/am/ActivityRecord;
    :cond_90
    add-int/lit8 v6, v6, -0x1

    goto :goto_64
.end method

.method getGlobalTaskHistoryIsolatedLocked()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5902
    const/4 v7, 0x0

    .line 5903
    .local v7, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v8, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, p0, mDisplayId:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5904
    .local v1, "globalLength":I
    iget-object v8, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, p0, mDisplayId:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->isIsolated(I)Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 5905
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5906
    .local v0, "alist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v1, :cond_7c

    .line 5907
    iget-object v8, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, p0, mDisplayId:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "tr":Lcom/android/server/am/TaskRecord;
    check-cast v7, Lcom/android/server/am/TaskRecord;

    .line 5908
    .restart local v7    # "tr":Lcom/android/server/am/TaskRecord;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2e
    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_79

    .line 5909
    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    iget v8, v8, Lcom/android/server/am/ActivityRecord;->isolatedBaseCouple:I

    sget v9, Lcom/android/server/am/ActivityRecord;->ISOLATED_BASE:I

    if-eq v8, v9, :cond_56

    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v9, 0x1000

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_76

    .line 5911
    :cond_56
    iget-object v8, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, p0, mDisplayId:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 5912
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_66
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_84

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 5913
    .local v4, "item":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 5908
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":Lcom/android/server/am/TaskRecord;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    :cond_76
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 5906
    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 5921
    .end local v0    # "alist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    .end local v2    # "i":I
    .end local v5    # "j":I
    :cond_7c
    iget-object v8, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, p0, mDisplayId:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v0

    :cond_84
    return-object v0
.end method

.method getGlobalTaskHistoryLocked()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5924
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p0, mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getGlobalTaskHistoryLocked(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 5514
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 5515
    :try_start_3
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 5516
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_d

    .line 5517
    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    monitor-exit v2

    .line 5519
    :goto_c
    return-object v1

    :cond_d
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    monitor-exit v2

    goto :goto_c

    .line 5520
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public getStackId()I
    .registers 2

    .prologue
    .line 5976
    iget v0, p0, mStackId:I

    return v0
.end method

.method getTasksLocked(Ljava/util/List;IZI)V
    .registers 17
    .param p2, "callingUid"    # I
    .param p3, "allowed"    # Z
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZI)V"
        }
    .end annotation

    .prologue
    .line 5093
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v10, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    .local v8, "taskNdx":I
    :goto_8
    if-ltz v8, :cond_be

    .line 5094
    iget-object v10, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    .line 5095
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    const/4 v6, 0x0

    .line 5096
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v9, 0x0

    .line 5097
    .local v9, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v4, 0x0

    .line 5098
    .local v4, "numActivities":I
    const/4 v5, 0x0

    .line 5099
    .local v5, "numRunning":I
    iget-object v0, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5100
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_21

    .line 5093
    :cond_1e
    :goto_1e
    add-int/lit8 v8, v8, -0x1

    goto :goto_8

    .line 5103
    :cond_21
    if-nez p3, :cond_2d

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v10

    if-nez v10, :cond_2d

    iget v10, v7, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-ne v10, p2, :cond_1e

    .line 5107
    :cond_2d
    const/4 v2, 0x0

    .line 5108
    .local v2, "checkFlags":Z
    and-int/lit8 v10, p4, 0x4

    if-eqz v10, :cond_36

    .line 5109
    iget-boolean v10, v7, Lcom/android/server/am/TaskRecord;->bHidden:Z

    if-nez v10, :cond_1e

    .line 5114
    :cond_36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, "activityNdx":I
    :goto_3c
    if-ltz v1, :cond_76

    .line 5115
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 5118
    .restart local v6    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v9, :cond_4c

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v10, v11, :cond_4f

    .line 5119
    :cond_4c
    move-object v9, v6

    .line 5120
    const/4 v5, 0x0

    move v4, v5

    .line 5124
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    .line 5125
    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_5d

    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_5d

    .line 5126
    add-int/lit8 v5, v5, 0x1

    .line 5135
    :cond_5d
    and-int/lit8 v10, p4, 0x1

    if-eqz v10, :cond_67

    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v10, v11, :cond_73

    :cond_67
    and-int/lit8 v10, p4, 0x2

    if-eqz v10, :cond_71

    iget v10, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v11, p0, mCurrentUser:I

    if-ne v10, v11, :cond_73

    .line 5137
    :cond_71
    or-int/lit8 v2, v2, 0x1

    .line 5114
    :cond_73
    add-int/lit8 v1, v1, -0x1

    goto :goto_3c

    .line 5144
    :cond_76
    if-eqz v2, :cond_1e

    .line 5149
    new-instance v3, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 5150
    .local v3, "ci":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v10, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 5151
    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    iput-object v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 5152
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    iput-object v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 5153
    iget-wide v10, v7, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput-wide v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 5157
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v10

    iput-boolean v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isHomeType:Z

    .line 5158
    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    iput-object v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    .line 5159
    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iput-object v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 5160
    iget v10, v7, Lcom/android/server/am/TaskRecord;->userId:I

    iput v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 5161
    iget-object v10, v7, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iput-object v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskAffinity:Ljava/lang/String;

    .line 5165
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v10, :cond_b5

    .line 5166
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    iput-object v10, v3, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    .line 5168
    :cond_b5
    iput v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    .line 5169
    iput v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    .line 5172
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    .line 5174
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "checkFlags":Z
    .end local v3    # "ci":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4    # "numActivities":I
    .end local v5    # "numRunning":I
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    .end local v9    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_be
    return-void
.end method

.method getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;
    .registers 2

    .prologue
    .line 4342
    invoke-virtual {p0}, isAttached()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method getZone()I
    .registers 2

    .prologue
    .line 598
    iget v0, p0, mStackZone:I

    return v0
.end method

.method goToSleep()V
    .registers 7

    .prologue
    .line 1056
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_8
    if-ltz v3, :cond_38

    .line 1057
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1058
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_35

    .line 1059
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1060
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_2e

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_32

    .line 1061
    :cond_2e
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 1058
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 1056
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_35
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 1065
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_38
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v9, 0x0

    .line 5235
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "taskNdx":I
    :goto_9
    if-ltz v5, :cond_8f

    .line 5236
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5237
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1b
    if-ltz v1, :cond_8b

    .line 5238
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 5239
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, p1, :cond_88

    .line 5244
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v3

    .line 5245
    .local v3, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v3, :cond_60

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_60

    .line 5246
    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_60

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getKioskHomePackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 5248
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.enterprise.TERMINATE_KIOSK"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5249
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.user_handle"

    iget v7, p0, mCurrentUser:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5250
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5254
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_60
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Force finishing activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5257
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 5258
    invoke-virtual {p0, v4, v9, v9}, finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .line 5237
    .end local v3    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_88
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 5235
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_8b
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_9

    .line 5262
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_8f
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v5, 0x0

    .line 5196
    iget-object v4, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_d

    iget-object v4, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p1, :cond_d

    .line 5199
    iput-object v5, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 5203
    :cond_d
    iget-object v4, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5205
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_15
    if-ltz v1, :cond_2b

    .line 5206
    iget-object v4, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p1, :cond_28

    .line 5210
    iget-object v4, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5205
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 5215
    :cond_2b
    iget-object v4, p0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_39

    iget-object v4, p0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p1, :cond_39

    .line 5216
    iput-object v5, p0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5217
    iput-object v5, p0, mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 5221
    :cond_39
    sget-boolean v4, Lcom/android/server/am/MultiWindowPolicy;->sPreviewSplitEnabled:Z

    if-eqz v4, :cond_66

    .line 5222
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_43
    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 5223
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_43

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    const-string v5, "com.sec.android.app.FlashBarService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 5225
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/am/MultiWindowFacadeService;->requestSplitPreview(Z)V

    goto :goto_43

    .line 5231
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_66
    invoke-virtual {p0, p1}, removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    return v4
.end method

.method hasVisibleBehindActivity()Z
    .registers 2

    .prologue
    .line 4332
    invoke-virtual {p0}, isAttached()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->hasVisibleBehindActivity()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method final isAttached()Z
    .registers 2

    .prologue
    .line 659
    iget-object v0, p0, mStacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isCurrentProfileLocked(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 450
    iget v2, p0, mCurrentUser:I

    if-ne p1, v2, :cond_6

    .line 454
    :cond_5
    :goto_5
    return v1

    .line 451
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 452
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_5

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 454
    :cond_19
    const/4 v1, 0x0

    goto :goto_5
.end method

.method isFixedOrientationDeclared(I)Z
    .registers 4
    .param p1, "requestedOrientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 5892
    if-eq p1, v0, :cond_1b

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1b

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1b

    const/16 v1, 0xc

    if-eq p1, v1, :cond_1b

    if-eqz p1, :cond_1b

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1b

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1b

    const/16 v1, 0xb

    if-ne p1, v1, :cond_1c

    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method final isFloatingStack()Z
    .registers 3

    .prologue
    .line 589
    iget v0, p0, mStackType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method final isHomeStack()Z
    .registers 2

    .prologue
    .line 580
    iget v0, p0, mStackId:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 561
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 562
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_26

    .line 563
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 564
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_26

    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 565
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v2, p0, :cond_25

    const-string v2, "ActivityManager"

    const-string v3, "Illegal state! task does not point to stack it is in."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_25
    :goto_25
    return-object v0

    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method final isMultiWindowStack()Z
    .registers 2

    .prologue
    .line 593
    invoke-virtual {p0}, isFloatingStack()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, isSplitStack()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method final isNormalAppStack()Z
    .registers 3

    .prologue
    .line 585
    iget v0, p0, mStackType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method final isOnHomeDisplay()Z
    .registers 2

    .prologue
    .line 638
    invoke-virtual {p0}, isAttached()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method final isSplitStack()Z
    .registers 3

    .prologue
    .line 602
    iget v0, p0, mStackZone:I

    if-eqz v0, :cond_c

    iget v0, p0, mStackZone:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method final isVRStack()Z
    .registers 2

    .prologue
    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    .line 942
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 945
    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 946
    iput-object p1, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 947
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 948
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 949
    invoke-direct {p0, p1}, completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 950
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 955
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateCascadeHiddenFlag(Z)V

    .line 958
    return-void
.end method

.method moveHomeStackTaskToTop(I)V
    .registers 8
    .param p1, "homeStackTaskType"    # I

    .prologue
    .line 4476
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 4477
    .local v2, "top":I
    move v1, v2

    .local v1, "taskNdx":I
    :goto_9
    if-ltz v1, :cond_39

    .line 4478
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 4479
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-ne v4, p1, :cond_3a

    .line 4482
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4483
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4484
    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 4485
    iget-object v4, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 4488
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 4489
    .local v3, "topTask":Lcom/android/server/am/TaskRecord;
    iget-object v4, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;)V

    .line 4495
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_39
    return-void

    .line 4477
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9
.end method

.method final moveTaskToBackLocked(ILcom/android/server/am/ActivityRecord;)Z
    .registers 30
    .param p1, "taskId"    # I
    .param p2, "reason"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 4604
    invoke-virtual/range {p0 .. p1}, taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v22

    .line 4605
    .local v22, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v22, :cond_25

    .line 4606
    const-string v23, "ActivityManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "moveTaskToBack: bad taskId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4607
    const/16 v23, 0x0

    .line 4776
    :goto_24
    return v23

    .line 4610
    :cond_25
    const-string v23, "ActivityManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "moveTaskToBack: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->endLockTaskModeIfTaskEnding(Lcom/android/server/am/TaskRecord;)V

    .line 4617
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v23

    if-eqz v23, :cond_bd

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v23, v0

    if-eqz v23, :cond_bd

    .line 4618
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 4619
    .local v10, "next":Lcom/android/server/am/ActivityRecord;
    if-nez v10, :cond_88

    .line 4620
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 4622
    :cond_88
    if-eqz v10, :cond_bd

    .line 4624
    const/4 v8, 0x1

    .line 4626
    .local v8, "moveOK":Z
    :try_start_8b
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v23, v0

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_9e} :catch_a4

    move-result v8

    .line 4631
    :goto_9f
    if-nez v8, :cond_bd

    .line 4632
    const/16 v23, 0x0

    goto :goto_24

    .line 4627
    :catch_a4
    move-exception v6

    .line 4628
    .local v6, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 4629
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_9f

    .line 4641
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v8    # "moveOK":Z
    .end local v10    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 4643
    .local v7, "lastIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4644
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4648
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveTaskToBackLocked(Lcom/android/server/am/TaskRecord;)V

    .line 4649
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskStopped(I)V

    .line 4650
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/am/TaskRecord;->bHidden:Z

    .line 4651
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 4652
    .local v11, "notTop":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    .line 4653
    .local v21, "topRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v21, :cond_13e

    .line 4654
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    const-string v25, "moveTaskToBack"

    invoke-virtual/range {v23 .. v25}, Lcom/android/server/am/ActivityStackSupervisor;->updateFocusedStack(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)V

    .line 4660
    :cond_13e
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 4664
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 4665
    .local v12, "numTasks":I
    add-int/lit8 v18, v12, -0x1

    .local v18, "taskNdx":I
    :goto_155
    const/16 v23, 0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_173

    .line 4666
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/TaskRecord;

    .line 4667
    .local v17, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v23

    if-eqz v23, :cond_1e4

    .line 4683
    .end local v17    # "task":Lcom/android/server/am/TaskRecord;
    :cond_173
    if-eqz p2, :cond_1ff

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getFlags()I

    move-result v23

    const/high16 v24, 0x10000

    and-int v23, v23, v24

    if-eqz v23, :cond_1ff

    .line 4685
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4686
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    .line 4687
    .local v14, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v14, :cond_1a9

    .line 4688
    move-object/from16 v0, p0

    iget-object v0, v0, mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4708
    .end local v14    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1a9
    :goto_1a9
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveTaskToBottom(I)V

    .line 4715
    move v13, v12

    .line 4717
    .local v13, "numTasksHiddenExclude":I
    invoke-virtual/range {p0 .. p0}, isFloatingStack()Z

    move-result v23

    if-eqz v23, :cond_265

    .line 4718
    add-int/lit8 v18, v12, -0x1

    :goto_1bf
    const/16 v23, 0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_265

    .line 4719
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/TaskRecord;

    .line 4720
    .restart local v17    # "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->bHidden:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1e1

    add-int/lit8 v13, v13, -0x1

    .line 4718
    :cond_1e1
    add-int/lit8 v18, v18, -0x1

    goto :goto_1bf

    .line 4670
    .end local v13    # "numTasksHiddenExclude":I
    :cond_1e4
    const/16 v23, 0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_1fb

    .line 4673
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v23

    if-eqz v23, :cond_173

    .line 4679
    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 4665
    :cond_1fb
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_155

    .line 4693
    .end local v17    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1ff
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 4694
    .local v5, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_256

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v23

    if-nez v23, :cond_256

    .line 4695
    move-object/from16 v0, p0

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_247

    iget-object v0, v5, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v23

    if-eqz v23, :cond_247

    .line 4696
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4697
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/android/server/wm/WindowManagerService;->prepareMutiWindowTransition(Landroid/os/IBinder;I)V

    goto/16 :goto_1a9

    .line 4699
    :cond_247
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x66

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_1a9

    .line 4702
    :cond_256
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0xb

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_1a9

    .line 4726
    .end local v5    # "ar":Lcom/android/server/am/ActivityRecord;
    .restart local v13    # "numTasksHiddenExclude":I
    :cond_265
    move-object/from16 v0, p0

    iget-object v0, v0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2b7

    move-object/from16 v0, p0

    iget-object v0, v0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    .line 4729
    .restart local v17    # "task":Lcom/android/server/am/TaskRecord;
    :goto_279
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_285

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v23

    if-nez v23, :cond_297

    :cond_285
    const/16 v23, 0x1

    move/from16 v0, v23

    if-le v12, v0, :cond_291

    const/16 v23, 0x1

    move/from16 v0, v23

    if-gt v13, v0, :cond_375

    :cond_291
    invoke-virtual/range {p0 .. p0}, isOnHomeDisplay()Z

    move-result v23

    if-eqz v23, :cond_375

    .line 4730
    :cond_297
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    move/from16 v23, v0

    if-nez v23, :cond_2ba

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    move/from16 v23, v0

    if-nez v23, :cond_2ba

    .line 4732
    const/16 v23, 0x0

    goto/16 :goto_24

    .line 4726
    .end local v17    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2b7
    const/16 v17, 0x0

    goto :goto_279

    .line 4736
    .restart local v17    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2ba
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    .line 4737
    .local v15, "root":Lcom/android/server/am/ActivityRecord;
    if-eqz v15, :cond_2da

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v23

    if-nez v23, :cond_2da

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v23

    if-nez v23, :cond_2da

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v23

    if-nez v23, :cond_323

    .line 4739
    :cond_2da
    invoke-virtual/range {p0 .. p0}, isFloatingStack()Z

    move-result v23

    if-eqz v23, :cond_316

    .line 4742
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, startPausingLocked(ZZZZ)Z

    .line 4743
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4746
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v20

    .line 4747
    .local v20, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v20, :cond_316

    .line 4748
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 4751
    .end local v20    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_316
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4752
    const/16 v23, 0x1

    goto/16 :goto_24

    .line 4756
    :cond_323
    invoke-virtual/range {p0 .. p0}, getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 4757
    .local v16, "size":I
    if-lez v16, :cond_358

    .line 4758
    invoke-virtual/range {p0 .. p0}, getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v23

    add-int/lit8 v24, v16, -0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/TaskRecord;

    .line 4759
    .local v20, "top":Lcom/android/server/am/TaskRecord;
    if-eqz v20, :cond_358

    .line 4760
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/TaskRecord;->getTopActivityMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    .line 4761
    .local v9, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->isRecentTask()Z

    move-result v23

    if-eqz v23, :cond_358

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v23

    if-eqz v23, :cond_358

    .line 4762
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4763
    const/16 v23, 0x1

    goto/16 :goto_24

    .line 4769
    .end local v9    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v20    # "top":Lcom/android/server/am/TaskRecord;
    :cond_358
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v19

    .line 4770
    .local v19, "taskToReturnTo":I
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 4771
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v19

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;)Z

    move-result v23

    goto/16 :goto_24

    .line 4774
    .end local v15    # "root":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "size":I
    .end local v19    # "taskToReturnTo":I
    :cond_375
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4775
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 4776
    const/16 v23, 0x1

    goto/16 :goto_24
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4499
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;I)V

    .line 4500
    return-void
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;I)V
    .registers 15
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "flags"    # I

    .prologue
    const/high16 v9, 0x10000

    const/16 v6, 0xa

    const/4 v5, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4505
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4506
    .local v1, "numTasks":I
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4507
    .local v0, "index":I
    if-eqz v1, :cond_17

    if-gez v0, :cond_2a

    .line 4509
    :cond_17
    if-eqz p2, :cond_26

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v9

    if-eqz v4, :cond_26

    .line 4511
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4590
    :cond_25
    :goto_25
    return-void

    .line 4513
    :cond_26
    invoke-virtual {p0, v6, p3}, updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_25

    .line 4535
    :cond_2a
    invoke-virtual {p0}, moveToFront()V

    .line 4540
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ab

    .line 4543
    invoke-direct {p0, p1, v7}, insertTaskAtTop(Lcom/android/server/am/TaskRecord;Z)V

    .line 4553
    :goto_34
    if-eqz p2, :cond_af

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v9

    if-eqz v4, :cond_af

    .line 4555
    iget-object v4, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v7, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4556
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 4557
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_50

    .line 4558
    iget-object v4, p0, mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4560
    :cond_50
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 4565
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_53
    invoke-virtual {p0}, topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 4566
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_78

    invoke-virtual {p0}, isFloatingStack()Z

    move-result v4

    if-eqz v4, :cond_78

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 4567
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 4568
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4, p1, v5}, setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 4569
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v2, v7, v8}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 4572
    :cond_78
    iget-object v4, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v5, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 4574
    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4576
    const/16 v4, 0x7532

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4580
    iget-object v4, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 4581
    .local v3, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_25

    .line 4582
    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_25

    .line 4546
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_ab
    invoke-direct {p0, p1}, insertTaskAtTop(Lcom/android/server/am/TaskRecord;)V

    goto :goto_34

    .line 4562
    :cond_af
    invoke-virtual {p0, v6, p3}, updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_53
.end method

.method final moveToFront()V
    .registers 3

    .prologue
    .line 643
    invoke-virtual {p0}, isAttached()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 644
    invoke-virtual {p0}, isOnHomeDisplay()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 647
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 653
    :cond_12
    iget-object v0, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 654
    iget-object v0, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_1c
    return-void
.end method

.method final navigateUpToLocked(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .registers 47
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 3879
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v39

    .line 3880
    .local v39, "srec":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v41, v0

    .line 3881
    .local v41, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    .line 3882
    .local v23, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v40

    .line 3883
    .local v40, "start":I
    move-object/from16 v0, p0

    iget-object v2, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    if-gez v40, :cond_29

    .line 3884
    :cond_26
    const/16 v29, 0x0

    .line 3955
    :goto_28
    return v29

    .line 3886
    :cond_29
    add-int/lit8 v28, v40, -0x1

    .line 3887
    .local v28, "finishTo":I
    if-gez v28, :cond_95

    const/16 v34, 0x0

    .line 3888
    .local v34, "parent":Lcom/android/server/am/ActivityRecord;
    :goto_2f
    const/16 v29, 0x0

    .line 3889
    .local v29, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    .line 3890
    .local v25, "dest":Landroid/content/ComponentName;
    if-lez v40, :cond_6d

    if-eqz v25, :cond_6d

    .line 3891
    move/from16 v30, v28

    .local v30, "i":I
    :goto_3b
    if-ltz v30, :cond_6d

    .line 3892
    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/am/ActivityRecord;

    .line 3893
    .local v36, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 3895
    move/from16 v28, v30

    .line 3896
    move-object/from16 v34, v36

    .line 3897
    const/16 v29, 0x1

    .line 3903
    .end local v30    # "i":I
    .end local v36    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6d
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v24, v0

    .line 3904
    .local v24, "controller":Landroid/app/IActivityController;
    if-eqz v24, :cond_b6

    .line 3905
    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v31

    .line 3906
    .local v31, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v31, :cond_b6

    .line 3908
    const/16 v38, 0x1

    .line 3910
    .local v38, "resumeOK":Z
    :try_start_86
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_8f} :catch_a5

    move-result v38

    .line 3916
    :goto_90
    if-nez v38, :cond_b6

    .line 3917
    const/16 v29, 0x0

    goto :goto_28

    .line 3887
    .end local v24    # "controller":Landroid/app/IActivityController;
    .end local v25    # "dest":Landroid/content/ComponentName;
    .end local v29    # "foundParentInTask":Z
    .end local v31    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v34    # "parent":Lcom/android/server/am/ActivityRecord;
    .end local v38    # "resumeOK":Z
    :cond_95
    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v34, v2

    goto :goto_2f

    .line 3891
    .restart local v25    # "dest":Landroid/content/ComponentName;
    .restart local v29    # "foundParentInTask":Z
    .restart local v30    # "i":I
    .restart local v34    # "parent":Lcom/android/server/am/ActivityRecord;
    .restart local v36    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_a2
    add-int/lit8 v30, v30, -0x1

    goto :goto_3b

    .line 3911
    .end local v30    # "i":I
    .end local v36    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v24    # "controller":Landroid/app/IActivityController;
    .restart local v31    # "next":Lcom/android/server/am/ActivityRecord;
    .restart local v38    # "resumeOK":Z
    :catch_a5
    move-exception v27

    .line 3912
    .local v27, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 3913
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_90

    .line 3921
    .end local v27    # "e":Landroid/os/RemoteException;
    .end local v31    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v38    # "resumeOK":Z
    :cond_b6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v32

    .line 3922
    .local v32, "origId":J
    move/from16 v30, v40

    .restart local v30    # "i":I
    :goto_bc
    move/from16 v0, v30

    move/from16 v1, v28

    if-le v0, v1, :cond_e3

    .line 3923
    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/am/ActivityRecord;

    .line 3924
    .restart local v36    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v6, "navigate-up"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3926
    const/16 p3, 0x0

    .line 3927
    const/16 p4, 0x0

    .line 3922
    add-int/lit8 v30, v30, -0x1

    goto :goto_bc

    .line 3930
    .end local v36    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_e3
    if-eqz v34, :cond_117

    if-eqz v29, :cond_117

    .line 3931
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    move/from16 v35, v0

    .line 3932
    .local v35, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v26

    .line 3933
    .local v26, "destIntentFlags":I
    const/4 v2, 0x3

    move/from16 v0, v35

    if-eq v0, v2, :cond_108

    const/4 v2, 0x2

    move/from16 v0, v35

    if-eq v0, v2, :cond_108

    const/4 v2, 0x1

    move/from16 v0, v35

    if-eq v0, v2, :cond_108

    const/high16 v2, 0x4000000

    and-int v2, v2, v26

    if-eqz v2, :cond_11c

    .line 3937
    :cond_108
    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 3954
    .end local v26    # "destIntentFlags":I
    .end local v35    # "parentLaunchMode":I
    :cond_117
    :goto_117
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_28

    .line 3940
    .restart local v26    # "destIntentFlags":I
    .restart local v35    # "parentLaunchMode":I
    :cond_11c
    :try_start_11c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v39

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 3942
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v34

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object/from16 v0, v34

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move-object/from16 v0, v34

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    const/4 v15, -0x1

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v22}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_161
    .catch Landroid/os/RemoteException; {:try_start_11c .. :try_end_161} :catch_17a

    move-result v37

    .line 3946
    .local v37, "res":I
    if-nez v37, :cond_177

    const/16 v29, 0x1

    .line 3950
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v37    # "res":I
    :goto_166
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v11, "navigate-up"

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v7 .. v12}, requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_117

    .line 3946
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v37    # "res":I
    :cond_177
    const/16 v29, 0x0

    goto :goto_166

    .line 3947
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v37    # "res":I
    :catch_17a
    move-exception v27

    .line 3948
    .restart local v27    # "e":Landroid/os/RemoteException;
    const/16 v29, 0x0

    goto :goto_166
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x0

    .line 2078
    iget-object v2, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setDrawn()V

    .line 2079
    if-eqz p1, :cond_18

    iget-object v2, p0, mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, p0, mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2084
    :cond_18
    iget-object v0, p0, mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2085
    .local v0, "waitingActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    iput-object v2, p0, mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 2086
    iget-object v2, p0, mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2087
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2089
    if-eqz v0, :cond_48

    .line 2090
    iget-object v2, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaque(Landroid/os/IBinder;Z)V

    .line 2091
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_48

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_48

    .line 2093
    :try_start_3c
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz p1, :cond_45

    const/4 v1, 0x1

    :cond_45
    invoke-interface {v2, v3, v1}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_48} :catch_49

    .line 2100
    .end local v0    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :cond_48
    :goto_48
    return-void

    .line 2095
    .restart local v0    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :catch_49
    move-exception v1

    goto :goto_48
.end method

.method notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .registers 26
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "notifyReason"    # I
    .param p3, "allInTask"    # Z

    .prologue
    .line 5553
    if-nez p1, :cond_3

    .line 5649
    :goto_2
    return-void

    .line 5556
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v18, v0

    if-nez v18, :cond_22

    .line 5557
    :cond_19
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowStyle:Z

    goto :goto_2

    .line 5561
    :cond_22
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v11

    .line 5563
    .local v11, "minimizedActivity":Z
    if-nez v11, :cond_81

    const/16 v18, 0x2

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_40

    const/16 v18, 0x10

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_81

    .line 5566
    :cond_40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 5568
    .local v14, "origId":J
    const/16 v18, 0x10

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_6d

    .line 5569
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    .line 5572
    :cond_6d
    invoke-virtual/range {p0 .. p1}, screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 5573
    .local v17, "tmp":Landroid/graphics/Bitmap;
    if-eqz v17, :cond_7e

    .line 5574
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 5576
    :cond_7e
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5578
    .end local v14    # "origId":J
    .end local v17    # "tmp":Landroid/graphics/Bitmap;
    :cond_81
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowStyle:Z

    .line 5580
    move/from16 v16, p2

    .line 5581
    .local v16, "requestNotifyReason":I
    const/16 v18, 0x10

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_95

    .line 5582
    const/16 v16, 0x2

    .line 5584
    :cond_95
    packed-switch p2, :pswitch_data_242

    .line 5591
    :cond_98
    if-eqz p3, :cond_11e

    .line 5592
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5593
    .local v6, "N":I
    add-int/lit8 v9, v6, -0x1

    .local v9, "i":I
    :goto_ac
    if-ltz v9, :cond_fa

    .line 5594
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 5595
    .local v7, "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f1

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f1

    .line 5597
    :try_start_d4
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v18, v0

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v19, v0

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    :try_end_f1
    .catch Landroid/os/RemoteException; {:try_start_d4 .. :try_end_f1} :catch_23e

    .line 5593
    :cond_f1
    :goto_f1
    add-int/lit8 v9, v9, -0x1

    goto :goto_ac

    .line 5586
    .end local v6    # "N":I
    .end local v7    # "cr":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "i":I
    :pswitch_f4
    invoke-virtual/range {p0 .. p0}, isFloatingStack()Z

    move-result v18

    if-eqz v18, :cond_11b

    .line 5612
    :cond_fa
    :goto_fa
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    const/high16 v19, 0x20000

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_144

    .line 5613
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    goto/16 :goto_2

    .line 5588
    :cond_11b
    :pswitch_11b
    if-eqz v11, :cond_98

    goto :goto_fa

    .line 5604
    :cond_11e
    :try_start_11e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    :try_end_141
    .catch Landroid/os/RemoteException; {:try_start_11e .. :try_end_141} :catch_142

    goto :goto_fa

    .line 5605
    :catch_142
    move-exception v18

    goto :goto_fa

    .line 5618
    :cond_144
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    const/16 v19, 0x400

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    const/16 v20, 0x400

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1dd

    const/4 v8, 0x1

    .line 5625
    .local v8, "displayChanged":Z
    :goto_163
    if-eqz v8, :cond_1e5

    .line 5626
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNull()Z

    move-result v10

    .line 5627
    .local v10, "isFirstLaunch":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 5628
    .local v12, "orgId":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_1a0

    .line 5629
    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v18, v0

    sget-object v20, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1df

    if-nez v10, :cond_1df

    const/16 v18, 0x1

    :goto_195
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 5632
    :cond_1a0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5633
    .restart local v6    # "N":I
    add-int/lit8 v9, v6, -0x1

    .restart local v9    # "i":I
    :goto_1b2
    if-ltz v9, :cond_1e2

    .line 5634
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 5635
    .restart local v7    # "cr":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p1

    if-eq v0, v7, :cond_1da

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move/from16 v18, v0

    if-nez v18, :cond_1da

    .line 5636
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v7, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 5633
    :cond_1da
    add-int/lit8 v9, v9, -0x1

    goto :goto_1b2

    .line 5618
    .end local v6    # "N":I
    .end local v7    # "cr":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "displayChanged":Z
    .end local v9    # "i":I
    .end local v10    # "isFirstLaunch":Z
    .end local v12    # "orgId":J
    :cond_1dd
    const/4 v8, 0x0

    goto :goto_163

    .line 5629
    .restart local v8    # "displayChanged":Z
    .restart local v10    # "isFirstLaunch":Z
    .restart local v12    # "orgId":J
    :cond_1df
    const/16 v18, 0x0

    goto :goto_195

    .line 5639
    .restart local v6    # "N":I
    .restart local v9    # "i":I
    :cond_1e2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5641
    .end local v6    # "N":I
    .end local v9    # "i":I
    .end local v10    # "isFirstLaunch":Z
    .end local v12    # "orgId":J
    :cond_1e5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5642
    .restart local v6    # "N":I
    add-int/lit8 v9, v6, -0x1

    .restart local v9    # "i":I
    :goto_1f7
    if-ltz v9, :cond_22b

    .line 5643
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 5644
    .restart local v7    # "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_228

    .line 5645
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 5642
    :cond_228
    add-int/lit8 v9, v9, -0x1

    goto :goto_1f7

    .line 5648
    .end local v7    # "cr":Lcom/android/server/am/ActivityRecord;
    :cond_22b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    goto/16 :goto_2

    .line 5598
    .end local v8    # "displayChanged":Z
    .restart local v7    # "cr":Lcom/android/server/am/ActivityRecord;
    :catch_23e
    move-exception v18

    goto/16 :goto_f1

    .line 5584
    nop

    :pswitch_data_242
    .packed-switch 0x1
        :pswitch_11b
        :pswitch_f4
    .end packed-switch
.end method

.method numActivities()I
    .registers 4

    .prologue
    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "count":I
    iget-object v2, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_9
    if-ltz v1, :cond_1d

    .line 412
    iget-object v2, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 411
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 414
    :cond_1d
    return v0
.end method

.method okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 458
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p0, v0}, isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method onNotifyMinimizeMultiWindow(Lcom/android/server/am/ActivityRecord;)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    .line 5525
    if-nez p1, :cond_5

    .line 5550
    :cond_4
    :goto_4
    return-void

    .line 5529
    :cond_5
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_12

    .line 5530
    :cond_f
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->pendingNotifyMultiWindowStyle:Z

    goto :goto_4

    .line 5534
    :cond_12
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v0, :cond_2b

    .line 5535
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "minimize-finish"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_4

    .line 5539
    :cond_2b
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5540
    .local v6, "N":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_35
    if-ltz v8, :cond_4

    .line 5541
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 5542
    .local v7, "cr":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_57

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_57

    .line 5545
    :try_start_4b
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_57} :catch_5a

    .line 5540
    :cond_57
    :goto_57
    add-int/lit8 v8, v8, -0x1

    goto :goto_35

    .line 5546
    :catch_5a
    move-exception v0

    goto :goto_57
.end method

.method postProcessAfterMovingTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V
    .registers 20
    .param p1, "movedTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p3, "toTop"    # Z

    .prologue
    .line 5831
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_82

    .line 5833
    move-object/from16 v0, p0

    iget-object v11, v0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5834
    .local v2, "N":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_10
    if-ltz v3, :cond_6d

    .line 5835
    move-object/from16 v0, p0

    iget-object v11, v0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 5836
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v11, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    if-ne v11, v0, :cond_67

    .line 5837
    move-object/from16 v0, p2

    iget-object v11, v0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_57

    .line 5838
    move-object/from16 v0, p2

    iget-object v11, v0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5840
    move-object/from16 v0, p0

    iget-object v11, v0, mHandler:Landroid/os/Handler;

    const/16 v12, 0x65

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 5841
    .local v5, "msg":Landroid/os/Message;
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5842
    iget-wide v12, v6, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    const-wide/16 v14, 0x1f4

    add-long/2addr v12, v14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long v8, v12, v14

    .line 5843
    .local v8, "revisedTimeout":J
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-lez v11, :cond_6a

    .line 5845
    :goto_50
    move-object/from16 v0, p2

    iget-object v11, v0, mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5847
    .end local v5    # "msg":Landroid/os/Message;
    .end local v8    # "revisedTimeout":J
    :cond_57
    move-object/from16 v0, p0

    iget-object v11, v0, mHandler:Landroid/os/Handler;

    const/16 v12, 0x65

    invoke-virtual {v11, v12, v6}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 5848
    move-object/from16 v0, p0

    iget-object v11, v0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5834
    :cond_67
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 5843
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v8    # "revisedTimeout":J
    :cond_6a
    const-wide/16 v8, 0x0

    goto :goto_50

    .line 5852
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "revisedTimeout":J
    :cond_6d
    move-object/from16 v0, p0

    iget-object v11, v0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v11, :cond_82

    move-object/from16 v0, p0

    iget-object v11, v0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    if-ne v11, v0, :cond_82

    .line 5853
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5866
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_82
    move-object/from16 v0, p0

    iget-object v11, v0, mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v4, v11, -0x1

    .local v4, "index":I
    :goto_8c
    if-ltz v4, :cond_b1

    .line 5867
    move-object/from16 v0, p0

    iget-object v11, v0, mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 5868
    .restart local v6    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v12, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v11, v12, :cond_ae

    .line 5869
    move-object/from16 v0, p0

    iget-object v11, v0, mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5870
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 5866
    :cond_ae
    add-int/lit8 v4, v4, -0x1

    goto :goto_8c

    .line 5874
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_b1
    if-eqz p3, :cond_e5

    .line 5875
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 5876
    .local v10, "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_e5

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v12, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v11, v12, :cond_e5

    .line 5877
    move-object/from16 v0, p2

    iget-object v7, v0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5878
    .local v7, "resumed":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_d9

    iget-object v11, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v12, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v11, v12, :cond_d9

    if-eq v7, v10, :cond_d9

    .line 5883
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13, v14}, startPausingLocked(ZZZZ)Z

    .line 5885
    :cond_d9
    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v11, v11, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_e5

    .line 5886
    move-object/from16 v0, p2

    iput-object v10, v0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5890
    .end local v7    # "resumed":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    :cond_e5
    return-void
.end method

.method prepareTaskToFrontTransition(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 1822
    if-eqz p2, :cond_23

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_23

    .line 1824
    iget-object v1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v3, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 1825
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1826
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1f

    .line 1827
    iget-object v1, p0, mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1829
    :cond_1f
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1833
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_22
    return-void

    .line 1831
    :cond_23
    const/16 v1, 0xa

    invoke-virtual {p0, v1, p3}, updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_22
.end method

.method releaseBackgroundResources()V
    .registers 6

    .prologue
    const/16 v4, 0x6b

    .line 4297
    invoke-virtual {p0}, hasVisibleBehindActivity()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 4299
    invoke-virtual {p0}, getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4300
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-ne v0, v1, :cond_1c

    .line 4319
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1b
    :goto_1b
    return-void

    .line 4308
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1c
    if-eqz v0, :cond_39

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_39

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_39

    .line 4310
    :try_start_28
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v1, v2}, Landroid/app/IApplicationThread;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_5e

    .line 4313
    :goto_31
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1b

    .line 4315
    :cond_39
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseBackgroundResources: activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no longer running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4316
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v1}, backgroundResourcesReleased(Landroid/os/IBinder;)V

    goto :goto_1b

    .line 4311
    :catch_5e
    move-exception v1

    goto :goto_31
.end method

.method final releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I
    .registers 14
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    const/4 v9, 0x1

    .line 4136
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v8

    div-int/lit8 v4, v8, 0x4

    .line 4137
    .local v4, "maxTasks":I
    if-ge v4, v9, :cond_a

    .line 4138
    const/4 v4, 0x1

    .line 4140
    :cond_a
    const/4 v5, 0x0

    .line 4141
    .local v5, "numReleased":I
    const/4 v7, 0x0

    .local v7, "taskNdx":I
    :goto_c
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_61

    if-lez v4, :cond_61

    .line 4142
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 4143
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    .line 4141
    :cond_24
    :goto_24
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 4147
    :cond_27
    const/4 v3, 0x0

    .line 4148
    .local v3, "curNum":I
    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4149
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v0, 0x0

    .local v0, "actNdx":I
    :goto_2b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_51

    .line 4150
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 4151
    .local v2, "activity":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v8, p1, :cond_4e

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 4155
    invoke-virtual {p0, v2, v9, p3}, destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 4156
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v2, :cond_4c

    .line 4158
    add-int/lit8 v0, v0, -0x1

    .line 4160
    :cond_4c
    add-int/lit8 v3, v3, 0x1

    .line 4149
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 4163
    .end local v2    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_51
    if-lez v3, :cond_24

    .line 4164
    add-int/2addr v5, v3

    .line 4165
    add-int/lit8 v4, v4, -0x1

    .line 4166
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v6, :cond_24

    .line 4168
    add-int/lit8 v7, v7, -0x1

    goto :goto_24

    .line 4173
    .end local v0    # "actNdx":I
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "curNum":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_61
    return v5
.end method

.method removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 16
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 4364
    iget-object v7, p0, mLRUActivities:Ljava/util/ArrayList;

    const-string v8, "mLRUActivities"

    invoke-direct {p0, v7, p1, v8}, removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4365
    iget-object v7, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v8, "mStoppingActivities"

    invoke-direct {p0, v7, p1, v8}, removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4367
    iget-object v7, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v8, "mGoingToSleepActivities"

    invoke-direct {p0, v7, p1, v8}, removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4369
    iget-object v7, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    const-string v8, "mWaitingVisibleActivities"

    invoke-direct {p0, v7, p1, v8}, removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4371
    iget-object v7, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v8, "mFinishingActivities"

    invoke-direct {p0, v7, p1, v8}, removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4374
    const/4 v2, 0x0

    .line 4377
    .local v2, "hasVisibleActivities":Z
    invoke-virtual {p0}, numActivities()I

    move-result v3

    .line 4380
    .local v3, "i":I
    iget-object v7, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .local v6, "taskNdx":I
    :goto_38
    if-ltz v6, :cond_103

    .line 4381
    iget-object v7, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    iget-object v0, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4382
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "activityNdx":I
    :goto_4a
    if-ltz v1, :cond_ff

    .line 4383
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 4384
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v3, -0x1

    .line 4387
    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v7, p1, :cond_cf

    .line 4389
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v7, :cond_60

    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-eqz v7, :cond_64

    :cond_60
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_d3

    .line 4392
    :cond_64
    const/4 v5, 0x1

    .line 4402
    .local v5, "remove":Z
    :goto_65
    if-eqz v5, :cond_ec

    .line 4412
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_c7

    .line 4413
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Force removing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": app died, no saved state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4414
    const/16 v7, 0x7531

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v10, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "proc died without state saved"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4418
    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_c7

    .line 4419
    iget-object v7, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 4422
    :cond_c7
    invoke-direct {p0, v4}, removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4443
    :cond_ca
    :goto_ca
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0, v4, v7, v8}, cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 4382
    .end local v5    # "remove":Z
    :cond_cf
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_4a

    .line 4393
    :cond_d3
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->launchCount:I

    const/4 v8, 0x2

    if-le v7, v8, :cond_e9

    iget-wide v8, v4, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    sub-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-lez v7, :cond_e9

    .line 4397
    const/4 v5, 0x1

    .restart local v5    # "remove":Z
    goto/16 :goto_65

    .line 4400
    .end local v5    # "remove":Z
    :cond_e9
    const/4 v5, 0x0

    .restart local v5    # "remove":Z
    goto/16 :goto_65

    .line 4429
    :cond_ec
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v7, :cond_f1

    .line 4430
    const/4 v2, 0x1

    .line 4434
    :cond_f1
    const/4 v7, 0x0

    iput-object v7, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4435
    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 4436
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v7, :cond_ca

    .line 4439
    const/4 v7, 0x0

    iput-object v7, v4, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    goto :goto_ca

    .line 4380
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "remove":Z
    :cond_ff
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_38

    .line 4448
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_103
    return v2
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v0, 0x0

    .line 5752
    invoke-virtual {p0, p1, v0, v0}, removeTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 5753
    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;ZZ)V
    .registers 13
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "move"    # Z
    .param p3, "exchange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 5757
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, p1}, Lcom/android/server/am/ActivityStackSupervisor;->endLockTaskModeIfTaskEnding(Lcom/android/server/am/TaskRecord;)V

    .line 5760
    iget-object v6, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v7, p2}, Lcom/android/server/wm/WindowManagerService;->removeTask(IZ)V

    .line 5765
    iget-object v2, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5766
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_19

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v6, p1, :cond_19

    .line 5767
    const/4 v6, 0x0

    iput-object v6, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 5770
    :cond_19
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 5771
    .local v3, "taskNdx":I
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 5772
    .local v4, "topTaskNdx":I
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v6

    if-eqz v6, :cond_42

    if-ge v3, v4, :cond_42

    .line 5773
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 5774
    .local v1, "nextTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v6

    if-nez v6, :cond_42

    .line 5775
    invoke-virtual {v1, v0}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 5778
    .end local v1    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_42
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5781
    iget-object v6, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v6, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->remove(Lcom/android/server/am/TaskRecord;)Z

    .line 5784
    invoke-virtual {p0, p1, v0}, updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 5786
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_82

    .line 5787
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v6, :cond_ab

    .line 5788
    .local v0, "isVoiceSession":Z
    :goto_5b
    if-eqz v0, :cond_66

    .line 5790
    :try_start_5d
    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v6, v7, v8}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_66} :catch_ad

    .line 5794
    :cond_66
    :goto_66
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->autoRemoveFromRecents()Z

    move-result v6

    if-nez v6, :cond_6e

    if-eqz v0, :cond_82

    .line 5802
    :cond_6e
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    if-eqz v6, :cond_7b

    .line 5803
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5804
    :cond_7b
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mTaskPersister:Lcom/android/server/am/TaskPersister;

    invoke-virtual {p1, v6}, Lcom/android/server/am/TaskRecord;->removedFromRecents(Lcom/android/server/am/TaskPersister;)V

    .line 5808
    .end local v0    # "isVoiceSession":Z
    :cond_82
    if-nez p3, :cond_aa

    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 5810
    invoke-virtual {p0}, isOnHomeDisplay()Z

    move-result v6

    if-eqz v6, :cond_97

    .line 5813
    iget-object v6, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveStack(Lcom/android/server/am/ActivityStack;Z)V

    .line 5819
    :cond_97
    iget-object v6, p0, mStacks:Ljava/util/ArrayList;

    if-eqz v6, :cond_a5

    .line 5820
    iget-object v6, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5821
    iget-object v6, p0, mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5823
    :cond_a5
    iget-object v5, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    .line 5825
    :cond_aa
    return-void

    :cond_ab
    move v0, v5

    .line 5787
    goto :goto_5b

    .line 5791
    .restart local v0    # "isVoiceSession":Z
    :catch_ad
    move-exception v6

    goto :goto_66
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .prologue
    .line 3467
    invoke-virtual {p0, p1}, isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 3472
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_8

    .line 3473
    const/4 v0, 0x0

    .line 3477
    :goto_7
    return v0

    :cond_8
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 3476
    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3477
    const/4 v0, 0x1

    goto :goto_7
.end method

.method final resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;
    .registers 31
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "forceReset"    # Z

    .prologue
    .line 3030
    const/16 v27, 0x0

    .line 3032
    .local v27, "topOptions":Landroid/app/ActivityOptions;
    const/16 v20, -0x1

    .line 3033
    .local v20, "replyChainEnd":I
    const/4 v12, 0x1

    .line 3037
    .local v12, "canMoveOptions":Z
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3038
    .local v9, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 3039
    .local v19, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v21

    .line 3040
    .local v21, "rootActivityNdx":I
    add-int/lit8 v17, v19, -0x1

    .local v17, "i":I
    :goto_13
    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_27

    .line 3041
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ActivityRecord;

    .line 3042
    .local v24, "target":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v24

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_28

    .line 3178
    .end local v24    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_27
    return-object v27

    .line 3045
    .restart local v24    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_28
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v16, v0

    .line 3046
    .local v16, "flags":I
    and-int/lit8 v2, v16, 0x2

    if-eqz v2, :cond_59

    const/4 v15, 0x1

    .line 3048
    .local v15, "finishOnTaskLaunch":Z
    :goto_35
    and-int/lit8 v2, v16, 0x40

    if-eqz v2, :cond_5b

    const/4 v10, 0x1

    .line 3050
    .local v10, "allowTaskReparenting":Z
    :goto_3a
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-eqz v2, :cond_5d

    const/4 v13, 0x1

    .line 3053
    .local v13, "clearWhenTaskReset":Z
    :goto_48
    if-nez v15, :cond_5f

    if-nez v13, :cond_5f

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_5f

    .line 3062
    if-gez v20, :cond_56

    .line 3063
    move/from16 v20, v17

    .line 3040
    :cond_56
    :goto_56
    add-int/lit8 v17, v17, -0x1

    goto :goto_13

    .line 3046
    .end local v10    # "allowTaskReparenting":Z
    .end local v13    # "clearWhenTaskReset":Z
    .end local v15    # "finishOnTaskLaunch":Z
    :cond_59
    const/4 v15, 0x0

    goto :goto_35

    .line 3048
    .restart local v15    # "finishOnTaskLaunch":Z
    :cond_5b
    const/4 v10, 0x0

    goto :goto_3a

    .line 3050
    .restart local v10    # "allowTaskReparenting":Z
    :cond_5d
    const/4 v13, 0x0

    goto :goto_48

    .line 3065
    .restart local v13    # "clearWhenTaskReset":Z
    :cond_5f
    if-nez v15, :cond_14a

    if-nez v13, :cond_14a

    if-eqz v10, :cond_14a

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_14a

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14a

    .line 3077
    move-object/from16 v0, p0

    iget-object v2, v0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f5

    move-object/from16 v0, p0

    iget-object v2, v0, mTaskHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f5

    move-object/from16 v0, p0

    iget-object v2, v0, mTaskHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object v11, v2

    .line 3080
    .local v11, "bottom":Lcom/android/server/am/ActivityRecord;
    :goto_ab
    if-eqz v11, :cond_f7

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_f7

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 3085
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v25, v0

    .line 3096
    .local v25, "targetTask":Lcom/android/server/am/TaskRecord;
    :goto_c5
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v26, v0

    .line 3097
    .local v26, "targetTaskId":I
    move-object/from16 v0, p0

    iget-object v2, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 3099
    move/from16 v18, v12

    .line 3100
    .local v18, "noOptions":Z
    if-gez v20, :cond_116

    move/from16 v23, v17

    .line 3101
    .local v23, "start":I
    :goto_de
    move/from16 v22, v23

    .local v22, "srcPos":I
    :goto_e0
    move/from16 v0, v22

    move/from16 v1, v17

    if-lt v0, v1, :cond_13d

    .line 3102
    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3103
    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_119

    .line 3101
    :goto_f2
    add-int/lit8 v22, v22, -0x1

    goto :goto_e0

    .line 3077
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "bottom":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "noOptions":Z
    .end local v22    # "srcPos":I
    .end local v23    # "start":I
    .end local v25    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v26    # "targetTaskId":I
    :cond_f5
    const/4 v11, 0x0

    goto :goto_ab

    .line 3089
    .restart local v11    # "bottom":Lcom/android/server/am/ActivityRecord;
    :cond_f7
    move-object/from16 v0, p0

    iget-object v2, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v3

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v25

    .line 3091
    .restart local v25    # "targetTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_c5

    .restart local v18    # "noOptions":Z
    .restart local v26    # "targetTaskId":I
    :cond_116
    move/from16 v23, v20

    .line 3100
    goto :goto_de

    .line 3107
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v22    # "srcPos":I
    .restart local v23    # "start":I
    :cond_119
    const/4 v12, 0x0

    .line 3108
    if-eqz v18, :cond_126

    if-nez v27, :cond_126

    .line 3109
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v27

    .line 3110
    if-eqz v27, :cond_126

    .line 3111
    const/16 v18, 0x0

    .line 3119
    :cond_126
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 3120
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/android/server/am/TaskRecord;->addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V

    .line 3122
    move-object/from16 v0, p0

    iget-object v2, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    goto :goto_f2

    .line 3125
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_13d
    move-object/from16 v0, p0

    iget-object v2, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToBottom(I)V

    .line 3130
    const/16 v20, -0x1

    .line 3131
    goto/16 :goto_56

    .end local v11    # "bottom":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "noOptions":Z
    .end local v22    # "srcPos":I
    .end local v23    # "start":I
    .end local v25    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v26    # "targetTaskId":I
    :cond_14a
    if-nez p2, :cond_150

    if-nez v15, :cond_150

    if-eqz v13, :cond_19f

    .line 3137
    :cond_150
    if-eqz v13, :cond_168

    .line 3141
    add-int/lit8 v14, v19, -0x1

    .line 3147
    .local v14, "end":I
    :goto_154
    move/from16 v18, v12

    .line 3148
    .restart local v18    # "noOptions":Z
    move/from16 v22, v17

    .restart local v22    # "srcPos":I
    :goto_158
    move/from16 v0, v22

    if-gt v0, v14, :cond_164

    .line 3149
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-lt v0, v2, :cond_170

    .line 3169
    :cond_164
    const/16 v20, -0x1

    .line 3170
    goto/16 :goto_56

    .line 3142
    .end local v14    # "end":I
    .end local v18    # "noOptions":Z
    .end local v22    # "srcPos":I
    :cond_168
    if-gez v20, :cond_16d

    .line 3143
    move/from16 v14, v17

    .restart local v14    # "end":I
    goto :goto_154

    .line 3145
    .end local v14    # "end":I
    :cond_16d
    move/from16 v14, v20

    .restart local v14    # "end":I
    goto :goto_154

    .line 3151
    .restart local v18    # "noOptions":Z
    .restart local v22    # "srcPos":I
    :cond_170
    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3152
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_17f

    .line 3148
    :cond_17c
    :goto_17c
    add-int/lit8 v22, v22, 0x1

    goto :goto_158

    .line 3155
    :cond_17f
    const/4 v12, 0x0

    .line 3156
    if-eqz v18, :cond_18c

    if-nez v27, :cond_18c

    .line 3157
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v27

    .line 3158
    if-eqz v27, :cond_18c

    .line 3159
    const/16 v18, 0x0

    .line 3164
    :cond_18c
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "reset"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_17c

    .line 3165
    add-int/lit8 v14, v14, -0x1

    .line 3166
    add-int/lit8 v22, v22, -0x1

    goto :goto_17c

    .line 3174
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "end":I
    .end local v18    # "noOptions":Z
    .end local v22    # "srcPos":I
    :cond_19f
    const/16 v20, -0x1

    goto/16 :goto_56
.end method

.method final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 13
    .param p1, "taskTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3294
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2a

    const/4 v4, 0x1

    .line 3303
    .local v4, "forceReset":Z
    :goto_9
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3307
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    const/4 v3, 0x0

    .line 3310
    .local v3, "taskFound":Z
    const/4 v9, 0x0

    .line 3313
    .local v9, "topOptions":Landroid/app/ActivityOptions;
    const/4 v5, -0x1

    .line 3315
    .local v5, "reparentInsertionPoint":I
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_16
    if-ltz v6, :cond_32

    .line 3316
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 3318
    .local v1, "targetTask":Lcom/android/server/am/TaskRecord;
    if-ne v1, v2, :cond_2c

    .line 3319
    invoke-virtual {p0, v2, v4}, resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;

    move-result-object v9

    .line 3320
    const/4 v3, 0x1

    .line 3315
    :goto_27
    add-int/lit8 v6, v6, -0x1

    goto :goto_16

    .line 3294
    .end local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskFound":Z
    .end local v4    # "forceReset":Z
    .end local v5    # "reparentInsertionPoint":I
    .end local v6    # "i":I
    .end local v9    # "topOptions":Landroid/app/ActivityOptions;
    :cond_2a
    const/4 v4, 0x0

    goto :goto_9

    .restart local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "taskFound":Z
    .restart local v4    # "forceReset":Z
    .restart local v5    # "reparentInsertionPoint":I
    .restart local v6    # "i":I
    .restart local v9    # "topOptions":Landroid/app/ActivityOptions;
    :cond_2c
    move-object v0, p0

    .line 3322
    invoke-direct/range {v0 .. v5}, resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I

    move-result v5

    goto :goto_27

    .line 3327
    .end local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    :cond_32
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 3329
    .local v7, "taskNdx":I
    :goto_38
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, -0x1

    .end local v7    # "taskNdx":I
    .local v8, "taskNdx":I
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 3330
    if-nez p1, :cond_4a

    if-gez v8, :cond_56

    .line 3332
    :cond_4a
    if-eqz v9, :cond_51

    .line 3335
    if-eqz p1, :cond_52

    .line 3336
    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 3342
    :cond_51
    :goto_51
    return-object p1

    .line 3338
    :cond_52
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->abort()V

    goto :goto_51

    :cond_56
    move v7, v8

    .end local v8    # "taskNdx":I
    .restart local v7    # "taskNdx":I
    goto :goto_38
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5729
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 5733
    .local v3, "starting":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_d
    if-ltz v4, :cond_49

    .line 5734
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v1, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5735
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "activityNdx":I
    :goto_1f
    if-ltz v2, :cond_46

    .line 5736
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 5737
    .local v0, "a":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 5738
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 5739
    if-eqz v3, :cond_43

    if-ne v0, v3, :cond_43

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_43

    .line 5740
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v6, 0x100

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 5735
    :cond_43
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 5733
    .end local v0    # "a":Lcom/android/server/am/ActivityRecord;
    :cond_46
    add-int/lit8 v4, v4, -0x1

    goto :goto_d

    .line 5747
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_49
    return-object v3
.end method

.method final resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .registers 40
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 2163
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v3, :cond_12

    .line 2165
    const/4 v3, 0x0

    .line 2747
    :goto_11
    return v3

    .line 2168
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v30, v0

    .line 2169
    .local v30, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v30, :cond_24

    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_2e

    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v3

    if-nez v3, :cond_30

    .line 2173
    :cond_2e
    const/4 v3, 0x0

    goto :goto_11

    .line 2176
    :cond_30
    invoke-virtual/range {p0 .. p0}, cancelInitializingActivities()V

    .line 2179
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 2183
    .local v25, "next":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    move/from16 v36, v0

    .line 2184
    .local v36, "userLeaving":Z
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2186
    if-eqz p1, :cond_5e

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v32, v0

    .line 2187
    .local v32, "prevTask":Lcom/android/server/am/TaskRecord;
    :goto_51
    if-nez v25, :cond_a7

    .line 2190
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2196
    invoke-virtual/range {p0 .. p0}, isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 2197
    const/4 v3, 0x0

    goto :goto_11

    .line 2186
    .end local v32    # "prevTask":Lcom/android/server/am/TaskRecord;
    :cond_5e
    const/16 v32, 0x0

    goto :goto_51

    .line 2199
    .restart local v32    # "prevTask":Lcom/android/server/am/TaskRecord;
    :cond_61
    invoke-virtual/range {p0 .. p0}, isHomeStack()Z

    move-result v3

    if-nez v3, :cond_75

    .line 2200
    if-eqz p1, :cond_73

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-nez v3, :cond_75

    .line 2201
    :cond_73
    const/4 v3, 0x0

    goto :goto_11

    .line 2208
    :cond_75
    if-eqz v32, :cond_7d

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-nez v3, :cond_9c

    :cond_7d
    const/16 v34, 0x1

    .line 2213
    .local v34, "returnTaskType":I
    :goto_7f
    invoke-virtual/range {p0 .. p0}, isOnHomeDisplay()Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 2214
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_a1

    .line 2215
    move-object/from16 v0, p0

    iget-boolean v3, v0, mTwiceResumeTop:Z

    if-nez v3, :cond_a7

    .line 2216
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 2208
    .end local v34    # "returnTaskType":I
    :cond_9c
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v34

    goto :goto_7f

    .line 2221
    .restart local v34    # "returnTaskType":I
    :cond_a1
    const/4 v3, 0x1

    goto/16 :goto_11

    .line 2224
    :cond_a4
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 2228
    .end local v34    # "returnTaskType":I
    :cond_a7
    const/4 v3, 0x0

    move-object/from16 v0, v25

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 2231
    move-object/from16 v0, p0

    iget-object v3, v0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v25

    if-ne v3, v0, :cond_f8

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_f8

    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 2235
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete(Z)Z

    move-result v3

    if-eqz v3, :cond_ee

    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_ee

    .line 2238
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2239
    move-object/from16 v0, p0

    iget-object v3, v0, mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2240
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2248
    :cond_ee
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    .line 2249
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 2252
    :cond_f8
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v27, v0

    .line 2253
    .local v27, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v32, :cond_123

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_123

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-eqz v3, :cond_123

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_123

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_123

    .line 2256
    move-object/from16 v0, v32

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_153

    .line 2257
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 2290
    :cond_123
    :goto_123
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v3

    if-eqz v3, :cond_1aa

    move-object/from16 v0, p0

    iget-object v3, v0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v25

    if-ne v3, v0, :cond_1aa

    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v3

    if-eqz v3, :cond_1aa

    .line 2295
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2296
    move-object/from16 v0, p0

    iget-object v3, v0, mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2297
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2300
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 2258
    :cond_153
    invoke-virtual/range {p0 .. p0}, topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    move-object/from16 v0, v32

    if-eq v0, v3, :cond_178

    .line 2261
    move-object/from16 v0, p0

    iget-object v3, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v35, v3, 0x1

    .line 2262
    .local v35, "taskNdx":I
    move-object/from16 v0, p0

    iget-object v3, v0, mTaskHistory:Ljava/util/ArrayList;

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_123

    .line 2267
    .end local v35    # "taskNdx":I
    :cond_178
    if-eqz v32, :cond_180

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-nez v3, :cond_19f

    :cond_180
    const/16 v34, 0x1

    .line 2272
    .restart local v34    # "returnTaskType":I
    :goto_182
    invoke-virtual/range {p0 .. p0}, isOnHomeDisplay()Z

    move-result v3

    if-eqz v3, :cond_1a7

    .line 2273
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_1a4

    .line 2274
    move-object/from16 v0, p0

    iget-boolean v3, v0, mTwiceResumeTop:Z

    if-nez v3, :cond_123

    .line 2275
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 2267
    .end local v34    # "returnTaskType":I
    :cond_19f
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v34

    goto :goto_182

    .line 2280
    .restart local v34    # "returnTaskType":I
    :cond_1a4
    const/4 v3, 0x1

    goto/16 :goto_11

    .line 2283
    :cond_1a7
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 2306
    .end local v34    # "returnTaskType":I
    :cond_1aa
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1eb

    .line 2307
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping resume of top activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is stopped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 2315
    :cond_1eb
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2316
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2317
    const/4 v3, 0x0

    move-object/from16 v0, v25

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2318
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2319
    const/4 v3, 0x0

    move-object/from16 v0, v25

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 2325
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v3

    if-nez v3, :cond_223

    .line 2329
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 2363
    :cond_223
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_270

    const/16 v19, 0x1

    .line 2364
    .local v19, "dontWaitForPause":Z
    :goto_22f
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    move/from16 v0, v36

    move/from16 v1, v19

    invoke-virtual {v3, v0, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    move-result v31

    .line 2365
    .local v31, "pausing":Z
    move-object/from16 v0, p0

    iget-object v3, v0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_250

    .line 2366
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v19

    invoke-virtual {v0, v1, v3, v4, v2}, startPausingLocked(ZZZZ)Z

    move-result v3

    or-int v31, v31, v3

    .line 2369
    :cond_250
    if-eqz v31, :cond_273

    .line 2376
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_26d

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_26d

    .line 2377
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2380
    :cond_26d
    const/4 v3, 0x1

    goto/16 :goto_11

    .line 2363
    .end local v19    # "dontWaitForPause":Z
    .end local v31    # "pausing":Z
    :cond_270
    const/16 v19, 0x0

    goto :goto_22f

    .line 2384
    .restart local v19    # "dontWaitForPause":Z
    .restart local v31    # "pausing":Z
    :cond_273
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v3

    if-eqz v3, :cond_4e1

    .line 2385
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    .line 2394
    :goto_287
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_2b4

    move-object/from16 v0, p0

    iget-object v3, v0, mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2b4

    move-object/from16 v0, p0

    iget-object v3, v0, mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_2b4

    .line 2398
    move-object/from16 v0, p0

    iget-object v3, v0, mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "no-history"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2400
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 2403
    :cond_2b4
    if-eqz p1, :cond_2da

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_2da

    .line 2404
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v3, :cond_4f1

    if-eqz v25, :cond_4f1

    move-object/from16 v0, v25

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v3, :cond_4f1

    .line 2405
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 2406
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2438
    :cond_2da
    :goto_2da
    :try_start_2da
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_2ea
    .catch Landroid/os/RemoteException; {:try_start_2da .. :try_end_2ea} :catch_81b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2da .. :try_end_2ea} :catch_516

    .line 2449
    :goto_2ea
    const/16 v17, 0x1

    .line 2450
    .local v17, "anim":Z
    if-eqz p1, :cond_5bf

    .line 2451
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_56f

    .line 2454
    move-object/from16 v0, p0

    iget-object v3, v0, mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_541

    .line 2455
    const/16 v17, 0x0

    .line 2456
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2470
    :goto_30b
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 2471
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2516
    :goto_322
    const/16 v33, 0x0

    .line 2517
    .local v33, "resumeAnimOptions":Landroid/os/Bundle;
    if-eqz v17, :cond_5f9

    .line 2518
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityRecord;->getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;

    move-result-object v29

    .line 2519
    .local v29, "opts":Landroid/app/ActivityOptions;
    if-eqz v29, :cond_330

    .line 2520
    invoke-virtual/range {v29 .. v29}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v33

    .line 2522
    :cond_330
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    .line 2527
    .end local v29    # "opts":Landroid/app/ActivityOptions;
    :goto_333
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v22

    .line 2530
    .local v22, "lastStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {p0 .. p0}, isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_5fe

    .line 2531
    const/16 v22, 0x0

    .line 2537
    :cond_343
    :goto_343
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_7cb

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_7cb

    .line 2552
    move-object/from16 v0, p0

    iget-boolean v3, v0, SAMP_ENABLE:Z

    if-eqz v3, :cond_378

    .line 2554
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v3, :cond_36d

    .line 2555
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/app/usage/UsageStatsManagerInternal;->reportPpmEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2558
    :cond_36d
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateHotnessAdj(Lcom/android/server/am/ProcessRecord;)V

    .line 2563
    :cond_378
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2566
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 2568
    if-nez v22, :cond_614

    const/16 v21, 0x0

    .line 2570
    .local v21, "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    :goto_38b
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v23, v0

    .line 2572
    .local v23, "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 2575
    const-string v3, "com.sec.android.app.camera/.Camera"

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f6

    const-string v3, "com.sec.android.app.ocr/.OCR"

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f6

    const-string v3, "com.cyworld.camera/com.cyworld.cymera.CameraMain"

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_437

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3f6

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f6

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f6

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_437

    :cond_3f6
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_437

    .line 2584
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resumeTopActivityLocked() Aggressive kill try = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    const-string/jumbo v3, "persist.sys.kill_support"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 2589
    .local v24, "mSupportAggrKill":I
    if-lez v24, :cond_437

    .line 2590
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const-string v5, "camera-start"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->killProcessesForMemoryLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 2595
    .end local v24    # "mSupportAggrKill":I
    :cond_437
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2596
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2597
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 2598
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 2599
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 2600
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2601
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 2605
    const/16 v28, 0x1

    .line 2606
    .local v28, "notUpdated":Z
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_4b5

    .line 2607
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_61c

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_498
    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v18

    .line 2610
    .local v18, "config":Landroid/content/res/Configuration;
    if-eqz v18, :cond_4a3

    .line 2611
    const/4 v3, 0x1

    move-object/from16 v0, v25

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 2613
    :cond_4a3
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v3

    if-nez v3, :cond_61f

    const/16 v28, 0x1

    .line 2616
    .end local v18    # "config":Landroid/content/res/Configuration;
    :cond_4b5
    :goto_4b5
    if-eqz v28, :cond_626

    .line 2622
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    .line 2626
    .local v26, "nextNext":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_4cb

    .line 2628
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 2630
    :cond_4cb
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_623

    .line 2631
    move-object/from16 v0, p0

    iget-object v3, v0, mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2633
    const/4 v3, 0x1

    goto/16 :goto_11

    .line 2387
    .end local v17    # "anim":Z
    .end local v21    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v22    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v26    # "nextNext":Lcom/android/server/am/ActivityRecord;
    .end local v28    # "notUpdated":Z
    .end local v33    # "resumeAnimOptions":Landroid/os/Bundle;
    :cond_4e1
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_287

    .line 2418
    :cond_4f1
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_2da

    .line 2419
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v3, :cond_508

    .line 2420
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2421
    :cond_508
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    goto/16 :goto_2da

    .line 2441
    :catch_516
    move-exception v20

    .line 2442
    .local v20, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed trying to unstop package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2ea

    .line 2459
    .end local v20    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v17    # "anim":Z
    :cond_541
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v3

    if-nez v3, :cond_557

    .line 2460
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x66

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_30b

    .line 2463
    :cond_557
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_56c

    const/4 v3, 0x7

    :goto_566
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_30b

    :cond_56c
    const/16 v3, 0x9

    goto :goto_566

    .line 2474
    :cond_56f
    move-object/from16 v0, p0

    iget-object v3, v0, mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_588

    .line 2475
    const/16 v17, 0x0

    .line 2476
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_322

    .line 2479
    :cond_588
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_59e

    .line 2480
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x65

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_322

    .line 2484
    :cond_59e
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_5b3

    const/4 v3, 0x6

    :goto_5ad
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_322

    :cond_5b3
    move-object/from16 v0, v25

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_5bc

    const/16 v3, 0x10

    goto :goto_5ad

    :cond_5bc
    const/16 v3, 0x8

    goto :goto_5ad

    .line 2500
    :cond_5bf
    move-object/from16 v0, p0

    iget-object v3, v0, mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d8

    .line 2501
    const/16 v17, 0x0

    .line 2502
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_322

    .line 2505
    :cond_5d8
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_5ee

    .line 2506
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x65

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_322

    .line 2510
    :cond_5ee
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_322

    .line 2524
    .restart local v33    # "resumeAnimOptions":Landroid/os/Bundle;
    :cond_5f9
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto/16 :goto_333

    .line 2532
    .restart local v22    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_5fe
    invoke-virtual/range {p0 .. p0}, isNormalAppStack()Z

    move-result v3

    if-eqz v3, :cond_343

    invoke-virtual/range {v22 .. v22}, isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_343

    .line 2533
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v22

    goto/16 :goto_343

    .line 2568
    :cond_614
    move-object/from16 v0, v22

    iget-object v0, v0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    goto/16 :goto_38b

    .line 2607
    .restart local v21    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v28    # "notUpdated":Z
    :cond_61c
    const/4 v3, 0x0

    goto/16 :goto_498

    .line 2613
    .restart local v18    # "config":Landroid/content/res/Configuration;
    :cond_61f
    const/16 v28, 0x0

    goto/16 :goto_4b5

    .line 2636
    .end local v18    # "config":Landroid/content/res/Configuration;
    .restart local v26    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_623
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 2641
    .end local v26    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_626
    :try_start_626
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 2642
    .local v16, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v16, :cond_649

    .line 2643
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2644
    .local v15, "N":I
    move-object/from16 v0, v25

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_649

    if-lez v15, :cond_649

    .line 2648
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v16

    invoke-interface {v3, v4, v0}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2652
    .end local v15    # "N":I
    :cond_649
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v3, :cond_660

    .line 2653
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 2656
    :cond_660
    const/16 v3, 0x7537

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2660
    const/4 v3, 0x0

    move-object/from16 v0, v25

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 2661
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2662
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 2663
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 2664
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 2665
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object/from16 v0, p0

    iget-object v6, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v6

    move-object/from16 v0, v33

    invoke-interface {v3, v4, v5, v6, v0}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    .line 2668
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 2672
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->updateCascadeHiddenFlag(Z)V

    .line 2673
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/TaskRecord;->bHidden:Z
    :try_end_6e5
    .catch Ljava/lang/Exception; {:try_start_626 .. :try_end_6e5} :catch_714

    .line 2704
    const/4 v3, 0x1

    :try_start_6e6
    move-object/from16 v0, v25

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 2705
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_6f1
    .catch Ljava/lang/Exception; {:try_start_6e6 .. :try_end_6f1} :catch_79c

    .line 2715
    const/4 v3, 0x0

    move-object/from16 v0, v25

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2740
    .end local v16    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v21    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v28    # "notUpdated":Z
    :goto_6f6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_711

    .line 2741
    if-eqz v25, :cond_711

    .line 2742
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusGain(Landroid/content/Context;Ljava/lang/String;)V

    .line 2747
    :cond_711
    const/4 v3, 0x1

    goto/16 :goto_11

    .line 2677
    .restart local v21    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v28    # "notUpdated":Z
    :catch_714
    move-exception v20

    .line 2681
    .local v20, "e":Ljava/lang/Exception;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2682
    if-eqz v22, :cond_723

    .line 2683
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2685
    :cond_723
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restarting because process died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    move-object/from16 v0, v25

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_756

    .line 2687
    const/4 v3, 0x1

    move-object/from16 v0, v25

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 2696
    :cond_748
    :goto_748
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2698
    const/4 v3, 0x1

    goto/16 :goto_11

    .line 2688
    :cond_756
    if-eqz v22, :cond_748

    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_748

    .line 2690
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v25

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, v25

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v25

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, v25

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, v25

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move-object/from16 v0, v25

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    goto :goto_748

    .line 2706
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v16    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_79c
    move-exception v20

    .line 2709
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown during resume of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2710
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "resume-exception"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2713
    const/4 v3, 0x1

    goto/16 :goto_11

    .line 2719
    .end local v16    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v21    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v28    # "notUpdated":Z
    :cond_7cb
    move-object/from16 v0, v25

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_7e3

    .line 2720
    const/4 v3, 0x1

    move-object/from16 v0, v25

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 2734
    :goto_7d6
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_6f6

    .line 2723
    :cond_7e3
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v25

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, v25

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v25

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, v25

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, v25

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move-object/from16 v0, v25

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    goto :goto_7d6

    .line 2440
    .end local v17    # "anim":Z
    .end local v22    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v33    # "resumeAnimOptions":Landroid/os/Bundle;
    :catch_81b
    move-exception v3

    goto/16 :goto_2ea
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 3
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .registers 7
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2142
    iget-boolean v2, p0, inResumeTopActivity:Z

    if-eqz v2, :cond_a

    .line 2143
    iput-boolean v3, p0, mTwiceResumeTop:Z

    move v0, v1

    .line 2157
    :goto_9
    return v0

    .line 2148
    :cond_a
    const/4 v0, 0x0

    .line 2151
    .local v0, "result":Z
    const/4 v2, 0x1

    :try_start_c
    iput-boolean v2, p0, inResumeTopActivity:Z

    .line 2152
    const/4 v2, 0x0

    iput-boolean v2, p0, mTwiceResumeTop:Z

    .line 2153
    invoke-virtual {p0, p1, p2}, resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_18

    move-result v0

    .line 2155
    iput-boolean v1, p0, inResumeTopActivity:Z

    goto :goto_9

    :catchall_18
    move-exception v2

    iput-boolean v1, p0, inResumeTopActivity:Z

    throw v2
.end method

.method final safelyDestroyActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 4123
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4127
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    .line 4129
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 6
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 4083
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4084
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4085
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4086
    return-void
.end method

.method public final screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "who"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v6, 0x0

    .line 1081
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v0, :cond_7

    move-object v0, v6

    .line 1117
    :goto_6
    return-object v0

    .line 1086
    :cond_7
    invoke-virtual {p0}, isHomeStack()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1091
    invoke-direct {p0}, invalidateLastScreenshot()V

    move-object v0, v6

    .line 1093
    goto :goto_6

    .line 1096
    :cond_12
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v0, Lcom/android/server/am/ActivityManagerService;->mThumbnailWidth:I

    .line 1097
    .local v3, "w":I
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v0, Lcom/android/server/am/ActivityManagerService;->mThumbnailHeight:I

    .line 1099
    .local v4, "h":I
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const-string v1, "1"

    const-string/jumbo v2, "sys.samsung.personalpage.mode"

    const-string v5, "0"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/TaskRecord;->isSecretMode:Z

    .line 1101
    if-lez v3, :cond_70

    .line 1102
    iget-object v0, p0, mLastScreenshotActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v0, :cond_4f

    iget-object v0, p0, mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4f

    iget-object v0, p0, mLastScreenshotActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_4f

    iget-object v0, p0, mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v3, :cond_4f

    iget-object v0, p0, mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v4, :cond_5e

    .line 1107
    :cond_4f
    iput-object p1, p0, mLastScreenshotActivity:Lcom/android/server/am/ActivityRecord;

    .line 1108
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v2, 0x0

    sget-boolean v5, SCREENSHOT_FORCE_565:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 1111
    :cond_5e
    iget-object v0, p0, mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_70

    .line 1113
    iget-object v0, p0, mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_6

    .line 1116
    :cond_70
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid thumbnail dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 1117
    goto/16 :goto_6
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 15
    .param p1, "callingUid"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "resultCode"    # I
    .param p6, "data"    # Landroid/content/Intent;

    .prologue
    .line 3348
    if-lez p1, :cond_11

    .line 3349
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    move v1, p1

    move-object v3, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 3356
    :cond_11
    iget-object v0, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p2, :cond_4f

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_4f

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_4f

    .line 3358
    :try_start_1f
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3359
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3361
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1, v7}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_35} :catch_36

    .line 3369
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :goto_35
    return-void

    .line 3363
    :catch_36
    move-exception v6

    .line 3364
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3368
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4f
    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    goto :goto_35
.end method

.method setLaunchTime(Lcom/android/server/am/ActivityRecord;Z)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "fullLaunch"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 976
    iput-boolean p2, p1, Lcom/android/server/am/ActivityRecord;->fullLaunch:Z

    .line 977
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    .line 978
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    .line 979
    iget-wide v0, p0, mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_21

    .line 980
    invoke-direct {p0}, startLaunchTraces()V

    .line 981
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v0, p0, mFullyDrawnStartTime:J

    iput-wide v0, p0, mLaunchStartTime:J

    .line 987
    :cond_21
    :goto_21
    return-void

    .line 983
    :cond_22
    iget-wide v0, p0, mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_21

    .line 984
    invoke-direct {p0}, startLaunchTraces()V

    .line 985
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mFullyDrawnStartTime:J

    iput-wide v0, p0, mLaunchStartTime:J

    goto :goto_21
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p3, "allInTask"    # Z

    .prologue
    .line 5266
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZZLandroid/os/Bundle;)V

    .line 5267
    return-void
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZZLandroid/os/Bundle;)V
    .registers 41
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "multiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p3, "allInTask"    # Z
    .param p4, "toTop"    # Z
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 5270
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    monitor-enter v30

    .line 5271
    :try_start_7
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    .line 5272
    .local v15, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v15, :cond_f

    .line 5273
    monitor-exit v30

    .line 5511
    :goto_e
    return-void

    .line 5276
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 5280
    .local v16, "origId":J
    const/4 v11, 0x0

    .line 5283
    .local v11, "needPauseBackStacks":Z
    const/4 v8, 0x0

    .line 5284
    .local v8, "forceUpdateAll":Z
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v31

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_21b

    const/4 v7, 0x1

    .line 5286
    .local v7, "changedType":Z
    :goto_28
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v29, v0

    const/16 v31, 0x4

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v29

    if-eqz v29, :cond_45

    const/16 v29, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v29

    if-nez v29, :cond_45

    .line 5288
    const/4 v8, 0x1

    .line 5290
    :cond_45
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v29, v0

    const/16 v31, 0x4

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v29

    if-nez v29, :cond_62

    const/16 v29, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v29

    if-eqz v29, :cond_62

    .line 5292
    const/4 v11, 0x1

    .line 5295
    :cond_62
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v29, v0

    const/16 v31, 0x8

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v29

    if-nez v29, :cond_7f

    const/16 v29, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v29

    if-eqz v29, :cond_7f

    .line 5297
    const/4 v11, 0x1

    .line 5300
    :cond_7f
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v29

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_96

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v29

    if-nez v29, :cond_96

    .line 5302
    const/4 v11, 0x1

    .line 5305
    :cond_96
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v29

    const/16 v31, 0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_ad

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v29

    if-nez v29, :cond_ad

    .line 5307
    const/4 v11, 0x1

    .line 5310
    :cond_ad
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v29

    if-nez v29, :cond_c2

    .line 5313
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v29, v0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 5317
    :cond_c2
    const/high16 v29, 0x20000

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v29

    if-eqz v29, :cond_db

    .line 5318
    const/16 v29, 0x2

    const/16 v31, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 5323
    :cond_db
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v29

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_126

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, isNormalAppStack()Z

    move-result v29

    if-eqz v29, :cond_126

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, isSplitStack()Z

    move-result v29

    if-nez v29, :cond_126

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v29

    const/16 v31, 0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_126

    .line 5326
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 5331
    :cond_126
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v29, v0

    const/high16 v31, 0x800000

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v29

    if-eqz v29, :cond_324

    const/high16 v29, 0x800000

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v29

    if-nez v29, :cond_324

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/MultiWindowPolicy;->getTabFrontStack()I

    move-result v29

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, mStackId:I

    move/from16 v31, v0

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_324

    .line 5334
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportTabPenWindow(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_21e

    .line 5335
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, mStackId:I

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->getStackOriginalBound(ILandroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v6

    .line 5336
    .local v6, "bound":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_19e
    :goto_19e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_324

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityStack;

    .line 5337
    .local v18, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v18 .. v18}, isFloatingStack()Z

    move-result v29

    if-eqz v29, :cond_19e

    .line 5338
    invoke-virtual/range {v18 .. v18}, topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    .line 5339
    .local v26, "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v26, :cond_19e

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v29, v0

    const/high16 v31, 0x800000

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v29

    if-eqz v29, :cond_19e

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_19e

    .line 5344
    new-instance v27, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5345
    .local v27, "topMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {v18 .. v18}, getStackId()I

    move-result v19

    .line 5346
    .local v19, "stackId":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    .line 5347
    const/16 v29, 0x4

    const/16 v31, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 5348
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5349
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    goto :goto_19e

    .line 5510
    .end local v6    # "bound":Landroid/graphics/Rect;
    .end local v7    # "changedType":Z
    .end local v8    # "forceUpdateAll":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "needPauseBackStacks":Z
    .end local v15    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "origId":J
    .end local v18    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v19    # "stackId":I
    .end local v26    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    .end local v27    # "topMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :catchall_218
    move-exception v29

    monitor-exit v30
    :try_end_21a
    .catchall {:try_start_7 .. :try_end_21a} :catchall_218

    throw v29

    .line 5284
    .restart local v8    # "forceUpdateAll":Z
    .restart local v11    # "needPauseBackStacks":Z
    .restart local v15    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "origId":J
    :cond_21b
    const/4 v7, 0x0

    goto/16 :goto_28

    .line 5353
    .restart local v7    # "changedType":Z
    :cond_21e
    :try_start_21e
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v29, v0

    const/16 v31, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->setTabFrontStack(I)V

    .line 5354
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/MultiWindowPolicy;->getTabs()Ljava/util/List;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->clear()V

    .line 5355
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_254
    :goto_254
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_324

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityStack;

    .line 5356
    .restart local v18    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual/range {v18 .. v18}, isFloatingStack()Z

    move-result v29

    if-eqz v29, :cond_254

    .line 5357
    invoke-virtual/range {v18 .. v18}, topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    .line 5358
    .restart local v26    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v26, :cond_254

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_254

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v29, v0

    const/high16 v31, 0x800000

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v29

    if-eqz v29, :cond_254

    .line 5361
    new-instance v27, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5362
    .restart local v27    # "topMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v18 .. v18}, getStackId()I

    move-result v31

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->getStackOriginalBound(ILandroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v14

    .line 5363
    .local v14, "oldBound":Landroid/graphics/Rect;
    if-eqz v14, :cond_254

    .line 5366
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 5367
    .local v12, "newBound":Landroid/graphics/Rect;
    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x10501c7

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v31

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 5368
    const/high16 v29, 0x800000

    const/16 v31, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 5369
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5370
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V

    .line 5371
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v18 .. v18}, getStackId()I

    move-result v31

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1, v12}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    .line 5373
    const/16 v29, 0x8

    const/16 v31, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move/from16 v2, v29

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_254

    .line 5379
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "newBound":Landroid/graphics/Rect;
    .end local v14    # "oldBound":Landroid/graphics/Rect;
    .end local v18    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v26    # "topActivityRecord":Lcom/android/server/am/ActivityRecord;
    .end local v27    # "topMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_324
    if-eqz p3, :cond_578

    .line 5380
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v29

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_45f

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v29

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_45f

    .line 5382
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5383
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v0

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v28

    .line 5384
    .local v28, "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v20, v15

    .line 5385
    .local v20, "targetRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v28, :cond_363

    .line 5386
    move-object/from16 v20, v28

    .line 5388
    :cond_363
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5389
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    const/16 v34, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    .line 5390
    const/16 v29, 0x0

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 5419
    .end local v20    # "targetRecord":Lcom/android/server/am/ActivityRecord;
    .end local v28    # "topRunningRecord":Lcom/android/server/am/ActivityRecord;
    :goto_3a2
    if-eqz v7, :cond_739

    .line 5421
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 5422
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-object/from16 v29, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;)V

    .line 5423
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v21

    .line 5424
    .local v21, "targetStack":Lcom/android/server/am/ActivityStack;
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v29, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_616

    .line 5425
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v29

    if-nez v29, :cond_6e3

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, isFloatingStack()Z

    move-result v29

    if-eqz v29, :cond_6e3

    if-eqz p3, :cond_6e3

    .line 5427
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 5428
    .local v23, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_41d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_5af

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/TaskRecord;

    .line 5429
    .local v22, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_44d

    .line 5430
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5431
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v29

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 5434
    :cond_44d
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41d

    .line 5391
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v21    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v22    # "task":Lcom/android/server/am/TaskRecord;
    .end local v23    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_45f
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v29

    const/16 v31, 0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_489

    .line 5392
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5393
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_3a2

    .line 5395
    :cond_489
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v29

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_52f

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v29, v0

    const/16 v31, 0x2000

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v29

    if-nez v29, :cond_52f

    if-nez v11, :cond_52f

    if-nez v8, :cond_52f

    .line 5397
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5398
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v31, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    const/16 v34, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    .line 5399
    invoke-virtual/range {p0 .. p0}, isFloatingStack()Z

    move-result v29

    if-eqz v29, :cond_522

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v29

    if-eqz v29, :cond_522

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, mStackId:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_522

    .line 5402
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, mStackId:I

    move/from16 v31, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v32

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    .line 5404
    :cond_522
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_3a2

    .line 5405
    :cond_52f
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v29

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_55c

    .line 5406
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v29, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->setMultiWindowStyleToStack(Lcom/android/server/am/ActivityStack;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto/16 :goto_3a2

    .line 5408
    :cond_55c
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5409
    const/16 v29, 0x0

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v31

    invoke-virtual {v0, v15, v1, v2}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_3a2

    .line 5413
    :cond_578
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5414
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v31, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    const/16 v34, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    .line 5415
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    goto/16 :goto_3a2

    .line 5436
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v21    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v23    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5af
    const/4 v10, 0x0

    .local v10, "idx":I
    :goto_5b0
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v10, v0, :cond_5e0

    .line 5437
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 5438
    .local v24, "tid":I
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v29, v0

    move-object/from16 v0, v21

    iget v0, v0, mStackId:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v24

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStack(IIZ)V

    .line 5436
    add-int/lit8 v10, v10, 0x1

    goto :goto_5b0

    .line 5451
    .end local v24    # "tid":I
    :cond_5e0
    if-eqz p4, :cond_605

    .line 5452
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v29, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v31, v0

    move-object/from16 v0, v21

    iget v0, v0, mStackId:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStack(IIZ)V

    .line 5454
    :cond_605
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 5473
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "idx":I
    .end local v21    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v23    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_616
    :goto_616
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v29

    if-nez v29, :cond_627

    .line 5474
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, clearWindowModeLocked(Lcom/android/server/am/TaskRecord;)V

    .line 5478
    :cond_627
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v29, v0

    if-eqz v29, :cond_64d

    .line 5479
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v29, v0

    new-instance v31, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v32, v0

    invoke-direct/range {v31 .. v32}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 5482
    :cond_64d
    if-eqz v11, :cond_6dd

    .line 5483
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v29, v0

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    .line 5485
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v29

    if-eqz v29, :cond_6dd

    .line 5486
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowManagerService;->findNextFocusableFloatingStackIdFromTop()I

    move-result v13

    .line 5487
    .local v13, "nextStackId":I
    const/16 v29, -0x1

    move/from16 v0, v29

    if-le v13, v0, :cond_764

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v29

    if-nez v29, :cond_764

    .line 5488
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 5502
    :cond_6a5
    :goto_6a5
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v29, v0

    const/16 v31, 0x4

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v29

    if-eqz v29, :cond_6dd

    .line 5503
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 5504
    move-object/from16 v0, p0

    iget-object v0, v0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    move-object/from16 v29, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;)V

    .line 5509
    .end local v13    # "nextStackId":I
    :cond_6dd
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5510
    monitor-exit v30

    goto/16 :goto_e

    .line 5456
    .restart local v21    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_6e3
    invoke-virtual/range {v21 .. v21}, moveToFront()V

    .line 5457
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v29, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v31, v0

    move-object/from16 v0, v21

    iget v0, v0, mStackId:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStack(IIZ)V

    .line 5458
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v29

    if-eqz v29, :cond_724

    .line 5459
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v21

    iget v0, v0, mStackId:I

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    goto/16 :goto_616

    .line 5461
    :cond_724
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v29, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    goto/16 :goto_616

    .line 5466
    .end local v21    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_739
    const/16 v29, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v29

    if-nez v29, :cond_616

    const/16 v29, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v29

    if-nez v29, :cond_616

    .line 5468
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    goto/16 :goto_616

    .line 5490
    .restart local v13    # "nextStackId":I
    :cond_764
    move-object/from16 v0, p0

    iget-object v0, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/ActivityStackSupervisor;->getNonFloatingFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v18

    .line 5491
    .restart local v18    # "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v18

    iget v0, v0, mStackId:I

    move/from16 v31, v0

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    .line 5493
    const/16 v29, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v29

    if-eqz v29, :cond_6a5

    .line 5494
    const/16 v29, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 5496
    .local v25, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v25, :cond_6a5

    .line 5497
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V
    :try_end_7a2
    .catchall {:try_start_21e .. :try_end_7a2} :catchall_218

    goto/16 :goto_6a5
.end method

.method setMultiWindowStyleForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .registers 16
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "srcMultiWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 1668
    iget-object v8, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 1672
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1674
    .local v0, "N":I
    move-object v5, p2

    .line 1675
    .local v5, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->hasUnitaryOption()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 1677
    new-instance v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v5    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct {v5, p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1678
    .restart local v5    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->removeUnitaryOption()V

    .line 1684
    :cond_17
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v4

    .line 1685
    .local v4, "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_59

    .line 1686
    if-eqz v4, :cond_59

    .line 1688
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_26
    if-ltz v2, :cond_59

    .line 1689
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 1690
    .local v7, "record":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 1691
    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1693
    :cond_3f
    const/16 v8, 0x800

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_56

    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 1695
    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1688
    :cond_56
    add-int/lit8 v2, v2, -0x1

    goto :goto_26

    .line 1701
    .end local v2    # "i":I
    .end local v7    # "record":Lcom/android/server/am/ActivityRecord;
    :cond_59
    const/4 v1, 0x0

    .line 1703
    .local v1, "changeMinimized":Z
    add-int/lit8 v2, v0, -0x1

    .restart local v2    # "i":I
    :goto_5c
    if-ltz v2, :cond_1b1

    .line 1704
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    .line 1706
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 1708
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_81

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_81

    .line 1703
    :cond_7e
    :goto_7e
    add-int/lit8 v2, v2, -0x1

    goto :goto_5c

    .line 1712
    :cond_81
    iget-object v8, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    goto :goto_7e

    .line 1717
    :cond_8f
    const/16 v8, 0x800

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_ae

    iget-object v8, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v9}, Lcom/android/server/am/MultiWindowPolicy;->isAvoidScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-eqz v8, :cond_ae

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_ae

    iget-boolean v8, v6, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v8, :cond_7e

    .line 1724
    :cond_ae
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_c8

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_c8

    .line 1726
    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_7e

    .line 1729
    :cond_c8
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    if-nez v8, :cond_e4

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_e4

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_e4

    .line 1732
    const/16 v8, 0x4000

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1735
    :cond_e4
    if-nez v1, :cond_103

    .line 1736
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_103

    const/16 v8, 0x800

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_103

    .line 1738
    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    xor-int v1, v8, v9

    .line 1742
    :cond_103
    const/4 v3, 0x0

    .line 1743
    .local v3, "isFixedRatioNotNeeded":Z
    const v8, 0x8000

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_119

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const v9, 0x8000

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_119

    .line 1745
    const/4 v3, 0x1

    .line 1748
    :cond_119
    iget-object v8, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v9}, Lcom/android/server/am/MultiWindowPolicy;->isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-eqz v8, :cond_178

    .line 1749
    const/4 v8, 0x1

    invoke-virtual {v6, v5, v8}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 1765
    :cond_129
    :goto_129
    if-eqz v3, :cond_134

    .line 1766
    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const v9, 0x8000

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1768
    :cond_134
    iget v8, v6, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    invoke-virtual {p1, v8}, Lcom/android/server/am/TaskRecord;->setType(I)V

    .line 1770
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_159

    iget-object v8, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v9}, Lcom/android/server/am/MultiWindowPolicy;->isMultiWindowApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-nez v8, :cond_159

    .line 1772
    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1773
    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1776
    :cond_159
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_169

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 1780
    :cond_169
    iget-object v8, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/wm/WindowManagerService;->setAppMultiWindowStyle(Landroid/view/IApplicationToken;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZI)V

    goto/16 :goto_7e

    .line 1750
    :cond_178
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_18c

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-nez v8, :cond_18c

    .line 1753
    const/4 v8, 0x3

    iput v8, v6, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_129

    .line 1755
    :cond_18c
    invoke-virtual {v6, v5}, Lcom/android/server/am/ActivityRecord;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1759
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_129

    const/16 v8, 0x800

    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_129

    if-eqz v4, :cond_129

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v8

    if-eqz v8, :cond_129

    .line 1762
    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_129

    .line 1784
    .end local v3    # "isFixedRatioNotNeeded":Z
    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1b1
    invoke-virtual {p0}, isFloatingStack()Z

    move-result v8

    if-eqz v8, :cond_1df

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    if-eqz v8, :cond_1df

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v10, p0, mStackId:I

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->getStackBound(I)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1df

    .line 1787
    iget-object v8, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v9, p0, mStackId:I

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WindowManagerService;->setStackBound(ILandroid/graphics/Rect;)V

    .line 1792
    :cond_1de
    :goto_1de
    return-void

    .line 1788
    :cond_1df
    if-eqz v1, :cond_1de

    .line 1790
    iget-object v8, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, getStackId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->assignMultiWindowScale(I)V

    goto :goto_1de
.end method

.method setStackBoundForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    .line 1803
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1818
    :cond_9
    return-void

    .line 1807
    :cond_a
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1808
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_9

    .line 1809
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1810
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, isFloatingStack()Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_46

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 1814
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3, p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 1815
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v2, v5, v5}, notifyMultiWindowStyleChangedLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .line 1808
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method setStackBoundForAllTaskInStackLocked(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 1796
    invoke-virtual {p0}, getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1797
    .local v0, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 1798
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0, v2, p1}, setStackBoundForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    goto :goto_8

    .line 1800
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_18
    return-void
.end method

.method setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 4336
    invoke-virtual {p0}, isAttached()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4337
    iget-object v0, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 4339
    :cond_d
    return-void
.end method

.method final shouldUpRecreateTaskLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .registers 9
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3843
    if-eqz p1, :cond_14

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v4, :cond_14

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 3874
    :cond_14
    :goto_14
    return v2

    .line 3851
    :cond_15
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_74

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_74

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_74

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->isDocument()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 3854
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v4

    if-nez v4, :cond_14

    .line 3859
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3860
    .local v1, "taskIdx":I
    if-gtz v1, :cond_5e

    .line 3861
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3862
    goto :goto_14

    .line 3864
    :cond_5e
    if-eqz v1, :cond_14

    .line 3868
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 3869
    .local v0, "prevTask":Lcom/android/server/am/TaskRecord;
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .end local v0    # "prevTask":Lcom/android/server/am/TaskRecord;
    .end local v1    # "taskIdx":I
    :cond_74
    move v2, v3

    .line 3874
    goto :goto_14
.end method

.method final startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V
    .registers 31
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "doResume"    # Z
    .param p4, "keepCurTransition"    # Z
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 2810
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    .line 2811
    .local v19, "rTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v23, v0

    .line 2813
    .local v23, "taskId":I
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v3, :cond_2e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eqz v3, :cond_1e

    if-eqz p2, :cond_2e

    .line 2817
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, insertTaskAtTop(Lcom/android/server/am/TaskRecord;)V

    .line 2818
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 2820
    :cond_2e
    const/16 v22, 0x0

    .line 2821
    .local v22, "task":Lcom/android/server/am/TaskRecord;
    if-nez p2, :cond_c7

    .line 2823
    const/16 v21, 0x1

    .line 2824
    .local v21, "startIt":Z
    move-object/from16 v0, p0

    iget-object v3, v0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v24, v3, -0x1

    .local v24, "taskNdx":I
    :goto_3e
    if-ltz v24, :cond_c7

    .line 2825
    move-object/from16 v0, p0

    iget-object v3, v0, mTaskHistory:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "task":Lcom/android/server/am/TaskRecord;
    check-cast v22, Lcom/android/server/am/TaskRecord;

    .line 2826
    .restart local v22    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_55

    .line 2824
    :cond_52
    :goto_52
    add-int/lit8 v24, v24, -0x1

    goto :goto_3e

    .line 2830
    :cond_55
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v22

    if-ne v0, v3, :cond_be

    .line 2834
    if-nez v21, :cond_c7

    .line 2837
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    .line 2838
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 2839
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget v7, v0, mStackId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_ba

    const/4 v10, 0x1

    :goto_9a
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v22

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v13, :cond_bc

    const/4 v13, 0x1

    :goto_ab
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2847
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2993
    .end local v21    # "startIt":Z
    .end local v24    # "taskNdx":I
    :cond_b9
    :goto_b9
    return-void

    .line 2839
    .restart local v21    # "startIt":Z
    .restart local v24    # "taskNdx":I
    :cond_ba
    const/4 v10, 0x0

    goto :goto_9a

    :cond_bc
    const/4 v13, 0x0

    goto :goto_ab

    .line 2851
    :cond_be
    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-lez v3, :cond_52

    .line 2852
    const/16 v21, 0x0

    goto :goto_52

    .line 2863
    .end local v21    # "startIt":Z
    .end local v24    # "taskNdx":I
    :cond_c7
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v22

    if-ne v0, v3, :cond_ec

    move-object/from16 v0, p0

    iget-object v3, v0, mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_ec

    .line 2864
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2869
    :cond_ec
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v22, v0

    .line 2874
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    .line 2875
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 2877
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 2885
    invoke-virtual/range {p0 .. p0}, isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_10b

    invoke-virtual/range {p0 .. p0}, numActivities()I

    move-result v3

    if-lez v3, :cond_2b1

    .line 2889
    :cond_10b
    move/from16 v20, p2

    .line 2890
    .local v20, "showStartingIcon":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    .line 2891
    .local v18, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v18, :cond_12d

    .line 2892
    move-object/from16 v0, p0

    iget-object v3, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "proc":Lcom/android/server/am/ProcessRecord;
    check-cast v18, Lcom/android/server/am/ProcessRecord;

    .line 2894
    .restart local v18    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_12d
    if-eqz v18, :cond_135

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_137

    .line 2895
    :cond_135
    const/16 v20, 0x1

    .line 2899
    :cond_137
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1f7

    .line 2900
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    move/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2901
    move-object/from16 v0, p0

    iget-object v3, v0, mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2919
    :goto_157
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget v7, v0, mStackId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_230

    const/4 v10, 0x1

    :goto_188
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v22

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v13, :cond_233

    const/4 v13, 0x1

    :goto_199
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2924
    const/16 v16, 0x1

    .line 2925
    .local v16, "doShow":Z
    if-eqz p2, :cond_239

    .line 2931
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1cb

    .line 2932
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 2933
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_236

    const/16 v16, 0x1

    .line 2939
    :cond_1cb
    :goto_1cb
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_24c

    .line 2942
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2945
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2990
    .end local v16    # "doShow":Z
    .end local v18    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v20    # "showStartingIcon":Z
    :cond_1e6
    :goto_1e6
    if-eqz p3, :cond_b9

    .line 2991
    move-object/from16 v0, p0

    iget-object v3, v0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    goto/16 :goto_b9

    .line 2904
    .restart local v18    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v20    # "showStartingIcon":Z
    :cond_1f7
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-eqz v3, :cond_217

    .line 2905
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x65

    move/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2917
    :goto_20c
    move-object/from16 v0, p0

    iget-object v3, v0, mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_157

    .line 2909
    :cond_217
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p2, :cond_22e

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_22b

    const/16 v3, 0x10

    :goto_225
    move/from16 v0, p4

    invoke-virtual {v4, v3, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_20c

    :cond_22b
    const/16 v3, 0x8

    goto :goto_225

    :cond_22e
    const/4 v3, 0x6

    goto :goto_225

    .line 2919
    :cond_230
    const/4 v10, 0x0

    goto/16 :goto_188

    :cond_233
    const/4 v13, 0x0

    goto/16 :goto_199

    .line 2933
    .restart local v16    # "doShow":Z
    :cond_236
    const/16 v16, 0x0

    goto :goto_1cb

    .line 2935
    :cond_239
    if-eqz p5, :cond_1cb

    new-instance v3, Landroid/app/ActivityOptions;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1cb

    .line 2937
    const/16 v16, 0x0

    goto :goto_1cb

    .line 2950
    :cond_24c
    if-eqz v16, :cond_1e6

    .line 2955
    move-object/from16 v0, p0

    iget-object v0, v0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v17, v0

    .line 2956
    .local v17, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v17, :cond_262

    .line 2959
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v4, :cond_2a6

    .line 2960
    const/16 v17, 0x0

    .line 2967
    :cond_262
    :goto_262
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    if-eqz v17, :cond_2af

    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_29a
    move/from16 v14, v20

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    .line 2973
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    goto/16 :goto_1e6

    .line 2963
    :cond_2a6
    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_262

    .line 2964
    const/16 v17, 0x0

    goto :goto_262

    .line 2967
    :cond_2af
    const/4 v13, 0x0

    goto :goto_29a

    .line 2978
    .end local v16    # "doShow":Z
    .end local v17    # "prev":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v20    # "showStartingIcon":Z
    :cond_2b1
    move-object/from16 v0, p0

    iget-object v3, v0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget v7, v0, mStackId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_305

    const/4 v10, 0x1

    :goto_2e2
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v22

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v13, :cond_307

    const/4 v13, 0x1

    :goto_2f3
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 2983
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2984
    const/16 p5, 0x0

    goto/16 :goto_1e6

    .line 2978
    :cond_305
    const/4 v10, 0x0

    goto :goto_2e2

    :cond_307
    const/4 v13, 0x0

    goto :goto_2f3
.end method

.method final startPausingLocked(ZZZZ)Z
    .registers 17
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Z
    .param p4, "dontWait"    # Z

    .prologue
    .line 1136
    iget-object v0, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_22

    .line 1137
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to pause when pause is already pending for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, completePauseLocked(Z)V

    .line 1140
    :cond_22
    iget-object v1, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1141
    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_36

    .line 1142
    if-nez p3, :cond_34

    .line 1143
    const-string v0, "ActivityManager"

    const-string v2, "Trying to pause when nothing is resumed"

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 1146
    :cond_34
    const/4 v0, 0x0

    .line 1286
    :goto_35
    return v0

    .line 1149
    :cond_36
    iget-object v0, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_46

    .line 1151
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->pauseChildStacks(Lcom/android/server/am/ActivityRecord;ZZZZ)V

    .line 1156
    :cond_46
    const/4 v0, 0x0

    iput-object v0, p0, mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1157
    iput-object v1, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1161
    const/4 v0, 0x0

    iput-object v0, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1162
    iget-object v0, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1163
    iget-object v0, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    :cond_5b
    iput-object v1, p0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1169
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-nez v0, :cond_70

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_14a

    :cond_70
    move-object v0, v1

    :goto_71
    iput-object v0, p0, mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1171
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1172
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1175
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 1176
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, getGlobalTaskHistoryLocked()Ljava/util/ArrayList;

    move-result-object v9

    .line 1177
    .local v9, "globalHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1181
    .end local v9    # "globalHistory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_9d
    invoke-virtual {p0, v1}, clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 1182
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 1183
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 1184
    .local v11, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mHasRecents:Z

    if-eqz v0, :cond_c6

    if-eqz v11, :cond_be

    iget-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_be

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v0, v2, :cond_c6

    .line 1185
    :cond_be
    invoke-virtual {p0, v1}, screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 1188
    .end local v11    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_c6
    invoke-direct {p0}, stopFullyDrawnTraceIfNeeded()V

    .line 1190
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1192
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_164

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_164

    .line 1195
    const/16 v0, 0x753d

    const/4 v2, 0x3

    :try_start_db
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1198
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1199
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v6, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move v5, p1

    move/from16 v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_10f} :catch_14d

    .line 1226
    :goto_10f
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_11c

    .line 1227
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireLaunchWakelock()V

    .line 1230
    :cond_11c
    iget-object v0, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_128

    iget-object v0, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a1

    .line 1240
    :cond_128
    if-nez p2, :cond_12d

    .line 1241
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 1246
    :cond_12d
    if-eqz p4, :cond_173

    .line 1249
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    .line 1252
    iget-boolean v0, p0, SAMP_ENABLE:Z

    if-eqz v0, :cond_147

    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v0, :cond_147

    .line 1253
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/app/usage/UsageStatsManagerInternal;->reportPpmEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1255
    :cond_147
    const/4 v0, 0x0

    goto/16 :goto_35

    .line 1169
    :cond_14a
    const/4 v0, 0x0

    goto/16 :goto_71

    .line 1201
    :catch_14d
    move-exception v8

    .line 1203
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    const-string v2, "Exception thrown during pause"

    invoke-static {v0, v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1204
    const/4 v0, 0x0

    iput-object v0, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1205
    const/4 v0, 0x0

    iput-object v0, p0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1206
    const/4 v0, 0x0

    iput-object v0, p0, mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1209
    iget-object v0, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_10f

    .line 1214
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_164
    const/4 v0, 0x0

    iput-object v0, p0, mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1215
    const/4 v0, 0x0

    iput-object v0, p0, mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1216
    const/4 v0, 0x0

    iput-object v0, p0, mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1219
    iget-object v0, p0, mPausingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_10f

    .line 1261
    :cond_173
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1262
    .local v10, "msg":Landroid/os/Message;
    iput-object v1, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1263
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    .line 1264
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v10, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1268
    iget-boolean v0, p0, SAMP_ENABLE:Z

    if-eqz v0, :cond_19e

    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v0, :cond_19e

    .line 1269
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/app/usage/UsageStatsManagerInternal;->reportPpmEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1271
    :cond_19e
    const/4 v0, 0x1

    goto/16 :goto_35

    .line 1278
    .end local v10    # "msg":Landroid/os/Message;
    :cond_1a1
    if-nez p3, :cond_1ad

    .line 1279
    iget-object v0, p0, mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1283
    :cond_1ad
    iget-boolean v0, p0, SAMP_ENABLE:Z

    if-eqz v0, :cond_1c1

    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v0, :cond_1c1

    .line 1284
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/app/usage/UsageStatsManagerInternal;->reportPpmEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1286
    :cond_1c1
    const/4 v0, 0x0

    goto/16 :goto_35
.end method

.method final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 3410
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2b

    .line 3412
    :cond_15
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_2b

    .line 3413
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 3417
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const-string v4, "no-history"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3426
    :cond_2b
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_76

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_76

    .line 3427
    invoke-direct {p0, p1}, adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3428
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3430
    const/4 v0, 0x0

    :try_start_3c
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 3433
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3436
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_4e

    .line 3437
    iget-object v0, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 3439
    :cond_4e
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 3440
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 3441
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 3443
    :cond_67
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 3444
    .local v7, "msg":Landroid/os/Message;
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_76} :catch_77

    .line 3459
    .end local v7    # "msg":Landroid/os/Message;
    :cond_76
    :goto_76
    return-void

    .line 3445
    :catch_77
    move-exception v6

    .line 3449
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    const-string v1, "Exception thrown during pause"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3451
    iput-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 3453
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3454
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v0, :cond_76

    .line 3455
    const-string/jumbo v0, "stop-except"

    invoke-virtual {p0, p1, v8, v0}, destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    goto :goto_76
.end method

.method final switchUserLocked(I)V
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 893
    iget v6, p0, mCurrentUser:I

    if-ne v6, p1, :cond_5

    .line 939
    :goto_4
    return-void

    .line 896
    :cond_5
    iput p1, p0, mCurrentUser:I

    .line 899
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 900
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_62

    .line 901
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 902
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget v6, v5, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v6}, isCurrentProfileLocked(I)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 905
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 906
    iget-object v6, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 910
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 911
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "j":I
    :goto_3e
    if-ltz v3, :cond_59

    .line 912
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 913
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_5c

    invoke-virtual {p0, v4}, okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 916
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationFocusGain(Landroid/content/Context;Ljava/lang/String;)V

    .line 923
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "j":I
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_59
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 911
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v3    # "j":I
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5c
    add-int/lit8 v3, v3, -0x1

    goto :goto_3e

    .line 926
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "j":I
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 932
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_62
    iget-object v6, p0, mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->switchUserLocked()V

    goto :goto_4
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 551
    iget-object v2, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_8
    if-ltz v1, :cond_1a

    .line 552
    iget-object v2, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 553
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_17

    .line 557
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :goto_16
    return-object v0

    .line 551
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 557
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1a
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityStack{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tasks}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final topActivity()Lcom/android/server/am/ActivityRecord;
    .registers 6

    .prologue
    .line 530
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_8
    if-ltz v3, :cond_2d

    .line 531
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 532
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_2a

    .line 533
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 534
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_27

    .line 539
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_26
    return-object v2

    .line 532
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 530
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2a
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 539
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2d
    const/4 v2, 0x0

    goto :goto_26
.end method

.method final topMultiPhoneWindowActivity()Lcom/android/server/am/ActivityRecord;
    .registers 7

    .prologue
    .line 608
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_8
    if-ltz v4, :cond_4c

    .line 609
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 610
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_49

    .line 611
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 612
    .local v2, "activityRecord":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_29

    .line 610
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 615
    :cond_29
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 616
    .local v3, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/high16 v5, 0x20000

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_42

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_26

    const/high16 v5, 0x40000

    invoke-virtual {v3, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_26

    .line 619
    :cond_42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 623
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "activityRecord":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_48
    return-object v5

    .line 608
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    :cond_49
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 623
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_4c
    const/4 v5, 0x0

    goto :goto_48
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .prologue
    .line 512
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_8
    if-ltz v4, :cond_3b

    .line 513
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 514
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, p2, :cond_19

    .line 512
    :cond_16
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 517
    :cond_19
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 518
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_21
    if-ltz v1, :cond_16

    .line 519
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 521
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_38

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v5, :cond_38

    invoke-virtual {p0, v2}, okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 526
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_37
    return-object v2

    .line 518
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "i":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 526
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3b
    const/4 v2, 0x0

    goto :goto_37
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 3
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 464
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityRecord;
    .registers 7
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "includeMinimize"    # Z

    .prologue
    .line 469
    iget-object v2, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_8
    if-ltz v1, :cond_27

    .line 470
    iget-object v2, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 471
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_24

    .line 474
    if-nez p2, :cond_23

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_24

    .line 485
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_23
    :goto_23
    return-object v0

    .line 469
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 485
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_27
    const/4 v0, 0x0

    goto :goto_23
.end method

.method final topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 8
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 489
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_8
    if-ltz v4, :cond_39

    .line 490
    iget-object v5, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 491
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 492
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1a
    if-ltz v1, :cond_36

    .line 493
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 494
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_33

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v5, :cond_33

    if-eq v2, p1, :cond_33

    invoke-virtual {p0, v2}, okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 499
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_32
    return-object v2

    .line 492
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 489
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_36
    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    .line 499
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_39
    const/4 v2, 0x0

    goto :goto_32
.end method

.method final topTask()Lcom/android/server/am/TaskRecord;
    .registers 4

    .prologue
    .line 543
    iget-object v1, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 544
    .local v0, "size":I
    if-lez v0, :cond_13

    .line 545
    iget-object v1, p0, mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 547
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public unhandledBackLocked()V
    .registers 10

    .prologue
    .line 5177
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 5180
    .local v8, "top":I
    if-ltz v8, :cond_2c

    .line 5181
    iget-object v0, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5182
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 5183
    .local v7, "activityTop":I
    if-lez v7, :cond_2c

    .line 5184
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "unhandled-back"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5188
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityTop":I
    :cond_2c
    return-void
.end method

.method final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 574
    iget-object v1, p0, mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 575
    .local v0, "hadit":Z
    iget-object v1, p0, mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    return v0
.end method

.method updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V
    .registers 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toFront"    # Z

    .prologue
    .line 4464
    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v0, :cond_13

    .line 4465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 4469
    if-nez p2, :cond_13

    .line 4470
    iget-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 4473
    :cond_13
    return-void
.end method

.method final updateTransitLocked(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4452
    if-eqz p2, :cond_12

    .line 4453
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 4454
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_19

    .line 4455
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 4460
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_12
    :goto_12
    iget-object v1, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 4461
    return-void

    .line 4457
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_19
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_12
.end method

.method final validateAppTokensLocked()V
    .registers 12

    .prologue
    .line 2996
    iget-object v8, p0, mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2997
    iget-object v8, p0, mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {p0}, numActivities()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 2998
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2999
    .local v4, "numTasks":I
    const/4 v7, 0x0

    .local v7, "taskNdx":I
    :goto_15
    if-ge v7, v4, :cond_4f

    .line 3000
    iget-object v8, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 3001
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3002
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 2999
    :cond_27
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 3005
    :cond_2a
    new-instance v2, Lcom/android/server/wm/TaskGroup;

    invoke-direct {v2}, Lcom/android/server/wm/TaskGroup;-><init>()V

    .line 3006
    .local v2, "group":Lcom/android/server/wm/TaskGroup;
    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v8, v2, Lcom/android/server/wm/TaskGroup;->taskId:I

    .line 3007
    iget-object v8, p0, mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3008
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3009
    .local v3, "numActivities":I
    const/4 v1, 0x0

    .local v1, "activityNdx":I
    :goto_3d
    if-ge v1, v3, :cond_27

    .line 3010
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 3011
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v2, Lcom/android/server/wm/TaskGroup;->tokens:Ljava/util/ArrayList;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3009
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 3014
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "group":Lcom/android/server/wm/TaskGroup;
    .end local v3    # "numActivities":I
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4f
    iget-object v8, p0, mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v9, p0, mStackId:I

    iget-object v10, p0, mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WindowManagerService;->validateAppTokens(ILjava/util/List;)V

    .line 3015
    return-void
.end method

.method willActivityBeVisibleLocked(Landroid/os/IBinder;)Z
    .registers 11
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5008
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_a
    if-ltz v3, :cond_38

    .line 5009
    iget-object v4, p0, mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5010
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1c
    if-ltz v1, :cond_35

    .line 5011
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 5012
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-ne v4, p1, :cond_2a

    move v6, v5

    .line 5026
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_29
    :goto_29
    return v6

    .line 5015
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    :cond_2a
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v4, :cond_32

    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_29

    .line 5010
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 5008
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_35
    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    .line 5020
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_38
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 5021
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_29

    .line 5024
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_5b

    const-string v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "willActivityBeVisibleLocked: Returning false, would have returned true for r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5026
    :cond_5b
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_62

    move v4, v5

    :goto_60
    move v6, v4

    goto :goto_29

    :cond_62
    move v4, v6

    goto :goto_60
.end method
