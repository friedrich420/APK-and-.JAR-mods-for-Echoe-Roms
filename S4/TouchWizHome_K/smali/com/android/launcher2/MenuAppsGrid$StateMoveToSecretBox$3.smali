.class Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->moveToSecretBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

.field final synthetic val$hItemList:Ljava/util/List;

.field final synthetic val$launcher:Lcom/android/launcher2/Launcher;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$spMgr:Lcom/android/launcher2/SecretPageManager;

.field final synthetic val$workspace:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;Ljava/util/List;Lcom/android/launcher2/SecretPageManager;Ljava/util/List;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Workspace;)V
    .locals 0

    .prologue
    .line 2327
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$list:Ljava/util/List;

    iput-object p3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$spMgr:Lcom/android/launcher2/SecretPageManager;

    iput-object p4, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$hItemList:Ljava/util/List;

    iput-object p5, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$launcher:Lcom/android/launcher2/Launcher;

    iput-object p6, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$workspace:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2330
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2332
    .local v2, "pkName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$spMgr:Lcom/android/launcher2/SecretPageManager;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$hItemList:Ljava/util/List;

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher2/SecretPageManager;->getHomeViewItemListByPackageName(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 2334
    .end local v2    # "pkName":Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2335
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.launcher.MOVE_TO_PRIVATE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2336
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 2338
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$workspace:Lcom/android/launcher2/Workspace;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$hItemList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/List;)V

    .line 2340
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2341
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-static {v3, v5}, Lcom/android/launcher2/LauncherApplication;->setSecretScreenCount(Landroid/content/Context;I)V

    .line 2343
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$launcher:Lcom/android/launcher2/Launcher;

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 2344
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherExModel;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/LauncherExModel;->updateHomeDataBase(Z)V

    .line 2345
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->bindHomeInsertSecretPage()V

    .line 2347
    :cond_2
    return-void
.end method
