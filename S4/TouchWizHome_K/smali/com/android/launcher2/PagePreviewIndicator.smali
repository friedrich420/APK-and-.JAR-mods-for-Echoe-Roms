.class public Lcom/android/launcher2/PagePreviewIndicator;
.super Lcom/android/launcher2/PageIndicator;
.source "PagePreviewIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagePreviewIndicator$1;
    }
.end annotation


# static fields
.field static mTestPaint:Landroid/graphics/Paint;


# instance fields
.field private final mDragMode:Lcom/android/launcher2/ScalarAnimator;

.field private mFromRects:[Landroid/graphics/Rect;

.field private mItemOutlineNormalBlock:Landroid/graphics/drawable/Drawable;

.field private mItemOutlineNormalO:Landroid/graphics/drawable/Drawable;

.field private mItemOutlineSelectedBlock:Landroid/graphics/drawable/Drawable;

.field private mItemOutlineSelectedO:Landroid/graphics/drawable/Drawable;

.field mNewPage:Lcom/android/launcher2/PageIndicator$Page;

.field protected final mNewPageSelectedAnimator:Lcom/android/launcher2/ScalarAnimator;

.field private mNormalPreviewHeight:I

.field private mNormalPreviewWidth:I

.field private mPgIndContentGap:I

.field private mPgIndContentPadding:I

.field private mPgIndPanel_AdjustTop:I

.field private mPreviewGapWidth:I

.field private mPreviewNormalAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreviewNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreviewRects:[Landroid/graphics/Rect;

.field private mPreviewSelectedAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreviewSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedPreviewHeight:I

.field private mSelectedPreviewWidth:I

.field private mToRects:[Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/PagePreviewIndicator;->mTestPaint:Landroid/graphics/Paint;

    .line 68
    sget-object v0, Lcom/android/launcher2/PagePreviewIndicator;->mTestPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    sget-object v0, Lcom/android/launcher2/PagePreviewIndicator;->mTestPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 6
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "maxVisiblePages"    # I

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PageIndicator;-><init>(Landroid/content/res/Resources;I)V

    .line 58
    new-instance v2, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v4, 0xe6

    invoke-direct {v2, v4, v5, v3}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    .line 64
    new-instance v2, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v4, 0xc8

    invoke-direct {v2, v4, v5, v3}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPageSelectedAnimator:Lcom/android/launcher2/ScalarAnimator;

    .line 74
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v1

    .line 75
    .local v1, "maxPageCount":I
    add-int/lit8 v1, v1, 0x2

    .line 79
    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v2, :cond_0

    .line 80
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxFestivalScreenCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 81
    :cond_0
    new-array v2, v1, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    .line 82
    new-array v2, v1, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    .line 83
    new-array v2, v1, [Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v0

    .line 86
    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v0

    .line 87
    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    new-instance v2, Lcom/android/launcher2/PageIndicator$Page;

    invoke-direct {v2, p0}, Lcom/android/launcher2/PageIndicator$Page;-><init>(Lcom/android/launcher2/PageIndicator;)V

    iput-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPage:Lcom/android/launcher2/PageIndicator$Page;

    .line 90
    return-void
.end method

.method private getPreviewPageWidth(F)I
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 535
    iget v1, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNormalPreviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mSelectedPreviewWidth:I

    int-to-float v2, v2

    invoke-static {v1, v2, p1}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v1

    float-to-int v0, v1

    .line 536
    .local v0, "pageWidth":I
    return v0
.end method


# virtual methods
.method animateDragMode(F)V
    .locals 1
    .param p1, "to"    # F

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 490
    return-void
.end method

.method draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pagedView"    # Lcom/android/launcher2/PagedView;
    .param p3, "currentTime"    # J

    .prologue
    .line 281
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/launcher2/PagePreviewIndicator;->setupIndicatorPreviews(Lcom/android/launcher2/PagedView;J)V

    .line 282
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher2/PageIndicator;->draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;J)Z

    move-result v0

    return v0
.end method

.method public drawIndicatorDots(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIJ)Z
    .locals 32
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pagedView"    # Lcom/android/launcher2/PagedView;
    .param p3, "pageCount"    # I
    .param p4, "index"    # I
    .param p5, "gap"    # I
    .param p6, "currentTime"    # J

    .prologue
    .line 288
    const/16 v29, 0x0

    .line 289
    .local v29, "result":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v6

    .line 290
    .local v6, "factor":F
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 291
    .local v5, "cRect":Landroid/graphics/Rect;
    const/4 v2, 0x6

    new-array v15, v2, [Z

    fill-array-data v15, :array_0

    .line 295
    .local v15, "indicator":[Z
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v27

    .line 296
    .local v27, "homeScreenIndex":I
    const/16 v30, 0x0

    .line 305
    .local v30, "startIdx":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 306
    move/from16 v4, v30

    .local v4, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_2

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    array-length v2, v2

    if-lt v4, v2, :cond_0

    .line 306
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 309
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    sub-int v3, v4, v30

    aget-object v26, v2, v3

    .line 310
    .local v26, "fRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    sub-int v3, v4, v30

    aget-object v31, v2, v3

    .line 311
    .local v31, "tRect":Landroid/graphics/Rect;
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->left:I

    .line 312
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->top:I

    .line 313
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->right:I

    .line 314
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 316
    iget v2, v5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v5, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    .line 318
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/PagePreviewIndicator;->drawPagePreview(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FLcom/android/launcher2/PagedView;)Z

    .line 320
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .end local v4    # "i":I
    .end local v26    # "fRect":Landroid/graphics/Rect;
    .end local v31    # "tRect":Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v2, p2

    .line 322
    check-cast v2, Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isStartDragStarted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 413
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPageSelectedAnimator:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_3
    const/4 v2, 0x1

    :goto_2
    or-int v29, v29, v2

    .line 414
    return v29

    .line 326
    :cond_4
    const/16 v28, 0x0

    .line 327
    .local v28, "offset":I
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mShowHeadLinesPage:Z

    if-eqz v2, :cond_5

    .line 328
    const/16 v28, 0x1

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget-object v26, v2, v3

    .line 330
    .restart local v26    # "fRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget-object v31, v2, v3

    .line 331
    .restart local v31    # "tRect":Landroid/graphics/Rect;
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->left:I

    .line 332
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->top:I

    .line 333
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->right:I

    .line 334
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 336
    iget v2, v5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v5, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 337
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v3

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float/2addr v3, v8

    sub-float v13, v2, v3

    .line 338
    .local v13, "alpha":F
    const/4 v2, 0x0

    invoke-static {v2, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 339
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v15, v2

    .line 340
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-boolean v3, v15, v2

    .line 341
    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v15, v2

    .line 342
    new-instance v7, Lcom/android/launcher2/PageIndicator$Page;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/launcher2/PageIndicator$Page;-><init>(Lcom/android/launcher2/PageIndicator;)V

    .line 343
    .local v7, "HeadlinesPage":Lcom/android/launcher2/PageIndicator$Page;
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mHeadlinesPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mHeadlinesPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    move-wide/from16 v0, p6

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v14

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v7 .. v15}, Lcom/android/launcher2/PageIndicator$Page;->draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIFF[Z)Z

    .line 346
    const/4 v2, 0x3

    invoke-virtual {v7, v2}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(I)V

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 350
    .end local v7    # "HeadlinesPage":Lcom/android/launcher2/PageIndicator$Page;
    .end local v13    # "alpha":F
    .end local v26    # "fRect":Landroid/graphics/Rect;
    .end local v31    # "tRect":Landroid/graphics/Rect;
    :cond_5
    move/from16 v4, v30

    .restart local v4    # "i":I
    :goto_3
    move/from16 v0, p3

    if-ge v4, v0, :cond_2

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    array-length v2, v2

    if-lt v4, v2, :cond_6

    .line 350
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 354
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    add-int v3, v4, v28

    sub-int v3, v3, v30

    aget-object v26, v2, v3

    .line 355
    .restart local v26    # "fRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    add-int v3, v4, v28

    sub-int v3, v3, v30

    aget-object v31, v2, v3

    .line 356
    .restart local v31    # "tRect":Landroid/graphics/Rect;
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->left:I

    .line 357
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->top:I

    .line 358
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->right:I

    .line 359
    move-object/from16 v0, v26

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 361
    iget v2, v5, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v5, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 362
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v3

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float/2addr v3, v8

    sub-float v13, v2, v3

    .line 363
    .restart local v13    # "alpha":F
    const/4 v2, 0x0

    invoke-static {v2, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 364
    const/4 v3, 0x0

    sub-int v2, v4, v30

    move/from16 v0, v27

    if-ne v0, v2, :cond_9

    const/4 v2, 0x1

    :goto_5
    aput-boolean v2, v15, v3

    .line 365
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-boolean v3, v15, v2

    .line 386
    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v2, :cond_7

    .line 387
    sget-object v2, Lcom/android/launcher2/PagePreviewIndicator$1;->$SwitchMap$com$android$launcher2$PageIndicatorManager$DISPLAY_ITEM:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v3}, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 405
    :cond_7
    :goto_6
    const/4 v2, 0x4

    const/4 v3, 0x0

    aput-boolean v3, v15, v2

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    sub-int v3, v4, v30

    aget-object v16, v2, v3

    add-int v19, p4, v4

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v20

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    sub-int v3, v4, v30

    aget-object v2, v2, v3

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v23

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move/from16 v22, v13

    move-object/from16 v24, v15

    invoke-virtual/range {v16 .. v24}, Lcom/android/launcher2/PageIndicator$Page;->draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIFF[Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 408
    const/16 v29, 0x1

    .line 409
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4

    .line 364
    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    .line 389
    :pswitch_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/CellLayout;

    .line 390
    .local v25, "cell":Lcom/android/launcher2/CellLayout;
    if-eqz v25, :cond_a

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 391
    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v15, v2

    goto :goto_6

    .line 393
    :cond_a
    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-boolean v3, v15, v2

    goto :goto_6

    .line 397
    .end local v25    # "cell":Lcom/android/launcher2/CellLayout;
    :pswitch_1
    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-boolean v3, v15, v2

    goto :goto_6

    .line 400
    :pswitch_2
    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v15, v2

    goto :goto_6

    .line 413
    .end local v4    # "i":I
    .end local v13    # "alpha":F
    .end local v26    # "fRect":Landroid/graphics/Rect;
    .end local v28    # "offset":I
    .end local v31    # "tRect":Landroid/graphics/Rect;
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 291
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public drawPagePreview(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FLcom/android/launcher2/PagedView;)Z
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I
    .param p3, "r"    # Landroid/graphics/Rect;
    .param p4, "alpha"    # F
    .param p5, "pagedView"    # Lcom/android/launcher2/PagedView;

    .prologue
    .line 136
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "add_widgets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    const/4 v15, 0x0

    .line 199
    :cond_0
    :goto_0
    return v15

    .line 139
    :cond_1
    const/4 v15, 0x0

    .line 142
    .local v15, "result":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PagePreviewIndicator;->mCurrentPage:I

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    .line 143
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    .local v10, "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentGap:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentGap:I

    sub-int/2addr v5, v8

    invoke-virtual {v10, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, p4

    float-to-int v2, v2

    invoke-virtual {v10, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 153
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    const/4 v2, 0x0

    const v3, 0x3f333333    # 0.7f

    sub-float v3, p4, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 156
    .local v6, "contentAlpha":F
    const v2, 0x3e99999a    # 0.3f

    div-float/2addr v6, v2

    .line 157
    const/4 v9, 0x0

    .line 158
    .local v9, "dragDelta":Lcom/android/launcher2/PositionDelta;
    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    if-eqz v2, :cond_0

    .line 160
    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v2}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v7

    .line 162
    .local v7, "deltas":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 163
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "deltas":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .restart local v7    # "deltas":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v2, v7}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getDeltas(Ljava/util/List;)V

    .line 170
    :goto_2
    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    check-cast v2, Lcom/android/launcher2/CellPositionerWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/CellPositionerWorkspace;->getDragDelta()Lcom/android/launcher2/PositionDelta;

    move-result-object v9

    .line 172
    if-eqz v9, :cond_9

    .line 173
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/PositionDelta;

    .line 174
    .local v11, "de":Lcom/android/launcher2/PositionDelta;
    iget-object v2, v11, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    iget-object v3, v9, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    if-ne v2, v3, :cond_2

    .line 175
    invoke-interface {v7, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 180
    .end local v11    # "de":Lcom/android/launcher2/PositionDelta;
    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentResizeWidgetItem()Lcom/android/launcher2/BaseItem;

    move-result-object v14

    .line 182
    .local v14, "resizeWidgetItem":Lcom/android/launcher2/BaseItem;
    if-nez v14, :cond_4

    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    iget-boolean v2, v2, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-eqz v2, :cond_5

    .line 184
    :cond_4
    const/4 v2, 0x0

    invoke-interface {v7, v2, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 195
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "resizeWidgetItem":Lcom/android/launcher2/BaseItem;
    :cond_5
    :goto_3
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher2/PagePreviewIndicator;->drawPreviewContent(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FLjava/util/List;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/PositionDelta;)V

    goto/16 :goto_0

    .line 145
    .end local v6    # "contentAlpha":F
    .end local v7    # "deltas":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    .end local v9    # "dragDelta":Lcom/android/launcher2/PositionDelta;
    .end local v10    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->isPageAddedForDrag(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 146
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalAddDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v10    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 148
    .end local v10    # "d":Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v10    # "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 168
    .restart local v6    # "contentAlpha":F
    .restart local v7    # "deltas":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    .restart local v9    # "dragDelta":Lcom/android/launcher2/PositionDelta;
    :cond_8
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v7    # "deltas":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    .local v12, "deltas":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    move-object v7, v12

    .end local v12    # "deltas":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    .restart local v7    # "deltas":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    goto :goto_2

    .line 187
    :cond_9
    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 188
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentResizeWidgetItem()Lcom/android/launcher2/BaseItem;

    move-result-object v14

    .line 190
    .restart local v14    # "resizeWidgetItem":Lcom/android/launcher2/BaseItem;
    if-eqz v14, :cond_5

    .line 191
    const/4 v2, 0x0

    new-instance v3, Lcom/android/launcher2/PositionDelta;

    invoke-direct {v3, v14}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/BaseItem;)V

    invoke-interface {v7, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3
.end method

.method public drawPreviewContent(Landroid/graphics/Canvas;ILandroid/graphics/Rect;FLjava/util/List;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/PositionDelta;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I
    .param p3, "r"    # Landroid/graphics/Rect;
    .param p4, "alpha"    # F
    .param p6, "launcher"    # Lcom/android/launcher2/Launcher;
    .param p7, "dragDelta"    # Lcom/android/launcher2/PositionDelta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "I",
            "Landroid/graphics/Rect;",
            "F",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;",
            "Lcom/android/launcher2/Launcher;",
            "Lcom/android/launcher2/PositionDelta;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    .local p5, "deltas":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v6, v20, p2

    .line 205
    .local v6, "fullRect":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v17, v20, v21

    .line 207
    .local v17, "sizeRatio":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v12, v20, v21

    .line 208
    .local v12, "maxHeight":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentPadding:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    sub-int v13, v20, v21

    .line 209
    .local v13, "maxWidth":I
    int-to-float v0, v12

    move/from16 v20, v0

    mul-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v12, v0

    .line 210
    int-to-float v0, v13

    move/from16 v20, v0

    mul-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v13, v0

    .line 211
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v20

    div-int v15, v12, v20

    .line 212
    .local v15, "rowHeight":I
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v20

    div-int v16, v13, v20

    .line 214
    .local v16, "rowWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentPadding:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentPadding:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 216
    const/4 v11, 0x0

    .line 217
    .local v11, "left":I
    const/16 v18, 0x0

    .line 218
    .local v18, "top":I
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getCurrentResizeWidgetItem()Lcom/android/launcher2/BaseItem;

    move-result-object v14

    .line 219
    .local v14, "resizeWidgetItem":Lcom/android/launcher2/BaseItem;
    const/4 v10, 0x0

    .line 220
    .local v10, "isSelected":Z
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getCurrentDragItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    .line 221
    .local v4, "draggedItem":Lcom/android/launcher2/BaseItem;
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PositionDelta;

    .line 222
    .local v3, "delta":Lcom/android/launcher2/PositionDelta;
    if-nez p7, :cond_1

    iget-object v0, v3, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-eq v4, v0, :cond_0

    .line 223
    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v11

    .line 224
    invoke-virtual {v3}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v18

    .line 225
    mul-int v11, v11, v16

    .line 226
    mul-int v18, v18, v15

    .line 228
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentGap:I

    .line 229
    .local v7, "gap":I
    invoke-virtual {v3}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v20

    mul-int v20, v20, v15

    sub-int v8, v20, v7

    .line 230
    .local v8, "height":I
    invoke-virtual {v3}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v20

    mul-int v20, v20, v16

    sub-int v19, v20, v7

    .line 232
    .local v19, "width":I
    if-eqz p7, :cond_2

    iget-object v0, v3, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    move-object/from16 v20, v0

    move-object/from16 v0, p7

    iget-object v0, v0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, v3, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v0, v14, :cond_4

    :cond_3
    const/4 v10, 0x1

    .line 233
    :goto_1
    invoke-virtual {v3}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v20

    invoke-virtual {v3}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/launcher2/PagePreviewIndicator;->getOutlineForItem(IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 234
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    const/high16 v20, 0x437f0000    # 255.0f

    mul-float v20, v20, p4

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 235
    add-int v20, v11, v19

    add-int v21, v18, v8

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v5, v11, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 236
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 237
    const/4 v10, 0x0

    .line 238
    goto/16 :goto_0

    .line 232
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 239
    .end local v3    # "delta":Lcom/android/launcher2/PositionDelta;
    .end local v7    # "gap":I
    .end local v8    # "height":I
    .end local v19    # "width":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 240
    return-void
.end method

.method public getDragModeFactor()F
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mDragMode:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v0

    return v0
.end method

.method public getItemSpan(Lcom/android/launcher2/BaseItem;[I)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "span"    # [I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 248
    instance-of v1, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 249
    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 250
    .local v0, "homeItem":Lcom/android/launcher2/HomeItem;
    iget v1, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    aput v1, p2, v3

    .line 251
    iget v1, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    aput v1, p2, v2

    .line 258
    .end local v0    # "homeItem":Lcom/android/launcher2/HomeItem;
    :goto_0
    return-void

    .line 252
    :cond_0
    instance-of v1, p1, Lcom/android/launcher2/AppItem;

    if-eqz v1, :cond_1

    .line 253
    aput v2, p2, v3

    .line 254
    aput v2, p2, v2

    goto :goto_0

    .line 256
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Encounted item in paged indicator preview that we werent expecting!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getOutlineForItem(IIZ)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "isSelected"    # Z

    .prologue
    const/4 v1, 0x1

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-ne p1, v1, :cond_1

    if-ne p2, v1, :cond_1

    .line 269
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineSelectedO:Landroid/graphics/drawable/Drawable;

    .line 273
    :goto_0
    return-object v0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineNormalO:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 271
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineSelectedBlock:Landroid/graphics/drawable/Drawable;

    :goto_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineNormalBlock:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public getPreviewPageHeight(F)I
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 520
    iget v1, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNormalPreviewHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mSelectedPreviewHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2, p1}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v1

    float-to-int v0, v1

    .line 521
    .local v0, "pageHeight":I
    return v0
.end method

.method public getPreviewRects()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public setupDimens(Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/android/launcher2/PageIndicator;->setupDimens(Landroid/content/res/Resources;)V

    .line 95
    const v0, 0x7f020089

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    const v0, 0x7f020082

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalAddDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    const v0, 0x7f020083

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    const v0, 0x7f020081

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedAddDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    const v0, 0x7f020085

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineNormalO:Landroid/graphics/drawable/Drawable;

    .line 100
    const v0, 0x7f020086

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineSelectedO:Landroid/graphics/drawable/Drawable;

    .line 101
    const v0, 0x7f020087

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineNormalBlock:Landroid/graphics/drawable/Drawable;

    .line 102
    const v0, 0x7f020088

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mItemOutlineSelectedBlock:Landroid/graphics/drawable/Drawable;

    .line 104
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalAddDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewNormalAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    iget-object v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedAddDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewSelectedAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    const v0, 0x7f0e00e9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNormalPreviewHeight:I

    .line 110
    const v0, 0x7f0e00ea

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mNormalPreviewWidth:I

    .line 111
    const v0, 0x7f0e00eb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mSelectedPreviewHeight:I

    .line 112
    const v0, 0x7f0e00ec

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mSelectedPreviewWidth:I

    .line 113
    const v0, 0x7f0e00ed

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewGapWidth:I

    .line 114
    const v0, 0x7f0e00ee

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentGap:I

    .line 115
    const v0, 0x7f0e00ef

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndContentPadding:I

    .line 116
    const v0, 0x7f0e00e6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndPanel_AdjustTop:I

    .line 117
    return-void
.end method

.method setupIndicatorPreviews(Lcom/android/launcher2/PagedView;J)V
    .locals 16
    .param p1, "pagedView"    # Lcom/android/launcher2/PagedView;
    .param p2, "currentTime"    # J

    .prologue
    .line 431
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDisplayPageCount:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 432
    .local v5, "pageCount":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mNormalPreviewWidth:I

    mul-int/2addr v12, v5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mSelectedPreviewWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagePreviewIndicator;->mNormalPreviewWidth:I

    sub-int/2addr v13, v14

    add-int/2addr v12, v13

    add-int/lit8 v13, v5, -0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewGapWidth:I

    mul-int/2addr v13, v14

    add-int v10, v12, v13

    .line 435
    .local v10, "previewWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v13

    sub-int/2addr v13, v10

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mHotseatBarSize:I

    sub-int v9, v12, v13

    .line 436
    .local v9, "previewLeft":I
    const/4 v4, 0x0

    .line 437
    .local v4, "left":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mLeft:I

    sub-int v2, v12, v9

    .line 438
    .local v2, "deltaX":I
    const/4 v11, 0x0

    .line 440
    .local v11, "width":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    array-length v12, v12

    if-ge v3, v12, :cond_2

    .line 441
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v3

    neg-int v13, v2

    add-int/2addr v13, v4

    iput v13, v12, Landroid/graphics/Rect;->left:I

    .line 442
    const/4 v7, 0x0

    .line 443
    .local v7, "pageScale":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDisplayPageCount:I

    if-ge v3, v12, :cond_1

    .line 444
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v12, v12, v3

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v7

    .line 449
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/PagePreviewIndicator;->getPreviewPageHeight(F)I

    move-result v6

    .line 450
    .local v6, "pageHeight":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/launcher2/PagePreviewIndicator;->getPreviewPageWidth(F)I

    move-result v8

    .line 452
    .local v8, "pageWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v3

    div-int/lit8 v13, v6, 0x2

    neg-int v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndPanel_AdjustTop:I

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->top:I

    .line 453
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v3

    div-int/lit8 v13, v6, 0x2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndPanel_AdjustTop:I

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    .line 454
    move v11, v8

    .line 456
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mToRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v3

    iget v13, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v11

    iput v13, v12, Landroid/graphics/Rect;->right:I

    .line 457
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewGapWidth:I

    add-int/2addr v12, v11

    add-int/2addr v4, v12

    .line 440
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 445
    .end local v6    # "pageHeight":I
    .end local v8    # "pageWidth":I
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDisplayPageCount:I

    if-ne v3, v12, :cond_0

    .line 446
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPage:Lcom/android/launcher2/PageIndicator$Page;

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v7

    goto :goto_1

    .line 460
    .end local v7    # "pageScale":F
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v12

    sub-int v4, v9, v12

    .line 461
    const/4 v11, 0x0

    .line 462
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    array-length v12, v12

    if-ge v3, v12, :cond_5

    .line 463
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v3

    iput v4, v12, Landroid/graphics/Rect;->left:I

    .line 464
    const/4 v7, 0x0

    .line 466
    .restart local v7    # "pageScale":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDisplayPageCount:I

    if-ge v3, v12, :cond_4

    .line 467
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v12, v12, v3

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v7

    .line 472
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/PagePreviewIndicator;->getPreviewPageHeight(F)I

    move-result v6

    .line 473
    .restart local v6    # "pageHeight":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/launcher2/PagePreviewIndicator;->getPreviewPageWidth(F)I

    move-result v8

    .line 475
    .restart local v8    # "pageWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mTop:I

    div-int/lit8 v14, v6, 0x2

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndPanel_AdjustTop:I

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->top:I

    .line 476
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagePreviewIndicator;->mTop:I

    div-int/lit8 v14, v6, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPgIndPanel_AdjustTop:I

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    .line 477
    move v11, v8

    .line 479
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v3

    add-int v13, v4, v11

    iput v13, v12, Landroid/graphics/Rect;->right:I

    .line 480
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mPreviewGapWidth:I

    add-int/2addr v12, v11

    add-int/2addr v4, v12

    .line 462
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 468
    .end local v6    # "pageHeight":I
    .end local v8    # "pageWidth":I
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mDisplayPageCount:I

    if-ne v3, v12, :cond_3

    .line 469
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/PagePreviewIndicator;->mNewPage:Lcom/android/launcher2/PageIndicator$Page;

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v7

    goto :goto_3

    .line 482
    .end local v7    # "pageScale":F
    :cond_5
    return-void
.end method

.method public updatePositions()V
    .locals 6

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    .line 122
    iget-object v4, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 123
    .local v3, "pageDrawableWidth":I
    iget-object v4, p0, Lcom/android/launcher2/PagePreviewIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 124
    .local v2, "pageDrawableHeight":I
    const/4 v1, 0x0

    .line 126
    .local v1, "left":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 127
    iget-object v4, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v0

    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 128
    iget-object v4, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 129
    iget-object v4, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v0

    add-int v5, v1, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 130
    iget-object v4, p0, Lcom/android/launcher2/PagePreviewIndicator;->mFromRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x0

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 131
    iget v4, p0, Lcom/android/launcher2/PagePreviewIndicator;->mGap:I

    add-int/2addr v4, v3

    add-int/2addr v1, v4

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method
