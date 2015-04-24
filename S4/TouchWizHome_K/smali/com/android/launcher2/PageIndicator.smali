.class public Lcom/android/launcher2/PageIndicator;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PageIndicator$Page;
    }
.end annotation


# static fields
.field public static final ADDPAGE_INDI:I = 0x5

.field protected static final ANIMATION_DURATION:I = 0xc8

.field private static final ANIMATION_STATE_DONE:I = 0x3

.field private static final ANIMATION_STATE_RUNNING:I = 0x2

.field private static final ANIMATION_STATE_STARTING:I = 0x1

.field public static final CAMERA_INDI:I = 0x1

.field protected static final DRAW_STATE_LARGE:I = 0x3

.field protected static final DRAW_STATE_MIDDLE:I = 0x2

.field protected static final DRAW_STATE_NONE:I = 0x0

.field protected static final DRAW_STATE_SMALL:I = 0x1

.field public static final FESTIVAL_INDI:I = 0x3

.field public static final HEADLINES_INDI:I = 0x4

.field public static final HOME_INDI:I = 0x0

.field public static final INVALID_AREA:I = -0x1

.field public static final LEFT_MORE_AREA:I = -0x2

.field private static final PANEL_TEXT_PAINT:Landroid/graphics/Paint;

.field public static final RIGHT_MORE_AREA:I = -0x3

.field public static final SECRET_INDI:I = 0x2

