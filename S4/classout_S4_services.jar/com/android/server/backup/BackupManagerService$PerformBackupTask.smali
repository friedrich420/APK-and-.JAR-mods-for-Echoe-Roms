.class Lcom/android/server/backup/BackupManagerService$PerformBackupTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformBackupTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformBackupTask"


# instance fields
.field mAgentBinder:Landroid/app/IBackupAgent;

.field mBackupData:Landroid/os/ParcelFileDescriptor;

.field mBackupDataName:Ljava/io/File;

.field mCurrentPackage:Landroid/content/pm/PackageInfo;

.field mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

.field mFinished:Z

.field mJournal:Ljava/io/File;

.field mNewState:Landroid/os/ParcelFileDescriptor;

.field mNewStateName:Ljava/io/File;

.field mOriginalQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mSavedState:Landroid/os/ParcelFileDescriptor;

.field mSavedStateName:Ljava/io/File;

.field mStateDir:Ljava/io/File;

.field mStatus:I

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;)V
    .registers 8
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "dirName"    # Ljava/lang/String;
    .param p5, "journal"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/backup/IBackupTransport;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2384
    .local p4, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$BackupRequest;>;"
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2385
    iput-object p2, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 2386
    iput-object p4, p0, mOriginalQueue:Ljava/util/ArrayList;

    .line 2387
    iput-object p5, p0, mJournal:Ljava/io/File;

    .line 2389
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mStateDir:Ljava/io/File;

    .line 2391
    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->INITIAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    iput-object v0, p0, mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2392
    const/4 v0, 0x0

    iput-boolean v0, p0, mFinished:Z

    .line 2394
    const-string v0, "STATE => INITIAL"

    invoke-virtual {p1, v0}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2395
    return-void
.end method


# virtual methods
.method agentErrorCleanup()V
    .registers 2

    .prologue
    .line 3004
    iget-object v0, p0, mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3005
    iget-object v0, p0, mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3006
    invoke-virtual {p0}, clearAgentState()V

    .line 3008
    iget-object v0, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    :goto_17
    invoke-virtual {p0, v0}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 3009
    return-void

    .line 3008
    :cond_1b
    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_17
.end method

