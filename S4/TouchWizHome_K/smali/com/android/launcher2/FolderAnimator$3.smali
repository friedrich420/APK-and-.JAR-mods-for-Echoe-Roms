.class Lcom/android/launcher2/FolderAnimator$3;
.super Ljava/lang/Object;
.source "FolderAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderAnimator;

.field final synthetic val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

.field final synthetic val$animateScale:Z

.field final synthetic val$from:[I

.field final synthetic val$fromAlpha:F

.field final synthetic val$fromPlate:Z

.field final synthetic val$iconScale:F

.field final synthetic val$offset:[I

.field final synthetic val$scale:F

.field final synthetic val$toAlpha:F


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator;[ILcom/android/launcher2/AnimationLayer$Anim;Z[IZFFFF)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    iput-object p2, p0, Lcom/android/launcher2/FolderAnimator$3;->val$offset:[I

    iput-object p3, p0, Lcom/android/launcher2/FolderAnimator$3;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iput-boolean p4, p0, Lcom/android/launcher2/FolderAnimator$3;->val$fromPlate:Z

    iput-object p5, p0, Lcom/android/launcher2/FolderAnimator$3;->val$from:[I

    iput-boolean p6, p0, Lcom/android/launcher2/FolderAnimator$3;->val$animateScale:Z

    iput p7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$iconScale:F

    iput p8, p0, Lcom/android/launcher2/FolderAnimator$3;->val$scale:F

    iput p9, p0, Lcom/android/launcher2/FolderAnimator$3;->val$fromAlpha:F

    iput p10, p0, Lcom/android/launcher2/FolderAnimator$3;->val$toAlpha:F

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

    .line 440
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 441
    .local v3, "progress":F
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    # invokes: Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I
    invoke-static {v7}, Lcom/android/launcher2/FolderAnimator;->access$200(Lcom/android/launcher2/FolderAnimator;)[I

    move-result-object v0

    .line 443
    .local v0, "loc":[I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 444
    .local v2, "parentScale":F
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v7}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 445
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;
    invoke-static {v7}, Lcom/android/launcher2/FolderAnimator;->access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 446
    .local v1, "p":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 447
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1    # "p":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 448
    .restart local v1    # "p":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    .line 454
    .end local v1    # "p":Landroid/view/View;
    :cond_0
    aget v7, v0, v10

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$3;->val$offset:[I

    aget v8, v8, v10

    add-int/2addr v7, v8

    int-to-float v5, v7

    .line 455
    .local v5, "x":F
    aget v7, v0, v11

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$3;->val$offset:[I

    aget v8, v8, v11

    add-int/2addr v7, v8

    int-to-float v6, v7

    .line 457
    .local v6, "y":F
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-nez v7, :cond_1

    .line 458
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    # invokes: Lcom/android/launcher2/FolderAnimator;->getNewImageView()Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/android/launcher2/FolderAnimator;->access$300(Lcom/android/launcher2/FolderAnimator;)Landroid/widget/ImageView;

    move-result-object v8

    iput-object v8, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 459
    :cond_1
    iget-boolean v7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$fromPlate:Z

    if-eqz v7, :cond_2

    .line 460
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$3;->val$from:[I

    aget v8, v8, v10

    int-to-float v8, v8

    invoke-static {v8, v5, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 461
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$3;->val$from:[I

    aget v8, v8, v11

    int-to-float v8, v8

    invoke-static {v8, v6, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 474
    :goto_0
    iget v7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$iconScale:F

    mul-float v4, v2, v7

    .line 475
    .local v4, "s":F
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/launcher2/FolderAnimator$3;->val$scale:F

    invoke-static {v8, v4, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 476
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/launcher2/FolderAnimator$3;->val$scale:F

    invoke-static {v8, v4, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 477
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/launcher2/FolderAnimator$3;->val$fromAlpha:F

    iget v9, p0, Lcom/android/launcher2/FolderAnimator$3;->val$toAlpha:F

    invoke-static {v8, v9, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 486
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->invalidate()V

    .line 487
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$3;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;
    invoke-static {v7}, Lcom/android/launcher2/FolderAnimator;->access$100(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/AnimationLayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    .line 488
    return-void

    .line 463
    .end local v4    # "s":F
    :cond_2
    iget-boolean v7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$animateScale:Z

    if-nez v7, :cond_3

    .line 466
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v8, v0, v10

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator$3;->val$from:[I

    aget v9, v9, v10

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v8, v5, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 467
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v8, v0, v11

    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator$3;->val$from:[I

    aget v9, v9, v11

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v8, v6, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_0

    .line 469
    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$3;->val$from:[I

    aget v8, v8, v10

    int-to-float v8, v8

    invoke-static {v8, v5, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 470
    iget-object v7, p0, Lcom/android/launcher2/FolderAnimator$3;->val$anim:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator$3;->val$from:[I

    aget v8, v8, v11

    int-to-float v8, v8

    invoke-static {v8, v6, v3}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto/16 :goto_0
.end method
