.class public Lcom/android/launcher2/PageIndicatorPreviewManager;
.super Lcom/android/launcher2/PageIndicatorManager;
.source "PageIndicatorPreviewManager.java"


# static fields
.field static sRect1:Landroid/graphics/Rect;

.field static sRect2:Landroid/graphics/Rect;


# instance fields
.field mPagePreviewIndicator:Lcom/android/launcher2/PagePreviewIndicator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/PageIndicatorPreviewManager;->sRect1:Landroid/graphics/Rect;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/PageIndicatorPreviewManager;->sRect2:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/PageIndicatorPreviewManager;->sRect1:Landroid/graphics/Rect;

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/PageIndicatorPreviewManager;->sRect2:Landroid/graphics/Rect;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/PagedView;III)V
    .locals 0
    .param p1, "view"    # Lcom/android/launcher2/PagedView;
    .param p2, "pageIndicatorTop"    # I
    .param p3, "pageIndicatorGap"    # I
    .param p4, "pageIndicatorMaxVisible"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/PageIndicatorManager;-><init>(Lcom/android/launcher2/PagedView;III)V

    .line 35
    return-void
.end method

.method private cleanupDrag()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorPreviewManager;->mPagePreviewIndicator:Lcom/android/launcher2/PagePreviewIndicator;

    iget-object v0, v0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPage:Lcom/android/launcher2/PageIndicator$Page;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->setDraggedOn(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorPreviewManager;->mPagePreviewIndicator:Lcom/android/launcher2/PagePreviewIndicator;

    iget-object v0, v0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPageSelectedAnimator:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->abort()Z

    .line 89
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorPreviewManager;->mPagePreviewIndicator:Lcom/android/launcher2/PagePreviewIndicator;

    iget-object v0, v0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPageSelectedAnimator:Lcom/android/launcher2/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 90
    return-void
.end method


# virtual methods
.method public endEditMode()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorPreviewManager;->mPagePreviewIndicator:Lcom/android/launcher2/PagePreviewIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagePreviewIndicator;->animateDragMode(F)V

    .line 45
    return-void
.end method

.method public getHitRect(Landroid/graphics/Rect;I)V
    .locals 11
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "scrollX"    # I

    .prologue
    const/4 v10, 0x0

    .line 98
    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorPreviewManager;->mPagePreviewIndicator:Lcom/android/launcher2/PagePreviewIndicator;

    invoke-virtual {v7}, Lcom/android/launcher2/PagePreviewIndicator;->getPreviewRects()[Landroid/graphics/Rect;

    move-result-object v2

    .line 99
    .local v2, "previewRects":[Landroid/graphics/Rect;
    sget-object v7, Lcom/android/launcher2/PageIndicatorPreviewManager;->sRect1:Landroid/graphics/Rect;

    invoke-super {p0, v7, v10}, Lcom/android/launcher2/PageIndicatorManager;->getHitRect(Landroid/graphics/Rect;I)V

    .line 100
    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorPreviewManager;->mPagePreviewIndicator:Lcom/android/launcher2/PagePreviewIndicator;

    invoke-virtual {v7}, Lcom/android/launcher2/PagePreviewIndicator;->getDragModeFactor()F

    move-result v4

    .line 102
    .local v4, "scale":F
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorPreviewManager;->getSelectedPageIndex()I

    move-result v5

    .line 104
    .local v5, "selectedIndex":I
    array-length v7, v2

    if-lt v5, v7, :cond_0

    .line 117
    :goto_0
    return-void

    .line 106
    :cond_0
    aget-object v7, v2, v5

    iget v6, v7, Landroid/graphics/Rect;->top:I

    .line 107
    .local v6, "top":I
    aget-object v7, v2, v5

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 108
    .local v0, "bottom":I
    sget-object v7, Lcom/android/launcher2/PageIndicatorPreviewManager;->sRect2:Landroid/graphics/Rect;

    aget-object v8, v2, v10

    iget v8, v8, Landroid/graphics/Rect;->left:I

    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v2, v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v8, v6, v9, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 109
    sget-object v7, Lcom/android/launcher2/PageIndicatorPreviewManager;->sRect2:Landroid/graphics/Rect;

    invoke-virtual {v7, p2, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 111
    sget-object v7, Lcom/android/launcher2/PageIndicatorPreviewManager;->sRect1:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sget-object v8, Lcom/android/launcher2/PageIndicatorPreviewManager;->sRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    invoke-static {v7, v8, v4}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v7

    float-to-int v1, v7

    .line 112
    .local v1, "left":I
    sget-object v7, Lcom/android/launcher2/PageIndicatorPreviewManager;->sRect1:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sget-object v8, Lcom/android/launcher2/PageIndicatorPreviewManager;->sRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    invoke-static {v7, v8, v4}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v7

    float-to-int v3, v7

    .line 113
    .local v3, "right":I
    sget-object v7, Lcom/android/launcher2/PageIndicatorPreviewManager;->sRect1:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sget-object v8, Lcom/android/launcher2/PageIndicatorPreviewManager;->sRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-static {v7, v8, v4}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v7

    float-to-int v6, v7

    .line 114
    sget-object v7, Lcom/android/launcher2/PageIndicatorPreviewManager;->sRect1:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    sget-object v8, Lcom/android/launcher2/PageIndicatorPreviewManager;->sRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    invoke-static {v7, v8, v4}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v7

    float-to-int v0, v7

    .line 116
    invoke-virtual {p1, v1, v6, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method protected getPageIndicator(Landroid/content/res/Resources;)Lcom/android/launcher2/PageIndicator;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 54
    new-instance v0, Lcom/android/launcher2/PagePreviewIndicator;

    iget v1, p0, Lcom/android/launcher2/PageIndicatorPreviewManager;->mMaxVisiblePages:I

    invoke-direct {v0, p1, v1}, Lcom/android/launcher2/PagePreviewIndicator;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/android/launcher2/PageIndicatorPreviewManager;->mPagePreviewIndicator:Lcom/android/launcher2/PagePreviewIndicator;

    .line 55
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorPreviewManager;->mPagePreviewIndicator:Lcom/android/launcher2/PagePreviewIndicator;

    return-object v0
.end method

.method public getPreviewRects()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorPreviewManager;->mPagePreviewIndicator:Lcom/android/launcher2/PagePreviewIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/PagePreviewIndicator;->getPreviewRects()[Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedPageIndex()I
    .locals 3

    .prologue
    .line 120
    const/4 v0, -0x1

    .line 121
    .local v0, "index":I
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorPreviewManager;->mPagePreviewIndicator:Lcom/android/launcher2/PagePreviewIndicator;

    iget-object v2, v2, Lcom/android/launcher2/PagePreviewIndicator;->mNewPage:Lcom/android/launcher2/PageIndicator$Page;

    invoke-virtual {v2}, Lcom/android/launcher2/PageIndicator$Page;->isDraggedOn()Z

    move-result v1

    .line 122
    .local v1, "isNewPageSelected":Z
    if-eqz v1, :cond_0

    .line 123
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorPreviewManager;->mPagePreviewIndicator:Lcom/android/launcher2/PagePreviewIndicator;

    iget v0, v2, Lcom/android/launcher2/PagePreviewIndicator;->mDisplayPageCount:I

    .line 127
    :goto_0
    return v0

    .line 125
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorPreviewManager;->mPagePreviewIndicator:Lcom/android/launcher2/PagePreviewIndicator;

    iget v0, v2, Lcom/android/launcher2/PagePreviewIndicator;->mCurrentPage:I

    goto :goto_0
.end method

.method public onDragEnter(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 60
    const/4 v0, 0x1

    .line 61
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorPreviewManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v1, v1, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    if-ne p1, v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorPreviewManager;->mPagePreviewIndicator:Lcom/android/launcher2/PagePreviewIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PagePreviewIndicator;->mNewPage:Lcom/android/launcher2/PageIndicator$Page;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PageIndicator$Page;->setDraggedOn(Z)V

    .line 63
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorPreviewManager;->mPagePreviewIndicator:Lcom/android/launcher2/PagePreviewIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PagePreviewIndicator;->mNewPageSelectedAnimator:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->abort()Z

    .line 64
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorPreviewManager;->mPagePreviewIndicator:Lcom/android/launcher2/PagePreviewIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PagePreviewIndicator;->mNewPageSelectedAnimator:Lcom/android/launcher2/ScalarAnimator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 66
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PageIndicatorManager;->onDragEnter(I)Z

    .line 67
    return v0
.end method

.method public onDragExit(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 72
    const/4 v0, 0x1

    .line 73
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/launcher2/PageIndicatorPreviewManager;->cleanupDrag()V

    .line 74
    invoke-super {p0, p1}, Lcom/android/launcher2/PageIndicatorManager;->onDragExit(I)Z

    .line 75
    return v0
.end method

.method public onDrop(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "result":Z
    invoke-direct {p0}, Lcom/android/launcher2/PageIndicatorPreviewManager;->cleanupDrag()V

    .line 82
    invoke-super {p0, p1}, Lcom/android/launcher2/PageIndicatorManager;->onDrop(I)Z

    .line 83
    return v0
.end method

.method public startEditMode()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorPreviewManager;->mPagePreviewIndicator:Lcom/android/launcher2/PagePreviewIndicator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagePreviewIndicator;->animateDragMode(F)V

    .line 40
    return-void
.end method