.method beginBackup()V
    .registers 19

    .prologue
    .line 2424
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    .line 2425
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2426
    .local v8, "b":Ljava/lang/StringBuilder;
    const-string v2, "beginBackup: ["

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2427
    move-object/from16 v0, p0

    iget-object v2, v0, mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 2428
    .local v14, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    const/16 v2, 0x20

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2429
    iget-object v2, v14, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 2431
    .end local v14    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_32
    const-string v2, " ]"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2432
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2435
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mAgentBinder:Landroid/app/IBackupAgent;

    .line 2436
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mStatus:I

    .line 2439
    move-object/from16 v0, p0

    iget-object v2, v0, mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 2440
    const-string v2, "PerformBackupTask"

    const-string v3, "Backup begun with an empty queue - nothing to do."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "queue empty at begin"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2442
    sget-object v2, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2444
    const-string/jumbo v11, "unknown"

    .line 2445
    .local v11, "pack":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_85

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_85

    .line 2446
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2448
    :cond_85
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Performing user data backup of package "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " failed"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2550
    .end local v11    # "pack":Ljava/lang/String;
    :cond_b4
    :goto_b4
    return-void

    .line 2458
    :cond_b5
    move-object/from16 v0, p0

    iget-object v2, v0, mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, mQueue:Ljava/util/ArrayList;

    .line 2460
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Beginning backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " targets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, mStateDir:Ljava/io/File;

    const-string v3, "@pm@"

    invoke-direct {v13, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2464
    .local v13, "pmState":Ljava/io/File;
    :try_start_f4
    move-object/from16 v0, p0

    iget-object v2, v0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v15

    .line 2465
    .local v15, "transportName":Ljava/lang/String;
    const/16 v2, 0xb05

    invoke-static {v2, v15}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2468
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-nez v2, :cond_176

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_176

    .line 2469
    const-string v2, "PerformBackupTask"

    const-string v3, "Initializing (wiping) backup state and transport storage"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializing transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2471
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, mStateDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2472
    move-object/from16 v0, p0

    iget-object v2, v0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mStatus:I

    .line 2474
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transport.initializeDevice() == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2475
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-nez v2, :cond_25c

    .line 2476
    const/16 v2, 0xb0b

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2497
    :cond_176
    :goto_176
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-nez v2, :cond_1c9

    .line 2498
    new-instance v12, Lcom/android/server/backup/PackageManagerBackupAgent;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v12, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;)V

    .line 2500
    .local v12, "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    const-string v2, "@pm@"

    invoke-virtual {v12}, Lcom/android/server/backup/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mStatus:I

    .line 2502
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PMBA invoke: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2507
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 2510
    .end local v12    # "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    :cond_1c9
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    const/16 v3, -0x3e9

    if-ne v2, v3, :cond_1de

    .line 2514
    const/16 v2, 0xb0a

    move-object/from16 v0, p0

    iget-object v3, v0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_1de} :catch_2b2
    .catchall {:try_start_f4 .. :try_end_1de} :catchall_39e

    .line 2533
    :cond_1de
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exiting prelim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2534
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-eqz v2, :cond_b4

    .line 2536
    const-string/jumbo v11, "unknown"

    .line 2537
    .restart local v11    # "pack":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_219

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_219

    .line 2538
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2540
    :cond_219
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Performing user data backup of package "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " failed"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2546
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, mStateDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2547
    sget-object v2, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_b4

    .line 2479
    .end local v11    # "pack":Ljava/lang/String;
    :cond_25c
    :try_start_25c
    const-string/jumbo v11, "unknown"

    .line 2480
    .restart local v11    # "pack":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_273

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_273

    .line 2481
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2483
    :cond_273
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Performing user data backup of package "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " failed"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2487
    const/16 v2, 0xb06

    const-string v3, "(initialize)"

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2488
    const-string v2, "PerformBackupTask"

    const-string v3, "Transport error in initializeDevice()"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b0
    .catch Ljava/lang/Exception; {:try_start_25c .. :try_end_2b0} :catch_2b2
    .catchall {:try_start_25c .. :try_end_2b0} :catchall_39e

    goto/16 :goto_176

    .line 2516
    .end local v11    # "pack":Ljava/lang/String;
    .end local v15    # "transportName":Ljava/lang/String;
    :catch_2b2
    move-exception v9

    .line 2518
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2b3
    const-string/jumbo v11, "unknown"

    .line 2519
    .restart local v11    # "pack":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_2ca

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_2ca

    .line 2520
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2522
    :cond_2ca
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Performing user data backup of package "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " failed"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2526
    const-string v2, "PerformBackupTask"

    const-string v3, "Error in backup thread"

    invoke-static {v2, v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2527
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in backup thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2528
    const/16 v2, -0x3e8

    move-object/from16 v0, p0

    iput v2, v0, mStatus:I
    :try_end_320
    .catchall {:try_start_2b3 .. :try_end_320} :catchall_39e

    .line 2533
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exiting prelim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2534
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-eqz v2, :cond_b4

    .line 2536
    const-string/jumbo v11, "unknown"

    .line 2537
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_35b

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_35b

    .line 2538
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2540
    :cond_35b
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Performing user data backup of package "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " failed"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2546
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, mStateDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2547
    sget-object v2, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_b4

    .line 2533
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "pack":Ljava/lang/String;
    :catchall_39e
    move-exception v2

    move-object/from16 v16, v2

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exiting prelim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2534
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-eqz v2, :cond_41d

    .line 2536
    const-string/jumbo v11, "unknown"

    .line 2537
    .restart local v11    # "pack":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_3dc

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_3dc

    .line 2538
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v11, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2540
    :cond_3dc
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Performing user data backup of package "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, " failed"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2546
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, mStateDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 2547
    sget-object v2, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .end local v11    # "pack":Ljava/lang/String;
    :cond_41d
    throw v16
.end method

.method clearAgentState()V
    .registers 4

    .prologue
    .line 3013
    :try_start_0
    iget-object v0, p0, mSavedState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_9

    iget-object v0, p0, mSavedState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_69

    .line 3014
    :cond_9
    :goto_9
    :try_start_9
    iget-object v0, p0, mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_12

    iget-object v0, p0, mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_67

    .line 3015
    :cond_12
    :goto_12
    :try_start_12
    iget-object v0, p0, mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1b

    iget-object v0, p0, mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_65

    .line 3016
    :cond_1b
    :goto_1b
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3020
    :try_start_20
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3021
    const/4 v0, 0x0

    iput-object v0, p0, mNewState:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, mBackupData:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 3022
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_60

    .line 3025
    iget-object v0, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5f

    .line 3026
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbinding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3028
    :try_start_52
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5f} :catch_63

    .line 3031
    :cond_5f
    :goto_5f
    return-void

    .line 3022
    :catchall_60
    move-exception v0

    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v0

    .line 3029
    :catch_63
    move-exception v0

    goto :goto_5f

    .line 3015
    :catch_65
    move-exception v0

    goto :goto_1b

    .line 3014
    :catch_67
    move-exception v0

    goto :goto_12

    .line 3013
    :catch_69
    move-exception v0

    goto :goto_9
.end method

.method clearMetadata()V
    .registers 4

    .prologue
    .line 2737
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mStateDir:Ljava/io/File;

    const-string v2, "@pm@"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2738
    .local v0, "pmState":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2739
    :cond_12
    return-void
.end method

