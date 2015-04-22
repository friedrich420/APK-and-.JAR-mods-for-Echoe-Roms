.class Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;
.super Landroid/app/backup/IRestoreSession$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveRestoreSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field mEnded:Z

.field private mPackageName:Ljava/lang/String;

.field mRestoreSets:[Landroid/app/backup/RestoreSet;

.field private mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

.field mTimedOut:Z

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "transport"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 9180
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/app/backup/IRestoreSession$Stub;-><init>()V

    .line 9175
    iput-object v1, p0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 9176
    iput-object v1, p0, mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 9177
    iput-boolean v0, p0, mEnded:Z

    .line 9178
    iput-boolean v0, p0, mTimedOut:Z

    .line 9181
    iput-object p2, p0, mPackageName:Ljava/lang/String;

    .line 9182
    # invokes: Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static {p1, p3}, Lcom/android/server/backup/BackupManagerService;->access$100(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    iput-object v0, p0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 9183
    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .prologue
    .line 9171
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)Lcom/android/internal/backup/IBackupTransport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .prologue
    .line 9171
    iget-object v0, p0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;
    .param p1, "x1"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 9171
    iput-object p1, p0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized endRestoreSession()V
    .registers 4

    .prologue
    .line 9484
    monitor-enter p0

    :try_start_1
    const-string v0, "RestoreSession"

    const-string v1, "endRestoreSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9486
    iget-boolean v0, p0, mTimedOut:Z

    if-eqz v0, :cond_15

    .line 9487
    const-string v0, "RestoreSession"

    const-string v1, "Session already timed out"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_21

    .line 9496
    :goto_13
    monitor-exit p0

    return-void

    .line 9491
    :cond_15
    :try_start_15
    iget-boolean v0, p0, mEnded:Z

    if-eqz v0, :cond_24

    .line 9492
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_21

    .line 9484
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 9495
    :cond_24
    :try_start_24
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v1, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_21

    goto :goto_13
.end method

.method public declared-synchronized getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I
    .registers 12
    .param p1, "observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    const/4 v4, -0x1

    .line 9191
    monitor-enter p0

    :try_start_2
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BACKUP"

    const-string v7, "getAvailableRestoreSets"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9193
    if-nez p1, :cond_1a

    .line 9194
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Observer must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_17

    .line 9191
    :catchall_17
    move-exception v4

    monitor-exit p0

    throw v4

    .line 9197
    :cond_1a
    :try_start_1a
    iget-boolean v5, p0, mEnded:Z

    if-eqz v5, :cond_26

    .line 9198
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Restore session already ended"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 9201
    :cond_26
    iget-boolean v5, p0, mTimedOut:Z

    if-eqz v5, :cond_33

    .line 9202
    const-string v5, "RestoreSession"

    const-string v6, "Session already timed out"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_17

    .line 9228
    :goto_31
    monitor-exit p0

    return v4

    .line 9206
    :cond_33
    :try_start_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_17

    move-result-wide v2

    .line 9208
    .local v2, "oldId":J
    :try_start_37
    iget-object v5, p0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-nez v5, :cond_46

    .line 9209
    const-string v5, "RestoreSession"

    const-string v6, "Null transport getting restore sets"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_42} :catch_74
    .catchall {:try_start_37 .. :try_end_42} :catchall_80

    .line 9228
    :try_start_42
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_17

    goto :goto_31

    .line 9216
    :cond_46
    :try_start_46
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 9219
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9220
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v6, 0x6

    new-instance v7, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;

    iget-object v8, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, p0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-direct {v7, v8, v9, p0, p1}, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 9222
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_6f} :catch_74
    .catchall {:try_start_46 .. :try_end_6f} :catchall_80

    .line 9223
    const/4 v4, 0x0

    .line 9228
    :try_start_70
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_17

    goto :goto_31

    .line 9224
    .end local v1    # "msg":Landroid/os/Message;
    :catch_74
    move-exception v0

    .line 9225
    .local v0, "e":Ljava/lang/Exception;
    :try_start_75
    const-string v5, "RestoreSession"

    const-string v6, "Error in getAvailableRestoreSets"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_80

    .line 9228
    :try_start_7c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_31

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_80
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_85
    .catchall {:try_start_7c .. :try_end_85} :catchall_17
.end method

.method public markTimedOut()V
    .registers 2

    .prologue
    .line 9186
    const/4 v0, 0x1

    iput-boolean v0, p0, mTimedOut:Z

    .line 9187
    return-void
.end method

