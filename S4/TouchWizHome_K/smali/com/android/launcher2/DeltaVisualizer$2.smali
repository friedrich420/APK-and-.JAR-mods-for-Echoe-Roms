.class Lcom/android/launcher2/DeltaVisualizer$2;
.super Ljava/lang/Object;
.source "DeltaVisualizer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeltaVisualizer;->positioningListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeltaVisualizer;

.field final synthetic val$a:Lcom/android/launcher2/AnimationLayer$Anim;

.field final synthetic val$al:Lcom/android/launcher2/AnimationLayer;

.field final synthetic val$animIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/widget/ImageView;Lcom/android/launcher2/AnimationLayer;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/launcher2/DeltaVisualizer$2;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    iput-object p2, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iput-object p3, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$animIcon:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$al:Lcom/android/launcher2/AnimationLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 280
    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v4

    .line 281
    .local v4, "to":[I
    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v2

    .line 282
    .local v2, "from":[I
    aget v7, v4, v10

    aget v8, v2, v10

    sub-int/2addr v7, v8

    int-to-float v0, v7

    .line 283
    .local v0, "dx":F
    aget v7, v4, v11

    aget v8, v2, v11

    sub-int/2addr v7, v8

    int-to-float v1, v7

    .line 284
    .local v1, "dy":F
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 285
    .local v3, "p":F
    aget v7, v2, v10

    int-to-float v7, v7

    mul-float v8, v0, v3

    add-float v5, v7, v8

    .line 286
    .local v5, "x":F
    aget v7, v2, v11

    int-to-float v7, v7

    mul-float v8, v1, v3

    add-float v6, v7, v8

    .line 288
    .local v6, "y":F
    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$animIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 289
    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$animIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 290
    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$2;->val$al:Lcom/android/launcher2/AnimationLayer;

    aget v8, v2, v10

    aget v9, v2, v11

    aget v10, v4, v10

    aget v11, v4, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/launcher2/AnimationLayer;->invalidate(IIII)V

    .line 291
    return-void
.end method
