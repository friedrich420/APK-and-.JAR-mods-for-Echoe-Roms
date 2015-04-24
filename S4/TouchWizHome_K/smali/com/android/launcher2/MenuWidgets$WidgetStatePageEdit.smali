.class public Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;
.super Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
.source "MenuWidgets.java"

# interfaces
.implements Lcom/android/launcher2/QuickView$QuickViewInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetStatePageEdit"
.end annotation


# instance fields
.field private mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 0

    .prologue
    .line 1750
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method

.method private isQuickViewOpen()Z
    .locals 1

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

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


# virtual methods
.method public enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 5
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
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1760
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setVisibility(I)V

    .line 1761
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuWidgets;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 1762
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-nez v0, :cond_0

    .line 1763
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/MenuView;->getQuickView(Z)Lcom/android/launcher2/QuickViewMainMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    .line 1778
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/QuickViewMainMenu;->setSecretQuickViewMode(Z)V

    .line 1781
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 1782
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const v1, 0x7f100081

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnlyToastId(I)V

    .line 1783
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/QuickViewMainMenu;->setReadOnly(Z)V

    .line 1784
    if-eqz p1, :cond_1

    .line 1785
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->drawOpenAnimation()V

    .line 1786
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher2/MenuTitleBarManager;->slideUpTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Ljava/util/List;)V

    .line 1792
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/MenuWidgets;->setWidgetTextVisible(Z)V

    .line 1794
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->open()V

    .line 1795
    return-void

    .line 1788
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->openInstantly()V

    .line 1789
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(Lcom/android/launcher2/MenuAppsGrid$State;I)V

    goto :goto_0
.end method

.method public exit(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 1799
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->setDirtyFlags()V

    .line 1800
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/MenuWidgets;->setVisibility(I)V

    .line 1801
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->exitWithoutAnimation()V

    .line 1802
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->resetTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1803
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/QuickViewMainMenu;->setSecretQuickViewMode(Z)V

    .line 1804
    return-void
.end method

.method public exitWithAnimation()V
    .locals 1

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1901
    :goto_0
    return-void

    .line 1898
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    .line 1899
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    .line 1900
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method public exitWithoutAnimation()V
    .locals 3

    .prologue
    .line 1904
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1918
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->setWidgetTextVisible(Z)V

    .line 1910
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    .line 1911
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->close()V

    .line 1912
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->getCurrentPage()I

    move-result v0

    .line 1913
    .local v0, "curPage":I
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1914
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuWidgets;->setCurrentPage(I)V

    .line 1916
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->setVisibility(I)V

    .line 1917
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->updateVisiblePages()I

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v0

    return v0
.end method

.method public getNumPages()I
    .locals 1

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getNumSecretPages()I
    .locals 1

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getSecretWidgetPageCount()I

    move-result v0

    return v0
.end method

.method public getPage(I)Landroid/view/View;
    .locals 1
    .param p1, "pageNum"    # I

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageHorizontalOffset()I
    .locals 2

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    # invokes: Lcom/android/launcher2/MenuWidgets;->getDesiredChildPageWidth()I
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgets;->access$2200(Lcom/android/launcher2/MenuWidgets;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPagesLocationOnScreen([I)V
    .locals 1
    .param p1, "location"    # [I

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets;->getLocationOnScreen([I)V

    .line 1844
    return-void
.end method

.method public getPagesTop()I
    .locals 3

    .prologue
    .line 1853
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v1}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1854
    .local v0, "normalTitleBar":Landroid/view/View;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getTop()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public isFolderPage(I)Z
    .locals 1
    .param p1, "pageNum"    # I

    .prologue
    .line 1818
    const/4 v0, 0x0

    return v0
.end method

.method public movePage(II)V
    .locals 0
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 1839
    return-void
.end method

.method public onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher2/HomePendingItem;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1756
    return-void
.end method

.method public onQuickViewCloseAnimationCompleted()V
    .locals 1

    .prologue
    .line 1866
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->isQuickViewOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1867
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->exitWithoutAnimation()V

    .line 1868
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->changeToWidgetStateNormal()V

    .line 1870
    :cond_0
    return-void
.end method

.method public onQuickViewCloseAnimationStarted()V
    .locals 3

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;
    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2300(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuStateAnimatorSet;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuTitleBarManager;->slideDownTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuStateAnimatorSet;)V

    .line 1875
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setWidgetTextVisible(Z)V

    .line 1876
    return-void
.end method

.method public onQuickViewDragEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1886
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/QuickViewMainMenu;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1887
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    # invokes: Lcom/android/launcher2/MenuWidgets;->setDragInProgress(Z)V
    invoke-static {v0, v2}, Lcom/android/launcher2/MenuWidgets;->access$2400(Lcom/android/launcher2/MenuWidgets;Z)V

    .line 1888
    return-void
.end method

.method public onQuickViewDragStart()V
    .locals 3

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1881
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x1

    # invokes: Lcom/android/launcher2/MenuWidgets;->setDragInProgress(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuWidgets;->access$2400(Lcom/android/launcher2/MenuWidgets;Z)V

    .line 1882
    return-void
.end method

.method public refreshModel()V
    .locals 1

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    .line 1923
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 1924
    :cond_0
    return-void
.end method

.method public refreshQuickView(Z)V
    .locals 2
    .param p1, "isSecret"    # Z

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1949
    :goto_0
    return-void

    .line 1942
    :cond_0
    if-eqz p1, :cond_1

    .line 1943
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->setSecretQuickViewMode(Z)V

    .line 1948
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    goto :goto_0

    .line 1945
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->setSecretQuickViewMode(Z)V

    goto :goto_1
.end method

.method public refreshView()V
    .locals 1

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 1929
    return-void
.end method

.method public bridge synthetic restore(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 1750
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->restore(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic save(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 1750
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->save(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveCurrentPageOrder()V
    .locals 0

    .prologue
    .line 1862
    return-void
.end method

.method public setPage(I)V
    .locals 1
    .param p1, "pageNum"    # I

    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets;->setCurrentPage(I)V

    .line 1809
    return-void
.end method

.method updateQuickView()V
    .locals 2

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1933
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->loadLayoutParameters()V

    .line 1934
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->mQuickView:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->requestLayout()V

    .line 1935
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->this$0:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setWidgetTextVisible(Z)V

    .line 1937
    :cond_0
    return-void
.end method
