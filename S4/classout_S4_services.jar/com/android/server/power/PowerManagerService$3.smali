.class Lcom/android/server/power/PowerManagerService$3;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDisplayState:I

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 3

    .prologue
    .line 3018
    iput-object p1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3019
    const/4 v0, 0x0

    iput v0, p0, mDisplayState:I

    return-void
.end method


# virtual methods
.method public acquireSuspendBlocker()V
    .registers 2

    .prologue
    .line 3128
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 3129
    return-void
.end method

.method public onDisplayStateChange(I)V
    .registers 8
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    .line 3084
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3085
    :try_start_8
    iget v1, p0, mDisplayState:I

    if-eq v1, p1, :cond_65

    .line 3086
    iput p1, p0, mDisplayState:I

    .line 3088
    new-instance v0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;-><init>()V

    .line 3089
    .local v0, "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    if-ne p1, v3, :cond_67

    .line 3090
    const-string v1, "PowerManagerService"

    const-string v3, "!@[s] blankAllDisplays() : blankAllDisplaysFromPowerManage"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 3092
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 3093
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$2400(Lcom/android/server/power/PowerManagerService;Z)V

    .line 3094
    const-string v1, "nativeSetInteractive(false)"

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 3096
    :cond_34
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2500(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 3097
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;Z)V

    .line 3098
    const-string v1, "nativeSetAutoSuspend(true)"

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 3101
    :cond_49
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$2702(Lcom/android/server/power/PowerManagerService;I)I

    .line 3102
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J
    invoke-static {v1, v4, v5}, Lcom/android/server/power/PowerManagerService;->access$2802(Lcom/android/server/power/PowerManagerService;J)J

    .line 3103
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    iget-object v3, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 3123
    .end local v0    # "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    :cond_65
    :goto_65
    monitor-exit v2

    .line 3124
    return-void

    .line 3106
    .restart local v0    # "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    :cond_67
    const-string v1, "PowerManagerService"

    const-string v3, "!@[s] unblankAllDisplays() : unblankAllDisplaysFromPowerManager"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 3108
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalAutoSuspendModeFromDisplayConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2500(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_86

    .line 3109
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalAutoSuspendModeLocked(Z)V
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;Z)V

    .line 3110
    const-string v1, "nativeSetAutoSuspend(false)"

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 3112
    :cond_86
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDecoupleHalInteractiveModeFromDisplayConfig:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 3113
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->setHalInteractiveModeLocked(Z)V
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$2400(Lcom/android/server/power/PowerManagerService;Z)V

    .line 3114
    const-string v1, "nativeSetInteractive(true)"

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 3116
    :cond_9b
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    move-result-object v1

    const-string/jumbo v3, "wakeUp()"

    const-wide/16 v4, 0x320

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printTotalTime(Ljava/lang/String;J)V

    .line 3119
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    iget-object v3, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_65

    .line 3123
    .end local v0    # "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    :catchall_b9
    move-exception v1

    monitor-exit v2
    :try_end_bb
    .catchall {:try_start_8 .. :try_end_bb} :catchall_b9

    throw v1
.end method

.method public onProximityNegative()V
    .registers 6

    .prologue
    .line 3054
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3056
    :try_start_7
    const-string v0, "PowerManagerService"

    const-string v2, "[s] DisplayPowerCallbacks : onProximityNegative()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3058
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1802(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3059
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x200

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1276(Lcom/android/server/power/PowerManagerService;I)I

    .line 3061
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const-string v2, " proximity far"

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$2184(Lcom/android/server/power/PowerManagerService;Ljava/lang/Object;)Ljava/lang/String;

    .line 3070
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const-string v2, " proximity far"

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$2184(Lcom/android/server/power/PowerManagerService;Ljava/lang/Object;)Ljava/lang/String;

    .line 3072
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v4, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->wakeUpNoUpdateLocked(JI)Z
    invoke-static {v0, v2, v3, v4}, Lcom/android/server/power/PowerManagerService;->access$2200(Lcom/android/server/power/PowerManagerService;JI)Z

    .line 3075
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)V

    .line 3076
    monitor-exit v1

    .line 3077
    return-void

    .line 3076
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public onProximityPositive()V
    .registers 9

    .prologue
    .line 3034
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 3036
    :try_start_7
    const-string v0, "PowerManagerService"

    const-string v1, "[s] DisplayPowerCallbacks : onProximityPositive()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$1802(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3039
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v1, 0x200

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$1276(Lcom/android/server/power/PowerManagerService;I)I

    .line 3043
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const-string v1, " proximity close"

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$1984(Lcom/android/server/power/PowerManagerService;Ljava/lang/Object;)Ljava/lang/String;

    .line 3045
    iget-object v1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$2000(Lcom/android/server/power/PowerManagerService;JIII)Z

    .line 3048
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)V

    .line 3049
    monitor-exit v7

    .line 3050
    return-void

    .line 3049
    :catchall_36
    move-exception v0

    monitor-exit v7
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public onStateChanged()V
    .registers 4

    .prologue
    .line 3023
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3025
    :try_start_7
    const-string v0, "PowerManagerService"

    const-string v2, "[s] DisplayPowerCallbacks : onStateChanged()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x8

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$1276(Lcom/android/server/power/PowerManagerService;I)I

    .line 3028
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1300(Lcom/android/server/power/PowerManagerService;)V

    .line 3029
    monitor-exit v1

    .line 3030
    return-void

    .line 3029
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public releaseSuspendBlocker()V
    .registers 2

    .prologue
    .line 3133
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplaySuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 3134
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3138
    monitor-enter p0

    .line 3139
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDisplayState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 3140
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method
