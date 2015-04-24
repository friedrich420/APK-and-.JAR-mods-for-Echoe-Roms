.class Lcom/android/launcher2/MenuAppsGrid$StateEdit;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateEdit"
.end annotation


# instance fields
.field private mGetAppListFlag:Z

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1

    .prologue
    .line 1586
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    .line 1700
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->mGetAppListFlag:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/MenuAppsGrid;
    .param p2, "x1"    # Lcom/android/launcher2/MenuAppsGrid$1;

    .prologue
    .line 1586
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateEdit;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 10
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
    const/4 v8, 0x1

    .line 1600
    iput-boolean v8, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->mHasEntered:Z

    .line 1601
    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v7, :cond_2

    move v4, v8

    .line 1604
    .local v4, "immediate":Z
    :goto_0
    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-object v7, v7, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    .line 1605
    .local v6, "workspace":Lcom/android/launcher2/Workspace;
    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-boolean v7, v7, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-eqz v7, :cond_0

    .line 1606
    if-eqz v4, :cond_3

    .line 1607
    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0d0001

    invoke-virtual {v7, v9, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    .line 1608
    .local v2, "darkenEditAmount":F
    invoke-virtual {v6, v2}, Lcom/android/launcher2/Workspace;->setBackgroundDarken(F)V

    .line 1615
    .end local v2    # "darkenEditAmount":F
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v7}, Lcom/android/launcher2/MenuAppsGrid;->access$3400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    invoke-virtual {v7, p1, v8, v4}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    .line 1616
    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v7, :cond_4

    .line 1648
    :cond_1
    :goto_2
    return-void

    .line 1601
    .end local v4    # "immediate":Z
    .end local v6    # "workspace":Lcom/android/launcher2/Workspace;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1610
    .restart local v4    # "immediate":Z
    .restart local v6    # "workspace":Lcom/android/launcher2/Workspace;
    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mEnterEditModeAnimator:Landroid/animation/Animator;
    invoke-static {v7}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/animation/Animator;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1611
    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mEnterEditModeAnimator:Landroid/animation/Animator;
    invoke-static {v7}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/animation/Animator;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1619
    :cond_4
    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->animatePageZoomOut(Ljava/util/List;Z)V
    invoke-static {v7, p1, v4}, Lcom/android/launcher2/MenuAppsGrid;->access$3700(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Z)V

    .line 1631
    sget-object v7, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 1633
    sget-boolean v7, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v7, :cond_1

    .line 1634
    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v7}, Lcom/android/launcher2/MenuAppsGrid;->access$3400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 1635
    .local v3, "editTitleBar":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1636
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v5

    .line 1638
    .local v5, "loader":Lcom/android/launcher2/ThemeLoader;
    invoke-virtual {v5}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1639
    const v7, 0x7f0f00b2

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1640
    .local v0, "allAppsButton":Landroid/widget/ImageView;
    const-string v7, "all_apps_button_icon"

    invoke-virtual {v5, v7}, Lcom/android/launcher2/ThemeLoader;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1641
    .local v1, "allAppsIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1642
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 0
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
    .line 1698
    .local p1, "views":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 6
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
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v5, 0x0

    .line 1652
    iget-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->mHasEntered:Z

    if-nez v1, :cond_1

    .line 1653
    const-string v1, "Launcher.MenuAppsGrid"

    const-string v2, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :cond_0
    :goto_0
    return-void

    .line 1659
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 1660
    .local v0, "workspace":Lcom/android/launcher2/Workspace;
    if-eqz v0, :cond_2

    .line 1661
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mExitEditModeAnimator:Landroid/animation/Animator;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3800(Lcom/android/launcher2/MenuAppsGrid;)Landroid/animation/Animator;

    move-result-object v2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1662
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mExitEditModeAnimator:Landroid/animation/Animator;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3800(Lcom/android/launcher2/MenuAppsGrid;)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1666
    :cond_2
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v1, :cond_0

    .line 1670
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$3900()Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$4000()Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1673
    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->mHasEntered:Z

    goto :goto_0
.end method

.method public getAppsList()Ljava/util/List;
    .locals 2
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
    .line 1714
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v0

    .line 1715
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    return-object v0
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/AppItem;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1591
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000b

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 1593
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1594
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1595
    const/4 v1, 0x1

    return v1
.end method

.method public preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/FolderItem;
    .param p2, "folder"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 1678
    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher2/MenuAppsGrid$StateEdit$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateEdit;Lcom/android/launcher2/Folder;Lcom/android/launcher2/FolderItem;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/Folder;->setAddToFolderButtonListener(Landroid/view/View$OnClickListener;)V

    .line 1692
    return-void
.end method