.field private static final rate:[F


# instance fields
.field protected mAddPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mCameraPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mCurrentPage:I

.field protected mDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

.field protected mDisplayPageCount:I

.field private mEnableTouch:Z

.field private mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

.field private final mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

.field private mFastScrollNumBgTop:I

.field private mFastScrollPaddingTop:I

.field private mFastScrollPaddingTopDelta:I

.field private mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

.field protected mFestivalPageDrawable:Landroid/graphics/drawable/Drawable;

.field private mFirstTextIndex:I

.field private mFocusPageDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocustDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mFolderPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mGap:I

.field private mGrowBy:F

.field protected mHeadlinesPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mHotseatBarSize:I

.field mIsAnimationPrevented:Z

.field private mIsDraw:Z

.field private mIsFastScrolling:Z

.field private mIsHiding:Z

.field private mIsVisibleLeftMore:Z

.field private mIsVisibleRightMore:Z

.field protected mIsWorkspaceItem:Z

.field protected mLeft:I

.field private final mMaxVisiblePages:I

.field private mMoreDrawable:Landroid/graphics/drawable/Drawable;

.field private mMoreGap:I

.field protected mPage:[Lcom/android/launcher2/PageIndicator$Page;

.field protected mPageDrawable:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorPanelRightAdjust:I

.field private mPageNumberBg:Landroid/graphics/drawable/Drawable;

.field private mPageindicatorPanelTopAdjust:I

.field private mPanelSize:I

.field private mScrollBarThumbWidth:I

.field private mScrollBarWidth:I

.field private mScrollPosition:F

.field protected mSecretPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mShowHeadLinesPage:Z

.field protected mTop:I

.field private mTotalPageCount:I

.field private final rect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/PageIndicator;->rate:[F

    .line 131
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    .line 132
    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 134
    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    return-void

    .line 62
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 7
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "maxVisiblePages"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    .line 106
    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v2, 0xc8

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v2, v3, v5, v1}, Lcom/android/launcher2/ScalarAnimator;-><init>(JFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    .line 110
    iput-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    .line 111
    iput v5, p0, Lcom/android/launcher2/PageIndicator;->mScrollPosition:F

    .line 112
    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    .line 113
    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarThumbWidth:I

    .line 115
    const/16 v0, -0x46

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mPageindicatorPanelTopAdjust:I

    .line 124
    iput-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mShowHeadLinesPage:Z

    .line 126
    sget-object v0, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    .line 469
    iput-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    .line 525
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    .line 138
    iput p2, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    .line 140
    iput-boolean v6, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    .line 141
    iput-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    .line 142
    iput-boolean v6, p0, Lcom/android/launcher2/PageIndicator;->mEnableTouch:Z

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PageIndicator;->setupDimens(Landroid/content/res/Resources;)V

    .line 145
    return-void
.end method

.method static synthetic access$000()[F
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/launcher2/PageIndicator;->rate:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/PageIndicator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PageIndicator;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mGrowBy:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/PageIndicator;)Lcom/android/launcher2/ScalarAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PageIndicator;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/PageIndicator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PageIndicator;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PageIndicator;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFocustDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PageIndicator;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFocusPageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private drawPageNumber(Landroid/content/Context;Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "number"    # I
    .param p4, "defaultSurface"    # Landroid/graphics/drawable/Drawable;
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 417
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 418
    .local v1, "width":I
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 419
    .local v0, "height":I
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v1

    div-float/2addr v3, v6

    int-to-float v4, v0

    invoke-virtual {p5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {p5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-virtual {p2, v2, v3, v4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 421
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;J)Z
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pagedView"    # Lcom/android/launcher2/PagedView;
    .param p3, "currentTime"    # J

    .prologue
    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    if-nez v2, :cond_2

    :cond_0
    const/16 v20, 0x0

    .line 411
    :cond_1
    :goto_0
    return v20

    .line 321
    :cond_2
    const/16 v20, 0x0

    .line 322
    .local v20, "redraw":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    move/from16 v19, v0

    .line 323
    .local v19, "pageCount":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PageIndicator;->mGap:I

    .line 324
    .local v15, "gap":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PageIndicator;->mMoreGap:I

    move/from16 v17, v0

    .line 325
    .local v17, "moreGap":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 326
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mTop:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 328
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsVisibleLeftMore:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int v18, v2, v17

    .line 330
    .local v18, "move":I
    move/from16 v0, v18

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 332
    move/from16 v0, v18

    int-to-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 335
    .end local v18    # "move":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsVisibleRightMore:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 336
    sub-int v2, v17, v15

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 340
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x64

    if-ge v2, v3, :cond_9

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 342
    .local v12, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 351
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v16

    .line 352
    .local v16, "modeFactor":F
    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-lez v2, :cond_5

    .line 353
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, v16

    float-to-int v11, v2

    .line 354
    .local v11, "alpha":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 357
    sget-object v2, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 360
    const/4 v10, 0x1

    .line 361
    .local v10, "a":I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v2

    const/16 v3, 0x320

    if-lt v2, v3, :cond_a

    .line 362
    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 366
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 367
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mScrollPosition:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarThumbWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v18, v0

    .line 368
    .restart local v18    # "move":I
    move/from16 v0, v18

    int-to-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 370
    move/from16 v0, v18

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 372
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v2

    const/16 v3, 0x320

    if-lt v2, v3, :cond_b

    .line 373
    const/4 v2, 0x0

    const/high16 v3, -0x3ee00000    # -10.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 377
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    if-nez v2, :cond_5

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 379
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v13, v2, 0x2

    .line 380
    .local v13, "dx":I
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mPageindicatorPanelTopAdjust:I

    add-int v14, v2, v3

    .line 381
    .local v14, "dy":I
    int-to-float v2, v13

    int-to-float v3, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    add-int/lit8 v5, v2, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/PageIndicator;->drawPageNumber(Landroid/content/Context;Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 384
    neg-int v2, v13

    int-to-float v2, v2

    neg-int v3, v14

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 388
    .end local v10    # "a":I
    .end local v11    # "alpha":I
    .end local v13    # "dx":I
    .end local v14    # "dy":I
    .end local v18    # "move":I
    :cond_5
    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-nez v2, :cond_6

    .line 389
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PageIndicator;->mFirstTextIndex:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/PageIndicator;->mGap:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, v19

    move-wide/from16 v8, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher2/PageIndicator;->drawIndicatorDots(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIJ)Z

    move-result v20

    .line 391
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 394
    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    if-eqz v2, :cond_7

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 396
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    add-int/lit8 v3, v3, -0x1e

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    add-int/lit8 v5, v2, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/PageIndicator;->drawPageNumber(Landroid/content/Context;Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 402
    :cond_7
    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-lez v2, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v16, v2

    if-gez v2, :cond_8

    .line 403
    const/16 v20, 0x1

    .line 406
    :cond_8
    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    if-eqz v2, :cond_1

    .line 407
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    .line 408
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    .line 409
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 346
    .end local v12    # "bounds":Landroid/graphics/Rect;
    .end local v16    # "modeFactor":F
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 347
    .restart local v12    # "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 364
    .restart local v10    # "a":I
    .restart local v11    # "alpha":I
    .restart local v16    # "modeFactor":F
    :cond_a
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_2

    .line 375
    .restart local v18    # "move":I
    :cond_b
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_3
.end method

.method public drawIndicatorDots(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIJ)Z
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pagedView"    # Lcom/android/launcher2/PagedView;
    .param p3, "pageCount"    # I
    .param p4, "index"    # I
    .param p5, "gap"    # I
    .param p6, "currentTime"    # J

    .prologue
    .line 592
    const/4 v12, 0x0

    .line 593
    .local v12, "result":Z
    const/4 v2, 0x6

    new-array v10, v2, [Z

    fill-array-data v10, :array_0

    .line 595
    .local v10, "indicator":[Z
    const/4 v13, 0x0

    .line 605
    .local v13, "startIdx":I
    move v11, v13

    .local v11, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v11, v0, :cond_2

    .line 641
    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    sget-object v3, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->SECRET_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    if-ne v2, v3, :cond_0

    .line 642
    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v10, v2

    .line 645
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v11

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v9

    .line 646
    .local v9, "scale":F
    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v11

    add-int v5, p4, v11

    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher2/PageIndicator$Page;->draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIFF[Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 647
    const/4 v12, 0x1

    .line 649
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int v2, v2, p5

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 605
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 651
    .end local v9    # "scale":F
    :cond_2
    return v12

    .line 593
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method enableLeftMore(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicator;->mIsVisibleLeftMore:Z

    .line 425
    return-void
.end method

.method enableRightMore(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 428
    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicator;->mIsVisibleRightMore:Z

    .line 429
    return-void
.end method

.method public enterFastScroll()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    .line 203
    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    .line 204
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 205
    return-void
.end method

.method public exitFastScroll()V
    .locals 2

    .prologue
    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    .line 210
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 211
    return-void
.end method

.method public getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method getPageTouchArea(II)I
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 527
    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/android/launcher2/PageIndicator;->mEnableTouch:Z

    if-nez v10, :cond_1

    :cond_0
    const/4 v10, -0x1

    .line 573
    :goto_0
    return v10

    .line 528
    :cond_1
    const/4 v0, 0x0

    .line 529
    .local v0, "camera_page":I
    const/4 v2, 0x0

    .line 531
    .local v2, "headlines_page":I
    sget-boolean v10, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lcom/android/launcher2/PageIndicator;->mShowHeadLinesPage:Z

    if-eqz v10, :cond_2

    .line 532
    const/4 v2, 0x1

    .line 534
    :cond_2
    iget v10, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    add-int/2addr v10, v0

    add-int v7, v10, v2

    .line 536
    .local v7, "pageCount":I
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    .line 537
    .local v1, "gap":I
    iget v6, p0, Lcom/android/launcher2/PageIndicator;->mMoreGap:I

    .line 538
    .local v6, "moreGap":I
    iget v5, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    .line 539
    .local v5, "left":I
    div-int/lit8 v8, v1, 0x2

    .line 541
    .local v8, "touchArea":I
    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 542
    .local v9, "width":I
    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 544
    .local v3, "height":I
    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v11, p0, Lcom/android/launcher2/PageIndicator;->mTop:I

    add-int/lit8 v11, v11, -0xa

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 545
    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v11, p0, Lcom/android/launcher2/PageIndicator;->mTop:I

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, 0x8

    add-int/lit8 v11, v11, 0xa

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 547
    iget-boolean v10, p0, Lcom/android/launcher2/PageIndicator;->mIsVisibleLeftMore:Z

    if-eqz v10, :cond_3

    .line 548
    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    sub-int v11, v5, v11

    sub-int/2addr v11, v6

    sub-int/2addr v11, v8

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 549
    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iput v5, v10, Landroid/graphics/Rect;->right:I

    .line 551
    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    invoke-virtual {v10, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 552
    const/4 v10, -0x2

    goto :goto_0

    .line 556
    :cond_3
    iget-boolean v10, p0, Lcom/android/launcher2/PageIndicator;->mIsVisibleRightMore:Z

    if-eqz v10, :cond_4

    .line 557
    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v11, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    mul-int/2addr v11, v9

    add-int/2addr v11, v5

    iget v12, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    add-int/lit8 v12, v12, -0x2

    mul-int/2addr v12, v1

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 558
    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v11, v8

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 559
    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    invoke-virtual {v10, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 560
    const/4 v10, -0x3

    goto/16 :goto_0

    .line 564
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_6

    .line 566
    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    add-int v11, v9, v1

    mul-int/2addr v11, v4

    add-int/2addr v11, v5

    sub-int/2addr v11, v8

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 567
    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v9

    mul-int/lit8 v12, v8, 0x2

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 569
    iget-object v10, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    invoke-virtual {v10, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 570
    iget v10, p0, Lcom/android/launcher2/PageIndicator;->mFirstTextIndex:I

    add-int/2addr v10, v4

    goto/16 :goto_0

    .line 564
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 573
    :cond_6
    const/4 v10, -0x1

    goto/16 :goto_0
.end method

.method public getPreviewRects()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleOrientationChange(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 820
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PageIndicator;->setupDimens(Landroid/content/res/Resources;)V

    .line 821
    return-void
.end method

.method public hide(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    .line 310
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    .line 311
    .local v1, "pageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 312
    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(I)V

    .line 313
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/launcher2/PageIndicator$Page;->endAnimation()V

    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    .line 316
    return-void
.end method

.method public isFastScrolling()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    return v0
.end method

.method public setAddPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mAddPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    .line 248
    return-void
.end method

.method public setAnimationPrevented(Z)V
    .locals 0
    .param p1, "bIsAnimationPrevented"    # Z

    .prologue
    .line 471
    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    .line 472
    return-void
.end method

.method public setCameraPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mCameraPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 239
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    .line 240
    return-void
.end method

.method setCurrentPage(IZLcom/android/launcher2/PagedView;)V
    .locals 8
    .param p1, "current"    # I
    .param p2, "useLargeDrawablesOnly"    # Z
    .param p3, "pagedView"    # Lcom/android/launcher2/PagedView;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 475
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    .line 476
    iget-boolean v3, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    if-eqz v3, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    .line 480
    .local v1, "pageCount":I
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    if-ne v3, v1, :cond_3

    .line 481
    const/4 v2, 0x0

    .line 495
    .local v2, "startIdx":I
    :goto_1
    sget-boolean v3, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v3, :cond_2

    instance-of v3, p3, Lcom/android/launcher2/Workspace;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    sget-object v4, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    if-ne v3, v4, :cond_2

    .line 497
    iput v6, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    .line 500
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PageIndicator;->setFirstTextNum(I)V

    .line 501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_8

    .line 502
    add-int v3, v0, v2

    if-ne v3, p1, :cond_7

    .line 503
    if-eqz p2, :cond_6

    .line 504
    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    iget-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    invoke-virtual {v3, v7, v4}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(IZ)V

    .line 501
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 483
    .end local v0    # "i":I
    .end local v2    # "startIdx":I
    :cond_3
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v4, v4, 0x2

    if-gt v3, v4, :cond_4

    .line 484
    const/4 v2, 0x0

    .restart local v2    # "startIdx":I
    goto :goto_1

    .line 485
    .end local v2    # "startIdx":I
    :cond_4
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    if-ge v3, v4, :cond_5

    .line 486
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .restart local v2    # "startIdx":I
    goto :goto_1

    .line 488
    .end local v2    # "startIdx":I
    :cond_5
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    sub-int v2, v3, v4

    .restart local v2    # "startIdx":I
    goto :goto_1

    .line 510
    .restart local v0    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    iget-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    invoke-virtual {v3, v7, v4}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(IZ)V

    goto :goto_3

    .line 515
    :cond_7
    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(IZ)V

    goto :goto_3

    .line 518
    :cond_8
    iget-boolean v3, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    if-eqz v3, :cond_0

    iput-boolean v6, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    goto :goto_0
.end method

.method public setDefaultPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 231
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    .line 232
    return-void
.end method

.method public setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V
    .locals 0
    .param p1, "itemType"    # Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    .line 293
    return-void
.end method

.method public setFestivalPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mFestivalPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 255
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    .line 256
    return-void
.end method

.method setFirstTextNum(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 522
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mFirstTextIndex:I

    .line 523
    return-void
.end method

.method public setFocusDefaultPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 265
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    .line 266
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mFocustDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 267
    :cond_0
    return-void
.end method

.method public setFocusPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 259
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    .line 260
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mFocusPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 262
    :cond_0
    return-void
.end method

.method public setFolderPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mFolderPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 235
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    .line 236
    return-void
.end method

.method setGap(I)V
    .locals 0
    .param p1, "gap"    # I

    .prologue
    .line 432
    invoke-virtual {p0, p1, p1}, Lcom/android/launcher2/PageIndicator;->setGap(II)V

    .line 433
    return-void
.end method

.method setGap(II)V
    .locals 0
    .param p1, "gap"    # I
    .param p2, "moregap"    # I

    .prologue
    .line 436
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    .line 437
    iput p2, p0, Lcom/android/launcher2/PageIndicator;->mMoreGap:I

    .line 438
    return-void
.end method

.method public setHeadlinesPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mHeadlinesPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 243
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    .line 244
    return-void
.end method

.method public setMoreDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    .line 289
    return-void
.end method

.method setOffset(II)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I

    .prologue
    .line 441
    iput p2, p0, Lcom/android/launcher2/PageIndicator;->mTop:I

    .line 442
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    .line 444
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    .line 445
    :cond_0
    sget-boolean v0, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mPageIndicatorPanelRightAdjust:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    .line 446
    :cond_1
    return-void
.end method

.method setPageCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 449
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    .line 450
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    if-le p1, v1, :cond_0

    .line 451
    iget p1, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    .line 454
    :cond_0
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    if-eq v1, p1, :cond_1

    .line 455
    new-array v1, p1, [Lcom/android/launcher2/PageIndicator$Page;

    iput-object v1, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    .line 456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 457
    iget-object v1, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    new-instance v2, Lcom/android/launcher2/PageIndicator$Page;

    invoke-direct {v2, p0}, Lcom/android/launcher2/PageIndicator$Page;-><init>(Lcom/android/launcher2/PageIndicator;)V

    aput-object v2, v1, v0

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    .end local v0    # "i":I
    :cond_1
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    .line 462
    return-void
.end method

.method public setPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 227
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    .line 228
    return-void
.end method

.method public setPageIndicatorPanelRightAdjust(I)V
    .locals 1
    .param p1, "right"    # I

    .prologue
    .line 824
    sget-boolean v0, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v0, :cond_0

    .end local p1    # "right":I
    :goto_0
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mPageIndicatorPanelRightAdjust:I

    .line 825
    return-void

    .line 824
    .restart local p1    # "right":I
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public setScrollPosition(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 222
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mScrollPosition:F

    .line 223
    return-void
.end method

.method public setSecretPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mSecretPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 251
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    .line 252
    return-void
.end method

.method public setShowHeadLinePage(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 828
    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicator;->mShowHeadLinesPage:Z

    .line 829
    return-void
.end method

.method public setupDimens(Landroid/content/res/Resources;)V
    .locals 5
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 156
    const v0, 0x7f020049

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 160
    const v0, 0x7f020048

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    const v0, 0x7f0200ff

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    .line 164
    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    const v1, 0x7f0e00e3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 168
    const v0, 0x7f0e00e2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mGrowBy:F

    .line 169
    const v0, 0x7f0e00e4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    .line 170
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    iget v2, p0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 173
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    const v0, 0x7f0e0269

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    .line 179
    :goto_0
    const v0, 0x7f0e00e5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mPageindicatorPanelTopAdjust:I

    .line 180
    const v0, 0x7f0e0052

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    .line 181
    const v0, 0x7f0e0053

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTopDelta:I

    .line 184
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v0, :cond_1

    .line 185
    const v0, 0x7f0e0103

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    .line 186
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_4

    .line 187
    :cond_0
    iput v3, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    .line 191
    :cond_1
    :goto_1
    sget-boolean v0, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_2

    .line 193
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/Utilities;->getDeviceRotation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_5

    .line 194
    const v0, 0x7f0e00ac

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mPageIndicatorPanelRightAdjust:I

    .line 199
    :cond_2
    :goto_2
    return-void

    .line 176
    :cond_3
    iput v3, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    goto :goto_0

    .line 188
    :cond_4
    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    if-lez v0, :cond_1

    .line 189
    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    goto :goto_1

    .line 195
    :cond_5
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/Utilities;->getDeviceRotation(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 196
    const v0, 0x7f0e00ad

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mPageIndicatorPanelRightAdjust:I

    goto :goto_2
.end method

.method public show()V
    .locals 2

    .prologue
    .line 300
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PageIndicator;->show(ZZ)V

    .line 301
    return-void
.end method

.method public show(ZZ)V
    .locals 1
    .param p1, "forced"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    goto :goto_0
.end method

.method public updatePositions()V
    .locals 11

    .prologue
    .line 270
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    .line 271
    .local v1, "pageCount":I
    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    .line 285
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 273
    .local v2, "pageDrawableWidth":I
    const/4 v7, 0x2

    if-gt v1, v7, :cond_1

    add-int/lit8 v2, v2, 0xa

    .line 274
    :cond_1
    const/4 v0, 0x0

    .line 275
    .local v0, "left":I
    mul-int v7, v2, v1

    iget v8, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    add-int/lit8 v9, v1, -0x1

    mul-int/2addr v8, v9

    add-int v3, v7, v8

    .line 276
    .local v3, "right":I
    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    iget-object v9, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iget v10, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    add-int/2addr v9, v10

    invoke-virtual {v7, v0, v8, v3, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 279
    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 280
    .local v5, "thumbRight":I
    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 281
    .local v4, "thumbHeight":I
    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTopDelta:I

    sub-int v6, v7, v8

    .line 282
    .local v6, "top":I
    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    add-int v8, v6, v4

    invoke-virtual {v7, v0, v6, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 283
    sub-int v7, v3, v0

    iput v7, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    .line 284
    sub-int v7, v5, v0

    iput v7, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarThumbWidth:I

    goto :goto_0
.end method
