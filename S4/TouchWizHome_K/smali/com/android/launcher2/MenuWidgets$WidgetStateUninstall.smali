.class Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;
.super Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetStateUninstall"
.end annotation


# instance fields
.field private mUninstallOverlay:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 0

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/MenuWidgets;
    .param p2, "x1"    # Lcom/android/launcher2/MenuWidgets$1;

    .prologue
    .line 1558
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method


# virtual methods
.method public enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 9
    .param p1, "oldState"    # Lcom/android/launcher2/MenuWidgets$WidgetState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1580
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v7}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 1581
    .local v6, "uninstallTitleBar":Landroid/view/ViewGroup;
    if-eqz v6, :cond_1

    .line 1583
    if-nez p1, :cond_3

    const/4 v2, 0x1

    .line 1584
    .local v2, "immediate":Z
    :goto_0
    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v7}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v7

    invoke-virtual {v7, p2, v6, v2}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 1586
    const v7, 0x7f0f00a7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1587
    .local v4, "mBackButton":Landroid/view/View;
    new-instance v7, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall$1;

    invoke-direct {v7, p0}, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall$1;-><init>(Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1593
    const v7, 0x7f0f00b5

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1594
    .local v5, "mBackText":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 1595
    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100049

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1597
    :cond_0
    sget-boolean v7, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v7, :cond_1

    .line 1598
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v3

    .line 1599
    .local v3, "loader":Lcom/android/launcher2/ThemeLoader;
    invoke-virtual {v3}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1600
    const v7, 0x7f0f00b2

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1601
    .local v0, "allAppsButton":Landroid/widget/ImageView;
    const-string v7, "all_apps_button_icon"

    invoke-virtual {v3, v7}, Lcom/android/launcher2/ThemeLoader;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1602
    .local v1, "allAppsIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1603
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1608
    .end local v0    # "allAppsButton":Landroid/widget/ImageView;
    .end local v1    # "allAppsIcon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "immediate":Z
    .end local v3    # "loader":Lcom/android/launcher2/ThemeLoader;
    .end local v4    # "mBackButton":Landroid/view/View;
    .end local v5    # "mBackText":Landroid/widget/TextView;
    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_2

    .line 1609
    iget-object v7, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200ea

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    .line 1612
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->refreshModel()V

    .line 1613
    return-void

    .line 1583
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public exit(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 6
    .param p1, "newState"    # Lcom/android/launcher2/MenuWidgets$WidgetState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v5, 0x0

    .line 1617
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1618
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1620
    .local v3, "page":Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_1

    .line 1621
    invoke-virtual {v3, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1622
    .local v2, "obj":Landroid/view/View;
    instance-of v4, v2, Lcom/android/launcher2/WidgetFolderView;

    if-eqz v4, :cond_0

    move-object v4, v2

    .line 1623
    check-cast v4, Lcom/android/launcher2/WidgetFolderView;

    invoke-virtual {v4}, Lcom/android/launcher2/WidgetFolderView;->showArrowBtn()V

    .line 1624
    check-cast v2, Lcom/android/launcher2/WidgetFolderView;

    .end local v2    # "obj":Landroid/view/View;
    invoke-virtual {v2, v5}, Lcom/android/launcher2/WidgetFolderView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 1620
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1627
    .restart local v2    # "obj":Landroid/view/View;
    :cond_0
    check-cast v2, Lcom/android/launcher2/PagedViewWidget;

    .end local v2    # "obj":Landroid/view/View;
    invoke-virtual {v2, v5}, Lcom/android/launcher2/PagedViewWidget;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1617
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1630
    .end local v1    # "j":I
    .end local v3    # "page":Lcom/android/launcher2/PagedViewGridLayout;
    :cond_2
    return-void
.end method

.method public onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/HomePendingItem;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets;->isUninstallable(Lcom/android/launcher2/HomePendingItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1565
    instance-of v0, p2, Lcom/android/launcher2/WidgetFolderView;

    if-eqz v0, :cond_1

    .line 1566
    iget-object v0, p1, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lcom/android/launcher2/WidgetFolderView;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/launcher2/WidgetFolderView;->getWidgetFolderTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;)V

    .line 1576
    :cond_0
    :goto_0
    return-void

    .line 1570
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    instance-of v0, p2, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v0, :cond_0

    .line 1571
    iget-object v0, p1, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/HomePendingItem;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method public refreshModel()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1641
    iget-object v9, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 1642
    iget-object v9, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v9, v1}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1643
    .local v5, "page":Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v5}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_4

    .line 1644
    invoke-virtual {v5, v3}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1645
    .local v4, "object":Landroid/view/View;
    instance-of v9, v4, Lcom/android/launcher2/WidgetFolderView;

    if-eqz v9, :cond_2

    move-object v0, v4

    .line 1646
    check-cast v0, Lcom/android/launcher2/WidgetFolderView;

    .line 1647
    .local v0, "folder":Lcom/android/launcher2/WidgetFolderView;
    invoke-virtual {v0}, Lcom/android/launcher2/WidgetFolderView;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 1648
    .local v6, "tag":Ljava/lang/Object;
    instance-of v9, v6, Lcom/android/launcher2/HomePendingItem;

    if-eqz v9, :cond_0

    move-object v2, v6

    .line 1649
    check-cast v2, Lcom/android/launcher2/HomePendingItem;

    .line 1650
    .local v2, "item":Lcom/android/launcher2/HomePendingItem;
    iget-object v9, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v9, v2}, Lcom/android/launcher2/MenuWidgets;->isUninstallable(Lcom/android/launcher2/HomePendingItem;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1654
    iget-object v9, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9}, Lcom/android/launcher2/WidgetFolderView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 1655
    invoke-virtual {v0}, Lcom/android/launcher2/WidgetFolderView;->hideArrowBtn()V

    .line 1643
    .end local v0    # "folder":Lcom/android/launcher2/WidgetFolderView;
    .end local v2    # "item":Lcom/android/launcher2/HomePendingItem;
    .end local v6    # "tag":Ljava/lang/Object;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1658
    .restart local v0    # "folder":Lcom/android/launcher2/WidgetFolderView;
    .restart local v2    # "item":Lcom/android/launcher2/HomePendingItem;
    .restart local v6    # "tag":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0, v10}, Lcom/android/launcher2/WidgetFolderView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1661
    .end local v0    # "folder":Lcom/android/launcher2/WidgetFolderView;
    .end local v2    # "item":Lcom/android/launcher2/HomePendingItem;
    .end local v6    # "tag":Ljava/lang/Object;
    :cond_2
    instance-of v9, v4, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v9, :cond_0

    move-object v7, v4

    .line 1662
    check-cast v7, Lcom/android/launcher2/PagedViewWidget;

    .line 1663
    .local v7, "widget":Lcom/android/launcher2/PagedViewWidget;
    invoke-virtual {v7}, Lcom/android/launcher2/PagedViewWidget;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 1664
    .restart local v6    # "tag":Ljava/lang/Object;
    instance-of v9, v6, Lcom/android/launcher2/HomePendingItem;

    if-eqz v9, :cond_0

    move-object v2, v6

    .line 1665
    check-cast v2, Lcom/android/launcher2/HomePendingItem;

    .line 1666
    .restart local v2    # "item":Lcom/android/launcher2/HomePendingItem;
    iget-object v9, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v9, v2}, Lcom/android/launcher2/MenuWidgets;->isUninstallable(Lcom/android/launcher2/HomePendingItem;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1670
    iget-object v9, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v9}, Lcom/android/launcher2/PagedViewWidget;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1673
    :cond_3
    invoke-virtual {v7, v10}, Lcom/android/launcher2/PagedViewWidget;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1641
    .end local v2    # "item":Lcom/android/launcher2/HomePendingItem;
    .end local v4    # "object":Landroid/view/View;
    .end local v6    # "tag":Ljava/lang/Object;
    .end local v7    # "widget":Lcom/android/launcher2/PagedViewWidget;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1679
    .end local v3    # "j":I
    .end local v5    # "page":Lcom/android/launcher2/PagedViewGridLayout;
    :cond_5
    iget-object v9, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuWidgets;->getWidgetFolder()Lcom/android/launcher2/WidgetFolder;

    move-result-object v8

    .line 1680
    .local v8, "widgetFolder":Lcom/android/launcher2/WidgetFolder;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1681
    iget-object v9, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuWidgets;->closeFolder()Z

    .line 1683
    :cond_6
    return-void
.end method
