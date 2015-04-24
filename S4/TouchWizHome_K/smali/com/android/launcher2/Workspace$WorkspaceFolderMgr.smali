.class Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher2/Folder$FolderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkspaceFolderMgr"
.end annotation


# instance fields
.field private mAnimateOpen:Z

.field private mIcon:Lcom/android/launcher2/FolderIconView;

.field private mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 1
    .param p2, "icon"    # Lcom/android/launcher2/FolderIconView;
    .param p3, "animateOpen"    # Z

    .prologue
    .line 3234
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3235
    new-instance v0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$1;-><init>(Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;Lcom/android/launcher2/Workspace;)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 3245
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->setIconView(Lcom/android/launcher2/FolderIconView;)V

    .line 3246
    iput-boolean p3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mAnimateOpen:Z

    .line 3247
    return-void
.end method

.method private cleanupListener()V
    .locals 2

    .prologue
    .line 3327
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    .line 3328
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 3331
    :cond_0
    return-void
.end method


# virtual methods
.method public getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 3311
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    return-object v0
.end method

.method public onFolderClose()V
    .locals 4

    .prologue
    .line 3251
    invoke-direct {p0}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->cleanupListener()V

    .line 3252
    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v1

    iget v0, v1, Lcom/android/launcher2/Folder;->mExpandDuration:I

    .line 3253
    .local v0, "duration":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$500(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHomeDarkenLayer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3254
    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$500(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHomeDarkenLayer()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$2;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr$2;-><init>(Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 3266
    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->onFadeStart()V

    .line 3267
    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v2, 0x0

    # setter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v1, v2}, Lcom/android/launcher2/Workspace;->access$1802(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;

    .line 3269
    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->setWorkspaceAccessibilityEnabled(Z)V

    .line 3271
    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v2, 0x7f10006c

    invoke-virtual {v1, v2}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 3272
    return-void

    .line 3252
    .end local v0    # "duration":I
    :cond_0
    const/16 v0, 0xfa

    goto :goto_0
.end method

.method public onFolderOpen()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3276
    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$500(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3277
    const-string v3, "Launcher.Workspace"

    const-string v4, "home fragment was null trying to open folder?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    :goto_0
    return-void

    .line 3280
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$500(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomeDarkenLayer()Landroid/view/View;

    move-result-object v0

    .line 3282
    .local v0, "darkenLayer":Landroid/view/View;
    if-nez v0, :cond_1

    .line 3284
    const-string v3, "Launcher.Workspace"

    const-string v4, "darken layer was null trying to open folder?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3288
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3290
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3291
    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0003

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    .line 3292
    .local v2, "targetAlpha":F
    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;

    move-result-object v3

    iget v1, v3, Lcom/android/launcher2/Folder;->mExpandDuration:I

    .line 3293
    .local v1, "duration":I
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 3294
    iget-boolean v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mAnimateOpen:Z

    if-eqz v3, :cond_3

    .line 3295
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 3296
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 3302
    :goto_2
    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->onFadeStart()V

    .line 3304
    iget-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/Workspace;->setWorkspaceAccessibilityEnabled(Z)V

    .line 3306
    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v4, 0x7f10006b

    invoke-virtual {v3, v4}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto :goto_0

    .line 3292
    .end local v1    # "duration":I
    :cond_2
    const/16 v1, 0xfa

    goto :goto_1

    .line 3300
    .restart local v1    # "duration":I
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2
.end method

.method public setIconView(Lcom/android/launcher2/FolderIconView;)V
    .locals 2
    .param p1, "icon"    # Lcom/android/launcher2/FolderIconView;

    .prologue
    .line 3316
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-ne p1, v0, :cond_1

    .line 3324
    :cond_0
    :goto_0
    return-void

    .line 3319
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->cleanupListener()V

    .line 3320
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    .line 3321
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    .line 3322
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method
