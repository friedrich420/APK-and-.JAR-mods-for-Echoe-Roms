.class public abstract Lcom/android/internal/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AutoScrollHelper$1;,
        Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;,
        Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;,
        Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I

.field private static final DEFAULT_EDGE_TYPE:I = 0x1

.field private static final DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final EDGE_TYPE_INSIDE:I = 0x0

.field public static final EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final HORIZONTAL:I = 0x0

.field public static final NO_MAX:F = 3.4028235E38f

.field public static final NO_MIN:F = 0.0f

.field public static final RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final VERTICAL:I = 0x1


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field private mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field private mNeedsCancel:Z

.field private mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field private final mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

.field private final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 193
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 11
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x2

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v3, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v3}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v3, p0, mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    .line 139
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v3, p0, mEdgeInterpolator:Landroid/view/animation/Interpolator;

    .line 148
    new-array v3, v4, [F

    fill-array-data v3, :array_80

    iput-object v3, p0, mRelativeEdges:[F

    .line 151
    new-array v3, v4, [F

    fill-array-data v3, :array_88

    iput-object v3, p0, mMaximumEdges:[F

    .line 160
    new-array v3, v4, [F

    fill-array-data v3, :array_90

    iput-object v3, p0, mRelativeVelocity:[F

    .line 163
    new-array v3, v4, [F

    fill-array-data v3, :array_98

    iput-object v3, p0, mMinimumVelocity:[F

    .line 166
    new-array v3, v4, [F

    fill-array-data v3, :array_a0

    iput-object v3, p0, mMaximumVelocity:[F

    .line 209
    iput-object p1, p0, mTarget:Landroid/view/View;

    .line 211
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 212
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const v3, 0x44c4e000    # 1575.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v0, v3

    .line 213
    .local v0, "maxVelocity":I
    const v3, 0x439d8000    # 315.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v6

    float-to-int v2, v3

    .line 214
    .local v2, "minVelocity":I
    int-to-float v3, v0

    int-to-float v4, v0

    invoke-virtual {p0, v3, v4}, setMaximumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 215
    int-to-float v3, v2

    int-to-float v4, v2

    invoke-virtual {p0, v3, v4}, setMinimumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 217
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, setEdgeType(I)Lcom/android/internal/widget/AutoScrollHelper;

    .line 218
    invoke-virtual {p0, v8, v8}, setMaximumEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 219
    invoke-virtual {p0, v5, v5}, setRelativeEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 220
    invoke-virtual {p0, v7, v7}, setRelativeVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 221
    sget v3, DEFAULT_ACTIVATION_DELAY:I

    invoke-virtual {p0, v3}, setActivationDelay(I)Lcom/android/internal/widget/AutoScrollHelper;

    .line 222
    const/16 v3, 0x1f4

    invoke-virtual {p0, v3}, setRampUpDuration(I)Lcom/android/internal/widget/AutoScrollHelper;

    .line 223
    const/16 v3, 0x1f4

    invoke-virtual {p0, v3}, setRampDownDuration(I)Lcom/android/internal/widget/AutoScrollHelper;

    .line 224
    return-void

    .line 148
    :array_80
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 151
    :array_88
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    .line 160
    :array_90
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 163
    :array_98
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 166
    :array_a0
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;

    .prologue
    .line 83
    iget-boolean v0, p0, mAnimating:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/widget/AutoScrollHelper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, mAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;

    .prologue
    .line 83
    iget-boolean v0, p0, mNeedsReset:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/widget/AutoScrollHelper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, mNeedsReset:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/widget/AutoScrollHelper;)Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;

    .prologue
    .line 83
    iget-object v0, p0, mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;

    .prologue
    .line 83
    invoke-direct {p0}, shouldAnimate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;

    .prologue
    .line 83
    iget-boolean v0, p0, mNeedsCancel:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/widget/AutoScrollHelper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, mNeedsCancel:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/widget/AutoScrollHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;

    .prologue
    .line 83
    invoke-direct {p0}, cancelTargetTouch()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/widget/AutoScrollHelper;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/AutoScrollHelper;

    .prologue
    .line 83
    iget-object v0, p0, mTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(III)I
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 83
    invoke-static {p0, p1, p2}, constrain(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(FFF)F
    .registers 4
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 83
    invoke-static {p0, p1, p2}, constrain(FFF)F

    move-result v0

    return v0
.end method

.method private cancelTargetTouch()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 676
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 677
    .local v0, "eventTime":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 679
    .local v8, "cancel":Landroid/view/MotionEvent;
    iget-object v2, p0, mTarget:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 680
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 681
    return-void
.end method

.method private computeTargetVelocity(IFFF)F
    .registers 14
    .param p1, "direction"    # I
    .param p2, "coordinate"    # F
    .param p3, "srcSize"    # F
    .param p4, "dstSize"    # F

    .prologue
    const/4 v7, 0x0

    .line 538
    iget-object v8, p0, mRelativeEdges:[F

    aget v3, v8, p1

    .line 539
    .local v3, "relativeEdge":F
    iget-object v8, p0, mMaximumEdges:[F

    aget v0, v8, p1

    .line 540
    .local v0, "maximumEdge":F
    invoke-direct {p0, v3, p3, v0, p2}, getEdgeValue(FFFF)F

    move-result v6

    .line 541
    .local v6, "value":F
    cmpl-float v8, v6, v7

    if-nez v8, :cond_12

    .line 557
    :goto_11
    return v7

    .line 546
    :cond_12
    iget-object v8, p0, mRelativeVelocity:[F

    aget v4, v8, p1

    .line 547
    .local v4, "relativeVelocity":F
    iget-object v8, p0, mMinimumVelocity:[F

    aget v2, v8, p1

    .line 548
    .local v2, "minimumVelocity":F
    iget-object v8, p0, mMaximumVelocity:[F

    aget v1, v8, p1

    .line 549
    .local v1, "maximumVelocity":F
    mul-float v5, v4, p4

    .line 554
    .local v5, "targetVelocity":F
    cmpl-float v7, v6, v7

    if-lez v7, :cond_2b

    .line 555
    mul-float v7, v6, v5

    invoke-static {v7, v2, v1}, constrain(FFF)F

    move-result v7

    goto :goto_11

    .line 557
    :cond_2b
    neg-float v7, v6

    mul-float/2addr v7, v5

    invoke-static {v7, v2, v1}, constrain(FFF)F

    move-result v7

    neg-float v7, v7

    goto :goto_11
.end method

.method private static constrain(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 662
    cmpl-float v0, p0, p2

    if-lez v0, :cond_5

    .line 667
    .end local p2    # "max":F
    :goto_4
    return p2

    .line 664
    .restart local p2    # "max":F
    :cond_5
    cmpg-float v0, p0, p1

    if-gez v0, :cond_b

    move p2, p1

    .line 665
    goto :goto_4

    :cond_b
    move p2, p0

    .line 667
    goto :goto_4
.end method

.method private static constrain(III)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 652
    if-le p0, p2, :cond_3

    .line 657
    .end local p2    # "max":I
    :goto_2
    return p2

    .line 654
    .restart local p2    # "max":I
    :cond_3
    if-ge p0, p1, :cond_7

    move p2, p1

    .line 655
    goto :goto_2

    :cond_7
    move p2, p0

    .line 657
    goto :goto_2
.end method

.method private constrainEdgeValue(FF)F
    .registers 7
    .param p1, "current"    # F
    .param p2, "leading"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 623
    cmpl-float v2, p2, v0

    if-nez v2, :cond_8

    .line 648
    :cond_7
    :goto_7
    return v0

    .line 627
    :cond_8
    iget v2, p0, mEdgeType:I

    packed-switch v2, :pswitch_data_2e

    goto :goto_7

    .line 630
    :pswitch_e
    cmpg-float v2, p1, p2

    if-gez v2, :cond_7

    .line 631
    cmpl-float v2, p1, v0

    if-ltz v2, :cond_1b

    .line 633
    div-float v0, p1, p2

    sub-float v0, v1, v0

    goto :goto_7

    .line 634
    :cond_1b
    iget-boolean v2, p0, mAnimating:Z

    if-eqz v2, :cond_7

    iget v2, p0, mEdgeType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    move v0, v1

    .line 636
    goto :goto_7

    .line 641
    :pswitch_26
    cmpg-float v1, p1, v0

    if-gez v1, :cond_7

    .line 643
    neg-float v0, p2

    div-float v0, p1, v0

    goto :goto_7

    .line 627
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_26
    .end packed-switch
.end method

.method private getEdgeValue(FFFF)F
    .registers 12
    .param p1, "relativeValue"    # F
    .param p2, "size"    # F
    .param p3, "maxValue"    # F
    .param p4, "current"    # F

    .prologue
    const/4 v5, 0x0

    .line 606
    mul-float v6, p1, p2

    invoke-static {v6, v5, p3}, constrain(FFF)F

    move-result v0

    .line 607
    .local v0, "edgeSize":F
    invoke-direct {p0, p4, v0}, constrainEdgeValue(FF)F

    move-result v3

    .line 608
    .local v3, "valueLeading":F
    sub-float v6, p2, p4

    invoke-direct {p0, v6, v0}, constrainEdgeValue(FF)F

    move-result v4

    .line 609
    .local v4, "valueTrailing":F
    sub-float v2, v4, v3

    .line 611
    .local v2, "value":F
    cmpg-float v6, v2, v5

    if-gez v6, :cond_28

    .line 612
    iget-object v5, p0, mEdgeInterpolator:Landroid/view/animation/Interpolator;

    neg-float v6, v2

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    neg-float v1, v5

    .line 619
    .local v1, "interpolated":F
    :goto_1f
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v6}, constrain(FFF)F

    move-result v5

    .end local v1    # "interpolated":F
    :cond_27
    return v5

    .line 613
    :cond_28
    cmpl-float v6, v2, v5

    if-lez v6, :cond_27

    .line 614
    iget-object v5, p0, mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .restart local v1    # "interpolated":F
    goto :goto_1f
.end method

.method private requestStop()V
    .registers 2

    .prologue
    .line 527
    iget-boolean v0, p0, mNeedsReset:Z

    if-eqz v0, :cond_8

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, mAnimating:Z

    .line 534
    :goto_7
    return-void

    .line 532
    :cond_8
    iget-object v0, p0, mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    goto :goto_7
.end method

.method private shouldAnimate()Z
    .registers 5

    .prologue
    .line 491
    iget-object v1, p0, mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    .line 492
    .local v1, "scroller":Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
    invoke-virtual {v1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v2

    .line 493
    .local v2, "verticalDirection":I
    invoke-virtual {v1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v0

    .line 495
    .local v0, "horizontalDirection":I
    if-eqz v2, :cond_12

    invoke-virtual {p0, v2}, canTargetScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_12
    if-eqz v0, :cond_1c

    invoke-virtual {p0, v0}, canTargetScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_1a
    const/4 v3, 0x1

    :goto_1b
    return v3

    :cond_1c
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method private startAnimating()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 503
    iget-object v0, p0, mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_d

    .line 504
    new-instance v0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Lcom/android/internal/widget/AutoScrollHelper;Lcom/android/internal/widget/AutoScrollHelper$1;)V

    iput-object v0, p0, mRunnable:Ljava/lang/Runnable;

    .line 507
    :cond_d
    iput-boolean v4, p0, mAnimating:Z

    .line 508
    iput-boolean v4, p0, mNeedsReset:Z

    .line 510
    iget-boolean v0, p0, mAlreadyDelayed:Z

    if-nez v0, :cond_26

    iget v0, p0, mActivationDelay:I

    if-lez v0, :cond_26

    .line 511
    iget-object v0, p0, mTarget:Landroid/view/View;

    iget-object v1, p0, mRunnable:Ljava/lang/Runnable;

    iget v2, p0, mActivationDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 518
    :goto_23
    iput-boolean v4, p0, mAlreadyDelayed:Z

    .line 519
    return-void

    .line 513
    :cond_26
    iget-object v0, p0, mRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_23
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 246
    iget-boolean v0, p0, mEnabled:Z

    return v0
.end method

.method public isExclusive()Z
    .registers 2

    .prologue
    .line 275
    iget-boolean v0, p0, mExclusive:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 455
    iget-boolean v5, p0, mEnabled:Z

    if-nez v5, :cond_7

    .line 484
    :goto_6
    return v4

    .line 459
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 460
    .local v0, "action":I
    packed-switch v0, :pswitch_data_5e

    .line 484
    :cond_e
    :goto_e
    iget-boolean v5, p0, mExclusive:Z

    if-eqz v5, :cond_5b

    iget-boolean v5, p0, mAnimating:Z

    if-eqz v5, :cond_5b

    :goto_16
    move v4, v3

    goto :goto_6

    .line 462
    :pswitch_18
    iput-boolean v3, p0, mNeedsCancel:Z

    .line 463
    iput-boolean v4, p0, mAlreadyDelayed:Z

    .line 466
    :pswitch_1c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, mTarget:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {p0, v4, v5, v6, v7}, computeTargetVelocity(IFFF)F

    move-result v1

    .line 468
    .local v1, "xTargetVelocity":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, mTarget:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {p0, v3, v5, v6, v7}, computeTargetVelocity(IFFF)F

    move-result v2

    .line 470
    .local v2, "yTargetVelocity":F
    iget-object v5, p0, mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v5, v1, v2}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    .line 474
    iget-boolean v5, p0, mAnimating:Z

    if-nez v5, :cond_e

    invoke-direct {p0}, shouldAnimate()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 475
    invoke-direct {p0}, startAnimating()V

    goto :goto_e

    .line 480
    .end local v1    # "xTargetVelocity":F
    .end local v2    # "yTargetVelocity":F
    :pswitch_57
    invoke-direct {p0}, requestStop()V

    goto :goto_e

    :cond_5b
    move v3, v4

    .line 484
    goto :goto_16

    .line 460
    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_57
        :pswitch_1c
        :pswitch_57
    .end packed-switch
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 2
    .param p1, "delayMillis"    # I

    .prologue
    .line 411
    iput p1, p0, mActivationDelay:I

    .line 412
    return-object p0
.end method

.method public setEdgeType(I)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 353
    iput p1, p0, mEdgeType:I

    .line 354
    return-object p0
.end method

.method public setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 234
    iget-boolean v0, p0, mEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 235
    invoke-direct {p0}, requestStop()V

    .line 238
    :cond_9
    iput-boolean p1, p0, mEnabled:Z

    .line 239
    return-object p0
.end method

.method public setExclusive(Z)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 2
    .param p1, "exclusive"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, mExclusive:Z

    .line 263
    return-object p0
.end method

.method public setMaximumEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 5
    .param p1, "horizontalMax"    # F
    .param p2, "verticalMax"    # F

    .prologue
    .line 394
    iget-object v0, p0, mMaximumEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 395
    iget-object v0, p0, mMaximumEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 396
    return-object p0
.end method

.method public setMaximumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 7
    .param p1, "horizontalMax"    # F
    .param p2, "verticalMax"    # F

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 293
    iget-object v0, p0, mMaximumVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 294
    iget-object v0, p0, mMaximumVelocity:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 295
    return-object p0
.end method

.method public setMinimumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 7
    .param p1, "horizontalMin"    # F
    .param p2, "verticalMin"    # F

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 311
    iget-object v0, p0, mMinimumVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 312
    iget-object v0, p0, mMinimumVelocity:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 313
    return-object p0
.end method

.method public setRampDownDuration(I)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 3
    .param p1, "durationMillis"    # I

    .prologue
    .line 441
    iget-object v0, p0, mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    .line 442
    return-object p0
.end method

.method public setRampUpDuration(I)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 3
    .param p1, "durationMillis"    # I

    .prologue
    .line 426
    iget-object v0, p0, mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    .line 427
    return-object p0
.end method

.method public setRelativeEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 5
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    .prologue
    .line 372
    iget-object v0, p0, mRelativeEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 373
    iget-object v0, p0, mRelativeEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 374
    return-object p0
.end method

.method public setRelativeVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 7
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 332
    iget-object v0, p0, mRelativeVelocity:[F

    const/4 v1, 0x0

    div-float v2, p1, v3

    aput v2, v0, v1

    .line 333
    iget-object v0, p0, mRelativeVelocity:[F

    const/4 v1, 0x1

    div-float v2, p2, v3

    aput v2, v0, v1

    .line 334
    return-object p0
.end method
