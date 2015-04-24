.class Lcom/android/launcher2/MenuAppsGrid$StateNormal;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateNormal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0

    .prologue
    .line 1440
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/MenuAppsGrid;
    .param p2, "x1"    # Lcom/android/launcher2/MenuAppsGrid$1;

    .prologue
    .line 1440
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateNormal;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1447
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    const/4 v9, 0x0

    .local v9, "pageIndex":I
    :goto_0
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v11

    if-ge v9, v11, :cond_7

    .line 1448
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11, v9}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayoutMenu;

    .line 1449
    .local v8, "page":Lcom/android/launcher2/CellLayoutMenu;
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v7

    .line 1450
    .local v7, "layout":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v2, v11, :cond_6

    .line 1451
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1452
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppItem;

    .line 1453
    .local v3, "item":Lcom/android/launcher2/AppItem;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_5

    .line 1454
    instance-of v11, v3, Lcom/android/launcher2/AppFolderItem;

    if-eqz v11, :cond_3

    .line 1455
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_3
    move-object v11, v3

    check-cast v11, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v11}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v11

    if-ge v5, v11, :cond_4

    move-object v11, v3

    .line 1456
    check-cast v11, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v11, v5}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AppItem;

    .line 1457
    .local v10, "temp":Lcom/android/launcher2/AppItem;
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_2

    .line 1458
    instance-of v11, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v11, :cond_2

    .line 1459
    iget-object v11, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 1460
    .local v1, "folder":Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_1

    .line 1461
    const/4 v6, 0x0

    .local v6, "l":I
    :goto_4
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v11

    if-ge v6, v11, :cond_1

    .line 1462
    invoke-virtual {v1, v6}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v11

    instance-of v11, v11, Lcom/android/launcher2/AppIconView;

    if-eqz v11, :cond_0

    invoke-virtual {v1, v6}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v10, :cond_0

    .line 1463
    invoke-virtual {v1, v6}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v11}, Lcom/android/launcher2/AppIconView;->showBadge()V

    .line 1461
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .end local v6    # "l":I
    :cond_1
    move-object v11, v0

    .line 1467
    check-cast v11, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v11}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 1455
    .end local v1    # "folder":Lcom/android/launcher2/Folder;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1472
    .end local v5    # "k":I
    .end local v10    # "temp":Lcom/android/launcher2/AppItem;
    :cond_3
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_4

    .line 1473
    instance-of v11, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v11, :cond_4

    move-object v11, v0

    .line 1474
    check-cast v11, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v11}, Lcom/android/launcher2/AppIconView;->showBadge()V

    .line 1453
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1450
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1447
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "item":Lcom/android/launcher2/AppItem;
    .end local v4    # "j":I
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1480
    .end local v2    # "i":I
    .end local v7    # "layout":Landroid/view/ViewGroup;
    .end local v8    # "page":Lcom/android/launcher2/CellLayoutMenu;
    :cond_7
    return-void
.end method

.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 6
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
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1540
    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->mHasEntered:Z

    .line 1542
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getTransitionToAllApps()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1543
    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const/16 v3, 0x20

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1000d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(ILjava/lang/String;Z)V

    .line 1545
    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-boolean v1, v1, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    if-eqz v1, :cond_2

    .line 1546
    .local v0, "immediate":Z
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(Lcom/android/launcher2/MenuAppsGrid$State;I)V

    .line 1547
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    .line 1548
    return-void

    .end local v0    # "immediate":Z
    :cond_2
    move v0, v2

    .line 1545
    goto :goto_0
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
    .local p1, "views":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    const/4 v4, 0x1

    .line 1562
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    .line 1563
    .local v2, "v":Lcom/android/launcher2/AppIconView;
    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->showBadge()V

    .line 1564
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V
    invoke-static {v3, v4, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3500(Lcom/android/launcher2/MenuAppsGrid;ZLcom/android/launcher2/AppIconView;)V

    goto :goto_0

    .line 1567
    .end local v2    # "v":Lcom/android/launcher2/AppIconView;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v3}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v3

    if-eq v3, v4, :cond_1

    .line 1568
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1569
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v4, :cond_1

    .line 1573
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    .line 1576
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_1
    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .param p2, "newState"    # Lcom/android/launcher2/MenuAppsGrid$State;
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
    .line 1552
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->mHasEntered:Z

    if-nez v0, :cond_0

    .line 1553
    const-string v0, "Launcher.MenuAppsGrid"

    const-string v1, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :goto_0
    return-void

    .line 1557
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->mHasEntered:Z

    goto :goto_0
.end method

.method public exitItemViews(Ljava/lang/Iterable;)V
    .locals 3
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
    .line 1580
    .local p1, "views":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 1581
    .local v1, "v":Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->hideBadge()V

    goto :goto_0

    .line 1583
    .end local v1    # "v":Lcom/android/launcher2/AppIconView;
    :cond_0
    return-void
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 4
    .param p1, "item"    # Lcom/android/launcher2/AppItem;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 1492
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->isMenuExiting()Z

    move-result v0

    .line 1493
    .local v0, "isMenuExiting":Z
    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 1494
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$StateNormal$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateNormal;Lcom/android/launcher2/AppItem;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->post(Ljava/lang/Runnable;)Z

    .line 1509
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    .line 1511
    :cond_0
    return v3
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->requestFocus()Z

    .line 1487
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->handleDownloadedAppsStateChange()V

    .line 1488
    return-void
.end method

.method public preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 5
    .param p1, "item"    # Lcom/android/launcher2/FolderItem;
    .param p2, "folder"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 1516
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateNormal;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1517
    .local v1, "vg":Landroid/view/ViewGroup;
    const v2, 0x7f0f0025

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1518
    .local v0, "mAddButton":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_0

    if-nez v0, :cond_1

    .line 1536
    :cond_0
    :goto_0
    return-void

    .line 1521
    :cond_1
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateNormal$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/launcher2/MenuAppsGrid$StateNormal$2;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateNormal;Lcom/android/launcher2/Folder;Lcom/android/launcher2/FolderItem;)V

    invoke-virtual {p2, v2}, Lcom/android/launcher2/Folder;->setAddToFolderButtonListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
