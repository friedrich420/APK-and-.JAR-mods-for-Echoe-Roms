.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;
.super Landroid/app/IProcessObserver$Stub;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V
    .registers 2

    .prologue
    .line 2614
    iput-object p1, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 10
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    const/4 v5, 0x1

    .line 2618
    iget-object v2, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mSafeLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$1100(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2619
    :try_start_8
    iget-object v2, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    iget-object v2, v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_3f

    .line 2620
    if-ne p3, v5, :cond_32

    .line 2621
    :try_start_13
    iget-object v2, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mFgActivities:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$1900(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2622
    iget-object v2, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mFgActivities:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$1900(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2624
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2625
    .local v0, "nowRtc":J
    iget-object v2, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v2, p2, v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->ForegroundAppsCheckLocked(IJ)V

    .line 2632
    .end local v0    # "nowRtc":J
    :goto_2f
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_3c

    .line 2633
    :try_start_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_3f

    .line 2634
    return-void

    .line 2629
    :cond_32
    :try_start_32
    iget-object v2, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mFgActivities:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$1900(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_2f

    .line 2632
    :catchall_3c
    move-exception v2

    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v2

    .line 2633
    :catchall_3f
    move-exception v2

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3f

    throw v2
.end method

.method public onProcessDied(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 2640
    return-void
.end method

.method public onProcessStateChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I

    .prologue
    .line 2637
    return-void
.end method
