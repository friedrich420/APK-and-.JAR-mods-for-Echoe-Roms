.class Lcom/android/launcher2/FolderAnimator$2;
.super Ljava/lang/Object;
.source "FolderAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderAnimator;->bounceItemInIconAt(Lcom/android/launcher2/BaseItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderAnimator;

.field final synthetic val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

.field final synthetic val$dest:[I

.field final synthetic val$up:[I


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;[I[I)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$2;->this$0:Lcom/android/launcher2/FolderAnimator;

    iput-object p2, p0, Lcom/android/launcher2/FolderAnimator$2;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iput-object p3, p0, Lcom/android/launcher2/FolderAnimator$2;->val$dest:[I

    iput-object p4, p0, Lcom/android/launcher2/FolderAnimator$2;->val$up:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 253
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 258
    .local v1, "progress":F
    const v3, 0x40cbd70a    # 6.37f

    mul-float/2addr v3, v1

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    sub-float v3, v6, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v2, v3, v4

    .line 259
    .local v2, "upRate":F
    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v3, v1

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 261
    .local v0, "fadeRate":F
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator$2;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator$2;->val$dest:[I

    aget v4, v4, v7

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$2;->val$up:[I

    aget v5, v5, v7

    int-to-float v5, v5

    invoke-static {v4, v5, v2}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 262
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator$2;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator$2;->val$dest:[I

    aget v4, v4, v8

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator$2;->val$up:[I

    aget v5, v5, v8

    int-to-float v5, v5

    invoke-static {v4, v5, v2}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 264
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator$2;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-static {v4, v6, v0}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 265
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator$2;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;
    invoke-static {v3}, Lcom/android/launcher2/FolderAnimator;->access$100(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    .line 266
    return-void
.end method
