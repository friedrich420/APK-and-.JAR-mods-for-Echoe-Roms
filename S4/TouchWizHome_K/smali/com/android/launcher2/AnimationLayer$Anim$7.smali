.class Lcom/android/launcher2/AnimationLayer$Anim$7;
.super Ljava/lang/Object;
.source "AnimationLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AnimationLayer$Anim;->setupMoveFadeAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/AnimationLayer$Anim;

.field final synthetic val$animIcon:Landroid/widget/ImageView;

.field final synthetic val$dx:F

.field final synthetic val$dy:F

.field final synthetic val$from:[I


# direct methods
.method constructor <init>(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/widget/ImageView;[IFF)V
    .locals 0

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim$7;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iput-object p2, p0, Lcom/android/launcher2/AnimationLayer$Anim$7;->val$animIcon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/launcher2/AnimationLayer$Anim$7;->val$from:[I

    iput p4, p0, Lcom/android/launcher2/AnimationLayer$Anim$7;->val$dx:F

    iput p5, p0, Lcom/android/launcher2/AnimationLayer$Anim$7;->val$dy:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1117
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1118
    .local v0, "p":F
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim$7;->val$animIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer$Anim$7;->val$from:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/AnimationLayer$Anim$7;->val$dx:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1119
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim$7;->val$animIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer$Anim$7;->val$from:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/AnimationLayer$Anim$7;->val$dy:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1121
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim$7;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 1122
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim$7;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    .line 1123
    return-void
.end method
