.class Lcom/android/launcher2/AnimationLayer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AnimationLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AnimationLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AnimationLayer;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$1;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$1;->this$0:Lcom/android/launcher2/AnimationLayer;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/AnimationLayer;->access$002(Lcom/android/launcher2/AnimationLayer;Z)Z

    .line 522
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$1;->this$0:Lcom/android/launcher2/AnimationLayer;

    const/4 v1, 0x1

    # setter for: Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/AnimationLayer;->access$002(Lcom/android/launcher2/AnimationLayer;Z)Z

    .line 517
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$1;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/launcher2/AnimationLayer;->mLastBlockTime:J
    invoke-static {v0, v2, v3}, Lcom/android/launcher2/AnimationLayer;->access$102(Lcom/android/launcher2/AnimationLayer;J)J

    .line 518
    return-void
.end method
