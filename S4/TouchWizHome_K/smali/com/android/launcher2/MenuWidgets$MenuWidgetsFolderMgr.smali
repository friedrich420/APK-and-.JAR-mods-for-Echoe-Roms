.class Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;
.super Ljava/lang/Object;
.source "MenuWidgets.java"

# interfaces
.implements Lcom/android/launcher2/Folder$FolderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuWidgetsFolderMgr"
.end annotation


# instance fields
.field private mAnimateOpen:Z

.field private mIcon:Lcom/android/launcher2/FolderIconView;

.field private mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolderView;Z)V
    .locals 1
    .param p2, "icon"    # Lcom/android/launcher2/WidgetFolderView;
    .param p3, "animateOpen"    # Z

    .prologue
    .line 2546
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2547
    new-instance v0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$1;-><init>(Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;Lcom/android/launcher2/MenuWidgets;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 2558
    iput-boolean p3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mAnimateOpen:Z

    .line 2559
    return-void
.end method

.method private cleanupListener()V
    .locals 2

    .prologue
    .line 2648
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    .line 2649
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2652
    :cond_0
    return-void
.end method


# virtual methods
.method public getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2632
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    return-object v0
.end method

.method public onFolderClose()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2563
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->cleanupListener()V

    .line 2564
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;
    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2500(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;
    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2500(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v2

    iget v0, v2, Lcom/android/launcher2/WidgetFolder;->mExpandDuration:I

    .line 2566
    .local v0, "duration":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2567
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$2;-><init>(Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2588
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # setter for: Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;
    invoke-static {v2, v7}, Lcom/android/launcher2/MenuWidgets;->access$2502(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolder;

    .line 2590
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 2592
    .local v1, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v1, v6}, Lcom/android/launcher2/Launcher;->setEnableMenuButton(Z)V

    .line 2594
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2596
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # invokes: Lcom/android/launcher2/MenuWidgets;->setMenuWidgetsAccessibilityEnabled(Z)V
    invoke-static {v2, v6}, Lcom/android/launcher2/MenuWidgets;->access$2700(Lcom/android/launcher2/MenuWidgets;Z)V

    .line 2598
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v3, 0x7f10006c

    invoke-virtual {v2, v3}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 2599
    return-void

    .line 2564
    .end local v0    # "duration":I
    .end local v1    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_0
    const/16 v0, 0xfa

    goto :goto_0
.end method

.method public onFolderOpen()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2603
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2605
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2607
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0003

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    .line 2608
    .local v2, "targetAlpha":F
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 2609
    iget-boolean v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mAnimateOpen:Z

    if-eqz v3, :cond_1

    .line 2610
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2500(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2500(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v3

    iget v0, v3, Lcom/android/launcher2/WidgetFolder;->mExpandDuration:I

    .line 2611
    .local v0, "duration":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2612
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2620
    .end local v0    # "duration":I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 2621
    .local v1, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v1, v6}, Lcom/android/launcher2/Launcher;->setEnableMenuButton(Z)V

    .line 2623
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v4}, Lcom/android/launcher2/MenuWidgets;->access$2800(Lcom/android/launcher2/MenuWidgets;)Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2625
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # invokes: Lcom/android/launcher2/MenuWidgets;->setMenuWidgetsAccessibilityEnabled(Z)V
    invoke-static {v3, v6}, Lcom/android/launcher2/MenuWidgets;->access$2700(Lcom/android/launcher2/MenuWidgets;Z)V

    .line 2627
    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v4, 0x7f10006b

    invoke-virtual {v3, v4}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 2628
    return-void

    .line 2610
    .end local v1    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_0
    const/16 v0, 0xfa

    goto :goto_0

    .line 2617
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method public setIconView(Lcom/android/launcher2/FolderIconView;)V
    .locals 2
    .param p1, "icon"    # Lcom/android/launcher2/FolderIconView;

    .prologue
    .line 2637
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-ne p1, v0, :cond_1

    .line 2645
    :cond_0
    :goto_0
    return-void

    .line 2640
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->cleanupListener()V

    .line 2641
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    .line 2642
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    .line 2643
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method
