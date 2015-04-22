.class Lcom/android/server/backup/BackupManagerService$FullBackupEngine$FullBackupRunner;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupRunner"
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mPackage:Landroid/content/pm/PackageInfo;

.field mPipe:Landroid/os/ParcelFileDescriptor;

.field mSendApk:Z

.field mToken:I

.field mWidgetData:[B

.field mWriteManifest:Z

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;IZZ[B)V
    .registers 10
    .param p2, "pack"    # Landroid/content/pm/PackageInfo;
    .param p3, "agent"    # Landroid/app/IBackupAgent;
    .param p4, "pipe"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "token"    # I
    .param p6, "sendApk"    # Z
    .param p7, "writeManifest"    # Z
    .param p8, "widgetData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3187
    iput-object p1, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3188
    iput-object p2, p0, mPackage:Landroid/content/pm/PackageInfo;

    .line 3189
    iput-object p8, p0, mWidgetData:[B

    .line 3190
    iput-object p3, p0, mAgent:Landroid/app/IBackupAgent;

    .line 3191
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, mPipe:Landroid/os/ParcelFileDescriptor;

    .line 3192
    iput p5, p0, mToken:I

    .line 3193
    iput-boolean p6, p0, mSendApk:Z

    .line 3194
    iput-boolean p7, p0, mWriteManifest:Z

    .line 3195
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 3200
    :try_start_0
    new-instance v5, Landroid/app/backup/BackupDataOutput;

    iget-object v0, p0, mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 3203
    .local v5, "output":Landroid/app/backup/BackupDataOutput;
    iget-boolean v0, p0, mWriteManifest:Z

    if-eqz v0, :cond_70

    .line 3204
    iget-object v0, p0, mWidgetData:[B

    if-eqz v0, :cond_b9

    const/4 v7, 0x1

    .line 3206
    .local v7, "writeWidgetData":Z
    :goto_14
    iget-object v0, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v1, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    iget-boolean v3, p0, mSendApk:Z

    # invokes: Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeAppManifest(Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V
    invoke-static {v0, v1, v2, v3, v7}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->access$1200(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;ZZ)V

    .line 3207
    iget-object v0, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    .line 3211
    iget-object v0, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mManifestFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3214
    if-eqz v7, :cond_70

    .line 3215
    iget-object v0, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v1, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v2, v2, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    iget-object v3, p0, mWidgetData:[B

    # invokes: Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeMetadata(Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->access$1300(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Ljava/io/File;[B)V

    .line 3216
    iget-object v0, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mFilesDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    .line 3220
    iget-object v0, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mMetadataFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3224
    .end local v7    # "writeWidgetData":Z
    :cond_70
    iget-boolean v0, p0, mSendApk:Z

    if-eqz v0, :cond_7b

    .line 3225
    iget-object v0, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v1, p0, mPackage:Landroid/content/pm/PackageInfo;

    # invokes: Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->writeApkToBackup(Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V
    invoke-static {v0, v1, v5}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->access$1400(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/content/pm/PackageInfo;Landroid/app/backup/BackupDataOutput;)V

    .line 3228
    :cond_7b
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling doFullBackup() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    iget-object v0, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v1, p0, mToken:I

    const-wide/32 v2, 0x493e0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 3230
    iget-object v0, p0, mAgent:Landroid/app/IBackupAgent;

    iget-object v1, p0, mPipe:Landroid/os/ParcelFileDescriptor;

    iget v2, p0, mToken:I

    iget-object v3, p0, this$1:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IBackupAgent;->doFullBackup(Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b3} :catch_bc
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b3} :catch_e1
    .catchall {:try_start_0 .. :try_end_b3} :catchall_106

    .line 3238
    :try_start_b3
    iget-object v0, p0, mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b8} :catch_10f

    .line 3241
    .end local v5    # "output":Landroid/app/backup/BackupDataOutput;
    :goto_b8
    return-void

    .line 3204
    .restart local v5    # "output":Landroid/app/backup/BackupDataOutput;
    :cond_b9
    const/4 v7, 0x0

    goto/16 :goto_14

    .line 3231
    .end local v5    # "output":Landroid/app/backup/BackupDataOutput;
    :catch_bc
    move-exception v6

    .line 3232
    .local v6, "e":Ljava/io/IOException;
    :try_start_bd
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error running full backup for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catchall {:try_start_bd .. :try_end_d9} :catchall_106

    .line 3238
    :try_start_d9
    iget-object v0, p0, mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_de} :catch_df

    goto :goto_b8

    .line 3239
    :catch_df
    move-exception v0

    goto :goto_b8

    .line 3233
    .end local v6    # "e":Ljava/io/IOException;
    :catch_e1
    move-exception v6

    .line 3234
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_e2
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote agent vanished during full backup of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fe
    .catchall {:try_start_e2 .. :try_end_fe} :catchall_106

    .line 3238
    :try_start_fe
    iget-object v0, p0, mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_103} :catch_104

    goto :goto_b8

    .line 3239
    :catch_104
    move-exception v0

    goto :goto_b8

    .line 3237
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_106
    move-exception v0

    .line 3238
    :try_start_107
    iget-object v1, p0, mPipe:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10c} :catch_10d

    .line 3239
    :goto_10c
    throw v0

    :catch_10d
    move-exception v1

    goto :goto_10c

    .restart local v5    # "output":Landroid/app/backup/BackupDataOutput;
    :catch_10f
    move-exception v0

    goto :goto_b8
.end method
