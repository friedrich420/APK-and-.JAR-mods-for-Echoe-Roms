.class Lcom/android/settings/fingerprint/ApplicationManager$1;
.super Landroid/os/Handler;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/ApplicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/ApplicationManager;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/ApplicationManager;)V
    .locals 0

    .prologue
    .line 885
    iput-object p1, p0, Lcom/android/settings/fingerprint/ApplicationManager$1;->this$0:Lcom/android/settings/fingerprint/ApplicationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/settings/fingerprint/ApplicationManager$1;->this$0:Lcom/android/settings/fingerprint/ApplicationManager;

    # getter for: Lcom/android/settings/fingerprint/ApplicationManager;->onInstalledPackaged:Lcom/android/settings/fingerprint/OnInstalledPackaged;
    invoke-static {v0}, Lcom/android/settings/fingerprint/ApplicationManager;->access$000(Lcom/android/settings/fingerprint/ApplicationManager;)Lcom/android/settings/fingerprint/OnInstalledPackaged;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/ApplicationManager$1;->this$0:Lcom/android/settings/fingerprint/ApplicationManager;

    iget-object v1, v1, Lcom/android/settings/fingerprint/ApplicationManager;->pkgname:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/fingerprint/ApplicationManager$1;->this$0:Lcom/android/settings/fingerprint/ApplicationManager;

    iget v2, v2, Lcom/android/settings/fingerprint/ApplicationManager;->returncode:I

    invoke-interface {v0, v1, v2}, Lcom/android/settings/fingerprint/OnInstalledPackaged;->packageInstalled(Ljava/lang/String;I)V

    .line 901
    return-void
.end method
