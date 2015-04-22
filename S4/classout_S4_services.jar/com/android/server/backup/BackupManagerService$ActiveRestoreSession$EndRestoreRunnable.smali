.class Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EndRestoreRunnable"
.end annotation


# instance fields
.field mBackupManager:Lcom/android/server/backup/BackupManagerService;

.field mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V
    .registers 4
    .param p2, "manager"    # Lcom/android/server/backup/BackupManagerService;
    .param p3, "session"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .prologue
    .line 9457
    iput-object p1, p0, this$1:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9458
    iput-object p2, p0, mBackupManager:Lcom/android/server/backup/BackupManagerService;

    .line 9459
    iput-object p3, p0, mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .line 9460
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 9464
    iget-object v2, p0, mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    monitor-enter v2

    .line 9466
    :try_start_3
    iget-object v1, p0, mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    # getter for: Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->access$2600(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 9467
    iget-object v1, p0, mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    # getter for: Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->access$2600(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_28
    .catchall {:try_start_3 .. :try_end_14} :catchall_3f

    .line 9472
    :cond_14
    :try_start_14
    iget-object v1, p0, mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v1, v3}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->access$2602(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;

    .line 9473
    iget-object v1, p0, mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    .line 9475
    :goto_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_3c

    .line 9479
    iget-object v1, p0, mBackupManager:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->clearRestoreSession(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V

    .line 9480
    return-void

    .line 9469
    :catch_28
    move-exception v0

    .line 9470
    .local v0, "e":Ljava/lang/Exception;
    :try_start_29
    const-string v1, "RestoreSession"

    const-string v3, "Error in finishRestore"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_3f

    .line 9472
    :try_start_30
    iget-object v1, p0, mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v1, v3}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->access$2602(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;

    .line 9473
    iget-object v1, p0, mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    goto :goto_1f

    .line 9475
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3c
    move-exception v1

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_3c

    throw v1

    .line 9472
    :catchall_3f
    move-exception v1

    :try_start_40
    iget-object v3, p0, mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->access$2602(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;

    .line 9473
    iget-object v3, p0, mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    throw v1
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_3c
.end method