.method public declared-synchronized restoreAll(JLandroid/app/backup/IRestoreObserver;)I
    .registers 19
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    .line 9233
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    const-string/jumbo v5, "performRestore"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9236
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreAll token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " observer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9239
    iget-boolean v3, p0, mEnded:Z

    if-eqz v3, :cond_45

    .line 9240
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Restore session already ended"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_42

    .line 9233
    :catchall_42
    move-exception v3

    monitor-exit p0

    throw v3

    .line 9243
    :cond_45
    :try_start_45
    iget-boolean v3, p0, mTimedOut:Z

    if-eqz v3, :cond_53

    .line 9244
    const-string v3, "RestoreSession"

    const-string v4, "Session already timed out"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_42

    .line 9245
    const/4 v3, -0x1

    .line 9289
    :goto_51
    monitor-exit p0

    return v3

    .line 9248
    :cond_53
    :try_start_53
    iget-object v3, p0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-eqz v3, :cond_5b

    iget-object v3, p0, mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v3, :cond_64

    .line 9249
    :cond_5b
    const-string v3, "RestoreSession"

    const-string v4, "Ignoring restoreAll() with no restore set"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9250
    const/4 v3, -0x1

    goto :goto_51

    .line 9253
    :cond_64
    iget-object v3, p0, mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_71

    .line 9254
    const-string v3, "RestoreSession"

    const-string v4, "Ignoring restoreAll() on single-package session"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_53 .. :try_end_6f} :catchall_42

    .line 9255
    const/4 v3, -0x1

    goto :goto_51

    .line 9260
    :cond_71
    :try_start_71
    iget-object v3, p0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_76} :catch_c8
    .catchall {:try_start_71 .. :try_end_76} :catchall_42

    move-result-object v6

    .line 9267
    .local v6, "dirName":Ljava/lang/String;
    :try_start_77
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v14, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_42

    .line 9268
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_7d
    :try_start_7d
    iget-object v3, p0, mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v3, v3

    if-ge v10, v3, :cond_d5

    .line 9269
    iget-object v3, p0, mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v3, v3, v10

    iget-wide v4, v3, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v3, p1, v4

    if-nez v3, :cond_d2

    .line 9271
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 9273
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 9274
    .local v12, "oldId":J
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9278
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 9279
    .local v11, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    iget-object v4, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, p0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v7, p3

    move-wide/from16 v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J)V

    iput-object v3, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9281
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 9282
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9283
    const/4 v3, 0x0

    monitor-exit v14

    goto :goto_51

    .line 9286
    .end local v11    # "msg":Landroid/os/Message;
    .end local v12    # "oldId":J
    :catchall_c5
    move-exception v3

    monitor-exit v14
    :try_end_c7
    .catchall {:try_start_7d .. :try_end_c7} :catchall_c5

    :try_start_c7
    throw v3

    .line 9261
    .end local v6    # "dirName":Ljava/lang/String;
    .end local v10    # "i":I
    :catch_c8
    move-exception v2

    .line 9263
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RestoreSession"

    const-string v4, "Unable to contact transport for restore"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catchall {:try_start_c7 .. :try_end_d0} :catchall_42

    .line 9264
    const/4 v3, -0x1

    goto :goto_51

    .line 9268
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v6    # "dirName":Ljava/lang/String;
    .restart local v10    # "i":I
    :cond_d2
    add-int/lit8 v10, v10, 0x1

    goto :goto_7d

    .line 9286
    :cond_d5
    :try_start_d5
    monitor-exit v14
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_c5

    .line 9288
    :try_start_d6
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restore token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catchall {:try_start_d6 .. :try_end_f8} :catchall_42

    .line 9289
    const/4 v3, -0x1

    goto/16 :goto_51
.end method

