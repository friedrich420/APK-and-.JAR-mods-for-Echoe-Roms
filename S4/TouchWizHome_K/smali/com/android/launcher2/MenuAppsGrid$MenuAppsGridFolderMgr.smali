.class Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Lcom/android/launcher2/Folder$FolderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuAppsGridFolderMgr"
.end annotation


# instance fields
.field private mAnimateOpen:Z

.field private mIcon:Lcom/android/launcher2/FolderIconView;

.field private mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 1
    .param p2, "icon"    # Lcom/android/launcher2/FolderIconView;
    .param p3, "animateOpen"    # Z

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 315
    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->setIconView(Lcom/android/launcher2/FolderIconView;)V

    .line 316
    iput-boolean p3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mAnimateOpen:Z

    .line 317
    return-void
.end method

.method private cleanupListener()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 417
    :cond_0
    return-void
.end method


# virtual methods
.method public getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    return-object v0
.end method

.method public onFolderClose()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 321
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->cleanupListener()V

    .line 322
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v2

    iget v0, v2, Lcom/android/launcher2/Folder;->mExpandDuration:I

    .line 324
    .local v0, "duration":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 325
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

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

    new-instance v3, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr$2;-><init>(Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 347
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->onFadeStart()V

    .line 348
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Folder;->removeFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # setter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v2, v7}, Lcom/android/launcher2/MenuAppsGrid;->access$002(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;

    .line 354
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 356
    .local v1, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v1, v6}, Lcom/android/launcher2/Launcher;->setEnableMenuButton(Z)V

    .line 358
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 360
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setMenuAppsGridAccessibilityEnabled(Z)V
    invoke-static {v2, v6}, Lcom/android/launcher2/MenuAppsGrid;->access$200(Lcom/android/launcher2/MenuAppsGrid;Z)V

    .line 362
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v3, 0x7f10006c

    invoke-virtual {v2, v3}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 363
    return-void

    .line 322
    .end local v0    # "duration":I
    .end local v1    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_1
    const/16 v0, 0xfa

    goto :goto_0
.end method

.method public onFolderOpen()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 367
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 369
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0003

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    .line 372
    .local v2, "targetAlpha":F
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 373
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mAnimateOpen:Z

    if-eqz v3, :cond_1

    .line 374
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;

    move-result-object v3

    iget v0, v3, Lcom/android/launcher2/Folder;->mExpandDuration:I

    .line 375
    .local v0, "duration":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 376
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 384
    .end local v0    # "duration":I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->onFadeStart()V

    .line 385
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 386
    .local v1, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v1, v6}, Lcom/android/launcher2/Launcher;->setEnableMenuButton(Z)V

    .line 388
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsGrid;->access$300(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 390
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setMenuAppsGridAccessibilityEnabled(Z)V
    invoke-static {v3, v6}, Lcom/android/launcher2/MenuAppsGrid;->access$200(Lcom/android/launcher2/MenuAppsGrid;Z)V

    .line 392
    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v4, 0x7f10006b

    invoke-virtual {v3, v4}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 393
    return-void

    .line 374
    .end local v1    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_0
    const/16 v0, 0xfa

    goto :goto_0

    .line 381
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method public setIconView(Lcom/android/launcher2/FolderIconView;)V
    .locals 2
    .param p1, "icon"    # Lcom/android/launcher2/FolderIconView;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-ne p1, v0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->cleanupListener()V

    .line 406
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    .line 407
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method
