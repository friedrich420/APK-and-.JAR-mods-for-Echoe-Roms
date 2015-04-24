.class public Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;
.super Lcom/android/launcher2/MenuAppsGrid$StateObj;
.source "MenuAppsGrid.java"

# interfaces
.implements Lcom/android/launcher2/QuickView$QuickViewInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatePageEdit"
.end annotation


# instance fields
.field private mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 0

    .prologue
    .line 3153
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic allowCustomizeGrid()Z
    .locals 1

    .prologue
    .line 3153
    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->allowCustomizeGrid()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic appBadgeUpdated(Ljava/util/List;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 3153
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->appBadgeUpdated(Ljava/util/List;)V

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
    const v5, 0x7f100080

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3259
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$5200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v1

    sget-object v4, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v1, v4, :cond_2

    move v0, v2

    .line 3260
    .local v0, "isAlphaGrid":Z
    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mHasEntered:Z

    .line 3262
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-nez v1, :cond_0

    .line 3263
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuView;->getQuickView(Z)Lcom/android/launcher2/QuickViewMainMenu;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    .line 3264
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnlyToastId(I)V

    .line 3266
    :cond_0
    if-ne v0, v2, :cond_1

    .line 3267
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnlyToastId(I)V

    .line 3269
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->setHideItems(Z)V

    .line 3271
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher2/MenuAppsGrid;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 3273
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->syncPages()V

    .line 3302
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/QuickViewMainMenu;->setSecretQuickViewMode(Z)V

    .line 3304
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 3305
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnly(Z)V

    .line 3306
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v1, :cond_3

    .line 3307
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->drawOpenAnimation()V

    .line 3308
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v3, p1}, Lcom/android/launcher2/MenuTitleBarManager;->slideUpTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Ljava/util/List;)V

    .line 3313
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iput-boolean v2, v1, Lcom/android/launcher2/MenuAppsGrid;->mBlockHardwareLayers:Z

    .line 3314
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->open()V

    .line 3315
    return-void

    .end local v0    # "isAlphaGrid":Z
    :cond_2
    move v0, v3

    .line 3259
    goto :goto_0

    .line 3310
    .restart local v0    # "isAlphaGrid":Z
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->openInstantly()V

    .line 3311
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(Lcom/android/launcher2/MenuAppsGrid$State;I)V

    goto :goto_1
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 2
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
    .line 3405
    .local p1, "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItems(ZLjava/lang/Iterable;)V
    invoke-static {v0, v1, p1}, Lcom/android/launcher2/MenuAppsGrid;->access$5400(Lcom/android/launcher2/MenuAppsGrid;ZLjava/lang/Iterable;)V

    .line 3406
    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 3319
    iget-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mHasEntered:Z

    if-nez v1, :cond_0

    .line 3320
    const-string v1, "Launcher.MenuAppsGrid"

    const-string v2, "Trying to exit a state that hasn\'t been entered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    :goto_0
    return-void

    .line 3324
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->setHideItems(Z)V

    .line 3325
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->setDirtyFlags()V

    .line 3327
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    .line 3328
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->close()V

    .line 3329
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->getCurrentPage()I

    move-result v0

    .line 3335
    .local v0, "curPage":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3336
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuAppsGrid;->setCurrentPage(I)V

    .line 3338
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->setVisibility(I)V

    .line 3339
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->showPageIndicator(Z)V

    .line 3340
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->updateVisiblePages()I

    .line 3342
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mHasEntered:Z

    .line 3343
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iput-boolean v2, v1, Lcom/android/launcher2/MenuAppsGrid;->mBlockHardwareLayers:Z

    .line 3344
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->setSecretQuickViewMode(Z)V

    goto :goto_0
.end method

