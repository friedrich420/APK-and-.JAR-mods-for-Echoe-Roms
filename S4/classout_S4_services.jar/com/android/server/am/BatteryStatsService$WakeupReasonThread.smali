.class final Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;
.super Ljava/lang/Thread;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WakeupReasonThread"
.end annotation


# instance fields
.field final mIrqs:[I

.field final mReasons:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .registers 4

    .prologue
    const/16 v1, 0x20

    .line 707
    iput-object p1, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    .line 708
    const-string v0, "BatteryStats_wakeupReason"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 704
    new-array v0, v1, [I

    iput-object v0, p0, mIrqs:[I

    .line 705
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, mReasons:[Ljava/lang/String;

    .line 709
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 712
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 716
    :goto_4
    :try_start_4
    iget-object v3, p0, mIrqs:[I

    iget-object v4, p0, mReasons:[Ljava/lang/String;

    # invokes: Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup([I[Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/android/server/am/BatteryStatsService;->access$200([I[Ljava/lang/String;)I

    move-result v2

    .local v2, "num":I
    if-ltz v2, :cond_3d

    .line 717
    iget-object v3, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v4, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_13} :catch_35

    .line 718
    if-lez v2, :cond_26

    .line 719
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v2, :cond_30

    .line 720
    :try_start_18
    iget-object v3, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, p0, mReasons:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeupReasonLocked(Ljava/lang/String;)V

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 723
    .end local v1    # "i":I
    :cond_26
    iget-object v3, p0, this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string/jumbo v5, "unknown"

    invoke-virtual {v3, v5}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeupReasonLocked(Ljava/lang/String;)V

    .line 725
    :cond_30
    monitor-exit v4

    goto :goto_4

    :catchall_32
    move-exception v3

    monitor-exit v4
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_32

    :try_start_34
    throw v3
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_35} :catch_35

    .line 727
    .end local v2    # "num":I
    :catch_35
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "BatteryStatsService"

    const-string v4, "Failure reading wakeup reasons"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 730
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3d
    return-void
.end method
