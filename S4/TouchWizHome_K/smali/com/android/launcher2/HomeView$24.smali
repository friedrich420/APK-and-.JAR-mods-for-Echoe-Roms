.class Lcom/android/launcher2/HomeView$24;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;

.field final synthetic val$immediate:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Z)V
    .locals 0

    .prologue
    .line 3957
    iput-object p1, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    iput-boolean p2, p0, Lcom/android/launcher2/HomeView$24;->val$immediate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 3960
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1800(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3961
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1800(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3962
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1800(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 3963
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView$24;->val$immediate:Z

    if-eqz v0, :cond_0

    .line 3964
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1800(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3973
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1400(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3974
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView$24;->val$immediate:Z

    if-eqz v0, :cond_1

    .line 3975
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1400(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 3979
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1900(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->removeHotseat:Z
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$200(Lcom/android/launcher2/HomeView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3980
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1900(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3983
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1600(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3984
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1600(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3985
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1600(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/QuickLaunch;->setAlpha(F)V

    .line 3986
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1600(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 3988
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1700(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1700(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3989
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1700(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3990
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1700(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/QuickLaunch;->setAlpha(F)V

    .line 3991
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1700(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 3995
    :cond_4
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView$24;->val$immediate:Z

    if-eqz v0, :cond_6

    .line 3996
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    .line 3997
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 3999
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/HomeView$24;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 4002
    :cond_6
    return-void
.end method
