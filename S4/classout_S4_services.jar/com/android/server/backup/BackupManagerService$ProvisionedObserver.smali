.class Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisionedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 383
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    .line 384
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 385
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8
    .param p1, "selfChange"    # Z

    .prologue
    .line 388
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v1, v2, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    .line 389
    .local v1, "wasProvisioned":Z
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    move-result v0

    .line 391
    .local v0, "isProvisioned":Z
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    if-nez v1, :cond_10

    if-eqz v0, :cond_30

    :cond_10
    const/4 v2, 0x1

    :goto_11
    iput-boolean v2, v3, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    .line 397
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 398
    :try_start_18
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v2, :cond_2e

    if-nez v1, :cond_2e

    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_2e

    .line 401
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/32 v4, 0x2932e00

    # invokes: Lcom/android/server/backup/BackupManagerService;->startBackupAlarmsLocked(J)V
    invoke-static {v2, v4, v5}, Lcom/android/server/backup/BackupManagerService;->access$000(Lcom/android/server/backup/BackupManagerService;J)V

    .line 403
    :cond_2e
    monitor-exit v3

    .line 404
    return-void

    .line 391
    :cond_30
    const/4 v2, 0x0

    goto :goto_11

    .line 403
    :catchall_32
    move-exception v2

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_32

    throw v2
.end method
