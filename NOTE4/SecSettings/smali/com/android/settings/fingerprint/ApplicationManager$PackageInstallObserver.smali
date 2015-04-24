.class Lcom/android/settings/fingerprint/ApplicationManager$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/ApplicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/ApplicationManager;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/ApplicationManager;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lcom/android/settings/fingerprint/ApplicationManager$PackageInstallObserver;->this$0:Lcom/android/settings/fingerprint/ApplicationManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 820
    iget-object v1, p0, Lcom/android/settings/fingerprint/ApplicationManager$PackageInstallObserver;->this$0:Lcom/android/settings/fingerprint/ApplicationManager;

    # getter for: Lcom/android/settings/fingerprint/ApplicationManager;->onInstalledPackaged:Lcom/android/settings/fingerprint/OnInstalledPackaged;
    invoke-static {v1}, Lcom/android/settings/fingerprint/ApplicationManager;->access$000(Lcom/android/settings/fingerprint/ApplicationManager;)Lcom/android/settings/fingerprint/OnInstalledPackaged;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 828
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 848
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/ApplicationManager$PackageInstallObserver;->this$0:Lcom/android/settings/fingerprint/ApplicationManager;

    iput-object p1, v1, Lcom/android/settings/fingerprint/ApplicationManager;->pkgname:Ljava/lang/String;

    .line 852
    iget-object v1, p0, Lcom/android/settings/fingerprint/ApplicationManager$PackageInstallObserver;->this$0:Lcom/android/settings/fingerprint/ApplicationManager;

    iput p2, v1, Lcom/android/settings/fingerprint/ApplicationManager;->returncode:I

    .line 856
    iget-object v1, p0, Lcom/android/settings/fingerprint/ApplicationManager$PackageInstallObserver;->this$0:Lcom/android/settings/fingerprint/ApplicationManager;

    # getter for: Lcom/android/settings/fingerprint/ApplicationManager;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/fingerprint/ApplicationManager;->access$100(Lcom/android/settings/fingerprint/ApplicationManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 860
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/fingerprint/ApplicationManager$PackageInstallObserver;->this$0:Lcom/android/settings/fingerprint/ApplicationManager;

    # getter for: Lcom/android/settings/fingerprint/ApplicationManager;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/fingerprint/ApplicationManager;->access$100(Lcom/android/settings/fingerprint/ApplicationManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 868
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method
