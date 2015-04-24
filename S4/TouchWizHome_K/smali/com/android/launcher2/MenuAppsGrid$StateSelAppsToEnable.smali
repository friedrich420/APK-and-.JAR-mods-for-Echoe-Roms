.class Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;
.super Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateSelAppsToEnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1

    .prologue
    .line 2142
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/MenuAppsGrid;
    .param p2, "x1"    # Lcom/android/launcher2/MenuAppsGrid$1;

    .prologue
    .line 2142
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method public allowCustomizeGrid()Z
    .locals 1

    .prologue
    .line 2170
    const/4 v0, 0x0

    return v0
.end method

.method protected complete()V
    .locals 6

    .prologue
    .line 2146
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;->hasCheckedItems()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2147
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 2148
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;->getCheckedDisabledItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 2149
    .local v1, "item":Lcom/android/launcher2/AppItem;
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_0

    .line 2152
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_0
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 2154
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->setDownloadIconEnabled()V

    .line 2155
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2156
    return-void
.end method

.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 1
    .param p2, "oldState"    # Lcom/android/launcher2/MenuAppsGrid$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2174
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;->mHasEntered:Z

    if-nez v0, :cond_0

    .line 2175
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;->saveLastStatesCurrentPage()V

    .line 2177
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2178
    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .param p2, "oldState"    # Lcom/android/launcher2/MenuAppsGrid$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2182
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;->restoreLastStatesCurrentPage()V

    .line 2184
    # getter for: Lcom/android/launcher2/MenuAppsGrid;->sHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$4500()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2190
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2191
    return-void
.end method

.method public getAppsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2161
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getDisabledAppItemsList()Ljava/util/List;

    move-result-object v1

    .line 2163
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-nez v1, :cond_1

    const/4 v0, -0x1

    .line 2164
    .local v0, "itemCount":I
    :goto_0
    # getter for: Lcom/android/launcher2/MenuAppsGrid;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Launcher.MenuAppsGrid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StateSelAppsToUnHide:getAppsList() item count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    :cond_0
    return-object v1

    .line 2163
    .end local v0    # "itemCount":I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
