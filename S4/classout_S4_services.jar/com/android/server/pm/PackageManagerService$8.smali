.class Lcom/android/server/pm/PackageManagerService$8;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic val$currentStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    .registers 4

    .prologue
    .line 11007
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iput p3, p0, val$currentStatus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 11009
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11010
    const/4 v13, 0x0

    .line 11011
    .local v13, "ob":Landroid/content/pm/IPackageInstallObserver2;
    move-object/from16 v0, p0

    iget-object v1, v0, val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v1, :cond_18

    .line 11012
    move-object/from16 v0, p0

    iget-object v1, v0, val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 11014
    :cond_18
    const-string v2, "PackageManager"

    const-string v3, "MSG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROCESS_PENDING_INSTALL: observer{"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v13, :cond_18a

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_31
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "}\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "currentStatus{"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v6, v0, val$currentStatus:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "}"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11019
    new-instance v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v14, v1}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 11020
    .local v14, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, p0

    iget v1, v0, val$currentStatus:I

    iput v1, v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 11021
    const/4 v1, -0x1

    iput v1, v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 11022
    const/4 v1, 0x0

    iput-object v1, v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 11023
    new-instance v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    invoke-direct {v1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;-><init>()V

    iput-object v1, v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 11024
    iget v1, v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e7

    .line 11025
    move-object/from16 v0, p0

    iget-object v1, v0, val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    .line 11026
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 11027
    :try_start_8d
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    # invokes: Lcom/android/server/pm/PackageManagerService;->installPackageLI(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    invoke-static {v1, v3, v14}, Lcom/android/server/pm/PackageManagerService;->access$2500(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 11028
    monitor-exit v2
    :try_end_99
    .catchall {:try_start_8d .. :try_end_99} :catchall_18e

    .line 11032
    iget-object v1, v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_dc

    move-object/from16 v0, p0

    iget-object v1, v0, val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v1, v1, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_dc

    iget-object v1, v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    # invokes: Lcom/android/server/pm/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$1000(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-nez v1, :cond_b7

    iget-object v1, v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    # invokes: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$1100(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 11036
    :cond_b7
    const/4 v1, 0x1

    new-array v5, v1, [I

    const/4 v1, 0x0

    iget-object v2, v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    aput v2, v5, v1

    .line 11037
    .local v5, "uidArray":[I
    new-instance v4, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11038
    .local v4, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11039
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 11041
    .end local v4    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "uidArray":[I
    :cond_dc
    move-object/from16 v0, p0

    iget-object v1, v0, val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    iget v3, v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    .line 11047
    :cond_e7
    iget-object v1, v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v1, :cond_191

    const/16 v16, 0x1

    .line 11048
    .local v16, "update":Z
    :goto_ef
    iget-object v1, v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_195

    const/4 v11, 0x0

    .line 11049
    .local v11, "flags":I
    :goto_f4
    if-nez v16, :cond_19d

    const v1, 0x8000

    and-int/2addr v1, v11

    if-eqz v1, :cond_19d

    const/4 v9, 0x1

    .line 11056
    .local v9, "doRestore":Z
    :goto_fd
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget v1, v1, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v1, :cond_10c

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 11057
    :cond_10c
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget v15, v1, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v2, v15, 0x1

    iput v2, v1, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 11059
    .local v15, "token":I
    new-instance v8, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {v8, v1, v2, v14}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 11060
    .local v8, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v1, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11063
    iget v1, v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_167

    if-eqz v9, :cond_167

    .line 11068
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v7

    .line 11070
    .local v7, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v7, :cond_1aa

    .line 11071
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to BM for possible restore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11074
    :try_start_15e
    iget-object v1, v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v1, v15}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_167
    .catch Landroid/os/RemoteException; {:try_start_15e .. :try_end_167} :catch_1b3
    .catch Ljava/lang/Exception; {:try_start_15e .. :try_end_167} :catch_1a0

    .line 11087
    .end local v7    # "bm":Landroid/app/backup/IBackupManager;
    :cond_167
    :goto_167
    if-nez v9, :cond_17f

    .line 11091
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v15, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    .line 11092
    .local v12, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v12}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 11095
    .end local v12    # "msg":Landroid/os/Message;
    :cond_17f
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    .line 11096
    return-void

    .line 11014
    .end local v8    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v9    # "doRestore":Z
    .end local v11    # "flags":I
    .end local v14    # "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v15    # "token":I
    .end local v16    # "update":Z
    :cond_18a
    const-string v1, "null"

    goto/16 :goto_31

    .line 11028
    .restart local v14    # "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :catchall_18e
    move-exception v1

    :try_start_18f
    monitor-exit v2
    :try_end_190
    .catchall {:try_start_18f .. :try_end_190} :catchall_18e

    throw v1

    .line 11047
    :cond_191
    const/16 v16, 0x0

    goto/16 :goto_ef

    .line 11048
    .restart local v16    # "update":Z
    :cond_195
    iget-object v1, v14, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    goto/16 :goto_f4

    .line 11049
    .restart local v11    # "flags":I
    :cond_19d
    const/4 v9, 0x0

    goto/16 :goto_fd

    .line 11077
    .restart local v7    # "bm":Landroid/app/backup/IBackupManager;
    .restart local v8    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .restart local v9    # "doRestore":Z
    .restart local v15    # "token":I
    :catch_1a0
    move-exception v10

    .line 11078
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "PackageManager"

    const-string v2, "Exception trying to enqueue restore"

    invoke-static {v1, v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11079
    const/4 v9, 0x0

    .line 11080
    goto :goto_167

    .line 11082
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1aa
    const-string v1, "PackageManager"

    const-string v2, "Backup Manager not found!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11083
    const/4 v9, 0x0

    goto :goto_167

    .line 11075
    :catch_1b3
    move-exception v1

    goto :goto_167
.end method
