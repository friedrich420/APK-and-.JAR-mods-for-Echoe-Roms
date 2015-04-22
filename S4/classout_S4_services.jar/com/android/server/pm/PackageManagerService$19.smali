.class Lcom/android/server/pm/PackageManagerService$19;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageMoveObserver;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .registers 4

    .prologue
    .line 17149
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, val$packageName:Ljava/lang/String;

    iput-object p3, p0, val$observer:Landroid/content/pm/IPackageMoveObserver;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17158
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Install result for move: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17164
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 17165
    :try_start_1f
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    iget-object v4, p0, val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 17166
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2e

    .line 17167
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    .line 17169
    :cond_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_3f

    .line 17171
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v1

    .line 17172
    .local v1, "status":I
    sparse-switch v1, :sswitch_data_54

    .line 17180
    iget-object v2, p0, val$observer:Landroid/content/pm/IPackageMoveObserver;

    iget-object v3, p0, val$packageName:Ljava/lang/String;

    const/4 v4, -0x6

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageMoveObserver;->packageMoved(Ljava/lang/String;I)V

    .line 17183
    :goto_3e
    return-void

    .line 17169
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v1    # "status":I
    :catchall_3f
    move-exception v2

    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v2

    .line 17174
    .restart local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v1    # "status":I
    :sswitch_42
    iget-object v2, p0, val$observer:Landroid/content/pm/IPackageMoveObserver;

    iget-object v3, p0, val$packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageMoveObserver;->packageMoved(Ljava/lang/String;I)V

    goto :goto_3e

    .line 17177
    :sswitch_4b
    iget-object v2, p0, val$observer:Landroid/content/pm/IPackageMoveObserver;

    iget-object v3, p0, val$packageName:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageMoveObserver;->packageMoved(Ljava/lang/String;I)V

    goto :goto_3e

    .line 17172
    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_42
        0x6 -> :sswitch_4b
    .end sparse-switch
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17152
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
