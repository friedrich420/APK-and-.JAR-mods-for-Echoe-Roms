.class public Lcom/android/launcher2/QuickViewMainMenu;
.super Lcom/android/launcher2/QuickView;
.source "QuickViewMainMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_DURATION:I = 0x258

.field private static final INSIDE_LEFT_SCROLL_ZONE:I = 0x1

.field private static final INSIDE_RIGHT_SCROLL_ZONE:I = 0x2

.field private static final OUTSIDE_SCROLL_ZONE:I = 0x0

.field private static final QV_PAGE_SNAP_ANIMATION_DURATION:I = 0x190

.field private static final RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

.field private static final ROW_BY_COL_LAYOUT:[[I

.field private static final TAG:Ljava/lang/String; = "QuickViewMainMenu"

.field private static final TOUCH_DRAG_DELETE:I = 0x1

.field private static final TOUCH_DRAG_NORMAL:I

.field private static sHitRect:Landroid/graphics/Rect;


# instance fields
.field public final MENU_ZONE:I

.field public final PAGE_SNAP_ANIMATION_DURATION:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

.field private mChildLeft:I

.field private mConfigurationChangeIsInProgress:Z

.field private mDragState:I

.field private mDropCheck:Z

.field private mEnterAnimator:Landroid/animation/Animator;

.field private mExitAnimator:Landroid/animation/Animator;

.field private mHandler:Landroid/os/Handler;

.field private mHeightMeasureSpec:I

.field private final mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsReadOnly:Z

.field private mIsSaved:Z

.field private mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaxDeltaX:I

.field private mMaximumVelocity:I

.field private mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

.field private mMinimumVelocity:I

.field private mOrientation:I

.field private mPageLP:Landroid/widget/FrameLayout$LayoutParams;

.field private mReadOnlyToastResId:I

.field private mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollCheck:Z

.field private mScrollDelay:I

.field private mScrollHalfWidth:I

.field private mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

.field private mScrollState:I

.field private mScrollWidth:I

.field mScroller:Landroid/widget/Scroller;

.field private mTempRects:[Landroid/graphics/Rect;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 85
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v2, [I

    aput v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v2, [I

    aput v4, v1, v5

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/QuickViewMainMenu;->ROW_BY_COL_LAYOUT:[[I

    .line 102
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/high16 v1, -0x680000

    const/high16 v2, -0xe00000

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    sput-object v0, Lcom/android/launcher2/QuickViewMainMenu;->RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 243
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/QuickViewMainMenu;->sHitRect:Landroid/graphics/Rect;

    return-void

    .line 85
    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x2
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x3
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x3
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/QuickViewMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickViewMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0c0024

    const/4 v5, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->PAGE_SNAP_ANIMATION_DURATION:I

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0103

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->MENU_ZONE:I

    .line 67
    iput v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    .line 68
    new-instance v3, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    invoke-direct {v3, p0}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;-><init>(Lcom/android/launcher2/QuickViewMainMenu;)V

    iput-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    .line 69
    iput v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaX:I

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v3

    new-array v3, v3, [Lcom/android/launcher2/QuickView$Animate;

    iput-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    .line 115
    iput v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDragState:I

    .line 119
    iput-boolean v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    .line 120
    iput-boolean v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    .line 121
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I

    .line 132
    iput-boolean v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDropCheck:Z

    .line 133
    iput-boolean v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollCheck:Z

    .line 135
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 1538
    iput-boolean v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mConfigurationChangeIsInProgress:Z

    .line 1540
    iput-object v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mHandler:Landroid/os/Handler;

    .line 168
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mHandler:Landroid/os/Handler;

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v2

    .line 170
    .local v2, "maxScreenCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 171
    iget-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    new-instance v4, Lcom/android/launcher2/QuickView$Animate;

    invoke-direct {v4, p0}, Lcom/android/launcher2/QuickView$Animate;-><init>(Lcom/android/launcher2/QuickView;)V

    aput-object v4, v3, v1

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_0
    new-instance v3, Landroid/widget/Scroller;

    invoke-direct {v3, p1, v7, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    .line 176
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollDelay:I

    .line 178
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 179
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMinimumVelocity:I

    .line 180
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaximumVelocity:I

    .line 182
    const v3, 0x7f050012

    invoke-static {p1, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mEnterAnimator:Landroid/animation/Animator;

    .line 184
    iget-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mEnterAnimator:Landroid/animation/Animator;

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 186
    const v3, 0x7f050013

    invoke-static {p1, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mExitAnimator:Landroid/animation/Animator;

    .line 187
    iget-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mExitAnimator:Landroid/animation/Animator;

    const-wide/16 v4, 0x168

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02009d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher2/QuickViewMainMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/QuickViewMainMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mConfigurationChangeIsInProgress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/QuickViewMainMenu;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/QuickViewMainMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/QuickViewMainMenu;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/QuickViewMainMenu;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/QuickViewMainMenu;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollDelay:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/QuickViewMainMenu;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/QuickViewMainMenu;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getViewLayout(III)V
    .locals 23
    .param p1, "count"    # I
    .param p2, "childWidth"    # I
    .param p3, "childHeight"    # I

    .prologue
    .line 932
    if-lez p1, :cond_0

    sget-object v19, Lcom/android/launcher2/QuickViewMainMenu;->ROW_BY_COL_LAYOUT:[[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 991
    :cond_0
    return-void

    .line 939
    :cond_1
    move/from16 v0, p1

    new-array v0, v0, [Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    .line 940
    sget-object v19, Lcom/android/launcher2/QuickViewMainMenu;->ROW_BY_COL_LAYOUT:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    array-length v13, v0

    .line 941
    .local v13, "rows":I
    const/4 v8, 0x0

    .line 942
    .local v8, "maxCols":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v13, :cond_3

    .line 943
    sget-object v19, Lcom/android/launcher2/QuickViewMainMenu;->ROW_BY_COL_LAYOUT:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    aget v6, v19, v7

    .line 944
    .local v6, "colsOnThisRow":I
    if-le v6, v8, :cond_2

    .line 945
    move v8, v6

    .line 942
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 954
    .end local v6    # "colsOnThisRow":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getMeasuredWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getPaddingLeft()I

    move-result v20

    sub-int v10, v19, v20

    .line 955
    .local v10, "ourWidth":I
    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildGapH:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v18, v10, v19

    .line 957
    .local v18, "usableWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getMeasuredHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getPaddingTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getPaddingBottom()I

    move-result v20

    sub-int v9, v19, v20

    .line 958
    .local v9, "ourHeight":I
    add-int/lit8 v19, v13, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildGapV:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v17, v9, v19

    .line 960
    .local v17, "usableHeight":I
    mul-int v15, p3, v13

    .line 961
    .local v15, "totChildHeight":I
    mul-int v16, p2, v8

    .line 962
    .local v16, "totChildWidth":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 964
    .local v14, "scale":F
    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v19, v14, v19

    if-lez v19, :cond_4

    .line 965
    const/high16 v14, 0x3f800000    # 1.0f

    .line 966
    :cond_4
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p2, v0

    .line 967
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p3, v0

    .line 971
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildGapV:I

    move/from16 v19, v0

    add-int v19, v19, p3

    mul-int v19, v19, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildGapV:I

    move/from16 v20, v0

    sub-int v15, v19, v20

    .line 972
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getPaddingTop()I

    move-result v19

    sub-int v20, v9, v15

    div-int/lit8 v20, v20, 0x2

    add-int v12, v19, v20

    .line 973
    .local v12, "rowTop":I
    const/4 v3, 0x0

    .line 974
    .local v3, "childCount":I
    const/4 v11, 0x0

    .local v11, "row":I
    :goto_1
    if-ge v11, v13, :cond_0

    .line 975
    sget-object v19, Lcom/android/launcher2/QuickViewMainMenu;->ROW_BY_COL_LAYOUT:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    aget v5, v19, v11

    .line 976
    .local v5, "cols":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildGapH:I

    move/from16 v19, v0

    add-int v19, v19, p2

    mul-int v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildGapH:I

    move/from16 v20, v0

    sub-int v16, v19, v20

    .line 977
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getPaddingLeft()I

    move-result v19

    sub-int v20, v10, v16

    div-int/lit8 v20, v20, 0x2

    add-int v4, v19, v20

    .line 978
    .local v4, "colLeft":I
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_6

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v3

    if-nez v19, :cond_5

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    new-instance v20, Landroid/graphics/Rect;

    add-int v21, v4, p2

    add-int v22, v12, p3

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v4, v12, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v20, v19, v3

    .line 986
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 987
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildGapH:I

    move/from16 v19, v0

    add-int v19, v19, p2

    add-int v4, v4, v19

    .line 978
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 983
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v3

    add-int v20, v4, p2

    add-int v21, v12, p3

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 989
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildGapV:I

    move/from16 v19, v0

    add-int v19, v19, p3

    add-int v12, v12, v19

    .line 974
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method

.method private makeScreen(IZ)Landroid/view/View;
    .locals 11
    .param p1, "index"    # I
    .param p2, "isAddBtn"    # Z

    .prologue
    const/4 v10, 0x0

    .line 810
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 811
    .local v3, "context":Landroid/content/Context;
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 812
    .local v6, "v":Landroid/widget/FrameLayout;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 813
    .local v5, "res":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 814
    .local v1, "buttonParentPaddingRight":I
    const/4 v2, 0x0

    .line 819
    .local v2, "buttonParentPaddingTop":I
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 820
    .local v0, "buttonParent":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/16 v9, 0x31

    invoke-direct {v4, v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 823
    .local v4, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 826
    const v7, 0x7f0c0018

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 828
    const v7, 0x7f0c0019

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 830
    invoke-virtual {v0, v10, v2, v1, v10}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 831
    iget-object v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mPageLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v6, p1, v7}, Lcom/android/launcher2/QuickViewMainMenu;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 832
    iget-object v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mPanelPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mPanelPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/launcher2/QuickViewMainMenu;->mPanelPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/android/launcher2/QuickViewMainMenu;->mPanelPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 842
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 845
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 846
    invoke-virtual {v6, p0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 847
    invoke-virtual {v6, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 848
    return-object v6
.end method

.method private onDrawComplete(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1370
    iget v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I
    invoke-static {v1}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->access$000(Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1374
    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1376
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1379
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 1380
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 1383
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/QuickViewMainMenu;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getScrollX()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1385
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1388
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 1389
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020107

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 1392
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getScrollX()I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getScrollX()I

    move-result v4

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1395
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1376
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private savemenupage()V
    .locals 1

    .prologue
    .line 1039
    iget-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    if-nez v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->saveCurrentPageOrder()V

    .line 1041
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    .line 1043
    :cond_0
    return-void
.end method

.method private scroll(IIZ)V
    .locals 4
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "changePage"    # Z

    .prologue
    const/4 v3, 0x0

    .line 994
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getScrollX()I

    move-result v1

    .line 995
    .local v1, "scrollX":I
    if-gez p1, :cond_3

    .line 996
    if-lez v1, :cond_2

    .line 997
    add-int v2, v1, p1

    if-gez v2, :cond_1

    .line 998
    neg-int v2, v1

    invoke-virtual {p0, v2, v3, p3}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(IIZ)V

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    invoke-virtual {p0, p1, v3, p3}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(IIZ)V

    goto :goto_0

    .line 1003
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto :goto_0

    .line 1005
    :cond_3
    if-lez p1, :cond_0

    .line 1006
    iget v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaX:I

    sub-int v0, v2, v1

    .line 1007
    .local v0, "availableToScroll":I
    if-lez v0, :cond_5

    .line 1008
    if-le v0, p1, :cond_4

    .line 1009
    invoke-virtual {p0, p1, v3, p3}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(IIZ)V

    goto :goto_0

    .line 1011
    :cond_4
    invoke-virtual {p0, v0, v3, p3}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(IIZ)V

    goto :goto_0

    .line 1014
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method public static zOrderTweakMoveChild(Landroid/view/ViewGroup;II)V
    .locals 4
    .param p0, "vg"    # Landroid/view/ViewGroup;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 139
    if-ne p1, p2, :cond_0

    .line 155
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 143
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 144
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 146
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, p2

    add-int/lit8 v0, v3, -0x1

    .line 147
    .local v0, "bound":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 148
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 149
    if-eqz v2, :cond_2

    .line 150
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 147
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public cancelDrag()V
    .locals 1

    .prologue
    .line 761
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->cancelDrag()V

    .line 762
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDragState:I

    .line 763
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 748
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->close()V

    .line 749
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    .line 750
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewMainMenu;->savemenupage()V

    .line 751
    return-void
.end method

.method public computeScroll()V
    .locals 11

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    if-nez v7, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1059
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getScrollX()I

    move-result v2

    .line 1060
    .local v2, "oldX":I
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getScrollY()I

    move-result v3

    .line 1061
    .local v3, "oldY":I
    iget-object v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1062
    .local v5, "x":I
    iget-object v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1063
    .local v6, "y":I
    invoke-virtual {p0, v5}, Lcom/android/launcher2/QuickViewMainMenu;->setScrollX(I)V

    .line 1064
    invoke-virtual {p0, v6}, Lcom/android/launcher2/QuickViewMainMenu;->setScrollY(I)V

    .line 1067
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getScrollX()I

    move-result v7

    if-ne v2, v7, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getScrollY()I

    move-result v7

    if-eq v3, v7, :cond_3

    .line 1068
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getScrollY()I

    move-result v8

    invoke-virtual {p0, v7, v8, v2, v3}, Lcom/android/launcher2/QuickViewMainMenu;->onScrollChanged(IIII)V

    .line 1071
    :cond_3
    iget v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 1072
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getScrollX()I

    move-result v7

    sub-int v1, v7, v2

    .line 1073
    .local v1, "deltaX":I
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    .line 1074
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 1075
    iget-object v4, p0, Lcom/android/launcher2/QuickViewMainMenu;->mTmpRect:Landroid/graphics/Rect;

    .line 1076
    .local v4, "r":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1077
    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v1

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 1078
    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 1080
    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->right:I

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1084
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "deltaX":I
    .end local v4    # "r":Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1213
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v6

    .line 1214
    .local v6, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getWidth()I

    move-result v13

    .line 1215
    .local v13, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getHeight()I

    move-result v10

    .line 1217
    .local v10, "height":I
    if-eqz v13, :cond_0

    if-nez v10, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1220
    :cond_1
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1223
    .local v12, "progress":F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    .line 1225
    .local v7, "currentPage":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    array-length v14, v14

    if-eq v14, v6, :cond_6

    :cond_2
    if-lez v6, :cond_6

    .line 1226
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    array-length v14, v14

    if-eq v14, v6, :cond_8

    .line 1227
    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1228
    .local v2, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v5

    .line 1229
    .local v5, "chilecount":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1230
    .local v4, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1231
    .local v3, "childHeight":I
    const/4 v14, 0x1

    if-lt v5, v14, :cond_0

    .line 1234
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    array-length v14, v14

    if-eq v14, v6, :cond_5

    .line 1235
    :cond_4
    new-array v14, v6, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    .line 1237
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4, v3}, Lcom/android/launcher2/QuickViewMainMenu;->getViewLayout(III)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    .line 1244
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childHeight":I
    .end local v4    # "childWidth":I
    .end local v5    # "chilecount":I
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 1245
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    .line 1246
    const/4 v12, 0x0

    .line 1247
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationStartTime:J

    .line 1248
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    .line 1249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v14}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPinchIndex:I

    .line 1251
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mIsWorkspace:Z

    .line 1252
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/QuickViewMainMenu;->setOpenStartRect(I)V

    .line 1254
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->requestLayout()V

    .line 1255
    new-array v14, v6, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    .line 1256
    new-array v14, v6, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    .line 1257
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v6, :cond_c

    .line 1258
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    aput-object v15, v14, v11

    .line 1259
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v14, :cond_7

    .line 1260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v14, v14, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    aget-object v15, v15, v11

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1261
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    aput-object v15, v14, v11

    .line 1257
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1240
    .end local v11    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    goto :goto_1

    .line 1263
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_c

    .line 1264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationStartTime:J

    .line 1265
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    .line 1266
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPinchIndex:I

    .line 1267
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->requestLayout()V

    .line 1268
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/QuickViewMainMenu;->setCloseEndRect(I)V

    .line 1270
    new-array v14, v6, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    .line 1271
    new-array v14, v6, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    .line 1272
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    if-ge v11, v6, :cond_b

    .line 1273
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    aput-object v15, v14, v11

    .line 1274
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v14, :cond_a

    .line 1275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    aget-object v14, v14, v11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    aget-object v15, v15, v11

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1276
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    aput-object v15, v14, v11

    .line 1272
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1278
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v14}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewCloseAnimationStarted()V

    .line 1281
    .end local v11    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_12

    .line 1282
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    if-ge v11, v6, :cond_f

    .line 1283
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1284
    .restart local v2    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    if-eq v2, v14, :cond_e

    add-int/lit8 v14, v7, -0x1

    if-eq v11, v14, :cond_d

    add-int/lit8 v14, v7, 0x1

    if-ne v11, v14, :cond_e

    .line 1285
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    .line 1282
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1288
    .end local v2    # "child":Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    .line 1289
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->postInvalidate()V

    .line 1363
    .end local v11    # "i":I
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_11

    .line 1364
    const/4 v12, 0x0

    .line 1366
    :cond_11
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/QuickViewMainMenu;->onDrawComplete(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1291
    :cond_12
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_22

    .line 1293
    :cond_13
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPinchIndex:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickViewMainMenu;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v15}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v15

    if-eq v14, v15, :cond_14

    .line 1297
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationStartTime:J

    move-wide/from16 v16, v0

    sub-long v8, v14, v16

    .line 1299
    .local v8, "current":J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationDuration:I

    int-to-long v14, v14

    cmp-long v14, v8, v14

    if-ltz v14, :cond_1b

    .line 1301
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_1a

    .line 1302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v14}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewCloseAnimationCompleted()V

    .line 1303
    const/16 v14, 0x8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    .line 1308
    :goto_6
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1313
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    array-length v14, v14

    if-eq v14, v6, :cond_16

    .line 1314
    :cond_15
    if-lez v6, :cond_16

    .line 1315
    new-array v14, v6, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    .line 1318
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAniEngine:Lcom/android/launcher2/AnimateEngine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickViewMainMenu;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v15, v0, v1, v12}, Lcom/android/launcher2/AnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    .line 1319
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    if-nez v14, :cond_1c

    .line 1320
    const-string v14, "QuickViewMainMenu"

    const-string v15, "Failed to get current rectangles from animation engine"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_17
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_18

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    const/4 v15, 0x7

    if-ne v14, v15, :cond_19

    .line 1344
    :cond_18
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    const/4 v15, 0x7

    if-ne v14, v15, :cond_19

    .line 1345
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1349
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto/16 :goto_5

    .line 1305
    :cond_1a
    const/4 v14, 0x7

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    goto :goto_6

    .line 1310
    :cond_1b
    long-to-float v14, v8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationDuration:I

    int-to-float v15, v15

    div-float v12, v14, v15

    goto :goto_7

    .line 1322
    :cond_1c
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_8
    if-ge v11, v6, :cond_17

    .line 1324
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1325
    .restart local v2    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v14, v14, v11

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v15, v15, v11

    iget v15, v15, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v14, v14, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/QuickViewMainMenu;->isAvailableRect(Landroid/graphics/Rect;)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 1328
    float-to-double v14, v12

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpg-double v14, v14, v16

    if-gez v14, :cond_1d

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_1e

    :cond_1d
    float-to-double v14, v12

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpl-double v14, v14, v16

    if-lez v14, :cond_20

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_20

    .line 1330
    :cond_1e
    if-ne v11, v7, :cond_1f

    .line 1331
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    .line 1322
    :cond_1f
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 1334
    :cond_20
    add-int/lit8 v14, v7, -0x1

    if-eq v11, v14, :cond_21

    if-eq v11, v7, :cond_21

    add-int/lit8 v14, v7, 0x1

    if-ne v11, v14, :cond_1f

    .line 1335
    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    goto :goto_9

    .line 1352
    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "current":J
    .end local v11    # "i":I
    :cond_22
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollWidth:I

    if-eqz v14, :cond_23

    .line 1353
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getScrollX()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollHalfWidth:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollWidth:I

    div-int v7, v14, v15

    .line 1355
    :cond_23
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_a
    if-ge v11, v6, :cond_10

    .line 1356
    add-int/lit8 v14, v7, -0x1

    if-eq v11, v14, :cond_24

    if-eq v11, v7, :cond_24

    add-int/lit8 v14, v7, 0x1

    if-ne v11, v14, :cond_25

    .line 1359
    :cond_24
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v11}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    .line 1355
    :cond_25
    add-int/lit8 v11, v11, 0x1

    goto :goto_a
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V
    .locals 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I

    .prologue
    .line 1403
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v23

    .local v23, "viewWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v22

    .line 1404
    .local v22, "viewHeight":I
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v10, v26, v27

    .local v10, "halfViewWidth":F
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v9, v26, v27

    .line 1407
    .local v9, "halfViewHeight":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v24, v26, v10

    .line 1408
    .local v24, "viewXCenter":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v26, v9

    .line 1409
    .local v25, "viewYCenter":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 1410
    .local v16, "res":Landroid/content/res/Resources;
    const v26, 0x7f0c0017

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1412
    .local v7, "childPaddingLeft":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1415
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewMainMenu;->mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1417
    .local v6, "bgDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchedView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_4

    .line 1418
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDragState:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_2

    .line 1419
    sget-object v26, Lcom/android/launcher2/QuickViewMainMenu;->RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1420
    const/16 v26, 0x80

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 1424
    :goto_0
    sget v26, Lcom/android/launcher2/QuickViewMainMenu;->mScaleFactor:F

    const v27, 0x3ca3d70a    # 0.02f

    add-float v26, v26, v27

    const v27, 0x3f933333    # 1.15f

    cmpg-float v26, v26, v27

    if-gez v26, :cond_3

    sget v26, Lcom/android/launcher2/QuickViewMainMenu;->mScaleFactor:F

    const v27, 0x3ca3d70a    # 0.02f

    add-float v18, v26, v27

    .line 1425
    .local v18, "scaleFactor":F
    :goto_1
    sput v18, Lcom/android/launcher2/QuickViewMainMenu;->mScaleFactor:F

    .line 1431
    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1432
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1433
    neg-float v0, v10

    move/from16 v26, v0

    neg-float v0, v9

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1435
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationStartTime:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    move-wide/from16 v0, v26

    long-to-int v8, v0

    .line 1436
    .local v8, "current":I
    int-to-float v0, v8

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationDuration:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v15, v26, v27

    .line 1437
    .local v15, "progress":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    move v4, v15

    .line 1438
    .local v4, "bgAlpha":F
    :goto_3
    const/16 v26, 0x0

    const/high16 v27, 0x3f800000    # 1.0f

    move/from16 v0, v27

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v27

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1440
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    move/from16 v26, v0

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 1443
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1445
    :cond_0
    const/high16 v26, 0x437f0000    # 255.0f

    mul-float v26, v26, v4

    move/from16 v0, v26

    float-to-int v5, v0

    .line 1449
    .local v5, "bgAndShadowAlpha":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getVisibility()I

    move-result v26

    if-nez v26, :cond_1

    .line 1450
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1451
    const/16 v26, 0x0

    move/from16 v0, v26

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1452
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1457
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    .line 1458
    .local v21, "tag":Ljava/lang/Object;
    move-object/from16 v0, v21

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v26, v0

    if-eqz v26, :cond_8

    .line 1460
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v26, v0

    check-cast v21, Ljava/lang/Integer;

    .end local v21    # "tag":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v27

    invoke-interface/range {v26 .. v27}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getPage(I)Landroid/view/View;

    move-result-object v12

    .line 1463
    .local v12, "page":Landroid/view/View;
    if-nez v12, :cond_6

    .line 1533
    .end local v12    # "page":Landroid/view/View;
    :goto_4
    return-void

    .line 1422
    .end local v4    # "bgAlpha":F
    .end local v5    # "bgAndShadowAlpha":I
    .end local v8    # "current":I
    .end local v15    # "progress":F
    .end local v18    # "scaleFactor":F
    :cond_2
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_0

    .line 1424
    :cond_3
    const v18, 0x3f933333    # 1.15f

    goto/16 :goto_1

    .line 1427
    :cond_4
    const/high16 v18, 0x3f800000    # 1.0f

    .line 1428
    .restart local v18    # "scaleFactor":F
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    .line 1437
    .restart local v8    # "current":I
    .restart local v15    # "progress":F
    :cond_5
    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v4, v26, v15

    goto/16 :goto_3

    .line 1465
    .restart local v4    # "bgAlpha":F
    .restart local v5    # "bgAndShadowAlpha":I
    .restart local v12    # "page":Landroid/view/View;
    :cond_6
    const/high16 v26, 0x3f800000    # 1.0f

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1468
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v14

    .local v14, "pageWidth":I
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v13

    .local v13, "pageHeight":I
    move-object/from16 v26, p2

    .line 1470
    check-cast v26, Landroid/view/ViewGroup;

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v11, v26, v4

    .line 1472
    .local v11, "p":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v26, v23, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v14

    move/from16 v27, v0

    div-float v19, v26, v27

    .line 1474
    .local v19, "scaleH":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    sub-int v26, v22, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v27, v27, v11

    sub-float v26, v26, v27

    int-to-float v0, v13

    move/from16 v27, v0

    div-float v20, v26, v27

    .line 1476
    .local v20, "scaleV":F
    cmpl-float v26, v20, v19

    if-lez v26, :cond_7

    move/from16 v17, v19

    .line 1477
    .local v17, "scale":F
    :goto_5
    mul-float v17, v17, v18

    .line 1480
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    add-float v26, v26, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v27, v27, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    add-float v27, v27, v25

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1484
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1485
    neg-int v0, v14

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v26, v26, v27

    neg-int v0, v13

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1487
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1489
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1490
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .end local v17    # "scale":F
    :cond_7
    move/from16 v17, v20

    .line 1476
    goto/16 :goto_5

    .line 1515
    .end local v11    # "p":F
    .end local v12    # "page":Landroid/view/View;
    .end local v13    # "pageHeight":I
    .end local v14    # "pageWidth":I
    .end local v19    # "scaleH":F
    .end local v20    # "scaleV":F
    .restart local v21    # "tag":Ljava/lang/Object;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4
.end method

.method public drawCloseAnimation()Z
    .locals 1

    .prologue
    .line 727
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->drawCloseAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    .line 729
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 730
    const/4 v0, 0x1

    .line 732
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public drawOpenAnimation()V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-nez v0, :cond_0

    .line 719
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    .line 721
    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->drawOpenAnimation()V

    .line 723
    return-void
.end method

.method protected drop(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 859
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/QuickView;->drop(II)V

    .line 860
    return-void
.end method

.method protected endDrag()V
    .locals 1

    .prologue
    .line 853
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->endDrag()V

    .line 854
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDragState:I

    .line 855
    return-void
.end method

.method public getCheckedIndex()I
    .locals 5

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v2

    .line 651
    .local v2, "numPages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 652
    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 653
    .local v3, "page":Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 654
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "page":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 655
    .local v0, "homeButton":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/CompoundButton;

    if-eqz v4, :cond_0

    .line 656
    check-cast v0, Landroid/widget/CompoundButton;

    .end local v0    # "homeButton":Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 662
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 651
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 662
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 756
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    return v0
.end method

.method public getTargetPage()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1181
    const/4 v0, 0x0

    .line 1182
    .local v0, "MaxNum":I
    const/4 v1, 0x0

    .line 1183
    .local v1, "Target":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 1184
    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1185
    .local v2, "child":Landroid/view/View;
    const/4 v6, 0x2

    new-array v5, v6, [I

    .line 1186
    .local v5, "posXY":[I
    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1187
    aget v6, v5, v8

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int v4, v6, v7

    .line 1189
    .local v4, "length":I
    aget v6, v5, v8

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getMeasuredWidth()I

    move-result v7

    if-gt v6, v7, :cond_0

    if-gez v4, :cond_1

    .line 1183
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1192
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getMeasuredWidth()I

    move-result v6

    if-le v4, v6, :cond_3

    .line 1193
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getMeasuredWidth()I

    move-result v6

    aget v7, v5, v8

    sub-int v4, v6, v7

    .line 1197
    :cond_2
    :goto_2
    if-le v4, v0, :cond_0

    .line 1198
    move v0, v4

    .line 1199
    move v1, v3

    goto :goto_1

    .line 1194
    :cond_3
    aget v6, v5, v8

    if-ltz v6, :cond_2

    .line 1195
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_2

    .line 1202
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "length":I
    .end local v5    # "posXY":[I
    :cond_4
    iget v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    if-le v1, v6, :cond_6

    .line 1203
    iget v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    .line 1207
    :cond_5
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    return-object v6

    .line 1204
    :cond_6
    iget v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    if-ge v1, v6, :cond_5

    .line 1205
    iget v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    goto :goto_3
.end method

.method public initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V
    .locals 9
    .param p1, "provider"    # Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    .prologue
    const/4 v8, 0x0

    .line 777
    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->init(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/QuickViewMainMenu;->mPageLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 779
    iget-object v4, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-nez v4, :cond_0

    .line 780
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    .line 782
    :cond_0
    const/4 v2, 0x0

    .line 783
    .local v2, "screenCount":I
    invoke-interface {p1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v2

    .line 796
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 797
    .local v0, "context":Landroid/content/Context;
    new-instance v4, Landroid/widget/Scroller;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v8}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v4, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    .line 799
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 800
    invoke-direct {p0, v1, v8}, Lcom/android/launcher2/QuickViewMainMenu;->makeScreen(IZ)Landroid/view/View;

    move-result-object v3

    .line 803
    .local v3, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f10006e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 799
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 806
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected isValidTag(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 668
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadLayoutParameters()V
    .locals 10

    .prologue
    .line 1603
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1604
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 1605
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1607
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mOrientation:I

    .line 1608
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchSlop:I

    .line 1609
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mTempRects:[Landroid/graphics/Rect;

    .line 1611
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->reloadLayoutParameters()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    .line 1612
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 1613
    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1614
    .local v0, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mPanelPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mPanelPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/launcher2/QuickViewMainMenu;->mPanelPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1616
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1612
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1618
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected measureChildViews()V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 221
    iget v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mWidthMeasureSpec:I

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 222
    .local v6, "width":I
    iget v7, p0, Lcom/android/launcher2/QuickViewMainMenu;->mHeightMeasureSpec:I

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 223
    .local v4, "height":I
    invoke-virtual {p0, v6, v4}, Lcom/android/launcher2/QuickViewMainMenu;->setMeasuredDimension(II)V

    .line 225
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v1

    .line 226
    .local v1, "childCount":I
    if-nez v1, :cond_1

    .line 241
    :cond_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 231
    .local v3, "childMeasureWidthSpec":I
    invoke-virtual {p0, v8}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 235
    .local v2, "childMeasureHeightSpec":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 236
    invoke-virtual {p0, v5}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 237
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    .line 238
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 235
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public moveCurrentPage(Z)Z
    .locals 5
    .param p1, "animate"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 1162
    new-array v0, v4, [I

    .line 1163
    .local v0, "posXY":[I
    iget v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    if-eq v2, v4, :cond_1

    .line 1165
    iget v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1166
    if-eqz v0, :cond_0

    .line 1167
    aget v2, v0, v1

    if-gez v2, :cond_0

    .line 1168
    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    .line 1171
    :cond_0
    aget v2, v0, v1

    iget v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2, v1, p1}, Lcom/android/launcher2/QuickViewMainMenu;->scroll(IIZ)V

    .line 1173
    const/4 v1, 0x1

    .line 1175
    :cond_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->isAnimStateOkayForClickEvents()Z

    move-result v0

    if-nez v0, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 697
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getTargetPage()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 698
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    goto :goto_0

    .line 700
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    .line 701
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewMainMenu;->moveCurrentPage(Z)Z

    .line 702
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v6, 0x1

    .line 1544
    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1545
    iput-boolean v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mConfigurationChangeIsInProgress:Z

    .line 1551
    iget-object v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDropCheck:Z

    if-nez v5, :cond_1

    .line 1552
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1553
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->cancelDrag()V

    .line 1555
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->refreshView()V

    .line 1557
    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1600
    :goto_0
    return-void

    .line 1561
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1562
    .local v3, "res":Landroid/content/res/Resources;
    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_5

    move v1, v6

    .line 1563
    .local v1, "isLandscape":Z
    :goto_1
    const v5, 0x7f0e00fe

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1567
    .local v0, "barHeight":I
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v5, v5, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v4

    .line 1570
    .local v4, "vDeleteDropLayout":Landroid/widget/FrameLayout;
    if-eqz v4, :cond_3

    .line 1571
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1572
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTop()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1573
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1574
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1575
    const/16 v5, 0x15

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1581
    :goto_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTop()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTextRight()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1583
    if-eqz v1, :cond_7

    .line 1584
    check-cast v4, Lcom/android/launcher2/QuickViewDragBar;

    .end local v4    # "vDeleteDropLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v4, v6}, Lcom/android/launcher2/QuickViewDragBar;->setTextDisplayPositionRight(Z)V

    .line 1590
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mHandler:Landroid/os/Handler;

    if-nez v5, :cond_4

    .line 1591
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mHandler:Landroid/os/Handler;

    .line 1593
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/launcher2/QuickViewMainMenu$1;

    invoke-direct {v6, p0}, Lcom/android/launcher2/QuickViewMainMenu$1;-><init>(Lcom/android/launcher2/QuickViewMainMenu;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v0    # "barHeight":I
    .end local v1    # "isLandscape":Z
    :cond_5
    move v1, v7

    .line 1562
    goto :goto_1

    .line 1577
    .restart local v0    # "barHeight":I
    .restart local v1    # "isLandscape":Z
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4    # "vDeleteDropLayout":Landroid/widget/FrameLayout;
    :cond_6
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1578
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1579
    const/16 v5, 0x31

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    .line 1586
    :cond_7
    check-cast v4, Lcom/android/launcher2/QuickViewDragBar;

    .end local v4    # "vDeleteDropLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v4, v7}, Lcom/android/launcher2/QuickViewDragBar;->setTextDisplayPositionRight(Z)V

    goto :goto_3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->isAnimating()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 384
    const/4 v14, 0x1

    .line 494
    :goto_0
    return v14

    .line 387
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mOrientation:I

    .line 389
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 390
    .local v7, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .line 392
    .local v12, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    .line 494
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    if-eqz v14, :cond_9

    const/4 v14, 0x1

    goto :goto_0

    .line 394
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_2

    .line 395
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMultiTouchUsed:Z

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPinchOutProcess:Z

    if-eqz v14, :cond_1

    .line 396
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    .line 398
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    sub-float v14, v12, v14

    float-to-int v4, v14

    .line 399
    .local v4, "dy":I
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    sub-float v14, v7, v14

    float-to-int v3, v14

    .line 401
    .local v3, "dx":I
    mul-int v14, v4, v4

    mul-int v15, v3, v3

    add-int/2addr v14, v15

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchPointDistance:I

    sub-int v5, v14, v15

    .line 404
    .local v5, "pinchDelta":I
    const/16 v14, 0x32

    if-le v5, v14, :cond_1

    .line 405
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPinchOutIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 406
    .local v2, "childOnPinch":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 407
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMultiTouchUsed:Z

    .line 408
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPinchOutProcess:Z

    .line 409
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPinchOutIndex:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    .line 411
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 416
    .end local v2    # "childOnPinch":Landroid/view/View;
    .end local v3    # "dx":I
    .end local v4    # "dy":I
    .end local v5    # "pinchDelta":I
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mLastMotionX:F

    sub-float/2addr v14, v7

    float-to-int v9, v14

    .line 417
    .local v9, "xDiff":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchSlop:I

    .line 418
    .local v6, "touchSlop":I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-le v14, v6, :cond_4

    const/4 v11, 0x1

    .line 419
    .local v11, "xMoved":Z
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    if-nez v14, :cond_3

    .line 420
    if-eqz v11, :cond_3

    .line 421
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    .line 422
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v15}, Lcom/android/launcher2/QuickViewMainMenu;->scroll(IIZ)V

    .line 423
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/launcher2/QuickViewMainMenu;->mLastMotionX:F

    .line 424
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewMainMenu;->mLastMotionY:F

    .line 428
    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMultiTouchUsed:Z

    .line 429
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPinchOutProcess:Z

    goto/16 :goto_1

    .line 418
    .end local v11    # "xMoved":Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 434
    .end local v6    # "touchSlop":I
    .end local v9    # "xDiff":I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDvfsHelper:Landroid/os/DVFSHelper;

    if-eqz v14, :cond_5

    .line 435
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDvfsHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v14}, Landroid/os/DVFSHelper;->acquire()V

    .line 450
    :cond_5
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/launcher2/QuickViewMainMenu;->mLastMotionX:F

    .line 451
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewMainMenu;->mLastMotionY:F

    .line 453
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->getFinalX()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->getCurrX()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 454
    .local v10, "xDist":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchSlop:I

    if-ge v10, v14, :cond_7

    .line 455
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    .line 456
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_1

    .line 458
    :cond_7
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    goto/16 :goto_1

    .line 464
    .end local v10    # "xDist":I
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMultiTouchUsed:Z

    if-eqz v14, :cond_8

    .line 465
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMultiTouchUsed:Z

    .line 466
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPinchOutProcess:Z

    goto/16 :goto_1

    .line 468
    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    .line 469
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    .line 470
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    invoke-virtual {v14}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->removeSelf()V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->endDrag()V

    goto/16 :goto_1

    .line 476
    :sswitch_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMultiTouchUsed:Z

    if-nez v14, :cond_1

    .line 477
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMultiTouchUsed:Z

    .line 479
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    float-to-int v14, v14

    int-to-float v13, v14

    .line 480
    .local v13, "y1":F
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    float-to-int v14, v14

    int-to-float v8, v14

    .line 482
    .local v8, "x1":F
    float-to-int v14, v7

    float-to-int v15, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/launcher2/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v14

    float-to-int v15, v8

    float-to-int v0, v13

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/launcher2/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v15

    if-ne v14, v15, :cond_1

    .line 483
    sub-float v14, v12, v13

    float-to-int v4, v14

    .line 484
    .restart local v4    # "dy":I
    sub-float v14, v7, v8

    float-to-int v3, v14

    .line 485
    .restart local v3    # "dx":I
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPinchOutProcess:Z

    .line 486
    mul-int v14, v4, v4

    mul-int v15, v3, v3

    add-int/2addr v14, v15

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchPointDistance:I

    .line 487
    float-to-int v14, v7

    float-to-int v15, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/launcher2/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mPinchOutIndex:I

    goto/16 :goto_1

    .line 494
    .end local v3    # "dx":I
    .end local v4    # "dy":I
    .end local v8    # "x1":F
    .end local v13    # "y1":F
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 392
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x105 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->isChangingOrientation()Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mEnabledChildAnimation:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_2

    const/4 v11, 0x1

    .line 256
    .local v11, "shouldAnimate":Z
    :goto_0
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mConfigurationChangeIsInProgress:Z

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 257
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->measureChildViews()V

    .line 261
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/QuickViewMainMenu;->updateParamsIfNeeded(Z)V

    .line 264
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaX:I

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v6

    .line 267
    .local v6, "count":I
    const/4 v13, 0x1

    if-ge v6, v13, :cond_3

    .line 368
    .end local v6    # "count":I
    :cond_1
    :goto_1
    return-void

    .line 250
    .end local v11    # "shouldAnimate":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 270
    .restart local v6    # "count":I
    .restart local v11    # "shouldAnimate":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    array-length v13, v13

    if-eq v13, v6, :cond_5

    .line 271
    :cond_4
    new-array v13, v6, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    .line 274
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    array-length v13, v13

    if-eq v13, v6, :cond_8

    .line 275
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    if-eqz v13, :cond_7

    .line 276
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    array-length v13, v13

    if-ge v8, v13, :cond_7

    .line 277
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    aget-object v13, v13, v8

    invoke-virtual {v13}, Lcom/android/launcher2/QuickView$Animate;->stop()V

    .line 276
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 279
    .end local v8    # "i":I
    :cond_7
    new-array v13, v6, [Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    .line 280
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v6, :cond_8

    .line 281
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    new-instance v14, Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/launcher2/QuickView$Animate;-><init>(Lcom/android/launcher2/QuickView;)V

    aput-object v14, v13, v8

    .line 280
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 284
    .end local v8    # "i":I
    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 285
    .local v1, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    .line 286
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 287
    .local v5, "childWidth":I
    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 289
    .local v2, "childHeight":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildGapH:I

    add-int/2addr v13, v5

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollWidth:I

    .line 290
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollWidth:I

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollHalfWidth:I

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v13, v5

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    .line 294
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    .line 295
    .local v3, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e0141

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e0016

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    add-int v4, v13, v14

    .line 308
    .local v4, "childTop":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    if-ge v8, v6, :cond_d

    .line 309
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_b

    .line 312
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v8

    if-nez v13, :cond_9

    .line 313
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    aput-object v14, v13, v8

    .line 316
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v8

    add-int v14, v3, v5

    add-int v15, v4, v2

    invoke-virtual {v13, v3, v4, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 320
    sget-object v13, Lcom/android/launcher2/QuickViewMainMenu;->sHitRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v13}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 321
    sget-object v13, Lcom/android/launcher2/QuickViewMainMenu;->sHitRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c

    if-eqz v11, :cond_c

    .line 322
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_a

    .line 326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    aget-object v13, v13, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    aget-object v14, v14, v8

    invoke-virtual {v13, v1, v14}, Lcom/android/launcher2/QuickView$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 332
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildGapH:I

    add-int/2addr v13, v5

    add-int/2addr v3, v13

    .line 308
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 329
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v8

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    aget-object v14, v14, v8

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    aget-object v15, v15, v8

    iget v15, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v16, v0

    aget-object v16, v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 336
    :cond_d
    sub-int v12, p4, p2

    .line 337
    .local v12, "width":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildGapH:I

    sub-int v13, v3, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    add-int v9, v13, v14

    .line 344
    .local v9, "lastChildPaddedRight":I
    if-le v9, v12, :cond_f

    .line 345
    sub-int v13, v9, v12

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaX:I

    .line 354
    :goto_6
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    .line 358
    .local v7, "currentPage":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_10

    .line 359
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewMainMenu;->setScrollX(I)V

    .line 364
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mConfigurationChangeIsInProgress:Z

    if-eqz v13, :cond_1

    .line 366
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewMainMenu;->setScrollX(I)V

    goto/16 :goto_1

    .line 347
    .end local v7    # "currentPage":I
    :cond_f
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaX:I

    goto :goto_6

    .line 360
    .restart local v7    # "currentPage":I
    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    const/16 v14, 0xa

    if-ne v13, v14, :cond_e

    .line 361
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewMainMenu;->setScrollX(I)V

    .line 362
    const/4 v13, 0x7

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mAnimationState:I

    goto :goto_7
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 673
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->isAnimStateOkayForClickEvents()Z

    move-result v2

    if-nez v2, :cond_1

    .line 685
    :cond_0
    :goto_0
    return v0

    .line 676
    :cond_1
    iget v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 678
    iget-boolean v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMultiTouchUsed:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 679
    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewMainMenu;->startDrag(Landroid/view/View;)V

    .line 680
    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    .line 681
    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewMainMenu;->performHapticFeedback(I)Z

    .line 682
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    move v0, v1

    .line 683
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 203
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CellLayoutChildren cannot accept an UNSPECIFIED MeasureSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/QuickView;->onMeasure(II)V

    .line 210
    iput p1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mWidthMeasureSpec:I

    .line 211
    iput p2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mHeightMeasureSpec:I

    .line 212
    return-void
.end method

.method public onPinchOut()Z
    .locals 2

    .prologue
    .line 372
    iget v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mPinchOutIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 373
    .local v0, "childOnPinch":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 374
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->onPinchOut()Z

    .line 376
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->isAnimating()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 500
    const/4 v13, 0x0

    .line 642
    :goto_0
    return v13

    .line 503
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 504
    .local v10, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .line 506
    .local v12, "y":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v13, :cond_1

    .line 507
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 509
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 511
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 642
    :cond_2
    :goto_1
    const/4 v13, 0x1

    goto :goto_0

    .line 513
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v13}, Landroid/widget/Scroller;->isFinished()Z

    move-result v13

    if-nez v13, :cond_2

    .line 514
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v13}, Landroid/widget/Scroller;->abortAnimation()V

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->computeScroll()V

    goto :goto_1

    .line 519
    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mLastMotionX:F

    sub-float/2addr v13, v10

    float-to-int v3, v13

    .line 520
    .local v3, "deltaX":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mLastMotionY:F

    sub-float/2addr v13, v12

    float-to-int v4, v13

    .line 522
    .local v4, "deltaY":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchSlop:I

    if-le v13, v14, :cond_4

    const/4 v11, 0x1

    .line 524
    .local v11, "xMoved":Z
    :goto_2
    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    if-nez v13, :cond_3

    .line 525
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    .line 528
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 530
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v14}, Lcom/android/launcher2/QuickViewMainMenu;->scroll(IIZ)V

    .line 531
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/launcher2/QuickViewMainMenu;->mLastMotionX:F

    .line 532
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewMainMenu;->mLastMotionY:F

    goto :goto_1

    .line 522
    .end local v11    # "xMoved":Z
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 533
    .restart local v11    # "xMoved":Z
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 534
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    if-eqz v13, :cond_6

    .line 535
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v15, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v16

    sub-int v16, v16, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v17

    sub-int v17, v17, v4

    invoke-virtual/range {v13 .. v17}, Landroid/view/View;->layout(IIII)V

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 540
    :cond_6
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/launcher2/QuickViewMainMenu;->mLastMotionX:F

    .line 541
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewMainMenu;->mLastMotionY:F

    .line 544
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDragState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    .line 547
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDragState:I

    .line 552
    :cond_7
    float-to-int v13, v10

    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/launcher2/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v5

    .line 553
    .local v5, "index":I
    const/4 v13, -0x1

    if-eq v5, v13, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingIndex:I

    if-eq v5, v13, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_8

    const/4 v8, 0x1

    .line 555
    .local v8, "shouldRepositionDraggingView":Z
    :goto_3
    if-eqz v8, :cond_a

    .line 556
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    if-eqz v13, :cond_2

    .line 557
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingIndex:I

    if-ge v13, v5, :cond_9

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->scrollToRight()V

    goto/16 :goto_1

    .line 553
    .end local v8    # "shouldRepositionDraggingView":Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 559
    .restart local v8    # "shouldRepositionDraggingView":Z
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingIndex:I

    if-le v13, v5, :cond_2

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->scrollToLeft()V

    goto/16 :goto_1

    .line 563
    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    .line 564
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    invoke-virtual {v13}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->removeSelf()V

    goto/16 :goto_1

    .line 569
    .end local v3    # "deltaX":I
    .end local v4    # "deltaY":I
    .end local v5    # "index":I
    .end local v8    # "shouldRepositionDraggingView":Z
    .end local v11    # "xMoved":Z
    :pswitch_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_12

    .line 570
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 571
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v13, 0x3e8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaximumVelocity:I

    int-to-float v14, v14

    invoke-virtual {v9, v13, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 572
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v13

    float-to-int v6, v13

    .line 573
    .local v6, "initialVelocity":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    .line 575
    .local v2, "curPage":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getTargetPage()Landroid/view/View;

    .line 577
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMinimumVelocity:I

    if-le v13, v14, :cond_b

    .line 578
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    if-ne v2, v13, :cond_b

    .line 579
    if-lez v6, :cond_11

    .line 580
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    .line 587
    :cond_b
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->snapToQvPage()V

    .line 589
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v13, :cond_c

    .line 590
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->recycle()V

    .line 591
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 594
    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    .line 605
    .end local v2    # "curPage":I
    .end local v6    # "initialVelocity":I
    .end local v9    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_d
    :goto_5
    :pswitch_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mOrientation:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    if-ne v13, v14, :cond_e

    .line 607
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    .line 608
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    invoke-virtual {v13}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->removeSelf()V

    .line 609
    float-to-int v13, v10

    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/launcher2/QuickViewMainMenu;->drop(II)V

    .line 612
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchedView:Landroid/view/View;

    if-eqz v13, :cond_10

    .line 613
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 616
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->endDrag()V

    .line 625
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDvfsHelper:Landroid/os/DVFSHelper;

    if-eqz v13, :cond_2

    .line 626
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mDvfsHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v13}, Landroid/os/DVFSHelper;->release()V

    goto/16 :goto_1

    .line 581
    .restart local v2    # "curPage":I
    .restart local v6    # "initialVelocity":I
    .restart local v9    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_11
    if-gez v6, :cond_b

    .line 582
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    goto :goto_4

    .line 596
    .end local v2    # "curPage":I
    .end local v6    # "initialVelocity":I
    .end local v9    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getMeasuredHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    sub-float v1, v12, v13

    .line 598
    .local v1, "adj_y":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v13}, Lcom/android/launcher2/MenuAppsGrid;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v13

    invoke-virtual {v13, v10, v1}, Lcom/android/launcher2/PageIndicatorManager;->snapPageTouchArea(FF)I

    move-result v7

    .line 599
    .local v7, "page":I
    const/4 v13, -0x1

    if-le v7, v13, :cond_d

    .line 600
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->snapToQvPage()V

    goto :goto_5

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public open()V
    .locals 2

    .prologue
    .line 736
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->open()V

    .line 737
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    .line 744
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f100025

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 745
    return-void
.end method

.method refreshView()V
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewMainMenu;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 771
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDragState:I

    .line 773
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->requestLayout()V

    .line 774
    return-void
.end method

.method public scrollLeft()V
    .locals 3

    .prologue
    .line 1128
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1133
    :goto_0
    return-void

    .line 1130
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewMainMenu;->scrollStart(I)V

    .line 1131
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollWidth:I

    neg-int v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->scroll(IIZ)V

    .line 1132
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1136
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1141
    :goto_0
    return-void

    .line 1138
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewMainMenu;->scrollStart(I)V

    .line 1139
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollWidth:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->scroll(IIZ)V

    .line 1140
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method public scrollStart(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 1117
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingIndex:I

    .line 1118
    .local v0, "mDesIndex":I
    iget v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingIndex:I

    add-int/2addr v1, p1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingIndex:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1119
    iget v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingIndex:I

    add-int v0, v1, p1

    .line 1120
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->removeView(Landroid/view/View;)V

    .line 1121
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/QuickViewMainMenu;->addView(Landroid/view/View;I)V

    .line 1122
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1123
    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    .line 1124
    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingIndex:I

    .line 1125
    return-void
.end method

.method public scrollToLeft()V
    .locals 1

    .prologue
    .line 1111
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    .line 1112
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->postForScrollDelayed()V

    .line 1113
    return-void
.end method

.method public scrollToRight()V
    .locals 1

    .prologue
    .line 1106
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    .line 1107
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->postForScrollDelayed()V

    .line 1108
    return-void
.end method

.method public setQvPage(I)Z
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v0

    .line 1097
    .local v0, "canDragChildCount":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 1098
    iput p1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    .line 1099
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v1, p1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->setPage(I)V

    .line 1100
    const/4 v1, 0x1

    .line 1102
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setReadOnly(Z)V
    .locals 0
    .param p1, "readOnly"    # Z

    .prologue
    .line 708
    iput-boolean p1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    .line 709
    return-void
.end method

.method public setReadOnlyToastId(I)V
    .locals 0
    .param p1, "aId"    # I

    .prologue
    .line 712
    iput p1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I

    .line 713
    return-void
.end method

.method public final smoothScrollBy(IIZ)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "changePage"    # Z

    .prologue
    .line 1020
    if-eqz p3, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getScrollY()I

    move-result v2

    const/16 v5, 0x258

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1022
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollCheck:Z

    .line 1023
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 1036
    :goto_0
    return-void

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1032
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/QuickViewMainMenu;->scrollBy(II)V

    goto :goto_0
.end method

.method public snapToQvPage()V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 1144
    new-array v6, v2, [I

    .line 1145
    .local v6, "posXY":[I
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mTouchState:I

    if-eq v0, v2, :cond_1

    .line 1147
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1148
    if-eqz v6, :cond_0

    .line 1149
    aget v0, v6, v4

    if-gez v0, :cond_0

    .line 1150
    aget v0, v6, v4

    add-int/lit8 v0, v0, -0x1

    aput v0, v6, v4

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getScrollY()I

    move-result v2

    aget v3, v6, v4

    iget v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    sub-int/2addr v3, v5

    const/16 v5, 0x190

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollCheck:Z

    .line 1157
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 1159
    :cond_1
    return-void
.end method

.method protected swapScreen(I)V
    .locals 4
    .param p1, "toIndex"    # I

    .prologue
    .line 892
    const/4 v0, 0x0

    .line 898
    .local v0, "pageDelta":I
    iget-boolean v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    if-nez v1, :cond_0

    .line 899
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    add-int v2, p1, v0

    invoke-static {p0, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->zOrderTweakMoveChild(Landroid/view/ViewGroup;II)V

    .line 900
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    iget v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mOriginDragIndex:I

    add-int/2addr v2, v0

    add-int v3, p1, v0

    invoke-interface {v1, v2, v3}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->movePage(II)V

    .line 901
    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewMainMenu;->setQvPage(I)Z

    .line 902
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->updateTags()V

    .line 904
    :cond_0
    return-void
.end method

.method protected updateTags()V
    .locals 8

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v1

    .line 870
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v4

    if-ne v4, v1, :cond_0

    move v2, v1

    .line 872
    .local v2, "finalCount":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 873
    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 880
    .local v0, "child":Landroid/view/View;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 881
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f10006e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 872
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 870
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "finalCount":I
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 885
    .restart local v2    # "finalCount":I
    .restart local v3    # "i":I
    :cond_1
    return-void
.end method
