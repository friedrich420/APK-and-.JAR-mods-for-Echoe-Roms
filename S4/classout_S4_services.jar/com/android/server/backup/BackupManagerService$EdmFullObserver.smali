.class Lcom/android/server/backup/BackupManagerService$EdmFullObserver;
.super Landroid/app/backup/IFullBackupRestoreObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdmFullObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2

    .prologue
    .line 9652
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "x1"    # Lcom/android/server/backup/BackupManagerService$1;

    .prologue
    .line 9652
    invoke-direct {p0, p1}, <init>(Lcom/android/server/backup/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onBackupPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9661
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onBackupPackage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9662
    return-void
.end method

.method public onEndBackup()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9666
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onEndBackup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9667
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->isEdmBackupFail:Z

    if-eqz v0, :cond_14

    .line 9668
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v1, -0x2

    # invokes: Lcom/android/server/backup/BackupManagerService;->resetEdmBackupTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$2700(Lcom/android/server/backup/BackupManagerService;I)V

    .line 9671
    :goto_13
    return-void

    .line 9670
    :cond_14
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/backup/BackupManagerService;->resetEdmBackupTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$2700(Lcom/android/server/backup/BackupManagerService;I)V

    goto :goto_13
.end method

.method public onEndRestore()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9685
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onEndRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9686
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->isEdmBackupFail:Z

    if-eqz v0, :cond_14

    .line 9687
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v1, -0x2

    # invokes: Lcom/android/server/backup/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$2800(Lcom/android/server/backup/BackupManagerService;I)V

    .line 9690
    :goto_13
    return-void

    .line 9689
    :cond_14
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/backup/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$2800(Lcom/android/server/backup/BackupManagerService;I)V

    goto :goto_13
.end method

.method public onRestorePackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9680
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onRestorePackage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9681
    return-void
.end method

.method public onStartBackup()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9656
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9657
    return-void
.end method

.method public onStartRestore()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9675
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onStartRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9676
    return-void
.end method

.method public onTimeout()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x2

    .line 9694
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9695
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest:Z

    if-eqz v0, :cond_14

    .line 9696
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->resetEdmBackupTags(I)V
    invoke-static {v0, v2}, Lcom/android/server/backup/BackupManagerService;->access$2700(Lcom/android/server/backup/BackupManagerService;I)V

    .line 9700
    :goto_13
    return-void

    .line 9698
    :cond_14
    iget-object v0, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v0, v2}, Lcom/android/server/backup/BackupManagerService;->access$2800(Lcom/android/server/backup/BackupManagerService;I)V

    goto :goto_13
.end method