.method public bridge synthetic exitItemViews(Ljava/lang/Iterable;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Iterable;

    .prologue
    .line 3153
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    return-void
.end method

.method public exitWithAnimaton()V
    .locals 1

    .prologue
    .line 3352
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3358
    :goto_0
    return-void

    .line 3355
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    .line 3356
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    .line 3357
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method public exitWithoutAnimation()V
    .locals 3

    .prologue
    .line 3361
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3367
    :goto_0
    return-void

    .line 3365
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItems(ZLjava/lang/Iterable;)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$5400(Lcom/android/launcher2/MenuAppsGrid;ZLjava/lang/Iterable;)V

    .line 3366
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method

.method public bridge synthetic getAppsList()Ljava/util/List;
    .locals 1

    .prologue
    .line 3153
    invoke-super {p0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->getAppsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 3170
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public getNumPages()I
    .locals 1

    .prologue
    .line 3207
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getNumSecretPages()I
    .locals 1

    .prologue
    .line 3212
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getMenuSecretPageCnt()I

    move-result v0

    return v0
.end method

.method public getPage(I)Landroid/view/View;
    .locals 1
    .param p1, "pageNum"    # I

    .prologue
    .line 3180
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageHorizontalOffset()I
    .locals 4

    .prologue
    .line 3195
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getWidth()I

    move-result v1

    .line 3196
    .local v1, "w":I
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 3197
    .local v0, "s":I
    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getPageSpacing()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public getPagesLocationOnScreen([I)V
    .locals 1
    .param p1, "location"    # [I

    .prologue
    .line 3190
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getLocationOnScreen([I)V

    .line 3191
    return-void
.end method

.method public getPagesTop()I
    .locals 2

    .prologue
    .line 3202
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getTitleBarHight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isFolderPage(I)Z
    .locals 1
    .param p1, "pageNum"    # I

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->isFolderPage(I)Z

    move-result v0

    return v0
.end method

.method public isQuickViewOpen()Z
    .locals 1

    .prologue
    .line 3348
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public movePage(II)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 3185
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-static {v0, p1, p2}, Lcom/android/launcher2/QuickViewMainMenu;->zOrderTweakMoveChild(Landroid/view/ViewGroup;II)V

    .line 3186
    return-void
.end method

.method public onAppModelUpdated()V
    .locals 1

    .prologue
    .line 3378
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    .line 3379
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 3381
    :cond_0
    return-void
.end method

.method public onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/AppItem;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 3160
    const/4 v0, 0x0

    return v0
.end method

.method public onQuickViewCloseAnimationCompleted()V
    .locals 2

    .prologue
    .line 3239
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3240
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 3242
    :cond_0
    return-void
.end method

.method public onQuickViewCloseAnimationStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3231
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$5100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuStateAnimatorSet;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuTitleBarManager;->slideDownTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuStateAnimatorSet;)V

    .line 3232
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/MenuAppsGrid;->showPageIndicator(Z)V

    .line 3234
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItems(ZLjava/lang/Iterable;)V
    invoke-static {v0, v3, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$5400(Lcom/android/launcher2/MenuAppsGrid;ZLjava/lang/Iterable;)V

    .line 3235
    return-void
.end method

.method public onQuickViewDragEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3252
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V
    invoke-static {v0, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$5500(Lcom/android/launcher2/MenuAppsGrid;Z)V

    .line 3253
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/QuickViewMainMenu;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3254
    return-void
.end method

.method public onQuickViewDragStart()V
    .locals 3

    .prologue
    .line 3246
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x1

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$5500(Lcom/android/launcher2/MenuAppsGrid;Z)V

    .line 3247
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3248
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 3371
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    .line 3372
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 3374
    :cond_0
    return-void
.end method

.method public bridge synthetic preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/FolderItem;
    .param p2, "x1"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 3153
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V

    return-void
.end method

.method public refreshQuickView(Z)V
    .locals 2
    .param p1, "isSecret"    # Z

    .prologue
    .line 3391
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3401
    :goto_0
    return-void

    .line 3394
    :cond_0
    if-eqz p1, :cond_1

    .line 3395
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->setSecretQuickViewMode(Z)V

    .line 3400
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    goto :goto_0

    .line 3397
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->setSecretQuickViewMode(Z)V

    goto :goto_1
.end method

.method public bridge synthetic restore(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 3153
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->restore(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic save(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 3153
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->save(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveCurrentPageOrder()V
    .locals 5

    .prologue
    .line 3217
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 3219
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v3

    .line 3220
    .local v3, "numPages":I
    const/4 v0, 0x0

    .local v0, "curPage":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 3221
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 3222
    .local v2, "item":Lcom/android/launcher2/BaseItem;
    iput v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    goto :goto_1

    .line 3220
    .end local v2    # "item":Lcom/android/launcher2/BaseItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3226
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 3227
    return-void
.end method

.method public setPage(I)V
    .locals 1
    .param p1, "pageNum"    # I

    .prologue
    .line 3165
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setCurrentPage(I)V

    .line 3166
    return-void
.end method

.method updateQuickView()V
    .locals 1

    .prologue
    .line 3384
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    .line 3385
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->loadLayoutParameters()V

    .line 3386
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->requestLayout()V

    .line 3388
    :cond_0
    return-void
.end method
