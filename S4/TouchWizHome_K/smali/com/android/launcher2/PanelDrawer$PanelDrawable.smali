.class Lcom/android/launcher2/PanelDrawer$PanelDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PanelDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PanelDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanelDrawable"
.end annotation


# instance fields
.field blockDraw:Z

.field private mAlpha:I

.field private mBackgroundDarken:F

.field private mBaseDarken:F

.field private mBlend:Z

.field private mBounds:Landroid/graphics/Rect;

.field private mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

.field final synthetic this$0:Lcom/android/launcher2/PanelDrawer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PanelDrawer;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 496
    iput-object p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->this$0:Lcom/android/launcher2/PanelDrawer;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 497
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    .line 498
    iput v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    .line 499
    iput v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    .line 500
    iput-boolean v5, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    .line 501
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    .line 502
    new-instance v0, Lcom/android/launcher2/PanelDrawer$Functor;

    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v2, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    iget v3, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    iget-boolean v4, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/PanelDrawer$Functor;-><init>(Lcom/android/launcher2/PanelDrawer;FFZ)V

    iput-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    .line 503
    iput-boolean v5, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->blockDraw:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 507
    iget-boolean v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->blockDraw:Z

    if-eqz v0, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 513
    .local v1, "width":I
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 514
    .local v2, "height":I
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    int-to-float v0, v0

    const/high16 v4, 0x437f0000    # 255.0f

    div-float v3, v0, v4

    .line 516
    .local v3, "alpha":F
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    iget v4, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    iget v5, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    iget-boolean v6, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/PanelDrawer$Functor;->set(IIFFFZ)V

    .line 518
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    invoke-static {p1, v0}, Lcom/android/launcher2/DrawGLFunction;->call(Landroid/graphics/Canvas;Lcom/android/launcher2/DrawGLFunction$Callback;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 576
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 577
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    invoke-static {v0}, Lcom/android/launcher2/DrawGLFunction;->destroy(Lcom/android/launcher2/DrawGLFunction$Callback;)V

    .line 579
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    return v0
.end method

.method public getBaseDarken()F
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 523
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 584
    const/16 v0, 0x14

    .line 585
    .local v0, "p":I
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 586
    const/4 v1, 0x1

    return v1
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    if-eqz v0, :cond_0

    .line 592
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 594
    :cond_0
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 572
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 528
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 529
    iput p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    .line 530
    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    .line 532
    :cond_0
    return-void
.end method

.method public setBackgroundDarken(F)V
    .locals 1
    .param p1, "d"    # F

    .prologue
    .line 540
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    .line 542
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 543
    iput p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    .line 544
    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    .line 546
    :cond_1
    return-void
.end method

.method public setBaseDarken(F)V
    .locals 1
    .param p1, "d"    # F

    .prologue
    .line 553
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 554
    iput p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBaseDarken:F

    .line 555
    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    .line 557
    :cond_0
    return-void
.end method

.method public setBlend(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    if-eq v0, p1, :cond_0

    .line 561
    iput-boolean p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    .line 562
    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    .line 564
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 567
    return-void
.end method