.method public execute()V
    .registers 3

    .prologue
    .line 2401
    sget-object v0, Lcom/android/server/backup/BackupManagerService$6;->$SwitchMap$com$android$server$backup$BackupManagerService$BackupState:[I

    iget-object v1, p0, mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$BackupState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 2418
    :goto_d
    return-void

    .line 2403
    :pswitch_e
    invoke-virtual {p0}, beginBackup()V

    goto :goto_d

    .line 2407
    :pswitch_12
    invoke-virtual {p0}, invokeNextAgent()V

    goto :goto_d

    .line 2411
    :pswitch_16
    iget-boolean v0, p0, mFinished:Z

    if-nez v0, :cond_21

    invoke-virtual {p0}, finalizeBackup()V

    .line 2415
    :goto_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, mFinished:Z

    goto :goto_d

    .line 2413
    :cond_21
    const-string v0, "PerformBackupTask"

    const-string v1, "Duplicate finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 2401
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method

.method executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    .registers 6
    .param p1, "nextState"    # Lcom/android/server/backup/BackupManagerService$BackupState;

    .prologue
    .line 3045
    iget-object v1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeNextState => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3046
    iput-object p1, p0, mCurrentState:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 3047
    iget-object v1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3048
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3049
    return-void
.end method

.method public failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V
    .registers 7
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2814
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 2818
    :goto_3
    return-void

    .line 2815
    :catch_4
    move-exception v0

    .line 2816
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PerformBackupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error conveying failure to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method finalizeBackup()V
    .registers 8

    .prologue
    .line 2682
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v1, "finishing"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2688
    iget-object v0, p0, mJournal:Ljava/io/File;

    if-eqz v0, :cond_2d

    iget-object v0, p0, mJournal:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2689
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to remove backup journal file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mJournal:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    :cond_2d
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_52

    iget v0, p0, mStatus:I

    if-nez v0, :cond_52

    .line 2696
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "success; recording token"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2698
    :try_start_43
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    .line 2699
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_52} :catch_a6

    .line 2710
    :cond_52
    :goto_52
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2711
    :try_start_57
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    .line 2713
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->warnEdmAdminOperationCompleted()V
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$200(Lcom/android/server/backup/BackupManagerService;)V

    .line 2715
    iget v0, p0, mStatus:I

    const/16 v2, -0x3e9

    if-ne v0, v2, :cond_7d

    .line 2717
    invoke-virtual {p0}, clearMetadata()V

    .line 2718
    const-string v0, "PerformBackupTask"

    const-string v2, "Server requires init; rerunning"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "init required; rerunning"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2720
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->backupNow()V

    .line 2722
    :cond_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_57 .. :try_end_7e} :catchall_b0

    .line 2725
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Performing user data backup succeeded "

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2730
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    .line 2731
    const-string v0, "BackupManagerService"

    const-string v1, "Backup pass finished."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2733
    return-void

    .line 2700
    :catch_a6
    move-exception v6

    .line 2703
    .local v6, "e":Landroid/os/RemoteException;
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "transport threw returning token"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_52

    .line 2722
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_b0
    move-exception v0

    :try_start_b1
    monitor-exit v1
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw v0
.end method

.method public handleTimeout()V
    .registers 5

    .prologue
    .line 2984
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout backing up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    const/16 v0, 0xb07

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "timeout"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2987
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeout of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2988
    invoke-virtual {p0}, agentErrorCleanup()V

    .line 2989
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$900(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2990
    return-void
.end method

.method invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/app/IBackupAgent;
    .param p3, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 2745
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeAgentForBackup on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2748
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mStateDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mSavedStateName:Ljava/io/File;

    .line 2749
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mBackupDataName:Ljava/io/File;

    .line 2750
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, mStateDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, mNewStateName:Ljava/io/File;

    .line 2753
    iput-object v5, p0, mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 2754
    iput-object v5, p0, mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 2755
    iput-object v5, p0, mNewState:Landroid/os/ParcelFileDescriptor;

    .line 2757
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v4

    .line 2762
    .local v4, "token":I
    :try_start_81
    const-string v0, "@pm@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 2765
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 2766
    iget-object v0, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iput-object p1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2772
    :cond_94
    iget-object v0, p0, mSavedStateName:Ljava/io/File;

    const/high16 v1, 0x18000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 2776
    iget-object v0, p0, mBackupDataName:Ljava/io/File;

    const/high16 v1, 0x3c000000    # 0.0078125f

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 2781
    iget-object v0, p0, mBackupDataName:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 2782
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELinux restorecon failed on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mBackupDataName:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    :cond_ca
    iget-object v0, p0, mNewStateName:Ljava/io/File;

    const/high16 v1, 0x3c000000    # 0.0078125f

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, mNewState:Landroid/os/ParcelFileDescriptor;

    .line 2791
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "setting timeout"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2792
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v4, v2, v3, p0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 2793
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v1, "calling agent doBackup()"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2794
    iget-object v1, p0, mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p0, mNewState:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_f8} :catch_101

    .line 2808
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v1, "invoke success"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    move v0, v7

    .line 2809
    :goto_100
    return v0

    .line 2795
    :catch_101
    move-exception v6

    .line 2796
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error invoking for backup on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2798
    const/16 v0, 0xb07

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v7

    const/4 v2, 0x1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2800
    invoke-virtual {p0}, agentErrorCleanup()V

    .line 2801
    const/16 v0, -0x3eb

    goto :goto_100
