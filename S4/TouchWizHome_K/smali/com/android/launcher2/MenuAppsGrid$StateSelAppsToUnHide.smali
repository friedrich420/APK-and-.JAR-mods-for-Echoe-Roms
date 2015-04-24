.class Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;
.super Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateSelAppsToUnHide"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1

    .prologue
    .line 2100
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/MenuAppsGrid;
    .param p2, "x1"    # Lcom/android/launcher2/MenuAppsGrid$1;

    .prologue
    .line 2100
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method public allowCustomizeGrid()Z
    .locals 1

    .prologue
    .line 2124
    const/4 v0, 0x0

    return v0
.end method

.method protected complete()V
    .locals 4

    .prologue
    .line 2104
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;->hasCheckedItems()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2105
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 2106
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;->getCheckedItems()Ljava/util/List;

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

    .line 2107
    .local v1, "item":Lcom/android/launcher2/AppItem;
    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->unhide()V

    goto :goto_0

    .line 2109
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_0
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 2111
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->setDownloadIconEnabled()V

    .line 2112
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2113
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
    .line 2128
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;->mHasEntered:Z

    if-nez v0, :cond_0

    .line 2129
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;->saveLastStatesCurrentPage()V

    .line 2131
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2132
    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 0
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
    .line 2136
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;->restoreLastStatesCurrentPage()V

    .line 2137
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2138
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
    .line 2117
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getHiddenApps()Ljava/util/List;

    move-result-object v1

    .line 2118
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-nez v1, :cond_1

    const/4 v0, -0x1

    .line 2119
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

    .line 2120
    :cond_0
    return-object v1

    .line 2118
    .end local v0    # "itemCount":I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
