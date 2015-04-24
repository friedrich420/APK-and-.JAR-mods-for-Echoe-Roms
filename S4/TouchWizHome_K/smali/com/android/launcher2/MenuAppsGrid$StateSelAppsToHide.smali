.class Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;
.super Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateSelAppsToHide"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1

    .prologue
    .line 2037
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/MenuAppsGrid;
    .param p2, "x1"    # Lcom/android/launcher2/MenuAppsGrid$1;

    .prologue
    .line 2037
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method

.method private checkHomeViewItemListByPageName(Lcom/android/launcher2/CellLayout;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p1, "cl"    # Lcom/android/launcher2/CellLayout;
    .param p3, "intent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/CellLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2067
    .local p2, "hItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 2068
    invoke-virtual {p1, v3}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 2069
    .local v1, "childView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 2071
    .local v6, "tag":Ljava/lang/Object;
    instance-of v7, v6, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v7, :cond_1

    move-object v2, v6

    .line 2072
    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    .line 2074
    .local v2, "folder":Lcom/android/launcher2/HomeFolderItem;
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    invoke-virtual {v2}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 2075
    invoke-virtual {v2, v5}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeShortcutItem;

    .line 2076
    .local v0, "childItem":Lcom/android/launcher2/HomeShortcutItem;
    invoke-virtual {v0}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2077
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2074
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2079
    .end local v0    # "childItem":Lcom/android/launcher2/HomeShortcutItem;
    .end local v2    # "folder":Lcom/android/launcher2/HomeFolderItem;
    .end local v5    # "k":I
    :cond_1
    instance-of v7, v6, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v7, :cond_2

    move-object v4, v6

    .line 2080
    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    .line 2081
    .local v4, "item":Lcom/android/launcher2/HomeShortcutItem;
    invoke-virtual {v4}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2082
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2067
    .end local v4    # "item":Lcom/android/launcher2/HomeShortcutItem;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2085
    .end local v1    # "childView":Landroid/view/View;
    .end local v6    # "tag":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method private getHomeItemListByPackageName(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .param p2, "intent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2054
    .local p1, "hItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-object v1, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 2055
    .local v1, "home":Lcom/android/launcher2/HomeView;
    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    .line 2056
    .local v3, "mWorkspace":Lcom/android/launcher2/Workspace;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 2057
    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2058
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;->checkHomeViewItemListByPageName(Lcom/android/launcher2/CellLayout;Ljava/util/List;Ljava/lang/String;)V

    .line 2056
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2061
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    if-nez v4, :cond_3

    .line 2064
    :cond_2
    :goto_1
    return-void

    .line 2062
    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 2063
    .restart local v0    # "cl":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_2

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;->checkHomeViewItemListByPageName(Lcom/android/launcher2/CellLayout;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected complete()V
    .locals 4

    .prologue
    .line 2041
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;->hasCheckedItems()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2042
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 2043
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;->getCheckedItems()Ljava/util/List;

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

    .line 2044
    .local v1, "item":Lcom/android/launcher2/AppItem;
    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->hide()V

    goto :goto_0

    .line 2046
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_0
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 2049
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->setDownloadIconEnabled()V

    .line 2050
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2051
    return-void
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2088
    .local p1, "views":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enterItemViews(Ljava/lang/Iterable;)V

    .line 2089
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    .line 2090
    .local v2, "v":Lcom/android/launcher2/AppIconView;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v4, 0x1

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V
    invoke-static {v3, v4, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3500(Lcom/android/launcher2/MenuAppsGrid;ZLcom/android/launcher2/AppIconView;)V

    .line 2091
    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 2092
    .local v1, "item":Lcom/android/launcher2/BaseItem;
    iget-object v3, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_0

    iget-boolean v3, v1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v3, :cond_0

    .line 2093
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppIconView;->setCheckingEnabled(Z)V

    goto :goto_0

    .line 2096
    .end local v1    # "item":Lcom/android/launcher2/BaseItem;
    .end local v2    # "v":Lcom/android/launcher2/AppIconView;
    :cond_1
    return-void
.end method