.end method

.method invokeNextAgent()V
    .registers 16

    .prologue
    const/16 v14, -0x3eb

    const/4 v13, 0x0

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 2555
    iput v2, p0, mStatus:I

    .line 2556
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoke q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2560
    iget-object v3, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 2561
    const-string v0, "PerformBackupTask"

    const-string/jumbo v1, "queue now empty"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    sget-object v0, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v0}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2679
    :goto_3b
    return-void

    .line 2567
    :cond_3c
    iget-object v3, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 2568
    .local v11, "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v3, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2570
    const-string v3, "PerformBackupTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "starting agent for backup of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launch agent for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2579
    :try_start_7c
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v11, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iput-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 2581
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v3, :cond_177

    .line 2585
    const-string v3, "PerformBackupTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " no longer supports backup; skipping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v4, "skipping - no agent, completion is noop"

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2588
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v3}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_c1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7c .. :try_end_c1} :catch_30b
    .catchall {:try_start_7c .. :try_end_c1} :catchall_428

    .line 2628
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v13}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2632
    iget v3, p0, mStatus:I

    if-eqz v3, :cond_134

    .line 2633
    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2634
    .local v9, "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v13, p0, mAgentBinder:Landroid/app/IBackupAgent;

    .line 2637
    const-string/jumbo v10, "unknown"

    .line 2638
    .local v10, "pack":Ljava/lang/String;
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_e1

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_e1

    .line 2639
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2641
    :cond_e1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Performing user data backup of package "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " failed"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2648
    iget v0, p0, mStatus:I

    if-ne v0, v14, :cond_125

    .line 2651
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v11, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$900(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2652
    iput v2, p0, mStatus:I

    .line 2653
    iget-object v0, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_120

    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2664
    :cond_120
    :goto_120
    invoke-virtual {p0, v9}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_3b

    .line 2654
    :cond_125
    iget v0, p0, mStatus:I

    const/16 v1, -0x3ec

    if-ne v0, v1, :cond_12e

    .line 2657
    iput v2, p0, mStatus:I

    goto :goto_120

    .line 2660
    :cond_12e
    invoke-virtual {p0}, revertAndEndBackup()V

    .line 2661
    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_120

    .line 2667
    .end local v9    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .end local v10    # "pack":Ljava/lang/String;
    :cond_134
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v3, "expecting completion/timeout callback"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2669
    const-string/jumbo v10, "unknown"

    .line 2670
    .restart local v10    # "pack":Ljava/lang/String;
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_14c

    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_14c

    .line 2671
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2673
    :cond_14c
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Performing user data backup of package "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " succeeded"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 2592
    .end local v10    # "pack":Ljava/lang/String;
    :cond_177
    :try_start_177
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_245

    .line 2596
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v4, "skipping - stopped"

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2597
    sget-object v3, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    invoke-virtual {p0, v3}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V
    :try_end_18f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_177 .. :try_end_18f} :catch_30b
    .catchall {:try_start_177 .. :try_end_18f} :catchall_428

    .line 2628
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v13}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2632
    iget v3, p0, mStatus:I

    if-eqz v3, :cond_202

    .line 2633
    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2634
    .restart local v9    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v13, p0, mAgentBinder:Landroid/app/IBackupAgent;

    .line 2637
    const-string/jumbo v10, "unknown"

    .line 2638
    .restart local v10    # "pack":Ljava/lang/String;
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_1af

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_1af

    .line 2639
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2641
    :cond_1af
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Performing user data backup of package "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " failed"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2648
    iget v0, p0, mStatus:I

    if-ne v0, v14, :cond_1f3

    .line 2651
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v11, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$900(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2652
    iput v2, p0, mStatus:I

    .line 2653
    iget-object v0, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1ee

    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2664
    :cond_1ee
    :goto_1ee
    invoke-virtual {p0, v9}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_3b

    .line 2654
    :cond_1f3
    iget v0, p0, mStatus:I

    const/16 v1, -0x3ec

    if-ne v0, v1, :cond_1fc

    .line 2657
    iput v2, p0, mStatus:I

    goto :goto_1ee

    .line 2660
    :cond_1fc
    invoke-virtual {p0}, revertAndEndBackup()V

    .line 2661
    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_1ee

    .line 2667
    .end local v9    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .end local v10    # "pack":Ljava/lang/String;
    :cond_202
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v3, "expecting completion/timeout callback"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2669
    const-string/jumbo v10, "unknown"

    .line 2670
    .restart local v10    # "pack":Ljava/lang/String;
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_21a

    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_21a

    .line 2671
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2673
    :cond_21a
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Performing user data backup of package "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " succeeded"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 2601
    .end local v10    # "pack":Ljava/lang/String;
    :cond_245
    const/4 v6, 0x0

    .line 2603
    .local v6, "agent":Landroid/app/IBackupAgent;
    :try_start_246
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    new-instance v4, Landroid/os/WorkSource;

    iget-object v5, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v4, v5}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2604
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v6

    .line 2606
    iget-object v4, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "agent bound; a? = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v6, :cond_2f0

    const/4 v3, 0x1

    :goto_273
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2607
    if-eqz v6, :cond_2f2

    .line 2608
    iput-object v6, p0, mAgentBinder:Landroid/app/IBackupAgent;

    .line 2609
    iget-object v3, v11, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    iget-object v4, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {p0, v3, v6, v4}, invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    move-result v3

    iput v3, p0, mStatus:I
    :try_end_28c
    .catch Ljava/lang/SecurityException; {:try_start_246 .. :try_end_28c} :catch_2f7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_246 .. :try_end_28c} :catch_30b
    .catchall {:try_start_246 .. :try_end_28c} :catchall_428

    .line 2628
    :goto_28c
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v13}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2632
    iget v3, p0, mStatus:I

    if-eqz v3, :cond_393

    .line 2633
    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2634
    .restart local v9    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v13, p0, mAgentBinder:Landroid/app/IBackupAgent;

    .line 2637
    const-string/jumbo v10, "unknown"

    .line 2638
    .restart local v10    # "pack":Ljava/lang/String;
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_2ac

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_2ac

    .line 2639
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2641
    :cond_2ac
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Performing user data backup of package "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " failed"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2648
    iget v0, p0, mStatus:I

    if-ne v0, v14, :cond_382

    .line 2651
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v11, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$900(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2652
    iput v2, p0, mStatus:I

    .line 2653
    iget-object v0, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2eb

    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2664
    :cond_2eb
    :goto_2eb
    invoke-virtual {p0, v9}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_3b

    .end local v9    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .end local v10    # "pack":Ljava/lang/String;
    :cond_2f0
    move v3, v2

    .line 2606
    goto :goto_273

    .line 2615
    :cond_2f2
    const/16 v3, -0x3eb

    :try_start_2f4
    iput v3, p0, mStatus:I
    :try_end_2f6
    .catch Ljava/lang/SecurityException; {:try_start_2f4 .. :try_end_2f6} :catch_2f7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f4 .. :try_end_2f6} :catch_30b
    .catchall {:try_start_2f4 .. :try_end_2f6} :catchall_428

    goto :goto_28c

    .line 2617
    :catch_2f7
    move-exception v8

    .line 2619
    .local v8, "ex":Ljava/lang/SecurityException;
    :try_start_2f8
    const-string v3, "PerformBackupTask"

    const-string v4, "error in bind/backup"

    invoke-static {v3, v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2620
    const/16 v3, -0x3eb

    iput v3, p0, mStatus:I

    .line 2621
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v4, "agent SE"

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_30a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f8 .. :try_end_30a} :catch_30b
    .catchall {:try_start_2f8 .. :try_end_30a} :catchall_428

    goto :goto_28c

    .line 2623
    .end local v6    # "agent":Landroid/app/IBackupAgent;
    .end local v8    # "ex":Ljava/lang/SecurityException;
    :catch_30b
    move-exception v7

    .line 2624
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_30c
    const-string v3, "PerformBackupTask"

    const-string v4, "Package does not exist; skipping"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v4, "no such package"

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2626
    const/16 v3, -0x3ec

    iput v3, p0, mStatus:I
    :try_end_31e
    .catchall {:try_start_30c .. :try_end_31e} :catchall_428

    .line 2628
    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v13}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2632
    iget v3, p0, mStatus:I

    if-eqz v3, :cond_3e5

    .line 2633
    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2634
    .restart local v9    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v13, p0, mAgentBinder:Landroid/app/IBackupAgent;

    .line 2637
    const-string/jumbo v10, "unknown"

    .line 2638
    .restart local v10    # "pack":Ljava/lang/String;
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_33e

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_33e

    .line 2639
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2641
    :cond_33e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Performing user data backup of package "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " failed"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2648
    iget v0, p0, mStatus:I

    if-ne v0, v14, :cond_3d6

    .line 2651
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v11, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$900(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2652
    iput v2, p0, mStatus:I

    .line 2653
    iget-object v0, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37d

    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2664
    :cond_37d
    :goto_37d
    invoke-virtual {p0, v9}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_3b

    .line 2654
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "agent":Landroid/app/IBackupAgent;
    :cond_382
    iget v0, p0, mStatus:I

    const/16 v1, -0x3ec

    if-ne v0, v1, :cond_38c

    .line 2657
    iput v2, p0, mStatus:I

    goto/16 :goto_2eb

    .line 2660
    :cond_38c
    invoke-virtual {p0}, revertAndEndBackup()V

    .line 2661
    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto/16 :goto_2eb

    .line 2667
    .end local v9    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .end local v10    # "pack":Ljava/lang/String;
    :cond_393
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v3, "expecting completion/timeout callback"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2669
    const-string/jumbo v10, "unknown"

    .line 2670
    .restart local v10    # "pack":Ljava/lang/String;
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_3ab

    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_3ab

    .line 2671
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2673
    :cond_3ab
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Performing user data backup of package "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " succeeded"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 2654
    .end local v6    # "agent":Landroid/app/IBackupAgent;
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_3d6
    iget v0, p0, mStatus:I

    const/16 v1, -0x3ec

    if-ne v0, v1, :cond_3df

    .line 2657
    iput v2, p0, mStatus:I

    goto :goto_37d

    .line 2660
    :cond_3df
    invoke-virtual {p0}, revertAndEndBackup()V

    .line 2661
    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_37d

    .line 2667
    .end local v9    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .end local v10    # "pack":Ljava/lang/String;
    :cond_3e5
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v3, "expecting completion/timeout callback"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2669
    const-string/jumbo v10, "unknown"

    .line 2670
    .restart local v10    # "pack":Ljava/lang/String;
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_3fd

    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_3fd

    .line 2671
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2673
    :cond_3fd
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Performing user data backup of package "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " succeeded"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 2628
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "pack":Ljava/lang/String;
    :catchall_428
    move-exception v3

    move-object v12, v3

    iget-object v3, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v13}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2632
    iget v3, p0, mStatus:I

    if-eqz v3, :cond_49c

    .line 2633
    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2634
    .restart local v9    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    iput-object v13, p0, mAgentBinder:Landroid/app/IBackupAgent;

    .line 2637
    const-string/jumbo v10, "unknown"

    .line 2638
    .restart local v10    # "pack":Ljava/lang/String;
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_44a

    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_44a

    .line 2639
    iget-object v3, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2641
    :cond_44a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Performing user data backup of package "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " failed"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2648
    iget v0, p0, mStatus:I

    if-ne v0, v14, :cond_48d

    .line 2651
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v11, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$900(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 2652
    iput v2, p0, mStatus:I

    .line 2653
    iget-object v0, p0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_489

    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2664
    :cond_489
    :goto_489
    invoke-virtual {p0, v9}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    .line 2676
    .end local v9    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_48c
    throw v12

    .line 2654
    .restart local v9    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_48d
    iget v0, p0, mStatus:I

    const/16 v1, -0x3ec

    if-ne v0, v1, :cond_496

    .line 2657
    iput v2, p0, mStatus:I

    goto :goto_489

    .line 2660
    :cond_496
    invoke-virtual {p0}, revertAndEndBackup()V

    .line 2661
    sget-object v9, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_489

    .line 2667
    .end local v9    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .end local v10    # "pack":Ljava/lang/String;
    :cond_49c
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v3, "expecting completion/timeout callback"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2669
    const-string/jumbo v10, "unknown"

    .line 2670
    .restart local v10    # "pack":Ljava/lang/String;
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_4b4

    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_4b4

    .line 2671
    iget-object v2, p0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2673
    :cond_4b4
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Performing user data backup of package "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " succeeded"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_48c
.end method

.method public operationComplete()V
    .registers 25

    .prologue
    .line 2822
    const-string/jumbo v18, "unknown"

    .line 2824
    .local v18, "pack":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 2825
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 2829
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2830
    .local v19, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupDataName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 2831
    .local v12, "filepos":J
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupData:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_5a

    .line 2832
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBackupData is null, possibility timeout when dobackup() pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    const/16 v2, 0xb07

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v19, v3, v4

    const/4 v4, 0x1

    const-string v5, "mBackupData is null"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2976
    :cond_59
    :goto_59
    return-void

    .line 2836
    :cond_5a
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    .line 2840
    .local v11, "fd":Ljava/io/FileDescriptor;
    :try_start_62
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_274

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_274

    .line 2842
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupDataName:Ljava/io/File;

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v20

    .line 2844
    .local v20, "readFd":Landroid/os/ParcelFileDescriptor;
    new-instance v14, Landroid/app/backup/BackupDataInput;

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v14, v2}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_89} :catch_105

    .line 2846
    .local v14, "in":Landroid/app/backup/BackupDataInput;
    :goto_89
    :try_start_89
    invoke-virtual {v14}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    if-eqz v2, :cond_26f

    .line 2847
    invoke-virtual {v14}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v15

    .line 2848
    .local v15, "key":Ljava/lang/String;
    if-eqz v15, :cond_263

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v3, 0xff00

    if-lt v2, v3, :cond_263

    .line 2850
    move-object/from16 v0, p0

    iget-object v2, v0, mAgentBinder:Landroid/app/IBackupAgent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal backup key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V

    .line 2851
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2852
    const/16 v2, 0xb07

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v19, v3, v4

    const/4 v4, 0x1

    const-string v5, "bad key"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2854
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 2855
    invoke-virtual/range {p0 .. p0}, agentErrorCleanup()V
    :try_end_fe
    .catchall {:try_start_89 .. :try_end_fe} :catchall_268

    .line 2862
    if-eqz v20, :cond_59

    .line 2863
    :try_start_100
    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_103} :catch_105

    goto/16 :goto_59

    .line 2880
    .end local v14    # "in":Landroid/app/backup/BackupDataInput;
    .end local v15    # "key":Ljava/lang/String;
    .end local v20    # "readFd":Landroid/os/ParcelFileDescriptor;
    :catch_105
    move-exception v9

    .line 2885
    .local v9, "e":Ljava/io/IOException;
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save widget state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    :try_start_120
    invoke-static {v11, v12, v13}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_123
    .catch Landroid/system/ErrnoException; {:try_start_120 .. :try_end_123} :catch_2a6

    .line 2896
    .end local v9    # "e":Ljava/io/IOException;
    :goto_123
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 2897
    invoke-virtual/range {p0 .. p0}, clearAgentState()V

    .line 2898
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v3, "operation complete"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2900
    const/4 v8, 0x0

    .line 2901
    .local v8, "backupData":Landroid/os/ParcelFileDescriptor;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mStatus:I

    .line 2903
    :try_start_13f
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupDataName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v21, v0

    .line 2904
    .local v21, "size":I
    if-lez v21, :cond_2b0

    .line 2905
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-nez v2, :cond_176

    .line 2906
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupDataName:Ljava/io/File;

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 2908
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "sending data to transport"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2909
    move-object/from16 v0, p0

    iget-object v2, v0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, p0

    iget-object v3, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-interface {v2, v3, v8}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mStatus:I

    .line 2917
    :cond_176
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data delivered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2918
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-nez v2, :cond_1cd

    .line 2919
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v3, "finishing op on transport"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2920
    move-object/from16 v0, p0

    iget-object v2, v0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mStatus:I

    .line 2921
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finished: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2931
    :cond_1cd
    :goto_1cd
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-nez v2, :cond_2f4

    .line 2932
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupDataName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2933
    move-object/from16 v0, p0

    iget-object v2, v0, mNewStateName:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, mSavedStateName:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2934
    const/16 v2, 0xb08

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v19, v3, v4

    const/4 v4, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2935
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_200
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_200} :catch_2c2
    .catchall {:try_start_13f .. :try_end_200} :catchall_2fd

    .line 2944
    :goto_200
    if-eqz v8, :cond_205

    :try_start_202
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_205
    .catch Ljava/io/IOException; {:try_start_202 .. :try_end_205} :catch_35c

    .line 2950
    .end local v21    # "size":I
    :cond_205
    :goto_205
    move-object/from16 v0, p0

    iget v2, v0, mStatus:I

    if-eqz v2, :cond_304

    .line 2952
    const-string/jumbo v18, "unknown"

    .line 2953
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_224

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_224

    .line 2954
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 2956
    :cond_224
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Performing user data backup of package "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, " failed"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2960
    invoke-virtual/range {p0 .. p0}, revertAndEndBackup()V

    .line 2961
    sget-object v16, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .line 2975
    .local v16, "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_25a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, executeNextState(Lcom/android/server/backup/BackupManagerService$BackupState;)V

    goto/16 :goto_59

    .line 2859
    .end local v8    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    .restart local v14    # "in":Landroid/app/backup/BackupDataInput;
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v20    # "readFd":Landroid/os/ParcelFileDescriptor;
    :cond_263
    :try_start_263
    invoke-virtual {v14}, Landroid/app/backup/BackupDataInput;->skipEntityData()V
    :try_end_266
    .catchall {:try_start_263 .. :try_end_266} :catchall_268

    goto/16 :goto_89

    .line 2862
    .end local v15    # "key":Ljava/lang/String;
    :catchall_268
    move-exception v2

    if-eqz v20, :cond_26e

    .line 2863
    :try_start_26b
    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_26e
    throw v2

    .line 2862
    :cond_26f
    if-eqz v20, :cond_274

    .line 2863
    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2869
    .end local v14    # "in":Landroid/app/backup/BackupDataInput;
    .end local v20    # "readFd":Landroid/os/ParcelFileDescriptor;
    :cond_274
    new-instance v17, Landroid/app/backup/BackupDataOutput;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 2870
    .local v17, "out":Landroid/app/backup/BackupDataOutput;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v22

    .line 2872
    .local v22, "widgetState":[B
    if-eqz v22, :cond_29b

    .line 2873
    const-string/jumbo v2, "\uffed\uffedwidget"

    move-object/from16 v0, v22

    array-length v3, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 2874
    move-object/from16 v0, v22

    array-length v2, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto/16 :goto_123

    .line 2878
    :cond_29b
    const-string/jumbo v2, "\uffed\uffedwidget"

    const/4 v3, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I
    :try_end_2a4
    .catch Ljava/io/IOException; {:try_start_26b .. :try_end_2a4} :catch_105

    goto/16 :goto_123

    .line 2888
    .end local v17    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v22    # "widgetState":[B
    .restart local v9    # "e":Ljava/io/IOException;
    :catch_2a6
    move-exception v10

    .line 2889
    .local v10, "ee":Landroid/system/ErrnoException;
    const-string v2, "PerformBackupTask"

    const-string v3, "Unable to roll back!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_123

    .line 2924
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "ee":Landroid/system/ErrnoException;
    .restart local v8    # "backupData":Landroid/os/ParcelFileDescriptor;
    .restart local v21    # "size":I
    :cond_2b0
    :try_start_2b0
    const-string v2, "PerformBackupTask"

    const-string v3, "no backup data written; not calling transport"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string v3, "no data to send"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_2c0
    .catch Ljava/lang/Exception; {:try_start_2b0 .. :try_end_2c0} :catch_2c2
    .catchall {:try_start_2b0 .. :try_end_2c0} :catchall_2fd

    goto/16 :goto_1cd

    .line 2939
    .end local v21    # "size":I
    :catch_2c2
    move-exception v9

    .line 2940
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2c3
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport error backing up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2941
    const/16 v2, 0xb06

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2942
    const/16 v2, -0x3e8

    move-object/from16 v0, p0

    iput v2, v0, mStatus:I
    :try_end_2ea
    .catchall {:try_start_2c3 .. :try_end_2ea} :catchall_2fd

    .line 2944
    if-eqz v8, :cond_205

    :try_start_2ec
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2ef
    .catch Ljava/io/IOException; {:try_start_2ec .. :try_end_2ef} :catch_2f1

    goto/16 :goto_205

    :catch_2f1
    move-exception v2

    goto/16 :goto_205

    .line 2937
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v21    # "size":I
    :cond_2f4
    const/16 v2, 0xb06

    :try_start_2f6
    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_2fb
    .catch Ljava/lang/Exception; {:try_start_2f6 .. :try_end_2fb} :catch_2c2
    .catchall {:try_start_2f6 .. :try_end_2fb} :catchall_2fd

    goto/16 :goto_200

    .line 2944
    .end local v21    # "size":I
    :catchall_2fd
    move-exception v2

    if-eqz v8, :cond_303

    :try_start_300
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_303
    .catch Ljava/io/IOException; {:try_start_300 .. :try_end_303} :catch_35f

    :cond_303
    :goto_303
    throw v2

    .line 2964
    :cond_304
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_31a

    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_31a

    .line 2965
    move-object/from16 v0, p0

    iget-object v2, v0, mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 2967
    :cond_31a
    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Performing user data backup of package "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v23, " succeeded"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2972
    move-object/from16 v0, p0

    iget-object v2, v0, mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_359

    sget-object v16, Lcom/android/server/backup/BackupManagerService$BackupState;->FINAL:Lcom/android/server/backup/BackupManagerService$BackupState;

    .restart local v16    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :goto_357
    goto/16 :goto_25a

    .end local v16    # "nextState":Lcom/android/server/backup/BackupManagerService$BackupState;
    :cond_359
    sget-object v16, Lcom/android/server/backup/BackupManagerService$BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$BackupState;

    goto :goto_357

    .line 2944
    .restart local v21    # "size":I
    :catch_35c
    move-exception v2

    goto/16 :goto_205

    .end local v21    # "size":I
    :catch_35f
    move-exception v3

    goto :goto_303
.end method

.method restartBackupAlarm()V
    .registers 5

    .prologue
    .line 3034
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "setting backup trigger"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 3035
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3037
    :try_start_d
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v2

    # invokes: Lcom/android/server/backup/BackupManagerService;->startBackupAlarmsLocked(J)V
    invoke-static {v0, v2, v3}, Lcom/android/server/backup/BackupManagerService;->access$000(Lcom/android/server/backup/BackupManagerService;J)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_1d
    .catchall {:try_start_d .. :try_end_18} :catchall_1a

    .line 3039
    :goto_18
    :try_start_18
    monitor-exit v1

    .line 3040
    return-void

    .line 3039
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw v0

    .line 3038
    :catch_1d
    move-exception v0

    goto :goto_18
.end method

.method revertAndEndBackup()V
    .registers 5

    .prologue
    .line 2994
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "transport error; reverting"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 2995
    iget-object v2, p0, mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 2996
    .local v1, "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v2, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$BackupRequest;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/backup/BackupManagerService;->access$900(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    goto :goto_e

    .line 3000
    .end local v1    # "request":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_22
    invoke-virtual {p0}, restartBackupAlarm()V

    .line 3001
    return-void
.end method
