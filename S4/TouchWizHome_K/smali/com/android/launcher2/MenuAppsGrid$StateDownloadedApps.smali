.class Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateDownloadedApps"
.end annotation


# instance fields
.field private mLastPageIndex:I

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1

    .prologue
    .line 2608
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    .line 2613
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->mLastPageIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/MenuAppsGrid;
    .param p2, "x1"    # Lcom/android/launcher2/MenuAppsGrid$1;

    .prologue
    .line 2608
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method

.method private determineLastPageIndex()I
    .locals 1

    .prologue
    .line 2704
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->mHasEntered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->mLastPageIndex:I

    goto :goto_0
.end method


# virtual methods
.method public allowCustomizeGrid()Z
    .locals 1

    .prologue
    .line 2617
    const/4 v0, 0x0

    return v0
.end method

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
    const v8, 0x7f0f00a7

    const/4 v5, 0x1

    .line 2649
    iget-boolean v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->mHasEntered:Z

    if-nez v6, :cond_0

    .line 2650
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->saveLastStatesCurrentPage()V

    .line 2652
    :cond_0
    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->mHasEntered:Z

    .line 2653
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGrid;->access$3400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 2654
    .local v3, "dlTitleBar":Landroid/view/ViewGroup;
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2655
    .local v2, "backContainer":Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2658
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f10004a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100057

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2660
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGrid;->access$3400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v7, :cond_2

    :goto_0
    invoke-virtual {v6, p1, v3, v5}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 2664
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v5, :cond_1

    .line 2665
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v4

    .line 2666
    .local v4, "loader":Lcom/android/launcher2/ThemeLoader;
    invoke-virtual {v4}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2667
    const v5, 0x7f0f00b2

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2668
    .local v0, "allAppsButton":Landroid/widget/ImageView;
    const-string v5, "all_apps_button_icon"

    invoke-virtual {v4, v5}, Lcom/android/launcher2/ThemeLoader;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2669
    .local v1, "allAppsIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 2670
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2675
    .end local v0    # "allAppsButton":Landroid/widget/ImageView;
    .end local v1    # "allAppsIcon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "loader":Lcom/android/launcher2/ThemeLoader;
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->mLastPageIndex:I

    invoke-virtual {v5, v6}, Lcom/android/launcher2/MenuAppsGrid;->initCurrentPage(I)V

    .line 2676
    return-void

    .line 2660
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
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
    .line 2680
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->mHasEntered:Z

    if-nez v0, :cond_0

    .line 2681
    const-string v0, "Launcher.MenuAppsGrid"

    const-string v1, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    :goto_0
    return-void

    .line 2684
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->mLastPageIndex:I

    .line 2685
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->restoreLastStatesCurrentPage()V

    .line 2687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->mHasEntered:Z

    goto :goto_0
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
    .line 2692
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getUninstallableApps()Ljava/util/List;

    move-result-object v1

    .line 2693
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-nez v1, :cond_1

    const/4 v0, -0x1

    .line 2694
    .local v0, "itemCount":I
    :goto_0
    # getter for: Lcom/android/launcher2/MenuAppsGrid;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Launcher.MenuAppsGrid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StateDownloadedApps::getAppsList() item count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    :cond_0
    return-object v1

    .line 2693
    .end local v0    # "itemCount":I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getLastPageIndex()I
    .locals 1

    .prologue
    .line 2708
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->determineLastPageIndex()I

    move-result v0

    .line 2709
    .local v0, "mLastPageIndex":I
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2644
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->handleDownloadedAppsStateChange()V

    .line 2645
    return-void
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/AppItem;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 2622
    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;)V

    .line 2630
    .local v0, "onFinishAnimationRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$2;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps$2;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;Lcom/android/launcher2/AppItem;)V

    invoke-virtual {v1, p2, v2, v0}, Lcom/android/launcher2/MenuAppsGrid;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 2638
    const/4 v1, 0x1

    return v1
.end method

.method public setLastPageIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 2713
    iput p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->mLastPageIndex:I

    .line 2714
    return-void
.end method
