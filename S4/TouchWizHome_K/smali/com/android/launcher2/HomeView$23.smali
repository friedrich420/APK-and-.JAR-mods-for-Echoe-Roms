.class Lcom/android/launcher2/HomeView$23;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;

.field final synthetic val$l:Lcom/android/launcher2/AnimationLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/AnimationLayer;)V
    .locals 0

    .prologue
    .line 3726
    iput-object p1, p0, Lcom/android/launcher2/HomeView$23;->this$0:Lcom/android/launcher2/HomeView;

    iput-object p2, p0, Lcom/android/launcher2/HomeView$23;->val$l:Lcom/android/launcher2/AnimationLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v1, 0x8

    .line 3739
    iget-object v0, p0, Lcom/android/launcher2/HomeView$23;->val$l:Lcom/android/launcher2/AnimationLayer;

    if-eqz v0, :cond_0

    .line 3740
    iget-object v0, p0, Lcom/android/launcher2/HomeView$23;->val$l:Lcom/android/launcher2/AnimationLayer;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 3741
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView$23;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1500(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3749
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView$23;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1600(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3750
    iget-object v0, p0, Lcom/android/launcher2/HomeView$23;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1600(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 3752
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeView$23;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1700(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3753
    iget-object v0, p0, Lcom/android/launcher2/HomeView$23;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1700(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 3757
    :cond_3
    # getter for: Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;
    invoke-static {}, Lcom/android/launcher2/HomeView;->access$300()Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 3759
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3729
    # getter for: Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;
    invoke-static {}, Lcom/android/launcher2/HomeView;->access$300()Landroid/os/DVFSHelper;

    move-result-object v0

    const-string v1, "Launcher_touch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    .line 3733
    iget-object v0, p0, Lcom/android/launcher2/HomeView$23;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1400(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3734
    iget-object v0, p0, Lcom/android/launcher2/HomeView$23;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$1400(Lcom/android/launcher2/HomeView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 3735
    :cond_0
    return-void
.end method
