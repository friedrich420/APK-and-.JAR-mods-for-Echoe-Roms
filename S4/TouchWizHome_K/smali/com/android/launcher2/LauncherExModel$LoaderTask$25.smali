.class Lcom/android/launcher2/LauncherExModel$LoaderTask$25;
.super Ljava/lang/Object;
.source "LauncherExModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretAllApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V
    .locals 0

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$25;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1298
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    .line 1300
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$25;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    # invokes: Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    invoke-static {v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->access$600(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 1301
    .local v0, "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_1

    .line 1304
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$25;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    iget-object v1, v1, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # getter for: Lcom/android/launcher2/LauncherExModel;->mRefreshRequiredInSecretModeChange:Z
    invoke-static {v1}, Lcom/android/launcher2/LauncherExModel;->access$500(Lcom/android/launcher2/LauncherExModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$25;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    # getter for: Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z
    invoke-static {v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->access$900(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1305
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$25;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    iget-object v1, v1, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherExModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppLoader;->refreshAllApps()V

    .line 1308
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$25;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    iget-object v1, v1, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # setter for: Lcom/android/launcher2/LauncherExModel;->mRefreshRequiredInSecretModeChange:Z
    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherExModel;->access$502(Lcom/android/launcher2/LauncherExModel;Z)Z

    .line 1310
    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindAllAppsSecretMode()V

    .line 1312
    :cond_1
    return-void
.end method
