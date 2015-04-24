.class Lcom/android/launcher2/DeltaVisualizer$5;
.super Ljava/lang/Object;
.source "DeltaVisualizer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeltaVisualizer;->bounceListner(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
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

.field final synthetic val$from:[I

.field final synthetic val$viewParent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;[ILandroid/view/View;Landroid/widget/ImageView;Lcom/android/launcher2/AnimationLayer;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/launcher2/DeltaVisualizer$5;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    iput-object p2, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    iput-object p3, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$from:[I

    iput-object p4, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$viewParent:Landroid/view/View;

    iput-object p5, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$animIcon:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$al:Lcom/android/launcher2/AnimationLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 336
    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$5;->this$0:Lcom/android/launcher2/DeltaVisualizer;

    # getter for: Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z
    invoke-static {v7}, Lcom/android/launcher2/DeltaVisualizer;->access$400(Lcom/android/launcher2/DeltaVisualizer;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 353
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$a:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v6

    .line 338
    .local v6, "to":[I
    const/4 v7, 0x0

    aget v7, v6, v7

    iget-object v8, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$from:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int/2addr v7, v8

    int-to-float v0, v7

    .line 339
    .local v0, "dx":F
    const/4 v7, 0x1

    aget v7, v6, v7

    iget-object v8, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$from:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v7, v8

    int-to-float v1, v7

    .line 340
    .local v1, "dy":F
    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v2, v8

    .line 341
    .local v2, "m":F
    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-eqz v7, :cond_1

    div-float/2addr v0, v2

    .line 342
    :cond_1
    const/4 v7, 0x0

    cmpl-float v7, v1, v7

    if-eqz v7, :cond_2

    div-float/2addr v1, v2

    .line 344
    :cond_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 345
    .local v3, "p":F
    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float v8, v3, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v3, v7, v8

    .line 347
    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$viewParent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v7

    const v8, 0x3cf5c28f    # 0.03f

    mul-float/2addr v8, v3

    add-float v4, v7, v8

    .line 348
    .local v4, "sx":F
    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$viewParent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v7

    const v8, 0x3cf5c28f    # 0.03f

    mul-float/2addr v8, v3

    add-float v5, v7, v8

    .line 349
    .local v5, "sy":F
    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$animIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 350
    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$animIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 352
    iget-object v7, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$al:Lcom/android/launcher2/AnimationLayer;

    iget-object v8, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$from:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v9, p0, Lcom/android/launcher2/DeltaVisualizer$5;->val$from:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x1

    aget v11, v6, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/launcher2/AnimationLayer;->invalidate(IIII)V

    goto/16 :goto_0
.end method