.method public declared-synchronized restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IRestoreObserver;

    .prologue
    .line 9375
    monitor-enter p0

    :try_start_1
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restorePackage pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " obs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9377
    move-object/from16 v0, p0

    iget-boolean v3, v0, mEnded:Z

    if-eqz v3, :cond_39

    .line 9378
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Restore session already ended"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_36

    .line 9375
    :catchall_36
    move-exception v3

    monitor-exit p0

    throw v3

    .line 9381
    :cond_39
    :try_start_39
    move-object/from16 v0, p0

    iget-boolean v3, v0, mTimedOut:Z

    if-eqz v3, :cond_49

    .line 9382
    const-string v3, "RestoreSession"

    const-string v4, "Session already timed out"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_36

    .line 9383
    const/4 v3, -0x1

    .line 9449
    :goto_47
    monitor-exit p0

    return v3

    .line 9386
    :cond_49
    :try_start_49
    move-object/from16 v0, p0

    iget-object v3, v0, mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_85

    .line 9387
    move-object/from16 v0, p0

    iget-object v3, v0, mPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 9388
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring attempt to restore pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on session for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_49 .. :try_end_83} :catchall_36

    .line 9390
    const/4 v3, -0x1

    goto :goto_47

    .line 9394
    :cond_85
    const/4 v10, 0x0

    .line 9396
    .local v10, "app":Landroid/content/pm/PackageInfo;
    :try_start_86
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_94
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_86 .. :try_end_94} :catch_e9
    .catchall {:try_start_86 .. :try_end_94} :catchall_36

    move-result-object v10

    .line 9404
    :try_start_95
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    .line 9406
    .local v16, "perm":I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_107

    iget-object v3, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v3, v4, :cond_107

    .line 9408
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restorePackage: bad packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or calling uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9410
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "No permission to restore other packages"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 9397
    .end local v16    # "perm":I
    :catch_e9
    move-exception v13

    .line 9398
    .local v13, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asked to restore nonexistent pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9399
    const/4 v3, -0x1

    goto/16 :goto_47

    .line 9416
    .end local v13    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v16    # "perm":I
    :cond_107
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v8

    .line 9421
    .local v8, "token":J
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-nez v3, :cond_121

    .line 9422
    const-string v3, "RestoreSession"

    const-string v4, "No data available for this package; not restoring"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catchall {:try_start_95 .. :try_end_11e} :catchall_36

    .line 9423
    const/4 v3, -0x1

    goto/16 :goto_47

    .line 9428
    :cond_121
    :try_start_121
    move-object/from16 v0, p0

    iget-object v3, v0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_128
    .catch Landroid/os/RemoteException; {:try_start_121 .. :try_end_128} :catch_16d
    .catchall {:try_start_121 .. :try_end_128} :catchall_36

    move-result-object v6

    .line 9436
    .local v6, "dirName":Ljava/lang/String;
    :try_start_129
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 9439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 9440
    .local v14, "oldId":J
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9444
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 9445
    .local v12, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    const/4 v11, 0x0

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v11}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;I)V

    iput-object v3, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9447
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v12}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 9448
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9449
    const/4 v3, 0x0

    goto/16 :goto_47

    .line 9429
    .end local v6    # "dirName":Ljava/lang/String;
    .end local v12    # "msg":Landroid/os/Message;
    .end local v14    # "oldId":J
    :catch_16d
    move-exception v2

    .line 9431
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RestoreSession"

    const-string v4, "Unable to contact transport for restore"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_175
    .catchall {:try_start_129 .. :try_end_175} :catchall_36

    .line 9432
    const/4 v3, -0x1

    goto/16 :goto_47
.end method

