.class public abstract Lcom/android/launcher2/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"

# interfaces
.implements Lcom/android/launcher2/DragOrigin;
.implements Lcom/android/launcher2/DragReceivable;
.implements Lcom/android/launcher2/Page;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayout$5;,
        Lcom/android/launcher2/CellLayout$CellInfo;,
        Lcom/android/launcher2/CellLayout$LayoutParams;,
        Lcom/android/launcher2/CellLayout$CellLayoutAnimationController;,
        Lcom/android/launcher2/CellLayout$SpanRect;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "CellLayout"

.field private static isItemApp:Z

.field public static isWidgetResized:Z


# instance fields
.field private final ENABLE_TILT:Z

.field private final TILT_SHADOW_OFFSET_DP:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAcceptsDrops:Z

.field public mAnimateChildInstantly:Z

.field private mBackgroundAlpha:F

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mCellHeight:I

.field private final mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mCellWidth:I

.field mChildren:Lcom/android/launcher2/CellLayoutChildren;

.field private mChildrenAlpha:F

.field private mCountX:I

.field private mCountY:I

.field private mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

.field private mCrosshairsVisibility:F

.field protected final mDragCell:[I

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field private mDragOutlines:[Landroid/graphics/Rect;

.field private mDragState:Lcom/android/launcher2/DragState;

.field mDragging:Z

.field protected mDrawDragOutlines:Z

.field private mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mEmptyMessage:Landroid/widget/TextView;

.field private mFingerMovedOnDrag:Z

.field private mForegroundAlpha:I

.field private mForegroundPadding:I

.field private mForegroundRect:Landroid/graphics/Rect;

.field private mGapX:I

.field private mGapY:I

.field private mGlowBackgroundAlpha:F

.field private mGlowBackgroundRect:Landroid/graphics/Rect;

.field private mGlowBackgroundScale:F

.field private mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

.field protected mHomeView:Lcom/android/launcher2/HomeView;

.field mIgnoreOccupied:Z

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mIsDefaultDropTarget:Z

.field private mIsDragOccuring:Z

.field private mIsDragOverlapping:Z

.field protected mIsPaused:Z

.field private mLastDownOnOccupiedCell:Z

.field private mLastVisualize:[I

.field private mLastXY:[F

.field private mNoNeedToDraw:Z

.field private mOnDragListener:Landroid/view/View$OnDragListener;

.field private mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverScrollLeft:Landroid/graphics/drawable/Drawable;

.field private mOverScrollRight:Landroid/graphics/drawable/Drawable;

.field private mPageType:I

.field final mPositioner:Lcom/android/launcher2/CellPositioner;

.field private mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

.field private mSecretPageMetaphor:Landroid/widget/ImageView;

.field private mShadowOffset:F

.field private mStateAnimationFinished:Z

.field mTempLocation:[I

.field private final mTmpPoint:[I

.field protected final mTmpXY:[I

.field final mVisualizer:Lcom/android/launcher2/DeltaVisualizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    .line 171
    sput-boolean v1, Lcom/android/launcher2/CellLayout;->isWidgetResized:Z

    .line 2302
    sput-boolean v1, Lcom/android/launcher2/CellLayout;->isItemApp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 187
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayout;->ENABLE_TILT:Z

    .line 74
    const/4 v13, 0x6

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/CellLayout;->TILT_SHADOW_OFFSET_DP:I

    .line 75
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mGyroListener:Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    .line 86
    new-instance v13, Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-direct {v13}, Lcom/android/launcher2/CellLayout$CellInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 92
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 93
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    .line 94
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    .line 96
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 97
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayout;->mIgnoreOccupied:Z

    .line 101
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    .line 102
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    .line 114
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    .line 116
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 117
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    .line 118
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    .line 122
    const/4 v13, 0x4

    new-array v13, v13, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    .line 123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v13, v13

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    .line 124
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v13, v13

    new-array v13, v13, [Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 128
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 129
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 136
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 138
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    .line 141
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    .line 143
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 148
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    .line 149
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/CellLayout;->mPageType:I

    .line 151
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayout;->mNoNeedToDraw:Z

    .line 154
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v13

    const-string v14, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayout;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 161
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayout;->mIsPaused:Z

    .line 563
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/CellLayout;->mShadowOffset:F

    .line 1253
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/CellLayout;->mChildrenAlpha:F

    .line 1275
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    .line 1396
    const/4 v13, 0x4

    new-array v13, v13, [I

    fill-array-data v13, :array_0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    .line 2211
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    .line 2212
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    .line 2213
    const/4 v13, 0x2

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 190
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 191
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/PorterDuffColorFilter;

    const/4 v15, -0x1

    sget-object v16, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v14 .. v16}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 196
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/CellLayout;->setWillNotDraw(Z)V

    .line 198
    sget-object v13, Lcom/sec/android/app/launcher/R$styleable;->CellLayout:[I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 200
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v13, 0x0

    const/16 v14, 0xa

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 201
    const/4 v13, 0x1

    const/16 v14, 0xa

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 202
    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    .line 203
    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    .line 204
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 205
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 207
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 213
    .local v10, "res":Landroid/content/res/Resources;
    const v13, 0x7f0200f5

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    .line 214
    const v13, 0x7f0200f6

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    .line 215
    const v13, 0x7f0e00fb

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    .line 220
    const v13, 0x7f020027

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 221
    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v14, 0x40200000    # 2.5f

    invoke-direct {v13, v14}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 224
    const v13, 0x7f0c000e

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 225
    .local v6, "animDuration":I
    new-instance v13, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v14, v6

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-direct/range {v13 .. v17}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v13}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v13

    new-instance v14, Lcom/android/launcher2/CellLayout$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/launcher2/CellLayout$1;-><init>(Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v13}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/16 v16, 0x1

    const/16 v17, -0x1

    aput v17, v15, v16

    aput v17, v13, v14

    .line 236
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v13, v13

    if-ge v9, v13, :cond_0

    .line 237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v14, v13, v9

    .line 236
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 244
    :cond_0
    const v13, 0x7f0c000f

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 245
    .local v7, "duration":I
    const/4 v8, 0x0

    .line 246
    .local v8, "fromAlphaValue":F
    const v13, 0x7f0c0010

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    int-to-float v12, v13

    .line 248
    .local v12, "toAlphaValue":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    const/4 v14, 0x0

    invoke-static {v13, v14}, Ljava/util/Arrays;->fill([FF)V

    .line 250
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v13, v13

    if-ge v9, v13, :cond_1

    .line 251
    new-instance v5, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v14, v7

    const/4 v13, 0x0

    invoke-direct {v5, v14, v15, v13, v12}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    .line 253
    .local v5, "anim":Lcom/android/launcher2/InterruptibleInOutAnimator;
    invoke-virtual {v5}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 254
    move v11, v9

    .line 255
    .local v11, "thisIndex":I
    invoke-virtual {v5}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v13

    new-instance v14, Lcom/android/launcher2/CellLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v5, v11}, Lcom/android/launcher2/CellLayout$2;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;I)V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 273
    invoke-virtual {v5}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v13

    new-instance v14, Lcom/android/launcher2/CellLayout$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v5}, Lcom/android/launcher2/CellLayout$3;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;)V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aput-object v5, v13, v9

    .line 250
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 284
    .end local v5    # "anim":Lcom/android/launcher2/InterruptibleInOutAnimator;
    .end local v11    # "thisIndex":I
    :cond_1
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    .line 285
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    .line 286
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundRect:Landroid/graphics/Rect;

    .line 287
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/CellLayout;->setHoverScale(F)V

    .line 288
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/CellLayout;->setHoverAlpha(F)V

    .line 290
    new-instance v13, Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/launcher2/CellLayoutChildren;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Lcom/android/launcher2/CellLayoutChildren;->setCellDimensions(IIII)V

    .line 292
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;)V

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->newCellPositioner()Lcom/android/launcher2/CellPositioner;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    .line 295
    new-instance v13, Lcom/android/launcher2/DeltaVisualizer;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/launcher2/DeltaVisualizer;-><init>(Lcom/android/launcher2/CellLayout;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    .line 296
    return-void

    .line 1396
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/launcher2/CellLayout;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/CellLayout;
    .param p1, "x1"    # F

    .prologue
    .line 69
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/CellLayout;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/CellLayout;)[Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    return-object v0
.end method

.method private cleanupWidgetAutoResize(Lcom/android/launcher2/DragState;)V
    .locals 7
    .param p1, "dragState"    # Lcom/android/launcher2/DragState;

    .prologue
    .line 2289
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v4

    .line 2290
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 2292
    .local v1, "item":Lcom/android/launcher2/BaseItem;
    instance-of v5, v4, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-ne v5, v6, :cond_0

    .line 2293
    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v2

    .line 2294
    .local v2, "spanX":I
    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v3

    .local v3, "spanY":I
    move-object v0, v4

    .line 2295
    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 2296
    .local v0, "hostview":Lcom/android/launcher2/LauncherAppWidgetHostView;
    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->bitmapNeedsUpdated(II)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2297
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v5

    invoke-virtual {v0, p0, v2, v3, v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->updateBitmapForSpan(Lcom/android/launcher2/CellLayout;IILcom/android/launcher2/ShadowBuilder;)Landroid/graphics/Bitmap;

    .line 2300
    .end local v0    # "hostview":Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v2    # "spanX":I
    .end local v3    # "spanY":I
    :cond_0
    return-void
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 9
    .param p0, "vacant"    # [I
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "xCount"    # I
    .param p4, "yCount"    # I
    .param p5, "occupied"    # [[Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1820
    const/4 v3, 0x0

    .line 1821
    .local v3, "vacantSize":I
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_0
    if-ge v5, p4, :cond_7

    .line 1822
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_1
    if-ge v4, p3, :cond_6

    .line 1823
    aget-object v8, p5, v4

    aget-boolean v8, v8, v5

    if-nez v8, :cond_1

    move v0, v6

    .line 1824
    .local v0, "available":Z
    :goto_2
    const/4 v3, 0x0

    .line 1825
    move v1, v4

    .local v1, "i":I
    :goto_3
    add-int v8, v4, p1

    if-ge v1, v8, :cond_0

    if-ge v1, p3, :cond_0

    .line 1826
    move v2, v5

    .local v2, "j":I
    :goto_4
    add-int v8, v5, p2

    if-ge v2, v8, :cond_4

    if-ge v2, p4, :cond_4

    .line 1827
    if-eqz v0, :cond_2

    aget-object v8, p5, v1

    aget-boolean v8, v8, v2

    if-nez v8, :cond_2

    move v0, v6

    .line 1828
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 1829
    if-nez v0, :cond_3

    .line 1830
    const/4 v3, 0x0

    .line 1836
    .end local v2    # "j":I
    :cond_0
    mul-int v8, p1, p2

    if-ne v3, v8, :cond_5

    .line 1837
    aput v4, p0, v7

    .line 1838
    aput v5, p0, v6

    .line 1844
    .end local v0    # "available":Z
    .end local v1    # "i":I
    .end local v4    # "x":I
    :goto_6
    return v6

    .restart local v4    # "x":I
    :cond_1
    move v0, v7

    .line 1823
    goto :goto_2

    .restart local v0    # "available":Z
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_2
    move v0, v7

    .line 1827
    goto :goto_5

    .line 1826
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1825
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1822
    .end local v2    # "j":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1821
    .end local v0    # "available":Z
    .end local v1    # "i":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v4    # "x":I
    :cond_7
    move v6, v7

    .line 1844
    goto :goto_6
.end method

.method static heightInLandscape(Landroid/content/res/Resources;I)I
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "numCells"    # I

    .prologue
    .line 380
    const v2, 0x7f0e00dc

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 381
    .local v0, "cellHeight":I
    const v2, 0x7f0e00dd

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0e00de

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 384
    .local v1, "minGap":I
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method

.method private invalidateAppIconView(Lcom/android/launcher2/AppIconView;)V
    .locals 6
    .param p1, "icon"    # Lcom/android/launcher2/AppIconView;

    .prologue
    .line 2768
    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->getPressedOrFocusedBackgroundPadding()I

    move-result v0

    .line 2769
    .local v0, "padding":I
    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->invalidate(IIII)V

    .line 2773
    return-void
.end method

.method private invalidateVisualize()V
    .locals 3

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1603
    return-void
.end method

.method public static isItemApp()Z
    .locals 1

    .prologue
    .line 2305
    sget-boolean v0, Lcom/android/launcher2/CellLayout;->isItemApp:Z

    return v0
.end method

.method private onLauncherTiltChanged(F)V
    .locals 3
    .param p1, "xProgress"    # F

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 597
    .local v0, "density":F
    neg-float v1, p1

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v1, v2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mShadowOffset:F

    .line 598
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 599
    return-void
.end method

.method private setChildrenAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 1256
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mChildrenAlpha:F

    .line 1257
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    .line 1258
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1259
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1258
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1261
    :cond_0
    return-void
.end method

.method private updateGlowRect()V
    .locals 8

    .prologue
    .line 466
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v0, v3, v4

    .line 467
    .local v0, "marginFraction":F
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v1, v3

    .line 468
    .local v1, "marginX":I
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 469
    .local v2, "marginY":I
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 471
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 472
    return-void
.end method

.method static widthInPortrait(Landroid/content/res/Resources;I)I
    .locals 4
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "numCells"    # I

    .prologue
    .line 369
    const v2, 0x7f0e00db

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 370
    .local v0, "cellWidth":I
    const v2, 0x7f0e00dd

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0e00de

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 373
    .local v1, "minGap":I
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method


# virtual methods
.method CLIP_BY_DEFAULT()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public addChildrenLayout(Lcom/android/launcher2/CellLayoutChildren;)V
    .locals 1
    .param p1, "v"    # Lcom/android/launcher2/CellLayoutChildren;

    .prologue
    .line 427
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/CellLayout;->addChildrenLayout(Lcom/android/launcher2/CellLayoutChildren;I)V

    .line 428
    return-void
.end method

.method public addChildrenLayout(Lcom/android/launcher2/CellLayoutChildren;I)V
    .locals 1
    .param p1, "v"    # Lcom/android/launcher2/CellLayoutChildren;
    .param p2, "index"    # I

    .prologue
    .line 431
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;I)V

    .line 433
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-nez v0, :cond_0

    .line 436
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 438
    :cond_0
    return-void
.end method

.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 2142
    const/4 v0, 0x0

    .line 2143
    .local v0, "c":Z
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/PagedView;

    if-eqz v2, :cond_1

    .line 2144
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedView;

    .line 2145
    .local v1, "v":Lcom/android/launcher2/PagedView;
    invoke-virtual {v1, p0}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedView;->isPageConstructed(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2146
    const/4 v0, 0x1

    .line 2151
    .end local v1    # "v":Lcom/android/launcher2/PagedView;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher2/CellLayoutChildren;->addItem(Lcom/android/launcher2/BaseItem;Z)Z

    move-result v2

    return v2

    .line 2149
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "childId"    # I
    .param p4, "params"    # Lcom/android/launcher2/CellLayout$LayoutParams;
    .param p5, "markCells"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 635
    move-object v0, p4

    .line 639
    .local v0, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_2

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_2

    .line 642
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 643
    :cond_0
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 645
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 647
    const/4 v1, 0x1

    .line 649
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I
    .param p4, "duration"    # I
    .param p5, "delay"    # I
    .param p6, "instant"    # Z

    .prologue
    const/4 v6, 0x1

    .line 1283
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    .line 1284
    .local v0, "clc":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    .line 1286
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1288
    .local v3, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 1289
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 1290
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eq v7, v8, :cond_0

    .line 1291
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Tried to animate a item to an occupied cell. Failed to swap item positions because the inbound item belonged to a different cell layout."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1294
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1295
    .local v4, "slp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iput-boolean v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1296
    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1297
    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1298
    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 1301
    .end local v4    # "slp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    iput-boolean v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1302
    iput p2, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1303
    iput p3, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1304
    if-eqz p6, :cond_2

    .line 1305
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1319
    .end local v3    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v5    # "v":Landroid/view/View;
    :goto_0
    return v6

    .line 1310
    .restart local v3    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v5    # "v":Landroid/view/View;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 1311
    .local v1, "info":Lcom/android/launcher2/BaseItem;
    instance-of v7, v1, Lcom/android/launcher2/HomeItem;

    if-eqz v7, :cond_3

    move-object v2, v1

    .line 1312
    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 1313
    .local v2, "item":Lcom/android/launcher2/HomeItem;
    iput p2, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1314
    iput p3, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 1317
    .end local v2    # "item":Lcom/android/launcher2/HomeItem;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->CLIP_BY_DEFAULT()Z

    move-result v7

    invoke-virtual {p0, p1, p4, v6, v7}, Lcom/android/launcher2/CellLayout;->animateIcon(Landroid/view/View;IZZ)Z

    move-result v6

    goto :goto_0

    .line 1319
    .end local v1    # "info":Lcom/android/launcher2/BaseItem;
    .end local v3    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v5    # "v":Landroid/view/View;
    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public animateIcon(Landroid/view/View;IZZ)Z
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "copyBitmap"    # Z
    .param p4, "clip"    # Z

    .prologue
    .line 1323
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    if-eqz v1, :cond_0

    .line 1324
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1325
    const/4 v1, 0x1

    .line 1356
    :goto_0
    return v1

    .line 1328
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 1329
    .local v0, "l":Lcom/android/launcher2/AnimationLayer;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p4}, Lcom/android/launcher2/AnimationLayer;->updateExistingAnimationTo(Landroid/view/View;[IIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1330
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1331
    .local v4, "b":Landroid/graphics/Bitmap;
    if-nez v4, :cond_1

    .line 1332
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 1333
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1334
    if-nez v4, :cond_1

    .line 1335
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1336
    const/4 v1, 0x0

    goto :goto_0

    .line 1340
    :cond_1
    if-eqz p3, :cond_2

    .line 1341
    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1342
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 1345
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v4, v1}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v5

    .line 1346
    .local v5, "from":[I
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    move-object v3, p1

    .line 1348
    check-cast v3, Lcom/android/launcher2/AppIconView;

    .line 1349
    .local v3, "icon":Lcom/android/launcher2/AppIconView;
    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getAnimGroup()I

    move-result v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v8, p2

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/AnimationLayer;->animateIcon(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v10

    .line 1350
    .local v10, "a":Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v10}, Lcom/android/launcher2/AnimationLayer$Anim;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1351
    if-eqz p4, :cond_3

    .line 1352
    invoke-virtual {v10}, Lcom/android/launcher2/AnimationLayer$Anim;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v6, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    neg-int v6, v6

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 1353
    invoke-virtual {v10}, Lcom/android/launcher2/AnimationLayer$Anim;->enableClipping()V

    .line 1356
    .end local v3    # "icon":Lcom/android/launcher2/AppIconView;
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .end local v5    # "from":[I
    .end local v10    # "a":Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method buildChildrenLayer()V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->buildLayer()V

    .line 735
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 609
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 612
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 613
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 614
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 615
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 613
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 617
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 5
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "result"    # [I

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 908
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 910
    .local v1, "vStartPadding":I
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aput v3, p3, v2

    .line 911
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    aput v3, p3, v2

    .line 912
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1936
    instance-of v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1592
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->invalidateVisualize()V

    .line 1593
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1594
    .local v0, "oldIndex":I
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1595
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1596
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, 0x0

    aput v3, v1, v2

    .line 1597
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    .line 1598
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    .line 1599
    return-void
.end method

.method public clearTagCellInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 841
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 842
    .local v0, "cellInfo":Lcom/android/launcher2/CellLayout$CellInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 843
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 844
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 845
    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 846
    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 847
    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_0

    .line 848
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellX:I

    .line 849
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellY:I

    .line 851
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 852
    return-void
.end method

.method commitDeltas()V
    .locals 11

    .prologue
    .line 2665
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v1}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2666
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v1}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/PositionDelta;

    .line 2667
    .local v8, "d":Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->changed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2668
    iget-object v10, v8, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    check-cast v10, Lcom/android/launcher2/HomeItem;

    .line 2669
    .local v10, "item":Lcom/android/launcher2/HomeItem;
    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v1

    iput v1, v10, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 2670
    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v1

    iput v1, v10, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 2671
    new-instance v0, Lcom/android/launcher2/DragState;

    iget-object v1, v8, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;Lcom/android/launcher2/DragOrigin;)V

    .line 2673
    .local v0, "dummyDrag":Lcom/android/launcher2/DragState;
    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v2

    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v4

    invoke-virtual {v8}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v6

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z

    goto :goto_0

    .line 2676
    .end local v0    # "dummyDrag":Lcom/android/launcher2/DragState;
    .end local v8    # "d":Lcom/android/launcher2/PositionDelta;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "item":Lcom/android/launcher2/HomeItem;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    invoke-virtual {v1}, Lcom/android/launcher2/DeltaVisualizer;->reset()V

    .line 2677
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    .line 2678
    return-void
.end method

.method public createViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 2698
    sget-object v1, Lcom/android/launcher2/CellLayout$5;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2708
    const/4 v1, 0x0

    .end local p1    # "item":Lcom/android/launcher2/BaseItem;
    :goto_0
    return-object v1

    .line 2701
    .restart local p1    # "item":Lcom/android/launcher2/BaseItem;
    :pswitch_0
    invoke-static {p1}, Lcom/android/launcher2/AppIconView;->getHomeIconLayout(Lcom/android/launcher2/BaseItem;)I

    move-result v0

    .line 2702
    .local v0, "layout":I
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/HomeShortcutItem;

    .end local p1    # "item":Lcom/android/launcher2/BaseItem;
    invoke-virtual {v1, p1, v0, p0}, Lcom/android/launcher2/HomeView;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 2705
    .end local v0    # "layout":I
    .restart local p1    # "item":Lcom/android/launcher2/BaseItem;
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/HomeFolderItem;

    .end local p1    # "item":Lcom/android/launcher2/BaseItem;
    const v2, 0x7f03001e

    invoke-virtual {v1, p1, v2, p0}, Lcom/android/launcher2/HomeView;->createFolder(Lcom/android/launcher2/HomeFolderItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 2698
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public destroyDummyPanel()V
    .locals 3

    .prologue
    .line 1196
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v1, v1, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-nez v1, :cond_1

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 1198
    .local v0, "l":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1200
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v1, v1, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBaseDarken(F)V

    .line 1201
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v1, v1, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->blockDraw:Z

    .line 1202
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    .line 1203
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    goto :goto_0
.end method

.method public disableHardwareLayers()V
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->disableHardwareLayers()V

    .line 1151
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    const/4 v1, 0x1

    .line 2652
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 2653
    .local v0, "r":Z
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 2658
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 2661
    .end local v0    # "r":Z
    :cond_1
    :goto_0
    return v0

    .line 2659
    .restart local v0    # "r":Z
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 566
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 568
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 569
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getLeft()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mShadowOffset:F

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutChildren;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 570
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v5, p1}, Lcom/android/launcher2/CellLayoutChildren;->drawShadows(Landroid/graphics/Canvas;)V

    .line 571
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 573
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 574
    iget-boolean v5, p0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    if-eqz v5, :cond_1

    .line 575
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 576
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 577
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    aget v0, v5, v2

    .line 578
    .local v0, "alpha":F
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    .line 579
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 580
    .local v1, "b":Landroid/graphics/Bitmap;
    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 581
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    aget-object v5, v5, v2

    invoke-virtual {p1, v1, v7, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 576
    .end local v1    # "b":Landroid/graphics/Bitmap;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 586
    .end local v0    # "alpha":F
    .end local v2    # "i":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    :cond_1
    iget v5, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    if-lez v5, :cond_2

    .line 587
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 588
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 589
    .local v3, "p":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 590
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 591
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 593
    .end local v3    # "p":Landroid/graphics/Paint;
    :cond_2
    return-void
.end method

.method public drawChildren(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->draw(Landroid/graphics/Canvas;)V

    .line 731
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->enableHardwareLayers()V

    .line 1147
    return-void
.end method

.method estimateDropCell(IIII[I)V
    .locals 7
    .param p1, "originX"    # I
    .param p2, "originY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1376
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 1377
    .local v1, "countX":I
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 1381
    .local v2, "countY":I
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/launcher2/CellLayout;->pointToCellRounded(II[I)V

    .line 1384
    aget v4, p5, v5

    add-int/2addr v4, p3

    sub-int v3, v4, v1

    .line 1385
    .local v3, "rightOverhang":I
    if-lez v3, :cond_0

    .line 1386
    aget v4, p5, v5

    sub-int/2addr v4, v3

    aput v4, p5, v5

    .line 1388
    :cond_0
    aget v4, p5, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v5

    .line 1389
    aget v4, p5, v6

    add-int/2addr v4, p4

    sub-int v0, v4, v2

    .line 1390
    .local v0, "bottomOverhang":I
    if-lez v0, :cond_1

    .line 1391
    aget v4, p5, v6

    sub-int/2addr v4, v0

    aput v4, p5, v6

    .line 1393
    :cond_1
    aget v4, p5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v6

    .line 1394
    return-void
.end method

.method existsEmptyCell()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1628
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v0

    return v0
.end method

.method findCellForSpan([III)Z
    .locals 6
    .param p1, "cellXY"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    const/4 v4, -0x1

    .line 1645
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersects([IIIII)Z
    .locals 15
    .param p1, "cellXY"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .param p4, "intersectX"    # I
    .param p5, "intersectY"    # I

    .prologue
    .line 1662
    const/4 v3, 0x0

    .line 1663
    .local v3, "foundCell":Z
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    .line 1665
    :goto_0
    const/4 v6, 0x0

    .line 1666
    .local v6, "startX":I
    if-ltz p4, :cond_0

    .line 1667
    add-int/lit8 v10, p2, -0x1

    sub-int v10, p4, v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1669
    :cond_0
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v11, p2, -0x1

    sub-int v1, v10, v11

    .line 1670
    .local v1, "endX":I
    if-ltz p4, :cond_1

    .line 1671
    add-int/lit8 v10, p2, -0x1

    add-int v11, p4, v10

    const/4 v10, 0x1

    move/from16 v0, p2

    if-ne v0, v10, :cond_5

    const/4 v10, 0x1

    :goto_1
    add-int/2addr v10, v11

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1673
    :cond_1
    const/4 v7, 0x0

    .line 1674
    .local v7, "startY":I
    if-ltz p5, :cond_2

    .line 1675
    add-int/lit8 v10, p3, -0x1

    sub-int v10, p5, v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1677
    :cond_2
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v11, p3, -0x1

    sub-int v2, v10, v11

    .line 1678
    .local v2, "endY":I
    if-ltz p5, :cond_3

    .line 1679
    add-int/lit8 v10, p3, -0x1

    add-int v11, p5, v10

    const/4 v10, 0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_6

    const/4 v10, 0x1

    :goto_2
    add-int/2addr v10, v11

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1682
    :cond_3
    move v9, v7

    .local v9, "y":I
    :goto_3
    if-ge v9, v2, :cond_d

    if-nez v3, :cond_d

    .line 1684
    move v8, v6

    .local v8, "x":I
    :goto_4
    if-ge v8, v1, :cond_c

    .line 1685
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    move/from16 v0, p2

    if-ge v4, v0, :cond_a

    .line 1686
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6
    move/from16 v0, p3

    if-ge v5, v0, :cond_9

    .line 1687
    sget-boolean v10, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v10, :cond_7

    sget-boolean v10, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_7

    .line 1688
    add-int v10, v9, v5

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    add-int v11, v8, v4

    add-int v12, v9, v5

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-interface {v10, v11, v12, v13, v14}, Lcom/android/launcher2/CellPositioner;->deltaAt(IIII)Lcom/android/launcher2/PositionDelta;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 1690
    :cond_4
    add-int/2addr v8, v4

    .line 1684
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1671
    .end local v2    # "endY":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "startY":I
    .end local v8    # "x":I
    .end local v9    # "y":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 1679
    .restart local v2    # "endY":I
    .restart local v7    # "startY":I
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    .line 1694
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v8    # "x":I
    .restart local v9    # "y":I
    :cond_7
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    add-int v11, v8, v4

    add-int v12, v9, v5

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-interface {v10, v11, v12, v13, v14}, Lcom/android/launcher2/CellPositioner;->deltaAt(IIII)Lcom/android/launcher2/PositionDelta;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 1697
    add-int/2addr v8, v4

    .line 1698
    goto :goto_7

    .line 1686
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1685
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1703
    .end local v5    # "j":I
    :cond_a
    if-eqz p1, :cond_b

    .line 1704
    const/4 v10, 0x0

    aput v8, p1, v10

    .line 1705
    const/4 v10, 0x1

    aput v9, p1, v10

    .line 1707
    :cond_b
    const/4 v3, 0x1

    .line 1682
    .end local v4    # "i":I
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1711
    .end local v8    # "x":I
    :cond_d
    const/4 v10, -0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_e

    const/4 v10, -0x1

    move/from16 v0, p5

    if-ne v0, v10, :cond_e

    .line 1722
    return v3

    .line 1716
    :cond_e
    const/16 p4, -0x1

    .line 1717
    const/16 p5, -0x1

    .line 1718
    goto/16 :goto_0
.end method

.method findDragCell(Lcom/android/launcher2/DragState;II[I[I)Z
    .locals 7
    .param p1, "dragState"    # Lcom/android/launcher2/DragState;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "resXY"    # [I
    .param p5, "resSpan"    # [I

    .prologue
    .line 2219
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[IZ)Z

    move-result v0

    return v0
.end method

.method findDragCell(Lcom/android/launcher2/DragState;II[I[IZ)Z
    .locals 17
    .param p1, "dragState"    # Lcom/android/launcher2/DragState;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "resXY"    # [I
    .param p5, "resSpan"    # [I
    .param p6, "preventIgnoreOccupied"    # Z

    .prologue
    .line 2226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v3, 0x0

    move/from16 v0, p2

    int-to-float v4, v0

    aput v4, v1, v3

    .line 2227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v3, 0x1

    move/from16 v0, p3

    int-to-float v4, v0

    aput v4, v1, v3

    .line 2229
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v14

    .line 2234
    .local v14, "item":Lcom/android/launcher2/BaseItem;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v16

    .line 2236
    .local v16, "t":[I
    const/4 v1, 0x0

    aget v1, v16, v1

    sub-int v1, p2, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int v9, v1, v3

    .line 2237
    .local v9, "_x":I
    const/4 v1, 0x1

    aget v1, v16, v1

    sub-int v1, p3, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int v10, v1, v3

    .line 2238
    .local v10, "_y":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 2239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x0

    aget v11, v1, v3

    .line 2240
    .local v11, "cell_x":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x1

    aget v12, v1, v3

    .line 2242
    .local v12, "cell_y":I
    new-instance v2, Lcom/android/launcher2/PositionDelta;

    invoke-direct {v2, v14}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/BaseItem;)V

    .line 2243
    .local v2, "dragDelta":Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v2, v11}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 2244
    invoke-virtual {v2, v12}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 2248
    if-nez p6, :cond_4

    iget-object v1, v14, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v3, :cond_0

    iget-object v1, v14, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, v14, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v3, :cond_1

    iget-object v1, v14, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, v14, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v3, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_4

    const/4 v8, 0x1

    .line 2254
    .local v8, "ignoreOccupied":Z
    :goto_0
    const/4 v1, 0x2

    new-array v15, v1, [I

    const/4 v1, 0x0

    invoke-virtual {v14}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v3

    aput v3, v15, v1

    const/4 v1, 0x1

    invoke-virtual {v14}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v3

    aput v3, v15, v1

    .line 2255
    .local v15, "minSpans":[I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2256
    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v3

    aput v3, v15, v1

    .line 2257
    const/4 v1, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v3

    aput v3, v15, v1

    .line 2260
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v15, v4

    const/4 v5, 0x1

    aget v5, v15, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v1 .. v8}, Lcom/android/launcher2/CellPositioner;->updateDeltasForDrag(Lcom/android/launcher2/PositionDelta;Lcom/android/launcher2/WidgetSizes;IIZZZ)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2262
    const/4 v1, 0x0

    const/4 v3, -0x1

    aput v3, p4, v1

    .line 2263
    const/4 v1, 0x1

    const/4 v3, -0x1

    aput v3, p4, v1

    .line 2264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    .line 2265
    const/4 v1, 0x0

    .line 2280
    .end local v2    # "dragDelta":Lcom/android/launcher2/PositionDelta;
    .end local v8    # "ignoreOccupied":Z
    .end local v9    # "_x":I
    .end local v10    # "_y":I
    .end local v11    # "cell_x":I
    .end local v12    # "cell_y":I
    .end local v15    # "minSpans":[I
    .end local v16    # "t":[I
    :goto_1
    return v1

    .line 2248
    .restart local v2    # "dragDelta":Lcom/android/launcher2/PositionDelta;
    .restart local v9    # "_x":I
    .restart local v10    # "_y":I
    .restart local v11    # "cell_x":I
    .restart local v12    # "cell_y":I
    .restart local v16    # "t":[I
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 2267
    .restart local v8    # "ignoreOccupied":Z
    .restart local v15    # "minSpans":[I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v3}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher2/DeltaVisualizer;->updateForDeltas(Ljava/util/List;)V

    .line 2269
    const/4 v1, 0x0

    invoke-virtual {v2}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v3

    aput v3, p4, v1

    .line 2270
    const/4 v1, 0x1

    invoke-virtual {v2}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v3

    aput v3, p4, v1

    .line 2271
    const/4 v1, 0x0

    invoke-virtual {v2}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    aput v3, p5, v1

    .line 2272
    const/4 v1, 0x1

    invoke-virtual {v2}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    aput v3, p5, v1

    .line 2274
    const/4 v1, 0x0

    aget v1, p4, v1

    if-ne v1, v11, :cond_6

    const/4 v1, 0x1

    aget v1, p4, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v12, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 2276
    .end local v2    # "dragDelta":Lcom/android/launcher2/PositionDelta;
    .end local v8    # "ignoreOccupied":Z
    .end local v9    # "_x":I
    .end local v10    # "_y":I
    .end local v11    # "cell_x":I
    .end local v12    # "cell_y":I
    .end local v15    # "minSpans":[I
    .end local v16    # "t":[I
    :catch_0
    move-exception v13

    .line 2277
    .local v13, "e":Ljava/lang/NullPointerException;
    sget-boolean v1, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v1, :cond_7

    const-string v1, "CellLayout"

    const-string v3, "Null Pointer Exception Occurred"

    invoke-static {v1, v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2280
    :cond_7
    const/4 v1, 0x0

    goto :goto_1
.end method

.method findNearestVacantArea(IIII[I)[I
    .locals 6
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 1622
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x0

    aget v1, v0, v3

    .line 1623
    .local v1, "cell_x":I
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    .line 1624
    .local v2, "cell_y":I
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher2/CellPositioner;->findNearestVacantArea(IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1931
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1941
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAbsMatrix(Landroid/graphics/Matrix;Landroid/view/ViewParent;)Landroid/graphics/Matrix;
    .locals 4
    .param p1, "res"    # Landroid/graphics/Matrix;
    .param p2, "stop"    # Landroid/view/ViewParent;

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 304
    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v1, :cond_0

    if-eq p2, v1, :cond_0

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 305
    check-cast v0, Landroid/view/View;

    .line 306
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 307
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 308
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 309
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 310
    goto :goto_0

    .line 312
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-object p1
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 1141
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundBaseDarken()F
    .locals 3

    .prologue
    .line 1216
    const/4 v1, 0x0

    .line 1217
    .local v1, "result":F
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1218
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-eqz v2, :cond_0

    .line 1219
    check-cast v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->getBaseDarken()F

    move-result v1

    .line 1221
    :cond_0
    return v1
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 919
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 915
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenAlpha()F
    .locals 1

    .prologue
    .line 1264
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mChildrenAlpha:F

    return v0
.end method

.method public getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    return-object v0
.end method

.method getContainer()Lcom/android/launcher2/CellLayoutContainer;
    .locals 2

    .prologue
    .line 2713
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2714
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutContainer;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2715
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .restart local v0    # "parent":Landroid/view/ViewParent;
    goto :goto_0

    .line 2717
    :cond_0
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutContainer;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher2/CellLayoutContainer;

    .line 2718
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_1
    return-object v0

    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/HomeView;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x65

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x64

    goto :goto_0
.end method

.method getContentRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 931
    if-nez p1, :cond_0

    .line 932
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "r":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 934
    .restart local p1    # "r":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v1

    .line 935
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v3

    .line 936
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 937
    .local v2, "right":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 938
    .local v0, "bottom":I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 939
    return-object p1
.end method

.method getCountX()I
    .locals 1

    .prologue
    .line 624
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    return v0
.end method

.method getCountY()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 1

    .prologue
    .line 1914
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getDesiredHeightForRows(I)I

    move-result v0

    return v0
.end method

.method public getDesiredHeightForRows(I)I
    .locals 5
    .param p1, "rows"    # I

    .prologue
    .line 1900
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v1

    .line 1901
    .local v1, "parent":Lcom/android/launcher2/CellLayoutContainer;
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 1903
    .local v0, "height":I
    if-lez p1, :cond_1

    .line 1904
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    sub-int/2addr v0, v3

    .line 1910
    :cond_0
    :goto_0
    return v0

    .line 1906
    :cond_1
    if-nez p1, :cond_0

    instance-of v3, v1, Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_0

    .line 1907
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1908
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0e00fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public getDesiredWidth()I
    .locals 1

    .prologue
    .line 1887
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getDesiredWidthForColumns(I)I

    move-result v0

    return v0
.end method

.method public getDesiredWidthForColumns(I)I
    .locals 3
    .param p1, "columns"    # I

    .prologue
    .line 1891
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    .line 1893
    .local v0, "width":I
    if-lez p1, :cond_0

    .line 1894
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    sub-int/2addr v0, v1

    .line 1896
    :cond_0
    return v0
.end method

.method public getExpandabilityArrayForView(Landroid/view/View;[I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "expandability"    # [I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1853
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1855
    .local v0, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v1, 0x0

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    aput v2, p2, v1

    .line 1856
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    aput v1, p2, v5

    .line 1857
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    aput v1, p2, v6

    .line 1858
    const/4 v1, 0x3

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, p2, v1

    .line 1861
    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 1862
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    add-int/lit8 v1, v1, -0x1

    aput v1, p2, v5

    .line 1863
    :cond_0
    return-void
.end method

.method getGapX()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    return v0
.end method

.method getGapY()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    return v0
.end method

.method getHeightGap()I
    .locals 1

    .prologue
    .line 927
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    return v0
.end method

.method public getHoverAlpha()F
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundAlpha:F

    return v0
.end method

.method public getHoverScale()F
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    return v0
.end method

.method getIsDragOverlapping()Z
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public getItemAt(II)Lcom/android/launcher2/BaseItem;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(II)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    return-object v0
.end method

.method public getPageChildCount()I
    .locals 1

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageItemCount()I
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPageType()I
    .locals 1

    .prologue
    .line 2740
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mPageType:I

    return v0
.end method

.method getScreen()I
    .locals 1

    .prologue
    .line 2722
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 2723
    const/4 v0, -0x1

    .line 2725
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getTag()Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 1

    .prologue
    .line 856
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellInfo;

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getTag()Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 2189
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    .line 2190
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2191
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    .line 2193
    :cond_0
    return-object v0
.end method

.method getWidthGap()I
    .locals 1

    .prologue
    .line 923
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    return v0
.end method

.method public hide(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/CellLayoutChildren;->setItemVisibility(Lcom/android/launcher2/BaseItem;I)V

    .line 2167
    return-void
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public isNoNeedToDraw()Z
    .locals 1

    .prologue
    .line 2805
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mNoNeedToDraw:Z

    return v0
.end method

.method public isOccupiedNoThrow(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1922
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge p2, v2, :cond_1

    .line 1923
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v2, p1, p2, v0, v0}, Lcom/android/launcher2/CellPositioner;->deltaAt(IIII)Lcom/android/launcher2/PositionDelta;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1925
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1923
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1925
    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsPaused:Z

    return v0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 2130
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method abstract newCellPositioner()Lcom/android/launcher2/CellPositioner;
.end method

.method protected noRoomForDrop(Lcom/android/launcher2/DragState;III)V
    .locals 0
    .param p1, "dragState"    # Lcom/android/launcher2/DragState;
    .param p2, "screen"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 2752
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 739
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 740
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    .line 752
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 761
    return-void
.end method

.method onDragEnter()V
    .locals 1

    .prologue
    .line 1731
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-nez v0, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 1735
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_1

    .line 1736
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1737
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    .line 1743
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 1744
    return-void

    .line 1740
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    goto :goto_0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 38
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 2313
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/launcher2/CellLayout;->isItemApp:Z

    .line 2314
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v31

    .line 2315
    .local v31, "parent":Lcom/android/launcher2/CellLayoutContainer;
    if-nez v31, :cond_0

    const/4 v2, 0x0

    .line 2646
    :goto_0
    return v2

    .line 2317
    :cond_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    if-eqz v2, :cond_1

    .line 2318
    move-object/from16 v0, v31

    instance-of v2, v0, Lcom/android/launcher2/Hotseat;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 2321
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 2322
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/DragState;

    move-object v3, v2

    .line 2325
    .local v3, "dragState":Lcom/android/launcher2/DragState;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v13

    .line 2328
    .local v13, "action":I
    const/4 v2, 0x4

    if-eq v13, v2, :cond_4

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->hasDeleted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2329
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    .line 2330
    const/4 v2, 0x1

    goto :goto_0

    .line 2322
    .end local v3    # "dragState":Lcom/android/launcher2/DragState;
    .end local v13    # "action":I
    :cond_3
    sget-object v3, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    .line 2333
    .restart local v3    # "dragState":Lcom/android/launcher2/DragState;
    .restart local v13    # "action":I
    :cond_4
    const/4 v2, 0x4

    if-eq v13, v2, :cond_5

    const/4 v2, 0x3

    if-eq v13, v2, :cond_5

    const/4 v2, 0x1

    if-eq v13, v2, :cond_5

    move-object/from16 v0, v31

    instance-of v2, v0, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_5

    move-object/from16 v2, v31

    check-cast v2, Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2336
    const/4 v2, 0x1

    goto :goto_0

    .line 2339
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v4, v2

    .line 2340
    .local v4, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v5, v2

    .line 2342
    .local v5, "y":I
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v35

    .line 2343
    .local v35, "view":Landroid/view/View;
    const/4 v2, 0x1

    if-ne v13, v2, :cond_b

    .line 2344
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    .line 2354
    :goto_2
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v17

    .line 2355
    .local v17, "dragItem":Lcom/android/launcher2/BaseItem;
    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v25

    .line 2356
    .local v25, "isWidget":Z
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v6, :cond_6

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v6, :cond_6

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v6, :cond_c

    :cond_6
    const/16 v23, 0x1

    .line 2359
    .local v23, "isApp":Z
    :goto_3
    sput-boolean v23, Lcom/android/launcher2/CellLayout;->isItemApp:Z

    .line 2367
    const/4 v2, 0x5

    if-ne v13, v2, :cond_7

    .line 2368
    iget-object v2, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_7

    iget-object v2, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v2, v2, Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_7

    .line 2369
    iget-object v0, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/launcher2/CellLayout;

    .line 2370
    .local v27, "l":Lcom/android/launcher2/CellLayout;
    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2371
    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2375
    .end local v27    # "l":Lcom/android/launcher2/CellLayout;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v24

    .line 2376
    .local v24, "isTransitionAnimating":Z
    const/16 v36, 0x1

    .line 2378
    .local v36, "wasCellDraggedOverAvailable":Z
    packed-switch v13, :pswitch_data_0

    .line 2399
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v6, 0x0

    aget v10, v2, v6

    .line 2400
    .local v10, "spanX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v6, 0x1

    aget v11, v2, v6

    .line 2402
    .local v11, "spanY":I
    packed-switch v13, :pswitch_data_1

    .line 2423
    :cond_9
    :goto_5
    packed-switch v13, :pswitch_data_2

    .line 2645
    .end local v35    # "view":Landroid/view/View;
    :cond_a
    :goto_6
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDragEvent(Landroid/view/DragEvent;)Z

    .line 2646
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2352
    .end local v10    # "spanX":I
    .end local v11    # "spanY":I
    .end local v17    # "dragItem":Lcom/android/launcher2/BaseItem;
    .end local v23    # "isApp":Z
    .end local v24    # "isTransitionAnimating":Z
    .end local v25    # "isWidget":Z
    .end local v36    # "wasCellDraggedOverAvailable":Z
    .restart local v35    # "view":Landroid/view/View;
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    goto :goto_2

    .line 2356
    .restart local v17    # "dragItem":Lcom/android/launcher2/BaseItem;
    .restart local v25    # "isWidget":Z
    :cond_c
    const/16 v23, 0x0

    goto :goto_3

    .line 2383
    .restart local v23    # "isApp":Z
    .restart local v24    # "isTransitionAnimating":Z
    .restart local v36    # "wasCellDraggedOverAvailable":Z
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->getLocationInWindow([I)V

    .line 2384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    sub-int/2addr v4, v2

    .line 2385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v6, 0x1

    aget v2, v2, v6

    sub-int/2addr v5, v2

    .line 2387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v6, 0x0

    int-to-float v7, v4

    aput v7, v2, v6

    .line 2388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v6, 0x1

    int-to-float v7, v5

    aput v7, v2, v6

    goto :goto_4

    .line 2391
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-nez v2, :cond_8

    if-nez v24, :cond_8

    .line 2397
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[I)Z

    move-result v36

    goto :goto_4

    .line 2405
    .restart local v10    # "spanX":I
    .restart local v11    # "spanY":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2406
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v32, v0

    .line 2407
    .local v32, "r":[I
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/HomeItem;

    .line 2408
    .local v26, "item":Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v2, v6, v1}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 2409
    const/4 v2, 0x0

    aget v2, v32, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int v4, v2, v6

    .line 2410
    const/4 v2, 0x1

    aget v2, v32, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int v5, v2, v6

    .line 2412
    move-object/from16 v0, v35

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-nez v2, :cond_9

    .line 2413
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2414
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v30

    .line 2415
    .local v30, "o":[I
    const/4 v2, 0x0

    aget v2, v30, v2

    add-int/2addr v4, v2

    .line 2416
    const/4 v2, 0x1

    aget v2, v30, v2

    add-int/2addr v5, v2

    goto/16 :goto_5

    .line 2425
    .end local v26    # "item":Lcom/android/launcher2/HomeItem;
    .end local v30    # "o":[I
    .end local v32    # "r":[I
    :pswitch_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    .line 2426
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    if-ne v2, v6, :cond_d

    .line 2427
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 2428
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 2431
    :cond_d
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->onDragStartedWithItem(Landroid/view/View;)V

    .line 2432
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    goto/16 :goto_6

    .line 2436
    :pswitch_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    .line 2458
    iget-object v2, v3, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-nez v2, :cond_f

    if-nez v24, :cond_f

    .line 2459
    const/16 v18, 0x1

    .line 2460
    .local v18, "drawOutline":Z
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/FolderItem;

    if-nez v2, :cond_e

    .line 2461
    if-nez v25, :cond_e

    .line 2462
    if-eqz v36, :cond_e

    .line 2463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/FolderIconView;

    if-nez v2, :cond_10

    const/16 v18, 0x1

    .line 2468
    :cond_e
    :goto_7
    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v2

    if-nez v2, :cond_11

    .line 2469
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object/from16 v6, p0

    move-object/from16 v7, v35

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    .line 2475
    .end local v18    # "drawOutline":Z
    :cond_f
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-nez v2, :cond_a

    .line 2478
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    .line 2479
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    goto/16 :goto_6

    .line 2463
    .restart local v18    # "drawOutline":Z
    :cond_10
    const/16 v18, 0x0

    goto :goto_7

    .line 2470
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    if-eqz v2, :cond_f

    .line 2471
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    goto :goto_8

    .line 2484
    .end local v18    # "drawOutline":Z
    :pswitch_6
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v19

    .line 2485
    .local v19, "folder":Lcom/android/launcher2/Folder;
    if-eqz v19, :cond_12

    .line 2486
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    .line 2488
    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    .line 2489
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    goto/16 :goto_6

    .line 2492
    .end local v19    # "folder":Lcom/android/launcher2/Folder;
    :pswitch_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    .line 2493
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2494
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 2495
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidateVisualize()V

    .line 2496
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/CellLayout;->cleanupWidgetAutoResize(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_6

    .line 2502
    :pswitch_8
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v2

    if-nez v2, :cond_24

    .line 2504
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainerType()J

    move-result-wide v14

    .line 2505
    .local v14, "container":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v12

    .line 2508
    .local v12, "screen":I
    const-wide/16 v6, -0x65

    cmp-long v2, v14, v6

    if-nez v2, :cond_15

    const/16 v16, 0x1

    .line 2509
    .local v16, "containerIsHotSeat":Z
    :goto_9
    if-eqz v16, :cond_14

    move-object/from16 v2, v31

    .line 2510
    check-cast v2, Lcom/android/launcher2/Hotseat;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v12

    .line 2525
    :cond_14
    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v2, :cond_16

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mPageType:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_16

    .line 2526
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 2527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v2, v6}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto/16 :goto_6

    .line 2508
    .end local v16    # "containerIsHotSeat":Z
    :cond_15
    const/16 v16, 0x0

    goto :goto_9

    .line 2532
    .restart local v16    # "containerIsHotSeat":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    const/4 v6, -0x1

    if-eq v2, v6, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x1

    aget v2, v2, v6

    const/4 v6, -0x1

    if-eq v2, v6, :cond_19

    const/16 v21, 0x1

    .line 2534
    .local v21, "hasDroppableCell":Z
    :goto_a
    if-eqz v21, :cond_27

    .line 2535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1a

    const/16 v37, 0x1

    .line 2536
    .local v37, "wasPageEmpty":Z
    :goto_b
    move-object/from16 v0, v35

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-nez v2, :cond_17

    move-object/from16 v0, v35

    instance-of v2, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v2, :cond_1e

    .line 2538
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    if-nez v2, :cond_1d

    iget-object v2, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-ne v2, v0, :cond_1d

    .line 2539
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 2540
    move-object/from16 v0, v35

    instance-of v2, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v2, :cond_1b

    .line 2542
    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2543
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    iget v2, v2, Lcom/android/launcher2/SurfaceWidgetItem;->mScreen:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v6

    if-ne v2, v6, :cond_18

    .line 2544
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual {v2}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    .line 2546
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    check-cast v35, Lcom/android/launcher2/SurfaceWidgetView;

    .end local v35    # "view":Landroid/view/View;
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/Workspace;->enterSurfaceWidgetResizeMode(Lcom/android/launcher2/SurfaceWidgetView;Lcom/android/launcher2/CellLayout;)V

    .line 2547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    goto/16 :goto_6

    .line 2532
    .end local v21    # "hasDroppableCell":Z
    .end local v37    # "wasPageEmpty":Z
    .restart local v35    # "view":Landroid/view/View;
    :cond_19
    const/16 v21, 0x0

    goto :goto_a

    .line 2535
    .restart local v21    # "hasDroppableCell":Z
    :cond_1a
    const/16 v37, 0x0

    goto :goto_b

    .line 2551
    .restart local v37    # "wasPageEmpty":Z
    :cond_1b
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_1c

    .line 2552
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/CellLayout;->isWidgetResized:Z

    .line 2553
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    check-cast v35, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .end local v35    # "view":Landroid/view/View;
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 2554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v6, 0x1

    invoke-interface {v2, v6}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    goto/16 :goto_6

    .line 2560
    .restart local v35    # "view":Landroid/view/View;
    :cond_1d
    move-object/from16 v0, v35

    instance-of v2, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v2, :cond_1e

    .line 2561
    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2563
    :cond_1e
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v26

    .line 2564
    .local v26, "item":Lcom/android/launcher2/BaseItem;
    move-object/from16 v0, v26

    instance-of v2, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_1f

    move-object/from16 v20, v26

    .line 2565
    check-cast v20, Lcom/android/launcher2/HomeItem;

    .line 2566
    .local v20, "hItem":Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, v20

    iput v10, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 2567
    move-object/from16 v0, v20

    iput v11, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 2569
    .end local v20    # "hItem":Lcom/android/launcher2/HomeItem;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v29

    .line 2570
    .local v29, "mViewOverDragCell":Landroid/view/View;
    if-eqz v36, :cond_20

    if-eqz v29, :cond_20

    move-object/from16 v0, v29

    instance-of v2, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_20

    .line 2571
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2577
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aget v8, v2, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x1

    aget v9, v2, v6

    move-object v6, v3

    move-object/from16 v7, p0

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIII)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2578
    move-object/from16 v0, v35

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v2, :cond_26

    .line 2579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    move-object/from16 v2, v35

    check-cast v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v0, p0

    invoke-virtual {v6, v2, v0}, Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 2586
    :cond_21
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->commitDeltas()V

    .line 2589
    :cond_22
    move-object/from16 v0, v31

    instance-of v2, v0, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_23

    if-eqz v37, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v2, v31

    .line 2592
    check-cast v2, Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->turnOffEmptyPageMsg()V

    .line 2595
    :cond_23
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 2597
    move-object/from16 v0, v35

    instance-of v2, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v2, :cond_24

    .line 2598
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Lcom/android/launcher2/CellLayout$LayoutParams;

    .local v28, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v33, v35

    .line 2599
    check-cast v33, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 2600
    .local v33, "resize_view":Lcom/android/launcher2/LauncherAppWidgetHostView;
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/HomeWidgetItem;

    .line 2602
    .local v22, "info":Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v28

    iget v7, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, v22

    iget v9, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    .line 2611
    .end local v12    # "screen":I
    .end local v14    # "container":J
    .end local v16    # "containerIsHotSeat":Z
    .end local v21    # "hasDroppableCell":Z
    .end local v22    # "info":Lcom/android/launcher2/HomeWidgetItem;
    .end local v26    # "item":Lcom/android/launcher2/BaseItem;
    .end local v28    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v29    # "mViewOverDragCell":Landroid/view/View;
    .end local v33    # "resize_view":Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v37    # "wasPageEmpty":Z
    :cond_24
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/CellLayout;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2612
    const/16 v2, 0x6457

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/android/launcher2/CellLayout;->performHapticFeedback(II)Z

    .line 2614
    :cond_25
    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 2615
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v34

    .line 2616
    .local v34, "tag":Ljava/lang/Object;
    move-object/from16 v0, v34

    instance-of v2, v0, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v2, :cond_28

    .line 2617
    check-cast v34, Lcom/android/launcher2/SamsungWidgetItem;

    .end local v34    # "tag":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lcom/android/launcher2/SamsungWidgetItem;->fireOnResume(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 2582
    .restart local v12    # "screen":I
    .restart local v14    # "container":J
    .restart local v16    # "containerIsHotSeat":Z
    .restart local v21    # "hasDroppableCell":Z
    .restart local v26    # "item":Lcom/android/launcher2/BaseItem;
    .restart local v29    # "mViewOverDragCell":Landroid/view/View;
    .restart local v37    # "wasPageEmpty":Z
    :cond_26
    move-object/from16 v0, v35

    instance-of v2, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v2, :cond_21

    .line 2584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    move-object/from16 v2, v35

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v0, p0

    invoke-virtual {v6, v2, v0}, Lcom/android/launcher2/Workspace;->enterSurfaceWidgetResizeMode(Lcom/android/launcher2/SurfaceWidgetView;Lcom/android/launcher2/CellLayout;)V

    goto/16 :goto_c

    .line 2608
    .end local v26    # "item":Lcom/android/launcher2/BaseItem;
    .end local v29    # "mViewOverDragCell":Landroid/view/View;
    .end local v37    # "wasPageEmpty":Z
    :cond_27
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v4, v5}, Lcom/android/launcher2/CellLayout;->noRoomForDrop(Lcom/android/launcher2/DragState;III)V

    goto :goto_d

    .line 2618
    .end local v12    # "screen":I
    .end local v14    # "container":J
    .end local v16    # "containerIsHotSeat":Z
    .end local v21    # "hasDroppableCell":Z
    .restart local v34    # "tag":Ljava/lang/Object;
    :cond_28
    move-object/from16 v0, v34

    instance-of v2, v0, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v2, :cond_a

    move-object/from16 v2, v34

    .line 2619
    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    iget v2, v2, Lcom/android/launcher2/SurfaceWidgetItem;->mScreen:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v6

    if-ne v2, v6, :cond_a

    .line 2620
    check-cast v34, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v34    # "tag":Ljava/lang/Object;
    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    goto/16 :goto_6

    .line 2626
    :pswitch_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    .line 2627
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 2629
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    .line 2630
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2631
    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellLayoutContainer;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 2632
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 2633
    sget-object v2, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    if-eqz v2, :cond_29

    .line 2634
    sget-object v2, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 2635
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 2636
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/CellLayout;->cleanupWidgetAutoResize(Lcom/android/launcher2/DragState;)V

    .line 2637
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v2, :cond_a

    .line 2638
    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2639
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    iget v2, v2, Lcom/android/launcher2/SurfaceWidgetItem;->mScreen:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v6

    if-ne v2, v6, :cond_a

    .line 2640
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual {v2}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    goto/16 :goto_6

    .line 2378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2402
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    .line 2423
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method onDragExit()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1750
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    invoke-virtual {v0}, Lcom/android/launcher2/DeltaVisualizer;->reset()V

    .line 1755
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-eqz v0, :cond_0

    .line 1756
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 1759
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 1761
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_1

    .line 1762
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1763
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1771
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    aput v1, v0, v2

    .line 1772
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    aput v1, v0, v3

    .line 1773
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1774
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1776
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 1778
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v0, v3}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    .line 1779
    return-void

    .line 1766
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->postInvalidate()V

    .line 505
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_4

    .line 506
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 507
    .local v7, "countX":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 510
    .local v8, "countY":I
    const/4 v6, 0x0

    .line 511
    .local v6, "countFestivalY":I
    const/4 v10, 0x0

    .line 512
    .local v10, "festivalYpadding":I
    sget-boolean v19, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v19, :cond_1

    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 513
    const/4 v6, 0x1

    .line 514
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    add-int v10, v19, v20

    .line 517
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 518
    .local v9, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 519
    .local v16, "width":I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 521
    .local v11, "height":I
    const/high16 v19, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    div-int/lit8 v20, v16, 0x2

    sub-int v17, v19, v20

    .line 524
    .local v17, "x":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v17, v17, v19

    .line 525
    const/4 v5, 0x1

    .local v5, "col":I
    :goto_0
    add-int/lit8 v19, v7, -0x1

    move/from16 v0, v19

    if-gt v5, v0, :cond_4

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    div-int/lit8 v20, v11, 0x2

    sub-int v18, v19, v20

    .line 527
    .local v18, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v18, v18, v19

    .line 529
    sget-boolean v19, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v19, :cond_2

    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 530
    add-int v18, v18, v10

    .line 531
    add-int/lit8 v14, v6, 0x1

    .local v14, "row":I
    :goto_1
    add-int/lit8 v19, v8, -0x1

    move/from16 v0, v19

    if-gt v14, v0, :cond_3

    .line 532
    add-int v19, v17, v16

    add-int v20, v18, v11

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 533
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 534
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v18, v18, v19

    .line 531
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 537
    .end local v14    # "row":I
    :cond_2
    const/4 v14, 0x1

    .restart local v14    # "row":I
    :goto_2
    add-int/lit8 v19, v8, -0x1

    move/from16 v0, v19

    if-gt v14, v0, :cond_3

    .line 538
    add-int v19, v17, v16

    add-int v20, v18, v11

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 539
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 540
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v18, v18, v19

    .line 537
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 543
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v17, v17, v19

    .line 525
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 549
    .end local v5    # "col":I
    .end local v6    # "countFestivalY":I
    .end local v7    # "countX":I
    .end local v8    # "countY":I
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    .end local v10    # "festivalYpadding":I
    .end local v11    # "height":I
    .end local v14    # "row":I
    .end local v16    # "width":I
    .end local v17    # "x":I
    .end local v18    # "y":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/AppIconView;->getPressedOrFocusedBackgroundPadding()I

    move-result v13

    .line 551
    .local v13, "padding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/AppIconView;->getPressedOrFocusedBackground()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 552
    .local v4, "b":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_5

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v12

    .line 554
    .local v12, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v15

    .line 555
    .local v15, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/AppIconView;->getLeft()I

    move-result v19

    add-int v19, v19, v12

    sub-int v19, v19, v13

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/AppIconView;->getTop()I

    move-result v20

    add-int v20, v20, v15

    sub-int v20, v20, v13

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 561
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .end local v12    # "left":I
    .end local v13    # "padding":I
    .end local v15    # "top":I
    :cond_5
    return-void
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1789
    if-eqz p1, :cond_0

    .line 1790
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1791
    .local v0, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 1792
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1794
    .end local v0    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onFailedDrop(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 2157
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 947
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 949
    const/4 v0, 0x0

    .line 950
    .local v0, "opt_showHelpTextOnEmptyHomePage":Z
    const-string v1, "USA"

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 951
    const/4 v0, 0x1

    .line 955
    :goto_0
    if-eqz v0, :cond_0

    .line 956
    const v1, 0x7f0f00e4

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    .line 963
    :cond_0
    return-void

    .line 953
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 819
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 821
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 822
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    .line 825
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 826
    const/4 v1, 0x1

    .line 837
    :goto_0
    return v1

    .line 828
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 837
    :goto_1
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 830
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayout;->setTagToCellInfoForPoint(II)V

    goto :goto_1

    .line 834
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    goto :goto_1

    .line 828
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1072
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v3

    .line 1073
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1074
    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1075
    .local v0, "child":Landroid/view/View;
    instance-of v6, v0, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v6, :cond_0

    .line 1076
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v7

    sub-int v8, p4, p2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v9, p5, p3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1073
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1080
    :cond_0
    sget-boolean v6, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v6, :cond_1

    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v6, :cond_1

    instance-of v6, v0, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    .line 1081
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v1

    .line 1082
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v2

    .line 1083
    .local v2, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1085
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1086
    .local v5, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v8, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v9, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    add-int/2addr v8, v9

    iget v9, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v10, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1090
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 987
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getDesiredWidth()I

    move-result v16

    .line 988
    .local v16, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getDesiredHeight()I

    move-result v10

    .line 990
    .local v10, "height":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 991
    .local v17, "widthMode":I
    if-nez v17, :cond_3

    .line 992
    const/high16 v17, -0x80000000

    .line 1003
    :cond_0
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1004
    .local v11, "heightMode":I
    if-nez v11, :cond_5

    .line 1005
    const/high16 v11, -0x80000000

    .line 1016
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    .line 1020
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v18

    sub-int v18, v16, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v19

    sub-int v7, v18, v19

    .line 1021
    .local v7, "childWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v18

    sub-int v18, v10, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v19

    sub-int v5, v18, v19

    .line 1023
    .local v5, "childHeight":I
    move/from16 v0, v17

    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1024
    .local v8, "childWidthSpec":I
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1026
    .local v6, "childHeightSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v9

    .line 1027
    .local v9, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v9, :cond_7

    .line 1028
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1029
    .local v4, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-eq v4, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mSecretPageMetaphor:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    if-eq v4, v0, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 1030
    invoke-virtual {v4, v8, v6}, Landroid/view/View;->measure(II)V

    .line 1027
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 994
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childHeight":I
    .end local v6    # "childHeightSpec":I
    .end local v7    # "childWidth":I
    .end local v8    # "childWidthSpec":I
    .end local v9    # "count":I
    .end local v11    # "heightMode":I
    .end local v12    # "i":I
    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 995
    .local v15, "specWidth":I
    sget-boolean v18, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v18, :cond_4

    move/from16 v0, v16

    if-le v0, v15, :cond_4

    .line 996
    const-string v18, "CellLayout"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".onMeasure. Parent maxWidth: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; setting to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_4
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move/from16 v0, v16

    if-ge v0, v15, :cond_0

    .line 1000
    move/from16 v16, v15

    goto/16 :goto_0

    .line 1007
    .end local v15    # "specWidth":I
    .restart local v11    # "heightMode":I
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 1008
    .local v14, "specHeight":I
    sget-boolean v18, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v18, :cond_6

    if-le v10, v14, :cond_6

    .line 1009
    const-string v18, "CellLayout"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".onMeasure. Parent maxHeight: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; setting to: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_6
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    if-ne v11, v0, :cond_1

    if-ge v10, v14, :cond_1

    .line 1013
    move v10, v14

    goto/16 :goto_1

    .line 1035
    .end local v14    # "specHeight":I
    .restart local v5    # "childHeight":I
    .restart local v6    # "childHeightSpec":I
    .restart local v7    # "childWidth":I
    .restart local v8    # "childWidthSpec":I
    .restart local v9    # "count":I
    .restart local v12    # "i":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/high16 v19, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/high16 v20, -0x80000000

    move/from16 v0, v20

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->measureChild(Landroid/view/View;II)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1046
    .local v13, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    .line 1048
    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    move/from16 v18, v0

    sub-int v18, v10, v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 1049
    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    move/from16 v18, v0

    sub-int v18, v16, v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 1068
    .end local v13    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_8
    return-void
.end method

.method public onPreDeltaVisualize(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 1364
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 1243
    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 1094
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1095
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1096
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1098
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->updateGlowRect()V

    .line 1099
    return-void
.end method

.method public onStateAnimationEnd(Lcom/android/launcher2/Workspace$State;)V
    .locals 10
    .param p1, "state"    # Lcom/android/launcher2/Workspace$State;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2197
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p1, v0, :cond_0

    .line 2198
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v7

    .line 2199
    .local v7, "parent":Lcom/android/launcher2/CellLayoutContainer;
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 2200
    .local v6, "inv":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2201
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2202
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    aget v0, v0, v9

    float-to-int v2, v0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    aget v0, v0, v8

    float-to-int v3, v0

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I[I)Z

    .line 2203
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/android/launcher2/CellLayoutContainer;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    aget v4, v0, v9

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    aget v5, v0, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    .line 2206
    .end local v6    # "inv":Landroid/graphics/Matrix;
    .end local v7    # "parent":Lcom/android/launcher2/CellLayoutContainer;
    :cond_0
    iput-boolean v8, p0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    .line 2207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    .line 2208
    return-void
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 653
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/HomeItem;

    .line 655
    .local v8, "item":Lcom/android/launcher2/HomeItem;
    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 656
    const-wide/16 v0, -0x64

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget v3, v8, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v4, v8, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v5, v8, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v6, v8, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v7

    .line 660
    .local v7, "childId":I
    invoke-virtual {p1, v7}, Landroid/view/View;->setId(I)V

    .line 664
    .end local v7    # "childId":I
    .end local v8    # "item":Lcom/android/launcher2/HomeItem;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 665
    .local v9, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayoutChildren;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    .line 666
    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "result"    # [I

    .prologue
    const/4 v4, 0x0

    .line 861
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 862
    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[IIIII)V

    .line 865
    :goto_0
    return-void

    .line 864
    :cond_0
    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[IIIII)V

    goto :goto_0
.end method

.method pointToCellExact(II[IIIII)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "result"    # [I
    .param p4, "x_lower_bound"    # I
    .param p5, "x_upper_bound"    # I
    .param p6, "y_lower_bound"    # I
    .param p7, "y_upper_bound"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 876
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 877
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 879
    .local v1, "vStartPadding":I
    sub-int v2, p1, v0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    aput v2, p3, v5

    .line 880
    sub-int v2, p2, v1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v3, v4

    div-int/2addr v2, v3

    aput v2, p3, v6

    .line 882
    aget v2, p3, v5

    if-ge v2, p4, :cond_0

    aput p4, p3, v5

    .line 883
    :cond_0
    aget v2, p3, v5

    if-lt v2, p5, :cond_1

    add-int/lit8 v2, p5, -0x1

    aput v2, p3, v5

    .line 884
    :cond_1
    aget v2, p3, v6

    if-ge v2, p6, :cond_2

    aput p6, p3, v6

    .line 885
    :cond_2
    aget v2, p3, v6

    if-lt v2, p7, :cond_3

    add-int/lit8 v2, p7, -0x1

    aput v2, p3, v6

    .line 886
    :cond_3
    return-void
.end method

.method pointToCellRounded(II[I)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "result"    # [I

    .prologue
    .line 895
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 896
    return-void
.end method

.method realRemoveView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 706
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 707
    return-void
.end method

.method refreshCellDimension()V
    .locals 5

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/CellLayoutChildren;->setCellDimensions(IIII)V

    .line 336
    return-void
.end method

.method public removeAllItems()V
    .locals 1

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllItems()V

    .line 2185
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    .line 682
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllItems()V

    .line 689
    :cond_0
    return-void
.end method

.method public removeAllViewsOnPage()V
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    .line 1128
    return-void
.end method

.method public removeChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;
    .locals 4

    .prologue
    .line 413
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 414
    .local v2, "l":Lcom/android/launcher2/CellLayoutChildren;
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 415
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 416
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    .line 417
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 418
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v3, :cond_1

    .line 419
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutChildren;

    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 423
    :cond_0
    return-object v2

    .line 417
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 4
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 2171
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    .line 2172
    .local v2, "rc":Z
    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v3}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2173
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v3}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 2174
    .local v0, "d":Lcom/android/launcher2/PositionDelta;
    iget-object v3, v0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2175
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    invoke-interface {v3}, Lcom/android/launcher2/CellPositioner;->getDeltas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2180
    .end local v0    # "d":Lcom/android/launcher2/PositionDelta;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return v2
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 697
    instance-of v0, p1, Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 699
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 703
    :goto_0
    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewAt(I)V

    .line 712
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewInLayout(Landroid/view/View;)V

    .line 717
    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewAt(I)V

    .line 1133
    return-void
.end method

.method public removeViewWithoutMarkingCells(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 693
    return-void
.end method

.method public removeViews(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeViews(II)V

    .line 722
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeViewsInLayout(II)V

    .line 727
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 2685
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mVisualizer:Lcom/android/launcher2/DeltaVisualizer;

    invoke-virtual {v0}, Lcom/android/launcher2/DeltaVisualizer;->reset()V

    .line 2686
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher2/CellPositioner;->reset(Z)V

    .line 2687
    return-void
.end method

.method public setAcceptsDrops(Z)V
    .locals 1
    .param p1, "acceptsDrops"    # Z

    .prologue
    .line 673
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    if-eq v0, p1, :cond_0

    .line 674
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    .line 675
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 677
    :cond_0
    return-void
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 2776
    const/4 v1, 0x0

    .line 2777
    .local v1, "count":I
    const/4 v0, 0x0

    .line 2778
    .local v0, "accessibility":I
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 2780
    if-eqz p1, :cond_2

    .line 2781
    const/4 v0, 0x0

    .line 2785
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setImportantForAccessibility(I)V

    .line 2787
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 2788
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2789
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 2790
    if-nez p1, :cond_3

    instance-of v4, v3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-nez v4, :cond_0

    instance-of v4, v3, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v4, :cond_3

    .line 2792
    :cond_0
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2787
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2783
    .end local v2    # "i":I
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 2794
    .restart local v2    # "i":I
    .restart local v3    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_2

    .line 2798
    .end local v3    # "v":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 1250
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayout;->setChildrenAlpha(F)V

    .line 1251
    return-void
.end method

.method public setBackgroundAlpha(FF)V
    .locals 1
    .param p1, "alpha"    # F
    .param p2, "backgroundDarken"    # F

    .prologue
    .line 1154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    .line 1155
    return-void
.end method

.method public setBackgroundAlpha(FFZ)V
    .locals 2
    .param p1, "alpha"    # F
    .param p2, "backgroundDarken"    # F
    .param p3, "blend"    # Z

    .prologue
    .line 1161
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    .line 1162
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1163
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1164
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1165
    instance-of v1, v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1166
    check-cast v1, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-virtual {v1, p2}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBackgroundDarken(F)V

    .line 1167
    check-cast v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p3}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBlend(Z)V

    .line 1168
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    if-eqz v1, :cond_0

    .line 1169
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    invoke-virtual {v1}, Lcom/android/launcher2/DummyPanelView;->invalidate()V

    .line 1173
    :cond_0
    return-void
.end method

.method public setBackgroundBaseDarken(F)V
    .locals 2
    .param p1, "a"    # F

    .prologue
    .line 1224
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1225
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-eqz v1, :cond_0

    .line 1226
    check-cast v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBaseDarken(F)V

    .line 1228
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1234
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1235
    if-nez p1, :cond_0

    .line 1237
    :goto_0
    return-void

    .line 1236
    :cond_0
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method setCellSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 316
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 317
    iput p2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 318
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 1104
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1109
    return-void
.end method

.method public setCrosshairsVisibility(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->cancel()V

    .line 362
    :cond_0
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    .line 363
    return-void
.end method

.method setDummyPanelProperties(FI)V
    .locals 1
    .param p1, "baseDarken"    # F
    .param p2, "alpha"    # I

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v0, v0, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-nez v0, :cond_1

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1208
    :cond_1
    const/4 v0, -0x1

    if-eq v0, p2, :cond_2

    .line 1209
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v0, v0, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setAlpha(I)V

    .line 1211
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v0, v0, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBaseDarken(F)V

    .line 1212
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    invoke-virtual {v0}, Lcom/android/launcher2/DummyPanelView;->invalidate()V

    goto :goto_0
.end method

.method public setEmptyMessageVisibility(I)V
    .locals 3
    .param p1, "show"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    if-nez p1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setGaps(II)V
    .locals 0
    .param p1, "gapX"    # I
    .param p2, "gapY"    # I

    .prologue
    .line 321
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    .line 322
    iput p2, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    .line 323
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->invalidateVisualize()V

    .line 324
    return-void
.end method

.method public setGridSize(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 388
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-eq v0, p2, :cond_1

    .line 389
    :cond_0
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 390
    iput p2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 391
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->requestLayout()V

    .line 392
    sget-boolean v0, Lcom/android/launcher2/CellLayout;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "CellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGridSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_1
    return-void
.end method

.method public setHomeView(Lcom/android/launcher2/HomeView;)V
    .locals 0
    .param p1, "home"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 158
    return-void
.end method

.method public setHoverAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 493
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundAlpha:F

    .line 494
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 495
    return-void
.end method

.method public setHoverScale(F)V
    .locals 1
    .param p1, "scaleFactor"    # F

    .prologue
    .line 475
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 476
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    .line 477
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->updateGlowRect()V

    .line 478
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 482
    :cond_0
    return-void
.end method

.method public setIsDefaultDropTarget(Z)V
    .locals 1
    .param p1, "isDefaultDropTarget"    # Z

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    if-eq v0, p1, :cond_0

    .line 442
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    .line 443
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 445
    :cond_0
    return-void
.end method

.method setIsDragOccuring(Z)V
    .locals 1
    .param p1, "isDragOccuring"    # Z

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    if-eq v0, p1, :cond_0

    .line 449
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    .line 450
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 452
    :cond_0
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 1
    .param p1, "isDragOverlapping"    # Z

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    .line 456
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 457
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 459
    :cond_0
    return-void
.end method

.method public setIsPaused(Z)V
    .locals 0
    .param p1, "isPaused"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsPaused:Z

    .line 169
    return-void
.end method

.method public setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V
    .locals 11
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I
    .param p6, "screen"    # I
    .param p7, "container"    # J

    .prologue
    .line 1867
    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    move-object v1, p1

    .line 1869
    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 1870
    .local v1, "hitem":Lcom/android/launcher2/HomeItem;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    move-wide/from16 v2, p7

    move/from16 v4, p6

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    .line 1873
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v10

    .line 1874
    .local v10, "v":Landroid/view/View;
    if-eqz v10, :cond_0

    .line 1875
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1876
    .local v9, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v0, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1877
    iget v0, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1878
    iget v0, v1, Lcom/android/launcher2/HomeItem;->spanX:I

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 1879
    iget v0, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 1880
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayoutChildren;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    .line 1881
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->requestLayout()V

    .line 1884
    .end local v1    # "hitem":Lcom/android/launcher2/HomeItem;
    .end local v9    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v10    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V
    .locals 1
    .param p1, "b"    # Lcom/android/launcher2/ItemViewBuilder;

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    .line 670
    return-void
.end method

.method public setNoNeedToDraw(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 2801
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mNoNeedToDraw:Z

    .line 2802
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnDragListener;

    .prologue
    .line 2692
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    .line 2693
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 2694
    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 621
    return-void
.end method

.method setOverScrollAmount(FZ)V
    .locals 2
    .param p1, "r"    # F
    .param p2, "left"    # Z

    .prologue
    .line 397
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 398
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 403
    :cond_0
    :goto_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    .line 404
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 405
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 406
    return-void

    .line 399
    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setPageType(I)V
    .locals 0
    .param p1, "pageType"    # I

    .prologue
    .line 2735
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mPageType:I

    .line 2736
    return-void
.end method

.method setPressedOrFocusedIcon(Lcom/android/launcher2/AppIconView;)V
    .locals 2
    .param p1, "icon"    # Lcom/android/launcher2/AppIconView;

    .prologue
    .line 2757
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

    .line 2758
    .local v0, "oldIcon":Lcom/android/launcher2/AppIconView;
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

    .line 2759
    if-eqz v0, :cond_0

    .line 2760
    invoke-direct {p0, v0}, Lcom/android/launcher2/CellLayout;->invalidateAppIconView(Lcom/android/launcher2/AppIconView;)V

    .line 2762
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

    if-eqz v1, :cond_1

    .line 2763
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/AppIconView;

    invoke-direct {p0, v1}, Lcom/android/launcher2/CellLayout;->invalidateAppIconView(Lcom/android/launcher2/AppIconView;)V

    .line 2765
    :cond_1
    return-void
.end method

.method public setSecretPageMetaphorVisibility(I)V
    .locals 1
    .param p1, "show"    # I

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mSecretPageMetaphor:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mSecretPageMetaphor:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 353
    :cond_0
    return-void
.end method

.method public setTagToCellInfoForPoint(II)V
    .locals 13
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 764
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 766
    .local v0, "cellInfo":Lcom/android/launcher2/CellLayout$CellInfo;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScrollX()I

    move-result v9

    add-int/2addr v9, p1

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getScrollX()I

    move-result v10

    add-int v7, v9, v10

    .line 767
    .local v7, "x":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScrollY()I

    move-result v9

    add-int/2addr v9, p2

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getScrollY()I

    move-result v10

    add-int v8, v9, v10

    .line 768
    .local v8, "y":I
    iget-object v9, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 770
    .local v3, "count":I
    const/4 v4, 0x0

    .line 771
    .local v4, "found":Z
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_1

    .line 772
    iget-object v9, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v9, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 773
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 774
    .local v6, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_4

    :cond_0
    iget-boolean v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v9, :cond_4

    .line 780
    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/CellLayout$LayoutParams;->containsPt(II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 781
    iput-object v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 782
    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 783
    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 784
    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 785
    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 786
    const/4 v4, 0x1

    .line 792
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 794
    if-nez v4, :cond_2

    .line 795
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 796
    .local v1, "cellXY":[I
    invoke-virtual {p0, v7, v8, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 798
    const/4 v9, 0x0

    iput-object v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 799
    aget v9, v1, v12

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 800
    aget v9, v1, v11

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 801
    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 802
    iput v11, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 805
    .end local v1    # "cellXY":[I
    :cond_2
    sget-boolean v9, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v9, :cond_3

    .line 806
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 807
    .restart local v1    # "cellXY":[I
    invoke-virtual {p0, v7, v8, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 808
    aget v9, v1, v12

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellX:I

    .line 809
    aget v9, v1, v11

    iput v9, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellY:I

    .line 811
    .end local v1    # "cellXY":[I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 812
    return-void

    .line 771
    .restart local v2    # "child":Landroid/view/View;
    .restart local v6    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0
.end method

.method public setupDummyPanel()V
    .locals 4

    .prologue
    .line 1176
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    if-nez v2, :cond_0

    .line 1177
    new-instance v2, Lcom/android/launcher2/DummyPanelView;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher2/DummyPanelView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    .line 1178
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iput-object p0, v2, Lcom/android/launcher2/DummyPanelView;->layout:Lcom/android/launcher2/CellLayout;

    .line 1180
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v2, v2, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-eqz v2, :cond_2

    .line 1193
    :cond_1
    :goto_0
    return-void

    .line 1181
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    iput-object v2, v3, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    .line 1183
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v2, v2, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-eqz v2, :cond_1

    .line 1185
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    iget-object v2, v2, Lcom/android/launcher2/DummyPanelView;->panel:Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->blockDraw:Z

    .line 1186
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    .line 1188
    .local v1, "l":Landroid/widget/FrameLayout;
    const/4 v0, 0x1

    .line 1189
    .local v0, "dummyViewIndex":I
    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sDNDBinding:Z

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 1191
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDummyPanelView:Lcom/android/launcher2/DummyPanelView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1192
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 604
    const/4 v0, 0x0

    return v0
.end method

.method public show(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/CellLayoutChildren;->setItemVisibility(Lcom/android/launcher2/BaseItem;I)V

    .line 2162
    return-void
.end method

.method public spanToPixel(II)[I
    .locals 5
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I

    .prologue
    .line 1585
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v2, p2

    add-int/lit8 v3, p2, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V
    .locals 40
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dragOutline"    # Landroid/graphics/Bitmap;
    .param p3, "nearest"    # [I
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I

    .prologue
    .line 1400
    sget-boolean v31, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v31, :cond_1

    .line 1401
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 1582
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1405
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    move-object/from16 v18, v0

    .line 1406
    .local v18, "l":[I
    const/16 v31, 0x0

    aget v31, p3, v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    const/16 v31, 0x1

    aget v31, p3, v31

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    .line 1407
    const/16 v31, 0x0

    aget v31, v18, v31

    const/16 v32, 0x0

    aget v32, p3, v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    const/16 v31, 0x1

    aget v31, v18, v31

    const/16 v32, 0x1

    aget v32, p3, v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    const/16 v31, 0x2

    aget v31, v18, v31

    move/from16 v0, v31

    move/from16 v1, p4

    if-ne v0, v1, :cond_2

    const/16 v31, 0x3

    aget v31, v18, v31

    move/from16 v0, v31

    move/from16 v1, p5

    if-eq v0, v1, :cond_0

    .line 1410
    :cond_2
    const/16 v31, 0x0

    const/16 v32, 0x0

    aget v32, p3, v32

    aput v32, v18, v31

    .line 1411
    const/16 v31, 0x1

    const/16 v32, 0x1

    aget v32, p3, v32

    aput v32, v18, v31

    .line 1412
    const/16 v31, 0x2

    aput p4, v18, v31

    .line 1413
    const/16 v31, 0x3

    aput p5, v18, v31

    .line 1415
    if-nez p2, :cond_3

    if-nez p1, :cond_3

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1417
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    goto :goto_0

    .line 1422
    :cond_3
    if-eqz p2, :cond_7

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    move-object/from16 v27, v0

    .line 1425
    .local v27, "topLeft":[I
    const/16 v31, 0x0

    aget v31, p3, v31

    const/16 v32, 0x1

    aget v32, p3, v32

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 1427
    const/16 v31, 0x0

    aget v19, v27, v31

    .line 1428
    .local v19, "left":I
    const/16 v31, 0x1

    aget v26, v27, v31

    .line 1429
    .local v26, "top":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    .local v30, "width":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 1435
    .local v13, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 1436
    .local v10, "dm":Landroid/util/DisplayMetrics;
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v31, v0

    const/16 v32, 0xf0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    .line 1437
    const/16 v17, 0x0

    .local v17, "iw":I
    const/16 v16, 0x0

    .line 1438
    .local v16, "ih":I
    const/16 v29, 0x0

    .local v29, "vw":I
    const/16 v28, 0x0

    .line 1440
    .local v28, "vh":I
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    move/from16 v31, v0

    if-nez v31, :cond_4

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v31, v0

    if-eqz v31, :cond_d

    .line 1441
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v24

    .line 1442
    .local v24, "parent":Lcom/android/launcher2/CellLayoutContainer;
    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/launcher2/Hotseat;

    move/from16 v31, v0

    if-eqz v31, :cond_a

    .line 1443
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .local v7, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v0, v7

    move/from16 v20, v0

    .local v20, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_1
    move/from16 v0, v20

    if-ge v15, v0, :cond_5

    aget-object v8, v7, v15

    .line 1444
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_8

    .line 1445
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    .line 1446
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    .line 1450
    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 1451
    .local v25, "res":Landroid/content/res/Resources;
    const v31, 0x7f0e0108

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v29, v0

    .line 1452
    const v31, 0x7f0e0109

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v28, v0

    .line 1453
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v31, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_9

    .line 1455
    sub-int v31, v28, v16

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    add-int v26, v26, v31

    .line 1548
    .end local v7    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v15    # "i$":I
    .end local v16    # "ih":I
    .end local v17    # "iw":I
    .end local v20    # "len$":I
    .end local v24    # "parent":Lcom/android/launcher2/CellLayoutContainer;
    .end local v25    # "res":Landroid/content/res/Resources;
    .end local v28    # "vh":I
    .end local v29    # "vw":I
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v21, v0

    .line 1549
    .local v21, "oldIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v31, v0

    aget-object v31, v31, v21

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1550
    add-int/lit8 v31, v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    rem-int v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v32, v0

    aget-object v31, v31, v32

    add-int v32, v19, v30

    add-int v33, v26, v13

    move-object/from16 v0, v31

    move/from16 v1, v19

    move/from16 v2, v26

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v32, v0

    aget-object v31, v31, v32

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v32, v0

    aget-object v31, v31, v32

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    .line 1558
    const/16 v31, 0x1

    move/from16 v0, p4

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    const/16 v31, 0x1

    move/from16 v0, p5

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    .line 1559
    const/4 v9, 0x0

    .line 1561
    .local v9, "description":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/android/launcher2/PagedView;

    move/from16 v31, v0

    if-eqz v31, :cond_15

    .line 1562
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v31

    const v32, 0x7f1000db

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x1

    aget v35, v18, v35

    add-int/lit8 v35, v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    const/16 v35, 0x0

    aget v35, v18, v35

    add-int/lit8 v35, v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1564
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/PagedView;

    .line 1565
    .local v23, "pagedView":Lcom/android/launcher2/PagedView;
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v31

    if-nez v31, :cond_7

    .line 1566
    sget-object v31, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move/from16 v2, v32

    invoke-virtual {v0, v1, v9, v2}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    .line 1576
    .end local v9    # "description":Ljava/lang/String;
    .end local v10    # "dm":Landroid/util/DisplayMetrics;
    .end local v13    # "height":I
    .end local v19    # "left":I
    .end local v21    # "oldIndex":I
    .end local v23    # "pagedView":Lcom/android/launcher2/PagedView;
    .end local v26    # "top":I
    .end local v27    # "topLeft":[I
    .end local v30    # "width":I
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    .line 1577
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 1578
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/CellLayout;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v31, v0

    if-eqz v31, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 1579
    const/16 v31, 0x6458

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->performHapticFeedback(II)Z

    goto/16 :goto_0

    .line 1443
    .restart local v7    # "arr$":[Landroid/graphics/drawable/Drawable;
    .restart local v8    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "dm":Landroid/util/DisplayMetrics;
    .restart local v13    # "height":I
    .restart local v15    # "i$":I
    .restart local v16    # "ih":I
    .restart local v17    # "iw":I
    .restart local v19    # "left":I
    .restart local v20    # "len$":I
    .restart local v24    # "parent":Lcom/android/launcher2/CellLayoutContainer;
    .restart local v26    # "top":I
    .restart local v27    # "topLeft":[I
    .restart local v28    # "vh":I
    .restart local v29    # "vw":I
    .restart local v30    # "width":I
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 1458
    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v25    # "res":Landroid/content/res/Resources;
    :cond_9
    sub-int v31, v29, v17

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    add-int v19, v19, v31

    goto/16 :goto_2

    .end local v7    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v15    # "i$":I
    .end local v20    # "len$":I
    .end local v25    # "res":Landroid/content/res/Resources;
    .restart local p1    # "v":Landroid/view/View;
    :cond_a
    move-object/from16 v31, p1

    .line 1463
    check-cast v31, Landroid/widget/TextView;

    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .restart local v7    # "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v0, v7

    move/from16 v20, v0

    .restart local v20    # "len$":I
    const/4 v15, 0x0

    .restart local v15    # "i$":I
    :goto_4
    move/from16 v0, v20

    if-ge v15, v0, :cond_b

    aget-object v8, v7, v15

    .line 1464
    .restart local v8    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_c

    .line 1465
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    .line 1466
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    .line 1470
    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 1471
    .restart local v25    # "res":Landroid/content/res/Resources;
    const v31, 0x7f0e00db

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v29, v0

    .line 1472
    const v31, 0x7f0e00dc

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v28, v0

    .line 1474
    sub-int v31, v29, v17

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    add-int v19, v19, v31

    .line 1475
    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v32, v0

    sub-int v31, v28, v16

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(I)I

    move-result v31

    div-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v34, v0

    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0x3feb333333333333L    # 0.85

    mul-double v36, v36, v38

    sub-double v34, v34, v36

    add-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v26, v0

    goto/16 :goto_2

    .line 1463
    .end local v25    # "res":Landroid/content/res/Resources;
    .restart local v8    # "d":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "v":Landroid/view/View;
    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1478
    .end local v7    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    .end local v15    # "i$":I
    .end local v20    # "len$":I
    .end local v24    # "parent":Lcom/android/launcher2/CellLayoutContainer;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v31, v0

    mul-int v31, v31, p4

    add-int/lit8 v32, p4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v33, v0

    mul-int v32, v32, v33

    add-int v30, v31, v32

    .line 1479
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v31, v0

    mul-int v31, v31, p5

    add-int/lit8 v32, p5, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v33, v0

    mul-int v32, v32, v33

    add-int v13, v31, v32

    .line 1481
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v31, v0

    if-eqz v31, :cond_6

    .line 1483
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v31, v31, v32

    int-to-float v0, v13

    move/from16 v32, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v32, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1485
    .local v8, "d":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v8

    move/from16 v0, v31

    float-to-int v13, v0

    goto/16 :goto_2

    .line 1493
    .end local v8    # "d":F
    .end local v16    # "ih":I
    .end local v17    # "iw":I
    .end local v28    # "vh":I
    .end local v29    # "vw":I
    :cond_e
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    move/from16 v31, v0

    if-eqz v31, :cond_14

    .line 1494
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v24

    .line 1495
    .restart local v24    # "parent":Lcom/android/launcher2/CellLayoutContainer;
    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/launcher2/Hotseat;

    move/from16 v31, v0

    if-eqz v31, :cond_f

    .line 1496
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0e0022

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 1497
    .local v14, "hotseaticon_topToTopOffset":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v31

    add-int v22, v31, v14

    .line 1498
    .local v22, "p":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v31

    add-int v19, v19, v31

    .line 1499
    add-int/lit8 v31, v22, -0x6

    add-int v26, v26, v31

    .line 1500
    goto/16 :goto_2

    .line 1502
    .end local v14    # "hotseaticon_topToTopOffset":I
    .end local v22    # "p":I
    :cond_f
    const/4 v12, 0x0

    .line 1503
    .local v12, "foldericon_topToTopOffset":I
    const/4 v6, 0x0

    .line 1504
    .local v6, "appIcon_leftMargin":I
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v31, v0

    if-eqz v31, :cond_11

    .line 1505
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0e0195

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1506
    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/launcher2/Workspace;

    move/from16 v31, v0

    if-eqz v31, :cond_10

    .line 1507
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0e004e

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v31

    add-int v19, v19, v31

    .line 1527
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v31

    sget v32, Lcom/android/launcher2/AppIconView;->sIconTopToTopOffset:I

    add-int v31, v31, v32

    add-int v22, v31, v12

    .line 1528
    .restart local v22    # "p":I
    add-int/lit8 v31, v22, -0x3

    add-int v26, v26, v31

    goto/16 :goto_2

    .line 1509
    .end local v22    # "p":I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0e0050

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v31

    add-int v19, v19, v31

    goto :goto_5

    .line 1512
    :cond_11
    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/launcher2/Workspace;

    move/from16 v31, v0

    if-eqz v31, :cond_12

    .line 1513
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0e004d

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1525
    :goto_6
    sget v31, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    add-int/lit8 v31, v31, -0x3

    add-int v31, v31, v6

    add-int v19, v19, v31

    goto :goto_5

    .line 1514
    :cond_12
    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/launcher2/Folder;

    move/from16 v31, v0

    if-eqz v31, :cond_13

    .line 1516
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0e0051

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_6

    .line 1517
    :catch_0
    move-exception v11

    .line 1518
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0e004f

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1519
    goto :goto_6

    .line 1521
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f0e004f

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_6

    .line 1531
    .end local v6    # "appIcon_leftMargin":I
    .end local v12    # "foldericon_topToTopOffset":I
    .end local v24    # "parent":Lcom/android/launcher2/CellLayoutContainer;
    :cond_14
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v31, v0

    if-nez v31, :cond_6

    .line 1535
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v31, v0

    mul-int v31, v31, p4

    add-int/lit8 v32, p4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v33, v0

    mul-int v32, v32, v33

    add-int v30, v31, v32

    .line 1536
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v31, v0

    mul-int v31, v31, p5

    add-int/lit8 v32, p5, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v33, v0

    mul-int v32, v32, v33

    add-int v13, v31, v32

    goto/16 :goto_2

    .line 1568
    .end local p1    # "v":Landroid/view/View;
    .restart local v9    # "description":Ljava/lang/String;
    .restart local v21    # "oldIndex":I
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/android/launcher2/Hotseat;

    move/from16 v31, v0

    if-eqz v31, :cond_7

    .line 1569
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v31

    const v32, 0x7f1000dc

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    aget v35, v18, v35

    add-int/lit8 v35, v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1570
    sget-object v31, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move/from16 v2, v32

    invoke-virtual {v0, v1, v9, v2}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    goto/16 :goto_3
.end method
