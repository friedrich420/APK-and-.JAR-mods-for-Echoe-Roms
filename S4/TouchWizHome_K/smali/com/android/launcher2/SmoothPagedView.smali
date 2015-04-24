.class public abstract Lcom/android/launcher2/SmoothPagedView;
.super Lcom/android/launcher2/PagedView;
.source "SmoothPagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;,
        Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;
    }
.end annotation


# static fields
.field static final DEFAULT_MODE:I = 0x0

.field private static final INSIDE_LEFT_SCROLL_ZONE:I = 0x1

.field private static final INSIDE_RIGHT_SCROLL_ZONE:I = 0x2

.field private static final OUTSIDE_SCROLL_ZONE:I = 0x0

.field static final SCROLL_LEFT:I = 0x0

.field static final SCROLL_NONE:I = -0x1

.field static final SCROLL_RIGHT:I = 0x1

.field private static final SMOOTHING_CONSTANT:F

.field private static final SMOOTHING_SPEED:F = 0.75f

.field static final X_LARGE_MODE:I = 0x1


# instance fields
.field private mBaseLineFlingVelocity:F

.field private mFlingVelocityInfluence:F

.field private mHandler:Landroid/os/Handler;

.field private mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollDelay:I

.field private mScrollInterpolator:Landroid/view/animation/Interpolator;

.field private mScrollMode:I

.field private mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

.field private mScrollState:I

