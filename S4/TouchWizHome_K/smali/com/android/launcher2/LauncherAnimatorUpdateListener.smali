.class abstract Lcom/android/launcher2/LauncherAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "LauncherAnimatorUpdateListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract onAnimationUpdate(FF)V
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 26
    .local v1, "b":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v1

    .line 27
    .local v0, "a":F
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/LauncherAnimatorUpdateListener;->onAnimationUpdate(FF)V

    .line 28
    return-void
.end method