.method public declared-synchronized restoreSome(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;)I
    .registers 28
    .param p1, "token"    # J
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "packages"    # [Ljava/lang/String;

    .prologue
    .line 9295
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    const-string/jumbo v5, "performRestore"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9299
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9300
    .local v12, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "restoreSome token="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9301
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9302
    const-string v3, " observer="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9303
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9304
    const-string v3, " packages="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9305
    if-nez p4, :cond_55

    .line 9306
    const-string v3, "null"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9318
    :goto_3b
    const-string v3, "RestoreSession"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9321
    move-object/from16 v0, p0

    iget-boolean v3, v0, mEnded:Z

    if-eqz v3, :cond_81

    .line 9322
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Restore session already ended"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_52

    .line 9295
    .end local v12    # "b":Ljava/lang/StringBuilder;
    :catchall_52
    move-exception v3

    monitor-exit p0

    throw v3

    .line 9308
    .restart local v12    # "b":Ljava/lang/StringBuilder;
    :cond_55
    const/16 v3, 0x7b

    :try_start_57
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9309
    const/4 v14, 0x1

    .line 9310
    .local v14, "first":Z
    move-object/from16 v2, p4

    .local v2, "arr$":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_62
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_7b

    aget-object v19, v2, v16

    .line 9311
    .local v19, "s":Ljava/lang/String;
    if-nez v14, :cond_79

    .line 9312
    const-string v3, ", "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9314
    :goto_71
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9310
    add-int/lit8 v16, v16, 0x1

    goto :goto_62

    .line 9313
    :cond_79
    const/4 v14, 0x0

    goto :goto_71

    .line 9316
    .end local v19    # "s":Ljava/lang/String;
    :cond_7b
    const/16 v3, 0x7d

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 9325
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v14    # "first":Z
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    :cond_81
    move-object/from16 v0, p0

    iget-boolean v3, v0, mTimedOut:Z

    if-eqz v3, :cond_91

    .line 9326
    const-string v3, "RestoreSession"

    const-string v4, "Session already timed out"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_57 .. :try_end_8e} :catchall_52

    .line 9327
    const/4 v3, -0x1

    .line 9371
    :goto_8f
    monitor-exit p0

    return v3

    .line 9330
    :cond_91
    :try_start_91
    move-object/from16 v0, p0

    iget-object v3, v0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    if-eqz v3, :cond_9d

    move-object/from16 v0, p0

    iget-object v3, v0, mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v3, :cond_a6

    .line 9331
    :cond_9d
    const-string v3, "RestoreSession"

    const-string v4, "Ignoring restoreAll() with no restore set"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9332
    const/4 v3, -0x1

    goto :goto_8f

    .line 9335
    :cond_a6
    move-object/from16 v0, p0

    iget-object v3, v0, mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_b5

    .line 9336
    const-string v3, "RestoreSession"

    const-string v4, "Ignoring restoreAll() on single-package session"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catchall {:try_start_91 .. :try_end_b3} :catchall_52

    .line 9337
    const/4 v3, -0x1

    goto :goto_8f

    .line 9342
    :cond_b5
    :try_start_b5
    move-object/from16 v0, p0

    iget-object v3, v0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_bc} :catch_130
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_52

    move-result-object v6

    .line 9349
    .local v6, "dirName":Ljava/lang/String;
    :try_start_bd
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_c6
    .catchall {:try_start_bd .. :try_end_c6} :catchall_52

    .line 9350
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_c7
    :try_start_c7
    move-object/from16 v0, p0

    iget-object v3, v0, mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v3, v3

    if-ge v15, v3, :cond_140

    .line 9351
    move-object/from16 v0, p0

    iget-object v3, v0, mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v3, v3, v15

    iget-wide v4, v3, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v3, p1, v4

    if-nez v3, :cond_13d

    .line 9353
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 9355
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 9356
    .local v20, "oldId":J
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9360
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 9361
    .local v18, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, p4

    array-length v7, v0

    const/4 v8, 0x1

    if-le v7, v8, :cond_13b

    const/4 v11, 0x1

    :goto_10e
    move-object/from16 v7, p3

    move-wide/from16 v8, p1

    move-object/from16 v10, p4

    invoke-direct/range {v3 .. v11}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;J[Ljava/lang/String;Z)V

    move-object/from16 v0, v18

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9363
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 9364
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9365
    const/4 v3, 0x0

    monitor-exit v22

    goto/16 :goto_8f

    .line 9368
    .end local v18    # "msg":Landroid/os/Message;
    .end local v20    # "oldId":J
    :catchall_12d
    move-exception v3

    monitor-exit v22
    :try_end_12f
    .catchall {:try_start_c7 .. :try_end_12f} :catchall_12d

    :try_start_12f
    throw v3

    .line 9343
    .end local v6    # "dirName":Ljava/lang/String;
    .end local v15    # "i":I
    :catch_130
    move-exception v13

    .line 9345
    .local v13, "e":Landroid/os/RemoteException;
    const-string v3, "RestoreSession"

    const-string v4, "Unable to contact transport for restore"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_138
    .catchall {:try_start_12f .. :try_end_138} :catchall_52

    .line 9346
    const/4 v3, -0x1

    goto/16 :goto_8f

    .line 9361
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v6    # "dirName":Ljava/lang/String;
    .restart local v15    # "i":I
    .restart local v18    # "msg":Landroid/os/Message;
    .restart local v20    # "oldId":J
    :cond_13b
    const/4 v11, 0x0

    goto :goto_10e

    .line 9350
    .end local v18    # "msg":Landroid/os/Message;
    .end local v20    # "oldId":J
    :cond_13d
    add-int/lit8 v15, v15, 0x1

    goto :goto_c7

    .line 9368
    :cond_140
    :try_start_140
    monitor-exit v22
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_12d

    .line 9370
    :try_start_141
    const-string v3, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restore token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_163
    .catchall {:try_start_141 .. :try_end_163} :catchall_52

    .line 9371
    const/4 v3, -0x1

    goto/16 :goto_8f
.end method