.field private mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    const-wide v0, 0x3f90624dd2f1a9fcL    # 0.016

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/android/launcher2/SmoothPagedView;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    .line 224
    iput v1, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    .line 225
    new-instance v2, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-direct {v2, p0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;-><init>(Lcom/android/launcher2/SmoothPagedView;)V

    iput-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    .line 226
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mHandler:Landroid/os/Handler;

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollDelay:I

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollMode()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    .line 98
    iget v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    if-nez v2, :cond_0

    .line 99
    const v2, 0x451c4000    # 2500.0f

    iput v2, p0, Lcom/android/launcher2/SmoothPagedView;->mBaseLineFlingVelocity:F

    .line 100
    const v2, 0x3ecccccd    # 0.4f

    iput v2, p0, Lcom/android/launcher2/SmoothPagedView;->mFlingVelocityInfluence:F

    .line 101
    new-instance v2, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;

    invoke-direct {v2}, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 102
    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v3, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScroller:Landroid/widget/Scroller;

    .line 105
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/SmoothPagedView;->mUsePagingTouchSlop:Z

    .line 109
    iget v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    if-eq v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/SmoothPagedView;->mDeferScrollUpdate:Z

    .line 111
    return-void

    :cond_1
    move v0, v1

    .line 109
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/SmoothPagedView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/SmoothPagedView;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/SmoothPagedView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/SmoothPagedView;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollDelay:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/SmoothPagedView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/SmoothPagedView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkEdgeScroll(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 311
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getCurrentPage()I

    move-result v0

    .line 317
    .local v0, "currentPage":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getPageCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 321
    .local v4, "scrollView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollZoneLeftWidth()I

    move-result v1

    .line 322
    .local v1, "leftWidth":I
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollZoneRightWidth()I

    move-result v3

    .line 323
    .local v3, "rightWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 325
    .local v2, "rightEdge":I
    if-ge p1, v1, :cond_2

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->scrollToLeft(II)V

    goto :goto_0

    .line 327
    :cond_2
    sub-int v5, v2, v3

    if-le p1, v5, :cond_3

    .line 328
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->scrollToRight(II)V

    goto :goto_0

    .line 330
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    .line 331
    iget-object v5, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v5}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->removeSelf()V

    .line 332
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->onExitScrollArea()V

    goto :goto_0
.end method

.method private isInsideScrollZone()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 261
    iget v1, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollToLeft(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/SmoothPagedView;->onEnterScrollArea(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    .line 277
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->postForScrollDelayed()V

    .line 279
    :cond_0
    return-void
.end method

.method private scrollToRight(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 282
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/SmoothPagedView;->onEnterScrollArea(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    .line 284
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->postForScrollDelayed()V

    .line 286
    :cond_0
    return-void
.end method

.method private snapToPageWithVelocity(IIZ)V
    .locals 8
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I
    .param p3, "settle"    # Z

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->getAdjustedPageIndex(I)I

    move-result p1

    .line 140
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getCurrentPage()I

    move-result v5

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 141
    .local v3, "screenDelta":I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v2

    .line 142
    .local v2, "newX":I
    iget v4, p0, Lcom/android/launcher2/SmoothPagedView;->mUnboundedScrollX:I

    sub-int v0, v2, v4

    .line 143
    .local v0, "delta":I
    add-int/lit8 v4, v3, 0x1

    mul-int/lit8 v1, v4, 0x64

    .line 145
    .local v1, "duration":I
    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_0

    .line 146
    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 149
    :cond_0
    if-eqz p3, :cond_1

    .line 150
    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    check-cast v4, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;->setDistance(I)V

    .line 155
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 156
    if-lez p2, :cond_2

    .line 157
    int-to-float v4, v1

    int-to-float v5, v1

    int-to-float v6, p2

    iget v7, p0, Lcom/android/launcher2/SmoothPagedView;->mBaseLineFlingVelocity:F

    div-float/2addr v6, v7

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/launcher2/SmoothPagedView;->mFlingVelocityInfluence:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 162
    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(III)V

    .line 163
    return-void

    .line 152
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    check-cast v4, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;->disableSettle()V

    goto :goto_0

    .line 159
    :cond_2
    add-int/lit8 v1, v1, 0x64

    goto :goto_1
.end method


# virtual methods
.method protected cancelScrollRunnable()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->removeSelf()V

    .line 290
    return-void
.end method

.method public computeScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 176
    iget v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    if-ne v4, v5, :cond_1

    .line 177
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->computeScroll()V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->computeScrollHelper()Z

    move-result v3

    .line 181
    .local v3, "scrollComputed":Z
    if-nez v3, :cond_0

    iget v4, p0, Lcom/android/launcher2/SmoothPagedView;->mTouchState:I

    if-ne v4, v5, :cond_0

    .line 182
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v4, v4

    const v5, 0x4e6e6b28    # 1.0E9f

    div-float v2, v4, v5

    .line 183
    .local v2, "now":F
    iget v4, p0, Lcom/android/launcher2/SmoothPagedView;->mSmoothingTime:F

    sub-float v4, v2, v4

    sget v5, Lcom/android/launcher2/SmoothPagedView;->SMOOTHING_CONSTANT:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 185
    .local v1, "e":F
    iget v4, p0, Lcom/android/launcher2/SmoothPagedView;->mTouchX:F

    iget v5, p0, Lcom/android/launcher2/SmoothPagedView;->mUnboundedScrollX:I

    int-to-float v5, v5

    sub-float v0, v4, v5

    .line 186
    .local v0, "dx":F
    iget v4, p0, Lcom/android/launcher2/SmoothPagedView;->mUnboundedScrollX:I

    int-to-float v4, v4

    mul-float v5, v0, v1

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/SmoothPagedView;->scrollTo(II)V

    .line 187
    iput v2, p0, Lcom/android/launcher2/SmoothPagedView;->mSmoothingTime:F

    .line 190
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_2

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->invalidate()V

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v3, 0x0

    .line 230
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 231
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 233
    .local v1, "y":I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 249
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    return v2

    .line 236
    :pswitch_0
    iput v3, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    goto :goto_0

    .line 239
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/SmoothPagedView;->checkEdgeScroll(II)V

    goto :goto_0

    .line 244
    :pswitch_2
    iput v3, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    .line 245
    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v2}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->removeSelf()V

    .line 246
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->onExitScrollArea()V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected getScrollMode()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method protected getScrollZoneLeftWidth()I
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method protected getScrollZoneRightWidth()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method protected getUnEncumberedPagedViewBounds(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "aRect"    # Landroid/graphics/Rect;

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method protected onDrawComplete(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/android/launcher2/SmoothPagedView;->isInsideScrollZone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/SmoothPagedView;->getUnEncumberedPagedViewBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->isWaitingtoScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 351
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 352
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 357
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 360
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 361
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 365
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onEnterScrollArea(III)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "direction"    # I

    .prologue
    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method protected onExitScrollArea()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 8
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher2/PagedView;->onScrollChanged(IIII)V

    .line 200
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getPageTotWidth()I

    move-result v4

    .line 201
    .local v4, "pageWidth":I
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getChildCount()I

    move-result v7

    mul-int v5, v7, v4

    .line 203
    .local v5, "totalScroll":I
    add-int v7, v5, p1

    rem-int/2addr v7, v5

    div-int v2, v7, v4

    .line 204
    .local v2, "pageIndex":I
    add-int v7, v5, p1

    rem-int/2addr v7, v5

    rem-int v3, v7, v4

    .line 205
    .local v3, "pageOffset":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/launcher2/SmoothPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, "page":Landroid/view/View;
    instance-of v7, v1, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v7, :cond_0

    move-object v6, v1

    .line 208
    check-cast v6, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 209
    .local v6, "widgetPage":Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    invoke-virtual {v6, v2, v0, v4, v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->notifyWidgetsOfPageScroll(IIII)V

    .line 205
    .end local v6    # "widgetPage":Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "page":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onScrollComplete()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public scrollToLeft(ZZ)V
    .locals 4
    .param p1, "left"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getCurrentPage()I

    move-result v0

    .line 294
    .local v0, "homeScreenIndex":I
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getPageCount()I

    move-result v1

    .line 296
    .local v1, "maxScreenIndex":I
    if-eqz p1, :cond_1

    .line 297
    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 301
    .local v2, "toPage_right":I
    :goto_0
    if-eqz p2, :cond_3

    .line 302
    invoke-virtual {p0, v2}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    .line 306
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/launcher2/SmoothPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 307
    return-void

    .line 297
    .end local v2    # "toPage_right":I
    :cond_0
    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 299
    :cond_1
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_2

    add-int/lit8 v2, v0, 0x1

    .restart local v2    # "toPage_right":I
    :goto_2
    goto :goto_0

    .end local v2    # "toPage_right":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 304
    .restart local v2    # "toPage_right":I
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/launcher2/SmoothPagedView;->setCurrentPage(I)V

    goto :goto_1
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 120
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPageWithVelocity(II)V

    goto :goto_0
.end method

.method protected snapToPage(I)V
    .locals 3
    .param p1, "whichPage"    # I

    .prologue
    const/4 v2, 0x0

    .line 167
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-direct {p0, p1, v2, v2}, Lcom/android/launcher2/SmoothPagedView;->snapToPageWithVelocity(IIZ)V

    goto :goto_0
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 2
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .prologue
    const/4 v1, 0x1

    .line 128
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    if-ne v0, v1, :cond_0

    .line 129
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedView;->snapToPageWithVelocity(II)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPageWithVelocity(IIZ)V

    goto :goto_0
.end method
