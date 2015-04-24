.class public Lcom/android/launcher2/PageIndicator$Page;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Page"
.end annotation


# instance fields
.field protected mAnimationDuration:I

.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mDrawState:I

.field private mIsDraggedOn:Z

.field private mPrevDrawState:I

.field final synthetic this$0:Lcom/android/launcher2/PageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/PageIndicator;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 666
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    .line 657
    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    .line 659
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 660
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationDuration:I

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mIsDraggedOn:Z

    .line 667
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIFF[Z)Z
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pageView"    # Lcom/android/launcher2/PagedView;
    .param p3, "index"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "previewAlpha"    # F
    .param p7, "scale"    # F
    .param p8, "indicator"    # [Z

    .prologue
    .line 704
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    # getter for: Lcom/android/launcher2/PageIndicator;->mGrowBy:F
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$100(Lcom/android/launcher2/PageIndicator;)F

    move-result v4

    mul-float v4, v4, p7

    float-to-int v2, v4

    .line 705
    .local v2, "grow":I
    const/4 v1, 0x0

    .line 707
    .local v1, "focus":Z
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    # getter for: Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$200(Lcom/android/launcher2/PageIndicator;)Lcom/android/launcher2/ScalarAnimator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v3

    .line 708
    .local v3, "modeFactor":F
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    # getter for: Lcom/android/launcher2/PageIndicator;->mIsHiding:Z
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$300(Lcom/android/launcher2/PageIndicator;)Z

    move-result v4

    if-eqz v4, :cond_1

    move/from16 v0, p7

    .line 709
    .local v0, "alpha":F
    :goto_0
    mul-float/2addr v0, p6

    .line 710
    if-lez v2, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v4

    const/16 v5, 0x258

    if-lt v4, v5, :cond_4

    .line 711
    const/4 v4, 0x0

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_2

    .line 712
    const/4 v1, 0x1

    .line 713
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    # getter for: Lcom/android/launcher2/PageIndicator;->mFocustDefaultPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$400(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 714
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    # getter for: Lcom/android/launcher2/PageIndicator;->mFocustDefaultPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$400(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 715
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    # getter for: Lcom/android/launcher2/PageIndicator;->mFocustDefaultPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$400(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 758
    :goto_1
    if-nez v1, :cond_0

    .line 759
    const/4 v4, 0x1

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_c

    .line 760
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mCameraPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 779
    :cond_0
    :goto_2
    iget v4, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_13

    const/4 v4, 0x1

    :goto_3
    return v4

    .line 708
    .end local v0    # "alpha":F
    :cond_1
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v4, v4, p7

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v3

    mul-float v0, v4, v5

    goto :goto_0

    .line 717
    .restart local v0    # "alpha":F
    :cond_2
    const/4 v1, 0x1

    .line 718
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/PageIndicator$Page;->isFolderPage(Lcom/android/launcher2/PagedView;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 719
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mFolderPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v2

    add-int v7, p4, v2

    add-int v8, p5, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 720
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mFolderPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 721
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mFolderPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 723
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    # getter for: Lcom/android/launcher2/PageIndicator;->mFocusPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$500(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 724
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    # getter for: Lcom/android/launcher2/PageIndicator;->mFocusPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$500(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 725
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    # getter for: Lcom/android/launcher2/PageIndicator;->mFocusPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher2/PageIndicator;->access$500(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_1

    .line 729
    :cond_4
    const/4 v4, 0x1

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_5

    .line 730
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mCameraPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 731
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mCameraPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    const/4 v6, -0x3

    add-int v7, p4, v2

    add-int/lit8 v8, p5, -0x3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 732
    :cond_5
    const/4 v4, 0x4

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_6

    .line 733
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mHeadlinesPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 734
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mHeadlinesPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    const/4 v6, 0x0

    add-int v7, p4, v2

    invoke-virtual {v4, v5, v6, v7, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 735
    :cond_6
    const/4 v4, 0x0

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_7

    .line 736
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 737
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v2

    add-int v7, p4, v2

    add-int v8, p5, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 738
    :cond_7
    const/4 v4, 0x5

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_8

    .line 739
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mAddPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 740
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mAddPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    const/4 v6, 0x0

    add-int v7, p4, v2

    invoke-virtual {v4, v5, v6, v7, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 741
    :cond_8
    const/4 v4, 0x2

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_9

    .line 742
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mSecretPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 743
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mSecretPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v2

    add-int v7, p4, v2

    add-int v8, p5, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 744
    :cond_9
    const/4 v4, 0x3

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_a

    .line 745
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mFestivalPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 746
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mFestivalPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v2

    add-int v7, p4, v2

    add-int v8, p5, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 748
    :cond_a
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/PageIndicator$Page;->isFolderPage(Lcom/android/launcher2/PagedView;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 749
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mFolderPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 750
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mFolderPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v2

    add-int v7, p4, v2

    add-int v8, p5, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 752
    :cond_b
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 753
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    neg-int v5, v2

    neg-int v6, v2

    add-int v7, p4, v2

    add-int v8, p5, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_1

    .line 761
    :cond_c
    const/4 v4, 0x4

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_d

    .line 762
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mHeadlinesPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 763
    :cond_d
    const/4 v4, 0x5

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_e

    .line 764
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mAddPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 765
    :cond_e
    const/4 v4, 0x0

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_f

    .line 766
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 767
    :cond_f
    const/4 v4, 0x2

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_10

    .line 768
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mSecretPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 769
    :cond_10
    const/4 v4, 0x3

    aget-boolean v4, p8, v4

    if-eqz v4, :cond_11

    .line 770
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mFestivalPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 772
    :cond_11
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/PageIndicator$Page;->isFolderPage(Lcom/android/launcher2/PagedView;I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 773
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mFolderPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 775
    :cond_12
    iget-object v4, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    iget-object v4, v4, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 779
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_3
.end method

.method endAnimation()V
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 691
    return-void
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 787
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v0

    return v0
.end method

.method public getScale(J)F
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    .line 790
    const/4 v1, 0x0

    .line 791
    .local v1, "value":F
    iget v2, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 792
    iput-wide p1, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationStartTime:J

    .line 793
    iput v4, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 796
    :cond_0
    iget v2, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    if-ne v2, v4, :cond_3

    .line 797
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationStartTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationDuration:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 798
    .local v0, "normalized":F
    cmpl-float v2, v0, v6

    if-ltz v2, :cond_1

    .line 799
    iput v7, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 801
    :cond_1
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 803
    iget v2, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    iget v3, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationTo:F

    iget v4, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float v1, v2, v3

    .line 807
    .end local v0    # "normalized":F
    :cond_2
    :goto_0
    return v1

    .line 804
    :cond_3
    iget v2, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    if-ne v2, v7, :cond_2

    .line 805
    # getter for: Lcom/android/launcher2/PageIndicator;->rate:[F
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    aget v1, v2, v3

    goto :goto_0
.end method

.method initDrawState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 670
    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    .line 671
    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    .line 672
    return-void
.end method

.method public isDraggedOn()Z
    .locals 1

    .prologue
    .line 811
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mIsDraggedOn:Z

    return v0
.end method

.method isFolderPage(Lcom/android/launcher2/PagedView;I)Z
    .locals 1
    .param p1, "pageView"    # Lcom/android/launcher2/PagedView;
    .param p2, "index"    # I

    .prologue
    .line 783
    const/4 v0, 0x0

    return v0
.end method

.method public setDraggedOn(Z)V
    .locals 0
    .param p1, "isDraggedOn"    # Z

    .prologue
    .line 815
    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicator$Page;->mIsDraggedOn:Z

    .line 816
    return-void
.end method

.method setDrawState(I)V
    .locals 1
    .param p1, "drawState"    # I

    .prologue
    .line 675
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(IZ)V

    .line 676
    return-void
.end method

.method setDrawState(IZ)V
    .locals 2
    .param p1, "drawState"    # I
    .param p2, "bIsAnimationPrevented"    # Z

    .prologue
    .line 679
    iget v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    .line 680
    iput p1, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    .line 682
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    if-eq v0, v1, :cond_0

    .line 683
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 684
    # getter for: Lcom/android/launcher2/PageIndicator;->rate:[F
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationTo:F

    .line 685
    # getter for: Lcom/android/launcher2/PageIndicator;->rate:[F
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    .line 687
    :cond_0
    return-void
.end method
