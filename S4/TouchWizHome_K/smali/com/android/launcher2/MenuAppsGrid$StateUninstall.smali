.class Lcom/android/launcher2/MenuAppsGrid$StateUninstall;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateUninstall"
.end annotation


# instance fields
.field launcher:Lcom/android/launcher2/Launcher;

.field private mDisableOverlay:Landroid/graphics/drawable/Drawable;

.field private mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;

.field private mUninstallOverlay:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1

    .prologue
    .line 2489
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    .line 2493
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->launcher:Lcom/android/launcher2/Launcher;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/MenuAppsGrid;
    .param p2, "x1"    # Lcom/android/launcher2/MenuAppsGrid$1;

    .prologue
    .line 2489
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/launcher2/MenuAppsGrid$StateUninstall;)Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;

    return-object v0
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
    const/4 v6, 0x1

    .line 2517
    iget-boolean v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mHasEntered:Z

    if-nez v7, :cond_0

    .line 2518
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->saveLastStatesCurrentPage()V

    .line 2520
    :cond_0
    iput-boolean v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mHasEntered:Z

    .line 2521
    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v7}, Lcom/android/launcher2/MenuAppsGrid;->access$3400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v9, :cond_3

    :goto_0
    invoke-virtual {v7, p1, v8, v6}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    .line 2522
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsGrid;->access$3400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 2525
    .local v5, "uninstallBar":Landroid/view/View;
    const v6, 0x7f0f00a7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2526
    .local v3, "mBackButton":Landroid/view/View;
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1000d9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2527
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v6, :cond_1

    .line 2528
    const v6, 0x7f0f00b5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2529
    .local v4, "mBackText":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100034

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2530
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100057

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2532
    .end local v4    # "mBackText":Landroid/widget/TextView;
    :cond_1
    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 2533
    new-instance v6, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;

    invoke-direct {v6, p0}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateUninstall;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2550
    sget-boolean v6, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v6, :cond_2

    .line 2551
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v2

    .line 2552
    .local v2, "loader":Lcom/android/launcher2/ThemeLoader;
    invoke-virtual {v2}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2553
    const v6, 0x7f0f00b2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2554
    .local v0, "allAppsButton":Landroid/widget/ImageView;
    const-string v6, "all_apps_button_icon"

    invoke-virtual {v2, v6}, Lcom/android/launcher2/ThemeLoader;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2555
    .local v1, "allAppsIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 2556
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2560
    .end local v0    # "allAppsButton":Landroid/widget/ImageView;
    .end local v1    # "allAppsIcon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "loader":Lcom/android/launcher2/ThemeLoader;
    :cond_2
    return-void

    .line 2521
    .end local v3    # "mBackButton":Landroid/view/View;
    .end local v5    # "uninstallBar":Landroid/view/View;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0
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
    .line 2583
    .local p1, "views":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 2584
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    .line 2587
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mDisableOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 2588
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020147

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mDisableOverlay:Landroid/graphics/drawable/Drawable;

    .line 2592
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    .line 2593
    .local v2, "v":Lcom/android/launcher2/AppIconView;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v4, 0x1

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V
    invoke-static {v3, v4, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3500(Lcom/android/launcher2/MenuAppsGrid;ZLcom/android/launcher2/AppIconView;)V

    .line 2594
    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 2595
    .local v1, "item":Lcom/android/launcher2/AppItem;
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/MenuAppModel;->canRemovable(Lcom/android/launcher2/AppItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2596
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2598
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    .end local v2    # "v":Lcom/android/launcher2/AppIconView;
    :cond_3
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
    .line 2564
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mHasEntered:Z

    if-nez v0, :cond_0

    .line 2565
    const-string v0, "Launcher.MenuAppsGrid"

    const-string v1, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    :goto_0
    return-void

    .line 2568
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->restoreLastStatesCurrentPage()V

    .line 2569
    # getter for: Lcom/android/launcher2/MenuAppsGrid;->sHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$4500()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$2;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateUninstall;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mHasEntered:Z

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
    .line 2602
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

    .line 2603
    .local v1, "v":Lcom/android/launcher2/AppIconView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2605
    .end local v1    # "v":Lcom/android/launcher2/AppIconView;
    :cond_0
    return-void
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 4
    .param p1, "item"    # Lcom/android/launcher2/AppItem;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 2498
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000b

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 2500
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2501
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2503
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2504
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/MenuAppModel;->canUninstallable(Lcom/android/launcher2/AppItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2505
    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;)V

    .line 2512
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 2508
    :cond_1
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/MenuAppModel;->canDisableable(Lcom/android/launcher2/AppItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2509
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Launcher;->callDisableDialog(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0
.end method
