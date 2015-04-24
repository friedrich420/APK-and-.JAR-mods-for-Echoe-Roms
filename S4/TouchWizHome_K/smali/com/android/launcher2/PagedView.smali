.class public abstract Lcom/android/launcher2/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedView$HoverScrollHandler;,
        Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;,
        Lcom/android/launcher2/PagedView$DelaySnapToPage;,
        Lcom/android/launcher2/PagedView$LayerOptions;,
        Lcom/android/launcher2/PagedView$SavedState;,
        Lcom/android/launcher2/PagedView$ScrollInterpolator;,
        Lcom/android/launcher2/PagedView$PageSwitchListener;,
        Lcom/android/launcher2/PagedView$PageInfo;,
        Lcom/android/launcher2/PagedView$TransitionEffect;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field private static final CAMERA_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z = false

.field private static final DEBUGGABLE:Z

.field public static DEVICE_NAME:Ljava/lang/String; = null

.field public static final DIR_LEFT:I = 0x2

.field public static final DIR_RIGHT:I = 0x3

.field public static final DIR_SHORTEST:I = 0x1

.field private static final HEADLINES_INTENT:Landroid/content/Intent;

.field private static final HOVERSCROLL_SPEED:J = 0xc8L

.field public static final INVALID_DIR:I = 0x0

.field protected static final INVALID_PAGE:I = -0x80000000

.field protected static final INVALID_POINTER:I = -0x1

.field private static final MINIMUM_SNAP_VELOCITY:I = 0x898

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MOTION_ENGINE_LOG:Ljava/lang/String; = "MotionEngine"

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field public static final PAGE_BG_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/PagedView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAGE_HOVER_SCROLL:I = 0x1

.field public static final PAGE_ZOOM:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/PagedView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final PANNING_THRESHOLD_MULTIPLIER:I = 0xf

.field private static final PANNING_THRESHOLD_SHIFTER:I = 0x28

.field protected static final SNAP_STATE_ADJACENT:I = 0x0

.field protected static final SNAP_STATE_FIRST_TO_LAST:I = 0x1

.field protected static final SNAP_STATE_LAST_TO_FIRST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Launcher.PagedView"

.field protected static final TOUCH_STATE_DRIFTING:I = 0x4

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static final advancedDriftSlop:I

.field private static final advancedTouchSlop:I

.field private static busBooster:Landroid/os/DVFSHelper;

.field private static final chipset:Ljava/lang/String;

.field private static cpuBooster:Landroid/os/DVFSHelper;

.field private static cpuMaxBooster:Landroid/os/DVFSHelper;

.field private static gpuBooster:Landroid/os/DVFSHelper;

.field private static mHoverScrollVerticalPaddingMatchParent:I

.field private static mIsPageFastMoving:Z

.field private static sInclusivePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsMotionEngineEnabled:Z


# instance fields
.field protected final ENABLE_DVFS_ONSCROLL:Z

.field protected final ENABLE_SLOP_JUMP:Z

.field protected final ENABLE_TOUCH_PREDICTION:Z

.field private final MIN_LENGTH_FOR_FLING:I

.field protected final PAGE_SNAP_ANIMATION_DURATION:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field protected isShowCamera:Z

.field private mAccumulatedDelta:D

.field private mAllowLongPress:Z

.field protected mAllowOverScroll:Z

.field protected mBlockHardwareLayers:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCellGapX:I

.field protected mCellGapY:I

.field protected mContentIsRefreshable:Z

.field private mCurrentPage:I

.field protected mCurrentRotation:I

.field protected mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

.field protected mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

.field private mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field protected mDeferScrollUpdate:Z

.field private final mDelaySnapToPage:Lcom/android/launcher2/PagedView$DelaySnapToPage;

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownMotionX:F

.field protected mDriftSlop:I

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field private mHardwarePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mHideItems:Z

.field protected mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mHoverScrollBottom:I

.field private mHoverScrollDir:I

.field private mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

.field private mHoverScrollRightPadding:I

.field private mHoverScrollTop:I

.field private mHoverScrollVerticalPadding:I

.field private mHoverScrollWidth:I

.field mIgnoreSecretPage:Z

.field private mInGesture:Z

.field protected mIsDataReady:Z

.field protected mIsOverScrolled:Z

.field protected mIsPageMoving:Z

.field private mLaidOutAfterViewTreeDirty:Z

.field private mLastDragLocationX:I

.field private mLastDragLocationY:I

.field private mLastFocusDir:I

.field private mLastHit:I

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field protected mLastPageNotify:I

.field private mLastScreenCenter:I

.field mLastScrollX:I

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field private mMotionListenerRegistered:Z

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field protected mNextPage:I

.field protected mPageBackgroundAlpha:F

.field private mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

.field protected mPageIndicatorTop:I

.field protected mPagePaddingBottom:I

.field protected mPagePaddingLeft:I

.field protected mPagePaddingRight:I

.field protected mPagePaddingTop:I

.field private final mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

.field protected mPageSpacing:I

.field protected mPageSpacingHint:I

.field private mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

.field protected mPageTransformsDirty:Z

.field protected mPageZoom:F

.field protected mPagesPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PagedView$PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPagingTouchSlop:I

.field protected mPanningBasis:D

.field protected mPanningStopDelta:D

.field protected mPendingSavedState:Lcom/android/launcher2/PagedView$SavedState;

.field private mScrollByHover:Z

.field protected mScroller:Landroid/widget/Scroller;

.field protected mSmoothingTime:F

.field protected mSnapState:I

.field private mSnapToPageAfterLayout:I

.field private mSnapToPageAfterLayoutDir:I

.field private mSnapToPageAfterLayoutDur:I

.field private mSnapToPageAfterLayoutMustAnim:Z

.field protected mSnapVelocity:I

.field protected mTotalMotionX:F

.field protected mTotalPredictionX:F

.field protected mTouchDownPointX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchUpPointX:F

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field protected mUseSlopJump:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mVisibleAllCounts:I

.field protected mVisiblePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PagedView$PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected motionTrackingIsCurrent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    .line 105
    sput-object v2, Lcom/android/launcher2/PagedView;->cpuBooster:Landroid/os/DVFSHelper;

    .line 106
    const-string v0, "ro.product.model"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/PagedView;->DEVICE_NAME:Ljava/lang/String;

    .line 107
    sput-object v2, Lcom/android/launcher2/PagedView;->busBooster:Landroid/os/DVFSHelper;

    .line 108
    sput-object v2, Lcom/android/launcher2/PagedView;->cpuMaxBooster:Landroid/os/DVFSHelper;

    .line 109
    sput-object v2, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    .line 110
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sput-object v0, Lcom/android/launcher2/PagedView;->chipset:Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/android/launcher2/PagedView$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "pageZoom"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/PagedView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/PagedView;->PAGE_ZOOM:Landroid/util/Property;

    .line 120
    new-instance v0, Lcom/android/launcher2/PagedView$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "pageBackgroundAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/PagedView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/PagedView;->PAGE_BG_ALPHA:Landroid/util/Property;

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/android/launcher2/PagedView;->CAMERA_INTENT:Landroid/content/Intent;

    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    .line 310
    const v0, 0x7fffffff

    sput v0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPaddingMatchParent:I

    .line 320
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/PagedView;->mIsPageFastMoving:Z

    .line 2882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    .line 3619
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/PagedView;->sIsMotionEngineEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 332
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 336
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 340
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0024

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    .line 150
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mUseSlopJump:Z

    .line 151
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->ENABLE_TOUCH_PREDICTION:Z

    .line 152
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->ENABLE_SLOP_JUMP:Z

    .line 153
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mTotalPredictionX:F

    .line 155
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 156
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->ENABLE_DVFS_ONSCROLL:Z

    .line 159
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mLastPageNotify:I

    .line 160
    const/high16 v8, -0x80000000

    iput v8, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 172
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 184
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 188
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mInGesture:Z

    .line 192
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 205
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 206
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 207
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    .line 209
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    .line 210
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    .line 227
    sget-object v8, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput-object v8, p0, Lcom/android/launcher2/PagedView;->mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    .line 228
    sget-object v8, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput-object v8, p0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    .line 251
    const/high16 v8, -0x80000000

    iput v8, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    .line 252
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    .line 253
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    .line 263
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    .line 266
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    .line 270
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    .line 274
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    .line 276
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 277
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mBlockHardwareLayers:Z

    .line 280
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    .line 286
    const/high16 v8, -0x80000000

    iput v8, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    .line 287
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDir:I

    .line 288
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDur:I

    .line 289
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutMustAnim:Z

    .line 297
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 303
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    .line 304
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollDir:I

    .line 305
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollWidth:I

    .line 306
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollTop:I

    .line 307
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollBottom:I

    .line 308
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollRightPadding:I

    .line 309
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    .line 315
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mVisibleAllCounts:I

    .line 322
    new-instance v8, Lcom/android/launcher2/PagedView$DelaySnapToPage;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/launcher2/PagedView$DelaySnapToPage;-><init>(Lcom/android/launcher2/PagedView;Lcom/android/launcher2/PagedView$1;)V

    iput-object v8, p0, Lcom/android/launcher2/PagedView;->mDelaySnapToPage:Lcom/android/launcher2/PagedView$DelaySnapToPage;

    .line 323
    new-instance v8, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    invoke-direct {v8, p0}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;-><init>(Lcom/android/launcher2/PagedView;)V

    iput-object v8, p0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    .line 324
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v8

    const-string v9, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 990
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mIgnoreSecretPage:Z

    .line 2454
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 2481
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/launcher2/PagedView;->mLastFocusDir:I

    .line 3353
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    .line 3367
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    .line 3386
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/PagedView;->mLastHit:I

    .line 3620
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 3621
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mMotionListenerRegistered:Z

    .line 3622
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    iput-wide v8, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    .line 3623
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    .line 3626
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/launcher2/PagedView;->mPanningStopDelta:D

    .line 3800
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    .line 3810
    new-instance v8, Lcom/android/launcher2/PagedView$5;

    invoke-direct {v8, p0}, Lcom/android/launcher2/PagedView$5;-><init>(Lcom/android/launcher2/PagedView;)V

    iput-object v8, p0, Lcom/android/launcher2/PagedView;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 342
    sget-object v8, Lcom/sec/android/app/launcher/R$styleable;->PagedView:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 344
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x2

    const/4 v9, 0x4

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 345
    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 346
    const/16 v8, 0x8

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    .line 347
    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mPagePaddingTop:I

    .line 349
    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mPagePaddingBottom:I

    .line 351
    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mPagePaddingLeft:I

    .line 353
    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mPagePaddingRight:I

    .line 355
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    .line 357
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    .line 360
    const/16 v8, 0x9

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 361
    .local v6, "pageIndicatorTop":I
    const/16 v8, 0xa

    const/16 v9, 0xa

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 362
    .local v4, "pageIndicatorGap":I
    const/16 v8, 0xb

    const/16 v9, 0xb

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 363
    .local v5, "pageIndicatorMaxVisible":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 365
    iput v6, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    .line 366
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 368
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 369
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 370
    new-instance v8, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/android/launcher2/PagedView$ScrollInterpolator;

    invoke-direct {v10}, Lcom/android/launcher2/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v8, v9, v10}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v8, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 371
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 373
    sget-object v8, Lcom/android/launcher2/PagedView;->CAMERA_INTENT:Landroid/content/Intent;

    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.app.camera"

    const-string v11, "com.sec.android.app.camera.Camera"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 374
    sget-object v8, Lcom/android/launcher2/PagedView;->CAMERA_INTENT:Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    sget-object v8, Lcom/android/launcher2/PagedView;->CAMERA_INTENT:Landroid/content/Intent;

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 379
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 381
    .local v3, "newBriefingApp_installed":Z
    :try_start_0
    const-string v8, "flipboard.boxer.app"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    const/4 v3, 0x1

    .line 386
    :goto_0
    if-eqz v3, :cond_1

    .line 387
    sget-object v8, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "flipboard.boxer.app"

    const-string v11, "flipboard.boxer.gui.LaunchActivity"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 390
    :goto_1
    sget-object v8, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    sget-object v8, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    sget-object v8, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    const-string v9, "fromHome"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 394
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    .line 396
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 397
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e00f7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    .line 398
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e00f8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mDriftSlop:I

    .line 399
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    .line 400
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    .line 402
    invoke-virtual {p0, p0, v6, v4, v5}, Lcom/android/launcher2/PagedView;->getPageIndicatorManager(Lcom/android/launcher2/PagedView;III)Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    .line 404
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e01a9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    .line 405
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0009

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sput v8, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPaddingMatchParent:I

    .line 407
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getCpuBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v8

    sput-object v8, Lcom/android/launcher2/PagedView;->cpuBooster:Landroid/os/DVFSHelper;

    .line 408
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getBusBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v8

    sput-object v8, Lcom/android/launcher2/PagedView;->busBooster:Landroid/os/DVFSHelper;

    .line 409
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getCpuMaxBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v8

    sput-object v8, Lcom/android/launcher2/PagedView;->cpuMaxBooster:Landroid/os/DVFSHelper;

    .line 410
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getGpuBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v8

    sput-object v8, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    .line 412
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e00f4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->MIN_LENGTH_FOR_FLING:I

    .line 413
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e00f5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    .line 414
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->setSaveEnabled(Z)V

    .line 415
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 416
    sget-boolean v8, Lcom/android/launcher2/PagedView;->sIsMotionEngineEnabled:Z

    if-eqz v8, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->getMotionSensor()V

    .line 418
    :cond_0
    return-void

    .line 383
    .end local v1    # "configuration":Landroid/view/ViewConfiguration;
    :catch_0
    move-exception v2

    .line 384
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 389
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    sget-object v8, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.samsung.android.app.headlines"

    const-string v11, "com.samsung.android.app.headlines.activity.HeadlinesActivity"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method static synthetic access$200()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/PagedView;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/PagedView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;->snapToPageInternal(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/PagedView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PagedView;

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/PagedView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PagedView;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollDir:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/PagedView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PagedView;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    return v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2437
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2438
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2440
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2441
    return-void
.end method

.method private canOverScroll()Z
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canOverScrollForHeadlines()Z
    .locals 2

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 809
    .local v0, "launcher":Lcom/android/launcher2/Launcher;
    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-nez v1, :cond_0

    .line 811
    const/4 v1, 0x0

    .line 813
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 2609
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 2610
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 2611
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private drawPage(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView$PageInfo;J)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pageInfo"    # Lcom/android/launcher2/PagedView$PageInfo;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1480
    iget v3, p2, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 1481
    .local v1, "page":Landroid/view/View;
    if-nez v1, :cond_0

    .line 1486
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Draw page is NULL. Report this."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1488
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v1, Lcom/android/launcher2/CellLayout;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    .line 1489
    const-string v3, "Launcher.PagedView"

    const-string v4, "Page visibility not in sync with list of visible pages. This MUST be investigated"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_1
    :goto_0
    return-void

    .line 1492
    :cond_2
    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    if-eqz v3, :cond_4

    .line 1493
    instance-of v3, v1, Lcom/android/launcher2/CellLayout;

    if-eqz v3, :cond_3

    move-object v3, v1

    .line 1494
    check-cast v3, Lcom/android/launcher2/CellLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayout;->setNoNeedToDraw(Z)V

    .line 1496
    :cond_3
    invoke-direct {p0, p2, p3, p4}, Lcom/android/launcher2/PagedView;->transformPage(Lcom/android/launcher2/PagedView$PageInfo;J)V

    .line 1499
    :cond_4
    instance-of v3, v1, Lcom/android/launcher2/CellLayout;

    if-eqz v3, :cond_5

    move-object v3, v1

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->isNoNeedToDraw()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1502
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v2

    .line 1503
    .local v2, "progress":F
    const/4 v0, 0x0

    .line 1504
    .local v0, "mag":Lcom/android/launcher2/MenuAppsGrid;
    instance-of v3, p0, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v3, :cond_6

    move-object v0, p0

    .line 1505
    check-cast v0, Lcom/android/launcher2/MenuAppsGrid;

    .line 1508
    :cond_6
    instance-of v3, v1, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_7

    .line 1509
    const v3, 0x3f733333    # 0.95f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    const v3, -0x408ccccd    # -0.95f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 1510
    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/android/launcher2/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0

    .line 1513
    :cond_7
    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/android/launcher2/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method private dumpScroller()Ljava/lang/String;
    .locals 2

    .prologue
    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scrollerStartX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollerCurrX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollerFinalX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollerDur "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollingFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dumpVisiblePages()V
    .locals 0

    .prologue
    .line 1453
    return-void
.end method

.method private findPageIndicatorHit(Landroid/view/DragEvent;)I
    .locals 10
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 3559
    const/4 v4, -0x1

    .line 3560
    .local v4, "result":I
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v8}, Lcom/android/launcher2/PageIndicatorManager;->getPreviewRects()[Landroid/graphics/Rect;

    move-result-object v3

    .line 3561
    .local v3, "rects":[Landroid/graphics/Rect;
    if-nez v3, :cond_0

    move v5, v4

    .line 3581
    .end local v4    # "result":I
    .local v5, "result":I
    :goto_0
    return v5

    .line 3565
    .end local v5    # "result":I
    .restart local v4    # "result":I
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 3566
    .local v6, "x":I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 3569
    .local v7, "y":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v8

    array-length v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3570
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 3571
    aget-object v2, v3, v0

    .line 3572
    .local v2, "r":Landroid/graphics/Rect;
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3573
    move v4, v0

    .line 3578
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_1
    const/4 v8, -0x1

    if-eq v4, v8, :cond_2

    .line 3579
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->getSecretPageCountForAdjust()I

    move-result v8

    add-int/2addr v4, v8

    :cond_2
    move v5, v4

    .line 3581
    .end local v4    # "result":I
    .restart local v5    # "result":I
    goto :goto_0

    .line 3570
    .end local v5    # "result":I
    .restart local v2    # "r":Landroid/graphics/Rect;
    .restart local v4    # "result":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getCenterOfViewRelative(Landroid/view/View;)I
    .locals 7
    .param p1, "page"    # Landroid/view/View;

    .prologue
    .line 2519
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2520
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    .line 2521
    .local v3, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 2522
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 2523
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v4

    .line 2526
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2528
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v5

    const/16 v6, 0x320

    if-ne v5, v6, :cond_1

    .line 2529
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    div-int/lit8 v6, v4, 0xa

    add-int v1, v5, v6

    .line 2531
    :cond_1
    sub-int v5, v1, v3

    div-int/lit8 v6, v4, 0x2

    add-int v2, v5, v6

    .line 2535
    .local v2, "res":I
    return v2
.end method

.method private getLowerBoundForScrollX(I)I
    .locals 5
    .param p1, "scrollX"    # I

    .prologue
    .line 1008
    const/4 v0, 0x0

    .line 1009
    .local v0, "adjustedScrollX":I
    const/4 v2, 0x0

    .line 1010
    .local v2, "res":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v1

    .line 1012
    .local v1, "pageTotWidth":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1013
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1014
    div-int v3, v0, v1

    mul-int v2, v3, v1

    .line 1023
    :goto_0
    return v2

    .line 1016
    :cond_0
    move v0, p1

    .line 1017
    if-gez v0, :cond_1

    .line 1018
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v1

    neg-int v2, v3

    goto :goto_0

    .line 1020
    :cond_1
    div-int v3, v0, v1

    mul-int v2, v3, v1

    goto :goto_0
.end method

.method private getMotionSensor()V
    .locals 2

    .prologue
    .line 3678
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    .line 3679
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 3682
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_1

    .line 3683
    sget-boolean v0, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "MotionEngine"

    const-string v1, "Cannot get Motion Sensor Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    :cond_1
    return-void
.end method

.method private getNearestScrollXForPage(III)I
    .locals 9
    .param p1, "pageIndex"    # I
    .param p2, "scrollX"    # I
    .param p3, "dir"    # I

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v4

    .line 911
    .local v4, "pageTotWidth":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 912
    mul-int v5, p1, v4

    .line 942
    :cond_0
    :goto_0
    return v5

    .line 914
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v6

    .line 915
    .local v6, "startScrollX":I
    const/4 v1, 0x0

    .line 916
    .local v1, "multiplier":I
    packed-switch p3, :pswitch_data_0

    .line 928
    add-int/2addr v6, v4

    .line 929
    const/4 v1, 0x1

    .line 932
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v3

    .line 933
    .local v3, "pageCount":I
    move v5, p2

    .line 934
    .local v5, "res":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v3, :cond_0

    .line 935
    mul-int v8, v0, v4

    mul-int/2addr v8, v1

    add-int v7, v6, v8

    .line 936
    .local v7, "temp":I
    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v2

    .line 937
    .local v2, "pageAtSlot":I
    if-ne v2, p1, :cond_2

    .line 938
    move v5, v7

    .line 939
    goto :goto_0

    .line 918
    .end local v0    # "i":I
    .end local v2    # "pageAtSlot":I
    .end local v3    # "pageCount":I
    .end local v5    # "res":I
    .end local v7    # "temp":I
    :pswitch_0
    const/4 v1, -0x1

    .line 919
    goto :goto_1

    .line 934
    .restart local v0    # "i":I
    .restart local v2    # "pageAtSlot":I
    .restart local v3    # "pageCount":I
    .restart local v5    # "res":I
    .restart local v7    # "temp":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 916
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getScrollXForPageIndex(III)I
    .locals 6
    .param p1, "pageIndex"    # I
    .param p2, "scrollX"    # I
    .param p3, "dir"    # I

    .prologue
    .line 950
    const/4 v3, 0x0

    .line 951
    .local v3, "res":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 952
    packed-switch p3, :pswitch_data_0

    .line 984
    :goto_0
    return v3

    .line 955
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;->getNearestScrollXForPage(III)I

    move-result v3

    .line 960
    goto :goto_0

    .line 963
    :pswitch_1
    const/4 v5, 0x3

    invoke-direct {p0, p1, p2, v5}, Lcom/android/launcher2/PagedView;->getNearestScrollXForPage(III)I

    move-result v4

    .line 964
    .local v4, "rightScrollX":I
    const/4 v5, 0x2

    invoke-direct {p0, p1, p2, v5}, Lcom/android/launcher2/PagedView;->getNearestScrollXForPage(III)I

    move-result v2

    .line 965
    .local v2, "leftScrollX":I
    sub-int v5, p2, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 966
    .local v0, "delta1":I
    sub-int v5, v4, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 967
    .local v1, "delta2":I
    if-ge v0, v1, :cond_0

    .line 968
    move v3, v2

    goto :goto_0

    .line 970
    :cond_0
    move v3, v4

    goto :goto_0

    .line 981
    .end local v0    # "delta1":I
    .end local v1    # "delta2":I
    .end local v2    # "leftScrollX":I
    .end local v4    # "rightScrollX":I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    goto :goto_0

    .line 952
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getSecretPageCountForAdjust()I
    .locals 1

    .prologue
    .line 3595
    const/4 v0, 0x0

    return v0
.end method

.method private getSlotForScrollX(I)I
    .locals 4
    .param p1, "scrollX"    # I

    .prologue
    .line 854
    const/4 v1, 0x0

    .line 855
    .local v1, "res":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v0

    .line 857
    .local v0, "pageTotWidth":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 858
    if-gez p1, :cond_0

    .line 859
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v0

    .line 866
    :goto_0
    return v1

    .line 861
    :cond_0
    div-int v1, p1, v0

    goto :goto_0

    .line 864
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int v1, v2, v0

    goto :goto_0
.end method

.method private isEasyOneHandTriggerGesture()Z
    .locals 1

    .prologue
    .line 2396
    const/4 v0, 0x0

    return v0
.end method

.method private isLoopingDisabledInCSC()Z
    .locals 3

    .prologue
    .line 829
    const/4 v0, 0x0

    .line 830
    .local v0, "cscLauncherDisabledLooping":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Launcher_DisablePageRotation"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 831
    return v0
.end method

.method private isNewPageIndex(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 3549
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jumpToPageInternal(I)V
    .locals 2
    .param p1, "currentPage"    # I

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 571
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v0

    .line 572
    .local v0, "newX":I
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 573
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 580
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 581
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 582
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 583
    return-void
.end method

.method private loadAssociatedPages(IZ)V
    .locals 6
    .param p1, "page"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    const/4 v5, 0x1

    .line 2844
    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v3, :cond_1

    .line 2845
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 2846
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2847
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2846
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2855
    :cond_0
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 2856
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getInclusivePages(I)V

    .line 2858
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedView;->syncPageItemsInternal(IZ)V

    .line 2861
    if-eqz p2, :cond_2

    .line 2877
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 2862
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 2863
    if-ne p1, v1, :cond_3

    .line 2862
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2864
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Page;

    .line 2865
    .local v2, "layout":Lcom/android/launcher2/Page;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->isPageInclusive(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2866
    invoke-interface {v2}, Lcom/android/launcher2/Page;->getPageItemCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 2867
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->clearLayout(Lcom/android/launcher2/Page;)V

    .line 2869
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2870
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2872
    :cond_5
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/launcher2/PagedView;->syncPageItemsInternal(IZ)V

    goto :goto_2
.end method

.method static mix(FFF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "mix"    # F

    .prologue
    .line 3147
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private newPageInfo()Lcom/android/launcher2/PagedView$PageInfo;
    .locals 3

    .prologue
    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, "res":Lcom/android/launcher2/PagedView$PageInfo;
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "res":Lcom/android/launcher2/PagedView$PageInfo;
    check-cast v0, Lcom/android/launcher2/PagedView$PageInfo;

    .line 823
    .restart local v0    # "res":Lcom/android/launcher2/PagedView$PageInfo;
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher2/PagedView$PageInfo;->reset()V

    .line 824
    return-object v0

    .line 821
    :cond_0
    new-instance v0, Lcom/android/launcher2/PagedView$PageInfo;

    .end local v0    # "res":Lcom/android/launcher2/PagedView$PageInfo;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher2/PagedView$PageInfo;-><init>(Lcom/android/launcher2/PagedView$1;)V

    .restart local v0    # "res":Lcom/android/launcher2/PagedView$PageInfo;
    goto :goto_0
.end method

.method private notifyPageSwitchListener()V
    .locals 3

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 587
    iget v0, p0, Lcom/android/launcher2/PagedView;->mLastPageNotify:I

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastPageNotify:I

    .line 589
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .param p1, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2081
    sub-float/2addr p1, v1

    .line 2082
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2445
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2448
    :cond_0
    return-void
.end method

.method private scrollToNonLooped(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x1

    .line 769
    if-gez p1, :cond_1

    .line 770
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 771
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->canOverScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->canOverScrollForHeadlines()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    .line 773
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_2

    .line 776
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 777
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->canOverScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    .line 779
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    goto :goto_0

    .line 782
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method private snapToPageInternal(III)V
    .locals 9
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "dir"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2682
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result p1

    .line 2686
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/launcher2/PagedView;->getScrollXForPageIndex(III)I

    move-result v6

    .line 2687
    .local v6, "dstScrollX":I
    iget v0, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int v3, v6, v0

    .line 2689
    .local v3, "delta":I
    if-nez v3, :cond_0

    .line 2690
    iput p1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 2743
    :goto_0
    return-void

    .line 2701
    :cond_0
    iput p1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 2702
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2703
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    if-lez v3, :cond_4

    .line 2704
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    .line 2714
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 2715
    .local v7, "focusedChild":Landroid/view/View;
    if-eqz v7, :cond_1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v7, v0, :cond_1

    .line 2717
    invoke-virtual {v7}, Landroid/view/View;->clearFocus()V

    .line 2720
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 2721
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedView;->awakenScrollBars(I)Z

    .line 2722
    if-nez p2, :cond_2

    .line 2723
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 2726
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2727
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2732
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2736
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-eqz v0, :cond_7

    .line 2737
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 2741
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 2742
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    .line 2705
    .end local v7    # "focusedChild":Landroid/view/View;
    :cond_4
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-nez v0, :cond_5

    if-gez v3, :cond_5

    .line 2706
    iput v8, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    goto :goto_1

    .line 2708
    :cond_5
    iput v2, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    goto :goto_1

    .line 2711
    :cond_6
    iput v2, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    goto :goto_1

    .line 2739
    .restart local v7    # "focusedChild":Landroid/view/View;
    :cond_7
    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    goto :goto_2
.end method

.method private syncPageItemsInternal(IZ)V
    .locals 6
    .param p1, "page"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2946
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2947
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PagedView;->syncPageItems(IZ)V

    .line 2948
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2949
    .local v2, "itemContainer":Landroid/view/ViewGroup;
    if-nez v2, :cond_1

    .line 2950
    const-string v3, "Launcher.PagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncPageItemsInternal Null Occured Page : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    .end local v2    # "itemContainer":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    .line 2953
    .restart local v2    # "itemContainer":Landroid/view/ViewGroup;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2954
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2957
    .local v0, "dragReceiver":Landroid/view/View;
    instance-of v3, v0, Lcom/android/launcher2/DragReceivable;

    if-eqz v3, :cond_2

    .line 2964
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 2965
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2966
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2953
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2977
    .end local v0    # "dragReceiver":Landroid/view/View;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2978
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private transformPage(Lcom/android/launcher2/PagedView$PageInfo;J)V
    .locals 6
    .param p1, "pageInfo"    # Lcom/android/launcher2/PagedView$PageInfo;
    .param p2, "drawingTime"    # J

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1457
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    if-nez v2, :cond_1

    .line 1477
    :cond_0
    :goto_0
    return-void

    .line 1458
    :cond_1
    iget v2, p1, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1459
    .local v0, "page":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v3, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1463
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v1

    .line 1464
    .local v1, "scrollProgress":F
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 1465
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1466
    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 1467
    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    .line 1468
    invoke-virtual {v0, v4}, Landroid/view/View;->setRotationY(F)V

    .line 1469
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1471
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->updatePageTransform(Landroid/view/View;F)V

    .line 1473
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1474
    iget v2, p1, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1475
    iget v2, p1, Lcom/android/launcher2/PagedView$PageInfo;->mTransY:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private updateMotionTracking(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2471
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 2472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    .line 2473
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 2474
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    .line 2475
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 2476
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 2477
    return-void
.end method


# virtual methods
.method public CheckFolderOpen()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3078
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 3079
    .local v0, "mWorkspace":Lcom/android/launcher2/Workspace;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3081
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher2/Folder;->close(ZZ)V

    .line 3083
    :cond_0
    return-void
.end method

.method protected abortScroll()V
    .locals 2

    .prologue
    .line 4029
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 4035
    .local v0, "running":Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v1, :cond_1

    .line 4036
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 4037
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    .line 4039
    :cond_1
    return-void
.end method

.method protected acceleratedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 2086
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 2090
    .local v2, "screenSize":I
    const/high16 v3, 0x40000000    # 2.0f

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 2092
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 2106
    :goto_0
    return-void

    .line 2095
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 2096
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 2099
    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2100
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 2101
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v3

    invoke-super {p0, v1, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 2105
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    .line 2103
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1654
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1655
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1656
    const/16 v0, 0x11

    if-ne p2, v0, :cond_1

    .line 1657
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    .line 1658
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1666
    :cond_0
    :goto_0
    return-void

    .line 1660
    :cond_1
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 1661
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1662
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 2769
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "onFinishAnimationRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1932
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000b

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 1934
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1935
    new-instance v1, Lcom/android/launcher2/PagedView$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/launcher2/PagedView$3;-><init>(Lcom/android/launcher2/PagedView;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1946
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1947
    return-void
.end method

.method public cancelClicksOnChildrenForCurrentPage()V
    .locals 6

    .prologue
    .line 3921
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 3922
    .local v3, "page":Lcom/android/launcher2/CellLayout;
    if-nez v3, :cond_1

    .line 3923
    const-string v4, "Launcher.PagedView"

    const-string v5, "cancelClicksOnChildrenForCurrentPage, page is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    :cond_0
    return-void

    .line 3927
    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 3928
    .local v1, "clChildren":Lcom/android/launcher2/CellLayoutChildren;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 3929
    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3930
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 3928
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 2

    .prologue
    .line 2050
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    if-eqz v1, :cond_0

    .line 2051
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 2055
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 2056
    .local v0, "currentPage":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2057
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 2060
    .end local v0    # "currentPage":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 427
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method public clampCurrentPage()V
    .locals 3

    .prologue
    .line 3803
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    .line 3804
    .local v0, "currentPage":I
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3805
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3806
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->setCurrentPageIfNotSnapping(I)V

    .line 3808
    :cond_0
    return-void
.end method

.method public clearLayout(Lcom/android/launcher2/Page;)V
    .locals 0
    .param p1, "layout"    # Lcom/android/launcher2/Page;

    .prologue
    .line 2983
    invoke-interface {p1}, Lcom/android/launcher2/Page;->removeAllViewsOnPage()V

    .line 2984
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 1187
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    .line 1188
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 10

    .prologue
    const/high16 v8, -0x80000000

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 1125
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    .line 1126
    .local v3, "pageCount":I
    if-ge v3, v9, :cond_1

    move v4, v6

    .line 1182
    :cond_0
    :goto_0
    return v4

    .line 1130
    :cond_1
    const/4 v4, 0x0

    .line 1131
    .local v4, "res":Z
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1133
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 1134
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 1136
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 1137
    const/4 v4, 0x1

    goto :goto_0

    .line 1138
    :cond_4
    iget v7, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v7, v8, :cond_0

    .line 1139
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 1140
    .local v1, "currentPage":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v7

    iput v7, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 1142
    iget v7, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v7, v1, :cond_5

    .line 1149
    :cond_5
    iput v8, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1150
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 1153
    iget-boolean v7, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v7, v1, :cond_6

    .line 1154
    iget v7, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 1155
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 1160
    :cond_6
    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v7, :cond_7

    .line 1161
    iget v7, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v8

    invoke-direct {p0, v7, v8, v9}, Lcom/android/launcher2/PagedView;->getScrollXForPageIndex(III)I

    move-result v5

    .line 1162
    .local v5, "temp":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 1163
    iput v6, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    .line 1164
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageEndMoving()V

    .line 1165
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 1169
    .end local v5    # "temp":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "accessibility"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1171
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1172
    const/16 v6, 0x1000

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 1174
    .local v2, "ev":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1177
    sget-object v6, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p0, v7, v9}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    .line 1179
    .end local v2    # "ev":Landroid/view/accessibility/AccessibilityEvent;
    :cond_8
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method protected dampedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 2109
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 2111
    .local v2, "screenSize":I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 2113
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 2128
    :goto_0
    return-void

    .line 2114
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 2117
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 2118
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 2121
    :cond_1
    const v3, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 2122
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 2123
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v3

    invoke-super {p0, v1, v3}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 2127
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    .line 2125
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1950
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1951
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 24
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchSlopScale"    # F

    .prologue
    .line 1962
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    .line 1963
    .local v13, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    move/from16 v18, v0

    sub-float v18, v13, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move/from16 v0, v18

    float-to-int v14, v0

    .line 1965
    .local v14, "xDiff":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1966
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1967
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v12, v0

    .line 1972
    .local v12, "velocityX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 1973
    .local v7, "touchSlop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mDriftSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1975
    .local v5, "driftSlop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v14, v0, :cond_3

    const/16 v16, 0x1

    .line 1976
    .local v16, "xPaged":Z
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mDriftSlop:I

    move/from16 v18, v0

    if-lez v18, :cond_5

    if-le v14, v5, :cond_4

    const/4 v15, 0x1

    .line 1978
    .local v15, "xMoved":Z
    :goto_1
    if-gtz v5, :cond_8

    .line 1979
    if-nez v15, :cond_0

    if-eqz v16, :cond_2

    .line 1980
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    if-eqz v16, :cond_1

    .line 1982
    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1983
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v19, v19, v13

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1984
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1985
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1986
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1987
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x4e6e6b28    # 1.0E9f

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1988
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1991
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    .line 2047
    :cond_2
    :goto_3
    return-void

    .line 1975
    .end local v15    # "xMoved":Z
    .end local v16    # "xPaged":Z
    :cond_3
    const/16 v16, 0x0

    goto :goto_0

    .line 1976
    .restart local v16    # "xPaged":Z
    :cond_4
    const/4 v15, 0x0

    goto :goto_1

    :cond_5
    if-le v14, v7, :cond_6

    const/4 v15, 0x1

    goto :goto_1

    :cond_6
    const/4 v15, 0x0

    goto :goto_1

    .line 1980
    .restart local v15    # "xMoved":Z
    :cond_7
    if-eqz v15, :cond_1

    goto :goto_2

    .line 1994
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    if-eqz v16, :cond_b

    .line 1995
    :goto_4
    const/16 v18, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 1996
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1999
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v19, v19, v13

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    add-float v6, v18, v19

    .line 2000
    .local v6, "motionX":F
    int-to-float v0, v7

    move/from16 v18, v0

    cmpl-float v18, v6, v18

    if-lez v18, :cond_d

    const/16 v17, 0x1

    .line 2001
    .local v17, "xTraveled":Z
    :goto_5
    if-lt v7, v14, :cond_a

    if-eqz v17, :cond_e

    :cond_a
    const/16 v18, 0x1

    :goto_6
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 2003
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 2005
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    .line 2008
    .end local v6    # "motionX":F
    .end local v17    # "xTraveled":Z
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    .line 2009
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x4e6e6b28    # 1.0E9f

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 2010
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v19, v19, v13

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 2011
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 2012
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 2013
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchX:F

    goto/16 :goto_3

    .line 1994
    :cond_c
    if-eqz v15, :cond_b

    goto/16 :goto_4

    .line 2000
    .restart local v6    # "motionX":F
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 2001
    .restart local v17    # "xTraveled":Z
    :cond_e
    const/16 v18, 0x4

    goto/16 :goto_6

    .line 2014
    .end local v6    # "motionX":F
    .end local v17    # "xTraveled":Z
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 2016
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    move/from16 v19, v0

    add-float v18, v18, v19

    sub-float v4, v18, v13

    .line 2017
    .local v4, "deltaX":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mUseSlopJump:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 2018
    const-wide v10, 0x3f50624dd2f1a9fcL    # 0.001

    .line 2019
    .local v10, "velocityRatio":D
    const/16 v8, 0x9c4

    .line 2020
    .local v8, "velocityLimit":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v18

    const/16 v19, 0x9c4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_12

    .line 2021
    float-to-double v0, v4

    move-wide/from16 v18, v0

    int-to-float v0, v5

    move/from16 v20, v0

    int-to-float v0, v12

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v4, v0

    .line 2025
    .end local v8    # "velocityLimit":I
    .end local v10    # "velocityRatio":D
    :cond_11
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v18, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v19

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 2030
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_14

    .line 2031
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchX:F

    move/from16 v18, v0

    add-float v18, v18, v4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 2032
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x4e6e6b28    # 1.0E9f

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 2033
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    move/from16 v18, v0

    if-nez v18, :cond_13

    .line 2034
    float-to-int v0, v4

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->scrollBy(II)V

    .line 2035
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/PagedView;->mUseSlopJump:Z

    .line 2040
    :goto_8
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 2041
    float-to-int v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v4, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_3

    .line 2023
    .restart local v8    # "velocityLimit":I
    .restart local v10    # "velocityRatio":D
    :cond_12
    float-to-double v0, v4

    move-wide/from16 v18, v0

    mul-int/lit16 v0, v5, 0x9c4

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v12

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->signum(F)F

    move-result v21

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v4, v0

    goto/16 :goto_7

    .line 2038
    .end local v8    # "velocityLimit":I
    .end local v10    # "velocityRatio":D
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_8

    .line 2043
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->awakenScrollBars()Z

    goto/16 :goto_3
.end method

.method public disableRollNavigation()V
    .locals 3

    .prologue
    .line 3667
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mMotionListenerRegistered:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3668
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-virtual {v1, p0}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 3669
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mMotionListenerRegistered:Z

    .line 3671
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 3672
    .local v0, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->unRegisterAirMotionGestureListner()V

    .line 3673
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 24
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 3391
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v22, 0x0

    .line 3543
    :cond_0
    :goto_0
    return v22

    .line 3393
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3535
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v22

    .line 3536
    .local v22, "r":Z
    if-eqz v22, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 3541
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->onDragEvent(Landroid/view/DragEvent;)Z

    goto :goto_0

    .line 3395
    .end local v22    # "r":Z
    :pswitch_1
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher2/PagedView;->mLastHit:I

    goto :goto_1

    .line 3398
    :pswitch_2
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3399
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->findPageIndicatorHit(Landroid/view/DragEvent;)I

    move-result v19

    .line 3400
    .local v19, "i":I
    if-lez v19, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3401
    const/16 v19, -0x1

    .line 3402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->cancel()V

    .line 3405
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PagedView;->mLastHit:I

    move/from16 v0, v19

    if-eq v0, v3, :cond_8

    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_8

    .line 3406
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PagedView;->mLastDragLocationX:I

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PagedView;->mLastDragLocationY:I

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_b

    .line 3407
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->cancel()V

    .line 3425
    :cond_7
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher2/PagedView;->mLastDragLocationX:I

    .line 3426
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher2/PagedView;->mLastDragLocationY:I

    .line 3430
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PagedView;->mLastHit:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a

    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_a

    .line 3431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->cancel()V

    .line 3432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mLastHit:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/PageIndicatorManager;->onDragExit(I)Z

    move-result v23

    .line 3433
    .local v23, "result":Z
    if-eqz v23, :cond_9

    .line 3434
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 3435
    .local v22, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Lcom/android/launcher2/PageIndicatorManager;->getHitRect(Landroid/graphics/Rect;I)V

    .line 3436
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->invalidate(Landroid/graphics/Rect;)V

    .line 3438
    .end local v22    # "r":Landroid/graphics/Rect;
    :cond_9
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastHit:I

    .line 3441
    .end local v23    # "result":Z
    :cond_a
    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_2

    .line 3469
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 3470
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 3409
    :cond_b
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastHit:I

    .line 3411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PageIndicatorManager;->onDragEnter(I)Z

    move-result v23

    .line 3412
    .restart local v23    # "result":Z
    if-eqz v23, :cond_c

    .line 3413
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 3414
    .restart local v22    # "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Lcom/android/launcher2/PageIndicatorManager;->getHitRect(Landroid/graphics/Rect;I)V

    .line 3415
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->invalidate(Landroid/graphics/Rect;)V

    .line 3416
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isAirMoveOninSettings()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3417
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->registerForAirMotionGestureListner()V

    .line 3420
    .end local v22    # "r":Landroid/graphics/Rect;
    :cond_c
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v3, :cond_7

    .line 3421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->snapTo(I)V

    goto/16 :goto_2

    .line 3478
    .end local v19    # "i":I
    .end local v23    # "result":Z
    :pswitch_3
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3479
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->cancel()V

    .line 3480
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->findPageIndicatorHit(Landroid/view/DragEvent;)I

    move-result v14

    .line 3481
    .local v14, "pageIndicatorHit":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_2

    .line 3482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v3, v14}, Lcom/android/launcher2/PageIndicatorManager;->onDrop(I)Z

    .line 3484
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragState;

    move-object v8, v3

    .line 3487
    .local v8, "dragState":Lcom/android/launcher2/DragState;
    :goto_3
    invoke-virtual {v8}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v17

    .line 3491
    .local v17, "dragItem":Lcom/android/launcher2/BaseItem;
    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/android/launcher2/HomePendingItem;

    if-nez v3, :cond_13

    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v3, :cond_13

    const/16 v21, 0x1

    .line 3492
    .local v21, "itemFromWorkspace":Z
    :goto_4
    const/16 v20, 0x0

    .line 3493
    .local v20, "itemFromHotseat":Z
    if-eqz v21, :cond_e

    move-object/from16 v18, v17

    .line 3494
    check-cast v18, Lcom/android/launcher2/HomeItem;

    .line 3495
    .local v18, "homeItem":Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v10, -0x65

    cmp-long v3, v4, v10

    if-nez v3, :cond_e

    .line 3496
    const/16 v20, 0x1

    .line 3499
    .end local v18    # "homeItem":Lcom/android/launcher2/HomeItem;
    :cond_e
    if-eqz v21, :cond_f

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v14, v3, :cond_f

    if-eqz v20, :cond_10

    :cond_f
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_14

    :cond_10
    const/16 v16, 0x1

    .line 3500
    .local v16, "abortDrop":Z
    :goto_5
    if-nez v16, :cond_2

    .line 3506
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 3507
    .local v2, "cl":Lcom/android/launcher2/CellLayout;
    if-eqz v2, :cond_11

    .line 3508
    const/4 v3, 0x2

    new-array v7, v3, [I

    .line 3509
    .local v7, "res":[I
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v6

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    .line 3510
    const/4 v3, 0x0

    aget v3, v7, v3

    if-ltz v3, :cond_15

    const/4 v3, 0x1

    aget v3, v7, v3

    if-ltz v3, :cond_15

    .line 3512
    const/4 v3, 0x0

    aget v10, v7, v3

    const/4 v3, 0x1

    aget v11, v7, v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v12

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v13

    const/4 v15, 0x1

    move-object v9, v2

    invoke-virtual/range {v8 .. v15}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z

    .line 3514
    invoke-virtual {v8}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 3515
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v3

    if-eq v14, v3, :cond_11

    move-object/from16 v3, p0

    .line 3516
    check-cast v3, Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->removeCreatedPageForDrag()V

    .line 3517
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 3523
    .end local v7    # "res":[I
    :cond_11
    :goto_6
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 3484
    .end local v2    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v8    # "dragState":Lcom/android/launcher2/DragState;
    .end local v16    # "abortDrop":Z
    .end local v17    # "dragItem":Lcom/android/launcher2/BaseItem;
    .end local v20    # "itemFromHotseat":Z
    .end local v21    # "itemFromWorkspace":Z
    :cond_12
    sget-object v8, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto/16 :goto_3

    .line 3491
    .restart local v8    # "dragState":Lcom/android/launcher2/DragState;
    .restart local v17    # "dragItem":Lcom/android/launcher2/BaseItem;
    :cond_13
    const/16 v21, 0x0

    goto :goto_4

    .line 3499
    .restart local v20    # "itemFromHotseat":Z
    .restart local v21    # "itemFromWorkspace":Z
    :cond_14
    const/16 v16, 0x0

    goto :goto_5

    .line 3520
    .restart local v2    # "cl":Lcom/android/launcher2/CellLayout;
    .restart local v7    # "res":[I
    .restart local v16    # "abortDrop":Z
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v8, v14, v3, v4}, Lcom/android/launcher2/CellLayout;->noRoomForDrop(Lcom/android/launcher2/DragState;III)V

    goto :goto_6

    .line 3529
    .end local v2    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v7    # "res":[I
    .end local v8    # "dragState":Lcom/android/launcher2/DragState;
    .end local v14    # "pageIndicatorHit":I
    .end local v16    # "abortDrop":Z
    .end local v17    # "dragItem":Lcom/android/launcher2/BaseItem;
    .end local v20    # "itemFromHotseat":Z
    .end local v21    # "itemFromWorkspace":Z
    :pswitch_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 3530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PagedView;->mPagePreviewSnapDelay:Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->cancel()V

    goto/16 :goto_1

    .line 3393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x1

    .line 1528
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()I

    move-result v7

    .line 1529
    .local v7, "visiblePages":I
    if-ge v7, v13, :cond_0

    .line 1598
    :goto_0
    return-void

    .line 1536
    :cond_0
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    if-nez v8, :cond_c

    .line 1538
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v9, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1539
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v1

    .line 1543
    .local v1, "halfScreenSize":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v8

    add-int v6, v8, v1

    .line 1544
    .local v6, "screenCenter":I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    if-eq v6, v8, :cond_1

    .line 1545
    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->screenScrolled(I)V

    .line 1546
    iput v6, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 1549
    :cond_1
    const/4 v0, 0x0

    .line 1550
    .local v0, "centerOfScreen":Lcom/android/launcher2/PagedView$PageInfo;
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedView$PageInfo;

    .line 1551
    .local v5, "pageInfo":Lcom/android/launcher2/PagedView$PageInfo;
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v9, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1552
    if-eqz v0, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2

    .line 1554
    :cond_3
    move-object v0, v5

    goto :goto_2

    .line 1541
    .end local v0    # "centerOfScreen":Lcom/android/launcher2/PagedView$PageInfo;
    .end local v1    # "halfScreenSize":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "pageInfo":Lcom/android/launcher2/PagedView$PageInfo;
    .end local v6    # "screenCenter":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v1, v8, 0x2

    .restart local v1    # "halfScreenSize":I
    goto :goto_1

    .line 1557
    .restart local v0    # "centerOfScreen":Lcom/android/launcher2/PagedView$PageInfo;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "pageInfo":Lcom/android/launcher2/PagedView$PageInfo;
    .restart local v6    # "screenCenter":I
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 1560
    :cond_6
    move-object v0, v5

    goto :goto_2

    .line 1565
    .end local v5    # "pageInfo":Lcom/android/launcher2/PagedView$PageInfo;
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1566
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1568
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1572
    iput-boolean v13, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 1575
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getDrawingTime()J

    move-result-wide v2

    .line 1576
    .local v2, "drawingTime":J
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedView$PageInfo;

    .line 1577
    .restart local v5    # "pageInfo":Lcom/android/launcher2/PagedView$PageInfo;
    if-eq v5, v0, :cond_9

    .line 1578
    invoke-direct {p0, p1, v5, v2, v3}, Lcom/android/launcher2/PagedView;->drawPage(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView$PageInfo;J)V

    goto :goto_3

    .line 1581
    .end local v5    # "pageInfo":Lcom/android/launcher2/PagedView$PageInfo;
    :cond_a
    if-eqz v0, :cond_b

    .line 1582
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/launcher2/PagedView;->drawPage(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView$PageInfo;J)V

    .line 1584
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1585
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 1589
    .end local v0    # "centerOfScreen":Lcom/android/launcher2/PagedView$PageInfo;
    .end local v1    # "halfScreenSize":I
    .end local v2    # "drawingTime":J
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "screenCenter":I
    :cond_c
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, p1, v10, v11}, Lcom/android/launcher2/PageIndicatorManager;->drawPageIndicator(Landroid/graphics/Canvas;J)V

    goto/16 :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 1638
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 1639
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 1640
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1649
    :goto_0
    return v0

    .line 1643
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1644
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1645
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 1649
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public enableRollNavigation()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3634
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 3635
    .local v1, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isAirMoveOninSettings()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3636
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->registerForAirMotionGestureListner()V

    .line 3640
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_3

    .line 3644
    :cond_1
    sget-boolean v2, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    if-eqz v2, :cond_2

    const-string v2, "MotionEngine"

    const-string v3, "motion setting is turned off"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    :cond_2
    :goto_0
    return-void

    .line 3647
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 3648
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mCurrentRotation:I

    .line 3649
    sget-boolean v2, Lcom/android/launcher2/PagedView;->sIsMotionEngineEnabled:Z

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mMotionListenerRegistered:Z

    if-nez v2, :cond_2

    .line 3651
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    .line 3654
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/motion/MRListener;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Lcom/samsung/android/motion/MRListener;I)V

    .line 3655
    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mMotionListenerRegistered:Z

    .line 3656
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning_sensitivity"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0xa

    mul-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, 0x28

    int-to-double v2, v2

    iput-wide v2, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    .line 3660
    sget-boolean v2, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    if-eqz v2, :cond_2

    const-string v2, "MotionEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableRollNavigation : mPanningBasis "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 1677
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1678
    .local v0, "current":Landroid/view/View;
    move-object v2, p1

    .line 1680
    .local v2, "v":Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 1681
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1691
    :cond_0
    return-void

    .line 1684
    :cond_1
    if-eq v2, p0, :cond_0

    .line 1687
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1688
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1689
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "v":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 437
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 422
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 432
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getAdjustedPageIndex(I)I
    .locals 3
    .param p1, "pageIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 992
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 993
    .local v0, "lastPageIndex":I
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIgnoreSecretPage:Z

    .line 994
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 995
    if-gez p1, :cond_0

    .line 1002
    .end local v0    # "lastPageIndex":I
    :goto_0
    return v0

    .line 997
    .restart local v0    # "lastPageIndex":I
    :cond_0
    if-le p1, v0, :cond_1

    move v0, v1

    .line 998
    goto :goto_0

    :cond_1
    move v0, p1

    .line 1000
    goto :goto_0

    .line 1002
    :cond_2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 2993
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 2996
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 2997
    .local v0, "count":I
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method protected getChildOffset(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2510
    const/4 v1, 0x0

    .line 2511
    .local v1, "offset":I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2512
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2513
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2515
    :cond_0
    return v1
.end method

.method public getClosestPageForScrollX(I)I
    .locals 4
    .param p1, "scrollX"    # I

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 873
    .local v0, "pageCount":I
    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 874
    .local v1, "pageIndex":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 875
    rem-int/2addr v1, v0

    .line 877
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v1

    .line 879
    return v1
.end method

.method getComingPage()I
    .locals 2

    .prologue
    .line 479
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method getCurrentPage()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3170
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10006e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;
    .locals 1

    .prologue
    .line 3066
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getFestivalPageCnt()I
    .locals 2

    .prologue
    .line 4109
    const/4 v0, 0x0

    .line 4110
    .local v0, "ret":I
    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v1, :cond_0

    .line 4111
    instance-of v1, p0, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_0

    .line 4113
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v0

    .line 4116
    :cond_0
    return v0
.end method

.method protected getHorizontalVisibilityExtension()I
    .locals 1

    .prologue
    .line 1051
    const/4 v0, 0x0

    return v0
.end method

.method protected getInclusivePages(I)V
    .locals 11
    .param p1, "currentPageIndex"    # I

    .prologue
    .line 2892
    sget-object v9, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2893
    sget-object v2, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    .line 2895
    .local v2, "inclusivePages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2897
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCacheSize()I

    move-result v0

    .line 2898
    .local v0, "cacheSize":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    .line 2901
    .local v4, "pageCount":I
    if-lt v0, v4, :cond_0

    .line 2902
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_8

    .line 2903
    sget-object v9, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2902
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2908
    .end local v1    # "i":I
    :cond_0
    add-int/lit8 v8, v0, -0x1

    .line 2909
    .local v8, "size":I
    int-to-float v9, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 2910
    .local v5, "pagesToLeft":I
    div-int/lit8 v6, v8, 0x2

    .line 2911
    .local v6, "pagesToRight":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2912
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_1
    if-gt v1, v5, :cond_2

    .line 2913
    sub-int v3, p1, v1

    .line 2914
    .local v3, "leftIndex":I
    if-gez v3, :cond_1

    .line 2915
    add-int/2addr v3, v4

    .line 2918
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2912
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2921
    .end local v3    # "leftIndex":I
    :cond_2
    const/4 v1, 0x1

    :goto_2
    if-gt v1, v6, :cond_8

    .line 2922
    add-int v7, p1, v1

    .line 2923
    .local v7, "rightIndex":I
    if-lt v7, v4, :cond_3

    .line 2924
    sub-int/2addr v7, v4

    .line 2926
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2921
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2929
    .end local v1    # "i":I
    .end local v7    # "rightIndex":I
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_3
    if-gt v1, v5, :cond_6

    .line 2930
    sub-int v3, p1, v1

    .line 2931
    .restart local v3    # "leftIndex":I
    if-ltz v3, :cond_5

    .line 2932
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2929
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2936
    .end local v3    # "leftIndex":I
    :cond_6
    const/4 v1, 0x1

    :goto_4
    if-gt v1, v6, :cond_8

    .line 2937
    add-int v7, p1, v1

    .line 2938
    .restart local v7    # "rightIndex":I
    if-ge v7, v4, :cond_7

    .line 2939
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2936
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2943
    .end local v5    # "pagesToLeft":I
    .end local v6    # "pagesToRight":I
    .end local v7    # "rightIndex":I
    .end local v8    # "size":I
    :cond_8
    return-void
.end method

.method public getLeftPage()Landroid/view/View;
    .locals 1

    .prologue
    .line 3785
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-nez v0, :cond_0

    .line 3786
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3788
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected getNonLoopedMappedScrollX(I)I
    .locals 6
    .param p1, "scrollX"    # I

    .prologue
    .line 1033
    move v0, p1

    .line 1034
    .local v0, "adjustedScrollX":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1035
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v2

    .line 1036
    .local v2, "lb":I
    sub-int v1, p1, v2

    .line 1037
    .local v1, "deltaScrollX":I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v4

    .line 1038
    .local v4, "pg":I
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    .line 1040
    .local v3, "nonLoopedScrollXForPg":I
    add-int v0, v3, v1

    .line 1047
    .end local v1    # "deltaScrollX":I
    .end local v2    # "lb":I
    .end local v3    # "nonLoopedScrollXForPg":I
    .end local v4    # "pg":I
    :cond_0
    return v0
.end method

.method public getNonLoopedScrollXForPageIndex(I)I
    .locals 1
    .param p1, "pageIndex"    # I

    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v0

    mul-int/2addr v0, p1

    return v0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageBackgroundAlpha()F
    .locals 1

    .prologue
    .line 3375
    iget v0, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    return v0
.end method

.method public getPageCacheSize()I
    .locals 1

    .prologue
    .line 3894
    const/4 v0, 0x3

    return v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageIndexForItemId(J)I
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 3904
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 3905
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 3906
    .local v3, "page":Lcom/android/launcher2/CellLayoutChildren;
    iget-object v4, v3, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 3907
    .local v2, "item":Lcom/android/launcher2/BaseItem;
    iget-wide v4, v2, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 3913
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/android/launcher2/BaseItem;
    .end local v3    # "page":Lcom/android/launcher2/CellLayoutChildren;
    :goto_1
    return v0

    .line 3904
    .restart local v0    # "i":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "page":Lcom/android/launcher2/CellLayoutChildren;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3913
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "page":Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected getPageIndexForScrollX(I)I
    .locals 5
    .param p1, "scrollX"    # I

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 884
    .local v0, "pageCount":I
    const/high16 v1, -0x80000000

    .line 886
    .local v1, "res":I
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->getSlotForScrollX(I)I

    move-result v2

    .line 887
    .local v2, "slot":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 888
    if-gez p1, :cond_0

    .line 889
    add-int/lit8 v3, v0, -0x1

    rem-int v4, v2, v0

    sub-int v1, v3, v4

    .line 896
    :goto_0
    return v1

    .line 891
    :cond_0
    rem-int v1, v2, v0

    goto :goto_0

    .line 894
    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;
    .locals 1

    .prologue
    .line 3183
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    return-object v0
.end method

.method protected getPageIndicatorManager(Lcom/android/launcher2/PagedView;III)Lcom/android/launcher2/PageIndicatorManager;
    .locals 1
    .param p1, "pagedView"    # Lcom/android/launcher2/PagedView;
    .param p2, "pageIndicatorTop"    # I
    .param p3, "pageIndicatorGap"    # I
    .param p4, "pageIndicatorMaxVisible"    # I

    .prologue
    .line 4026
    new-instance v0, Lcom/android/launcher2/PageIndicatorManager;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/launcher2/PageIndicatorManager;-><init>(Lcom/android/launcher2/PagedView;III)V

    return-object v0
.end method

.method public getPageNearestToCenterOfScreen()I
    .locals 15

    .prologue
    .line 2544
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v8

    .line 2545
    .local v8, "pageWidth":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v2

    .line 2546
    .local v2, "leftEdge":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v13

    add-int v10, v13, v8

    .line 2547
    .local v10, "rightEdge":I
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v5

    .line 2548
    .local v5, "pageLeftIndex":I
    invoke-virtual {p0, v10}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v7

    .line 2549
    .local v7, "pageRightIndex":I
    const/high16 v0, -0x80000000

    .line 2551
    .local v0, "indexOfPageOnScreen":I
    if-ne v5, v7, :cond_1

    .line 2552
    move v0, v5

    .line 2586
    :cond_0
    :goto_0
    return v0

    .line 2554
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 2555
    .local v3, "leftView":Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v11

    .line 2556
    .local v11, "rightView":Landroid/view/View;
    if-eqz v3, :cond_0

    if-eqz v11, :cond_0

    .line 2557
    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v13

    invoke-direct {p0, v3}, Lcom/android/launcher2/PagedView;->getCenterOfViewRelative(Landroid/view/View;)I

    move-result v14

    add-int v4, v13, v14

    .line 2558
    .local v4, "pageLeftCenter":I
    invoke-direct {p0, v10}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v13

    invoke-direct {p0, v11}, Lcom/android/launcher2/PagedView;->getCenterOfViewRelative(Landroid/view/View;)I

    move-result v14

    add-int v6, v13, v14

    .line 2559
    .local v6, "pageRightCenter":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v13

    div-int/lit8 v14, v8, 0x2

    add-int v12, v13, v14

    .line 2560
    .local v12, "screenCenter":I
    sub-int v13, v12, v4

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2561
    .local v1, "leftDelta":I
    sub-int v13, v6, v12

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 2564
    .local v9, "rightDelta":I
    iget v13, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v13, v5, :cond_7

    .line 2565
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v13

    if-nez v13, :cond_3

    .line 2566
    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0xa

    if-lt v1, v13, :cond_2

    move v0, v7

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1

    .line 2567
    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2568
    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0x2

    if-lt v1, v13, :cond_4

    move v0, v7

    :goto_2
    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_2

    .line 2570
    :cond_5
    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0x3

    if-lt v1, v13, :cond_6

    move v0, v7

    :goto_3
    goto :goto_0

    :cond_6
    move v0, v5

    goto :goto_3

    .line 2574
    :cond_7
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2575
    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0x2

    if-lt v9, v13, :cond_8

    move v0, v5

    :goto_4
    goto :goto_0

    :cond_8
    move v0, v7

    goto :goto_4

    .line 2577
    :cond_9
    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0x3

    if-lt v9, v13, :cond_a

    move v0, v5

    :goto_5
    goto/16 :goto_0

    :cond_a
    move v0, v7

    goto :goto_5
.end method

.method public getPageSpacing()I
    .locals 1

    .prologue
    .line 3086
    iget v0, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    return v0
.end method

.method public getPageSwitchListener()Lcom/android/launcher2/PagedView$PageSwitchListener;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    return-object v0
.end method

.method protected getPageTotWidth()I
    .locals 4

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int v1, v2, v3

    .line 845
    .local v1, "result":I
    if-gtz v1, :cond_0

    .line 846
    const/16 v0, 0x13

    .line 847
    .local v0, "RANDOM_NUMBER_WITH_NO_MEANING":I
    const/16 v1, 0x13

    .line 850
    .end local v0    # "RANDOM_NUMBER_WITH_NO_MEANING":I
    :cond_0
    return v1
.end method

.method public getPageZoom()F
    .locals 1

    .prologue
    .line 3361
    iget v0, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    return v0
.end method

.method protected getRelativeChildOffset(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 2498
    const/4 v1, 0x0

    .line 2499
    .local v1, "offset":I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2500
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2501
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 2503
    :cond_0
    return v1
.end method

.method public getRightPage()Landroid/view/View;
    .locals 2

    .prologue
    .line 3793
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3794
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3796
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F
    .locals 8
    .param p1, "pageInfo"    # Lcom/android/launcher2/PagedView$PageInfo;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 2063
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v3

    .line 2064
    .local v3, "totalDistance":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v1

    .line 2065
    .local v1, "screenLeft":I
    iget v4, p1, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    .line 2066
    .local v4, "viewLeft":I
    sub-int v0, v1, v4

    .line 2067
    .local v0, "delta":I
    int-to-float v5, v0

    int-to-float v6, v3

    mul-float/2addr v6, v7

    div-float v2, v5, v6

    .line 2068
    .local v2, "scrollProgress":F
    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2069
    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 2071
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2072
    const/4 v2, 0x0

    .line 2074
    :cond_0
    return v2
.end method

.method public getScroller()Landroid/widget/Scroller;
    .locals 1

    .prologue
    .line 3935
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method public getSecretPageCnt()I
    .locals 1

    .prologue
    .line 4085
    const/4 v0, 0x0

    .line 4105
    .local v0, "ret":I
    return v0
.end method

.method public handleScrollOnOrientationChange()V
    .locals 1

    .prologue
    .line 3884
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3885
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 3889
    :cond_0
    :goto_0
    return-void

    .line 3886
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v0, :cond_0

    .line 3887
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getClosestPageForScrollX(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method public hidePageIndicator(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 3179
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->hidePageIndicator(Z)V

    .line 3180
    return-void
.end method

.method protected hitsNextPage(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1730
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1731
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    .line 1732
    .local v1, "res":Z
    if-eqz v0, :cond_0

    .line 1733
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 1735
    :cond_0
    :goto_0
    return v1

    .line 1733
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1718
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1719
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    .line 1720
    .local v1, "res":Z
    if-eqz v0, :cond_0

    .line 1721
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    const/4 v1, 0x1

    .line 1723
    :cond_0
    :goto_0
    return v1

    .line 1721
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 491
    return p1
.end method

.method protected initCurrentPage(I)V
    .locals 0
    .param p1, "currentPage"    # I

    .prologue
    .line 511
    iput p1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 512
    return-void
.end method

.method protected invalidatePageData()V
    .locals 2

    .prologue
    .line 3015
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 3016
    return-void
.end method

.method protected invalidatePageData(I)V
    .locals 1
    .param p1, "currentPage"    # I

    .prologue
    .line 3018
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 3019
    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 6
    .param p1, "currentPage"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x1

    .line 3021
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v2, :cond_1

    .line 3062
    :cond_0
    :goto_0
    return-void

    .line 3025
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v2, :cond_0

    .line 3026
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3035
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncPages()V

    .line 3038
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 3042
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PagedView;->measure(II)V

    .line 3045
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mPendingSavedState:Lcom/android/launcher2/PagedView$SavedState;

    if-eqz v2, :cond_3

    .line 3046
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mPendingSavedState:Lcom/android/launcher2/PagedView$SavedState;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->restoreCurrentPageFromState(Lcom/android/launcher2/PagedView$SavedState;)V

    .line 3047
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mPendingSavedState:Lcom/android/launcher2/PagedView$SavedState;

    .line 3053
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 3054
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_4

    .line 3055
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3054
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3048
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_3
    const/4 v2, -0x1

    if-le p1, v2, :cond_2

    .line 3049
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    goto :goto_1

    .line 3059
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_4
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-direct {p0, v2, p2}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    .line 3060
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->requestLayout()V

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 3383
    const/4 v0, 0x0

    return v0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    return v0
.end method

.method public isEnabledFingerHovering()Z
    .locals 1

    .prologue
    .line 3310
    const/4 v0, 0x0

    return v0
.end method

.method isFastScrolling()Z
    .locals 1

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v0

    return v0
.end method

.method public isHoveringAreaX(F)I
    .locals 3
    .param p1, "x"    # F

    .prologue
    .line 3314
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mHoverScrollRightPadding:I

    sub-int v0, v1, v2

    .line 3316
    .local v0, "width":I
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollWidth:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 3318
    const/4 v1, 0x2

    .line 3324
    :goto_0
    return v1

    .line 3319
    :cond_0
    iget v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollWidth:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 3321
    const/4 v1, 0x3

    goto :goto_0

    .line 3324
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHoveringAreaY(F)Z
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 3328
    iget v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollTop:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollBottom:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 3329
    const/4 v0, 0x1

    .line 3332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLoopingEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 835
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->isLoopingDisabledInCSC()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPageAddedForDrag(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4082
    const/4 v0, 0x0

    return v0
.end method

.method public isPageConstructed(I)Z
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2987
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-nez v0, :cond_0

    .line 2989
    :goto_0
    return v1

    .line 2988
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    move v1, v2

    goto :goto_0

    .line 2989
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public isPageFastMoving()Z
    .locals 1

    .prologue
    .line 723
    sget-boolean v0, Lcom/android/launcher2/PagedView;->mIsPageFastMoving:Z

    return v0
.end method

.method protected isPageInclusive(I)Z
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 2880
    sget-object v0, Lcom/android/launcher2/PagedView;->sInclusivePages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPageMoving()Z
    .locals 1

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method protected loadAssociatedPages(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 2841
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    .line 2842
    return-void
.end method

.method protected maxOverScroll()F
    .locals 3

    .prologue
    .line 2137
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2138
    .local v0, "f":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 2139
    const v1, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, v0

    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 3873
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3874
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    .line 3875
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 3876
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->handleOrientationChange()V

    .line 3877
    return-void
.end method

.method protected onDrawComplete(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1522
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 2409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 2410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2433
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 2415
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 2416
    const/4 v1, 0x0

    .line 2417
    .local v1, "vscroll":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 2422
    .local v0, "hscroll":F
    :goto_1
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 2423
    :cond_1
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    .line 2424
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollRight()V

    .line 2428
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 2419
    .end local v0    # "hscroll":F
    .end local v1    # "vscroll":F
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 2420
    .restart local v1    # "vscroll":F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "hscroll":F
    goto :goto_1

    .line 2426
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollLeft()V

    goto :goto_2

    .line 2410
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->isHoveringAreaX(F)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->isHoveringAreaY(F)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3211
    :cond_0
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-eqz v4, :cond_1

    .line 3212
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->setHoveringSpenIcon(I)V

    .line 3213
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    :cond_1
    move v2, v3

    .line 3236
    :cond_2
    :goto_0
    return v2

    .line 3218
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 3221
    .local v1, "toolType":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 3223
    :cond_4
    if-ne v1, v3, :cond_6

    .line 3225
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isEnabledFingerHovering()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3227
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3228
    .local v0, "isFingerHoveringOn":I
    if-eqz v0, :cond_2

    .end local v0    # "isFingerHoveringOn":I
    :cond_5
    move v2, v3

    .line 3236
    goto :goto_0

    .line 3229
    :cond_6
    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    .line 3232
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 3233
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->scrollByHover(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3160
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3161
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 3162
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 3163
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 3164
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 3165
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 3167
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 3154
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3155
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 3156
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3189
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.sec.feature.hovering_ui"

    invoke-static {v4, v5}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3205
    :cond_0
    :goto_0
    return v2

    .line 3192
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 3193
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3194
    .local v1, "isHoveringOn":I
    if-eqz v1, :cond_0

    .line 3196
    .end local v1    # "isHoveringOn":I
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 3198
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3199
    .local v0, "isFingerHoveringOn":I
    if-eqz v0, :cond_0

    .line 3202
    .end local v0    # "isFingerHoveringOn":I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->isHoveringAreaX(F)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->isHoveringAreaY(F)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 3205
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1741
    const/4 v3, 0x0

    .line 1742
    .local v3, "touchOnPageIndicator":Z
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/PageIndicatorManager;->isInPageIndicator(FF)Z

    move-result v3

    .line 1745
    sget-boolean v7, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v7, :cond_5

    .line 1746
    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_1

    .line 1747
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-object v7, v7, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1749
    const/4 v7, 0x0

    .line 1927
    :goto_0
    return v7

    .line 1752
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1756
    :cond_1
    sget-boolean v7, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    if-eqz v7, :cond_2

    .line 1757
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-static {v7}, Lcom/android/launcher2/guide/GuideFragment;->showCompleteDialog(Landroid/app/Activity;)V

    .line 1758
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v7

    sput v7, Lcom/android/launcher2/guide/GuideFragment;->currentPageToStopNavigation:I

    .line 1759
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 1761
    :cond_3
    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v8, "navigation"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-boolean v7, v7, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-nez v7, :cond_4

    .line 1762
    const/4 v7, 0x0

    goto :goto_0

    .line 1766
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-boolean v7, v7, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-nez v7, :cond_5

    .line 1767
    const/4 v7, 0x0

    goto :goto_0

    .line 1771
    :cond_5
    iget-boolean v7, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    if-nez v7, :cond_6

    .line 1772
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->updateMotionTracking(Landroid/view/MotionEvent;)V

    .line 1778
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1781
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 1788
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1789
    .local v0, "action":I
    const/4 v7, 0x2

    if-ne v0, v7, :cond_8

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 1791
    const/4 v7, 0x1

    goto :goto_0

    .line 1794
    :cond_8
    const/4 v2, 0x0

    .line 1795
    .local v2, "shouldInterceptForFastScroll":Z
    sget-object v7, Lcom/android/launcher2/PagedView;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v8, "Launcher_touch"

    invoke-virtual {v7, v8}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1797
    sget-object v7, Lcom/android/launcher2/PagedView;->busBooster:Landroid/os/DVFSHelper;

    const-string v8, "Launcher_touch"

    invoke-virtual {v7, v8}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 1799
    sget-object v7, Lcom/android/launcher2/PagedView;->cpuMaxBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v1

    .line 1800
    .local v1, "coreTable":[I
    if-eqz v1, :cond_9

    .line 1801
    sget-object v7, Lcom/android/launcher2/PagedView;->cpuMaxBooster:Landroid/os/DVFSHelper;

    const-string v8, "CORE_NUM"

    const/4 v9, 0x0

    aget v9, v1, v9

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1803
    :cond_9
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 1927
    :cond_a
    :goto_1
    :pswitch_0
    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v7, :cond_b

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_c

    :cond_b
    if-eqz v2, :cond_1a

    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1808
    :pswitch_1
    iget-boolean v7, p0, Lcom/android/launcher2/PagedView;->mInGesture:Z

    if-eqz v7, :cond_d

    .line 1809
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1821
    :cond_d
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1822
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 1823
    .local v6, "y":F
    iput v4, p0, Lcom/android/launcher2/PagedView;->mTouchDownPointX:F

    .line 1824
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v7, v4, v6}, Lcom/android/launcher2/PageIndicatorManager;->isInPageIndicator(FF)Z

    move-result v2

    .line 1825
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/launcher2/PagedView;->mSnapState:I

    .line 1828
    sget-object v7, Lcom/android/launcher2/PagedView;->chipset:Ljava/lang/String;

    const-string v8, "8930"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    sget-object v7, Lcom/android/launcher2/PagedView;->chipset:Ljava/lang/String;

    const-string v8, "piranha"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1829
    :cond_e
    sget-object v7, Lcom/android/launcher2/PagedView;->cpuMaxBooster:Landroid/os/DVFSHelper;

    const-string v8, "Launcher_touch"

    invoke-virtual {v7, v8}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    .line 1830
    sget-object v7, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v7

    if-eqz v7, :cond_f

    .line 1831
    sget-object v7, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->acquire()V

    .line 1846
    :cond_f
    :goto_2
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1847
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->isShowCamera:Z

    .line 1848
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1850
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mUseSlopJump:Z

    .line 1851
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTotalPredictionX:F

    .line 1857
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getFinalX()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 1858
    .local v5, "xDist":I
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_10

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    if-ge v5, v7, :cond_12

    .line 1859
    :cond_10
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1860
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->abortScroll()V

    .line 1866
    :goto_3
    sget-boolean v7, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v7, :cond_13

    .line 1867
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-boolean v7, v7, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mInGesture:Z

    goto/16 :goto_1

    .line 1835
    .end local v5    # "xDist":I
    :cond_11
    sget-object v7, Lcom/android/launcher2/PagedView;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v8, "Launcher_touch"

    invoke-virtual {v7, v8}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    .line 1836
    sget-object v7, Lcom/android/launcher2/PagedView;->busBooster:Landroid/os/DVFSHelper;

    const-string v8, "Launcher_touch"

    invoke-virtual {v7, v8}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    .line 1838
    instance-of v7, p0, Lcom/android/launcher2/Workspace;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v8, Lcom/android/launcher2/PagedView$TransitionEffect;->SPIRAL:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v7, v8}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    sget-object v7, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v7

    if-eqz v7, :cond_f

    .line 1841
    sget-object v7, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_2

    .line 1862
    .restart local v5    # "xDist":I
    :cond_12
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_3

    .line 1875
    :cond_13
    invoke-virtual {p0, v4, v6}, Lcom/android/launcher2/PagedView;->hitsPreviousPage(FF)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1876
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1881
    :cond_14
    :goto_4
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mInGesture:Z

    goto/16 :goto_1

    .line 1877
    :cond_15
    invoke-virtual {p0, v4, v6}, Lcom/android/launcher2/PagedView;->hitsNextPage(FF)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1878
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_4

    .line 1886
    .end local v4    # "x":F
    .end local v5    # "xDist":I
    .end local v6    # "y":F
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchUpPointX:F

    .line 1887
    sget-object v7, Lcom/android/launcher2/PagedView;->chipset:Ljava/lang/String;

    const-string v8, "8930"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_16

    sget-object v7, Lcom/android/launcher2/PagedView;->chipset:Ljava/lang/String;

    const-string v8, "piranha"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1888
    :cond_16
    sget-object v7, Lcom/android/launcher2/PagedView;->cpuMaxBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->release()V

    .line 1889
    sget-object v7, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v7

    if-eqz v7, :cond_17

    .line 1890
    sget-object v7, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->release()V

    .line 1903
    :cond_17
    :goto_5
    :pswitch_4
    const/4 v7, 0x4

    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v7, v8, :cond_18

    .line 1904
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 1906
    :cond_18
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1907
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1908
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    .line 1909
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mInGesture:Z

    .line 1910
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    .line 1893
    :cond_19
    sget-object v7, Lcom/android/launcher2/PagedView;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->release()V

    .line 1894
    sget-object v7, Lcom/android/launcher2/PagedView;->busBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->release()V

    .line 1896
    instance-of v7, p0, Lcom/android/launcher2/Workspace;

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v8, Lcom/android/launcher2/PagedView$TransitionEffect;->SPIRAL:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v7, v8}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    sget-object v7, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v7

    if-eqz v7, :cond_17

    .line 1899
    sget-object v7, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v7}, Landroid/os/DVFSHelper;->release()V

    goto :goto_5

    .line 1914
    :pswitch_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    .line 1918
    :pswitch_6
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 1919
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1927
    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1803
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 19
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1323
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v15, :cond_0

    .line 1413
    :goto_0
    return-void

    .line 1331
    :cond_0
    sub-int v14, p4, p2

    .line 1332
    .local v14, "pageWidth":I
    sub-int v12, p5, p3

    .line 1333
    .local v12, "pageHeight":I
    const/4 v13, 0x0

    .line 1334
    .local v13, "pageLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    .line 1335
    .local v3, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v3, :cond_3

    .line 1336
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1337
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 1338
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 1339
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1340
    .local v7, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1342
    .local v4, "childHeight":I
    iget v9, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1343
    .local v9, "gravity":I
    const/4 v15, -0x1

    if-ne v9, v15, :cond_1

    .line 1344
    const/16 v9, 0x31

    .line 1347
    :cond_1
    and-int/lit8 v15, v9, 0x7

    packed-switch v15, :pswitch_data_0

    .line 1358
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v15

    sub-int v15, v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v16, v0

    sub-int v1, v15, v16

    .line 1359
    .local v1, "availWidth":I
    sub-int v8, v1, v7

    .line 1360
    .local v8, "extraWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v15

    add-int/2addr v15, v13

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    div-int/lit8 v16, v8, 0x2

    add-int v5, v15, v16

    .line 1363
    .end local v1    # "availWidth":I
    .end local v8    # "extraWidth":I
    .local v5, "childLeft":I
    :goto_2
    and-int/lit8 v15, v9, 0x70

    sparse-switch v15, :sswitch_data_0

    .line 1372
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingTop()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingTop()I

    move-result v16

    sub-int v16, v12, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingBottom()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v16, v16, v4

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    sub-int v6, v15, v16

    .line 1377
    .local v6, "childTop":I
    :goto_3
    add-int v15, v5, v7

    add-int v16, v6, v4

    move/from16 v0, v16

    invoke-virtual {v2, v5, v6, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 1384
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v15, v14

    add-int/2addr v13, v15

    .line 1335
    .end local v4    # "childHeight":I
    .end local v5    # "childLeft":I
    .end local v6    # "childTop":I
    .end local v7    # "childWidth":I
    .end local v9    # "gravity":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1349
    .restart local v4    # "childHeight":I
    .restart local v7    # "childWidth":I
    .restart local v9    # "gravity":I
    .restart local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v15

    add-int/2addr v15, v13

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v16, v0

    add-int v5, v15, v16

    .line 1350
    .restart local v5    # "childLeft":I
    goto :goto_2

    .line 1352
    .end local v5    # "childLeft":I
    :pswitch_2
    add-int v15, v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    sub-int/2addr v15, v7

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v16, v0

    sub-int v5, v15, v16

    .line 1354
    .restart local v5    # "childLeft":I
    goto :goto_2

    .line 1366
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingTop()I

    move-result v15

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    sub-int v6, v15, v16

    .line 1367
    .restart local v6    # "childTop":I
    goto :goto_3

    .line 1369
    .end local v6    # "childTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingBottom()I

    move-result v15

    sub-int v15, v12, v15

    sub-int/2addr v15, v4

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    sub-int v6, v15, v16

    .line 1370
    .restart local v6    # "childTop":I
    goto :goto_3

    .line 1388
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childHeight":I
    .end local v5    # "childLeft":I
    .end local v6    # "childTop":I
    .end local v7    # "childWidth":I
    .end local v9    # "gravity":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    if-nez v15, :cond_4

    .line 1389
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->setHoverScrollBoundary()V

    .line 1392
    :cond_4
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    .line 1393
    if-nez p1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v15, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v15, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 1394
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher2/PagedView;->jumpToPageInternal(I)V

    .line 1395
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->repositionOpenFolder()V

    .line 1396
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 1397
    sget-boolean v15, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v15, :cond_6

    const-string v15, "change_wallpaper"

    sget-object v16, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 1399
    :cond_6
    const/high16 v15, -0x80000000

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    .line 1401
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v15}, Lcom/android/launcher2/PageIndicatorManager;->layoutPageIndicator()V

    .line 1403
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    const/high16 v16, -0x80000000

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    .line 1404
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutMustAnim:Z

    if-eqz v15, :cond_9

    .line 1405
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/PagedView;->mDelaySnapToPage:Lcom/android/launcher2/PagedView$DelaySnapToPage;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDur:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDir:I

    move/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Lcom/android/launcher2/PagedView$DelaySnapToPage;->setup(III)V

    .line 1409
    :goto_4
    const/high16 v15, -0x80000000

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    .line 1411
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->setDirtyFlags()V

    goto/16 :goto_0

    .line 1407
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher2/PagedView;->jumpToPageInternal(I)V

    goto :goto_4

    .line 1347
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1363
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3072
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    iget v2, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->checkPageIndicatorLongPress(FF)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 25
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1201
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 1202
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1302
    :goto_0
    return-void

    .line 1206
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    const/4 v4, 0x1

    .line 1207
    .local v4, "checkMatchParentWidth":Z
    :goto_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    const/4 v3, 0x1

    .line 1209
    .local v3, "checkMatchParentHeight":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingTop()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingBottom()I

    move-result v22

    add-int v20, v21, v22

    .line 1210
    .local v20, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPaddingRight()I

    move-result v22

    add-int v12, v21, v22

    .line 1211
    .local v12, "horizontalPadding":I
    const/16 v16, 0x0

    .line 1212
    .local v16, "maxWidth":I
    const/4 v15, 0x0

    .line 1213
    .local v15, "maxHeight":I
    const/16 v17, 0x0

    .line 1215
    .local v17, "mustMake2ndPass":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v5

    .line 1216
    .local v5, "childCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    if-ge v13, v5, :cond_b

    .line 1217
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 1218
    .local v18, "v":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    .line 1219
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 1220
    .local v14, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x70

    const/16 v22, 0x30

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    :cond_1
    const/16 v19, 0x1

    .line 1222
    .local v19, "verticalGravityIsTop":Z
    :goto_4
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v22, v0

    add-int v8, v21, v22

    .line 1227
    .local v8, "childHorizontalMargins":I
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    const/16 v23, 0x0

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v24, v0

    if-eqz v19, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingTop()I

    move-result v21

    :goto_5
    sub-int v21, v24, v21

    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    add-int v9, v22, v21

    .line 1230
    .local v9, "childVerticalMargins":I
    add-int v21, v12, v8

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v22, v0

    move/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getChildMeasureSpec(III)I

    move-result v11

    .line 1233
    .local v11, "childWidthMeasureSpec":I
    add-int v21, v20, v9

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v22, v0

    move/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getChildMeasureSpec(III)I

    move-result v7

    .line 1236
    .local v7, "childHeightMeasureSpec":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1241
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v10, v21, v8

    .line 1242
    .local v10, "childWidth":I
    move/from16 v0, v16

    if-le v10, v0, :cond_2

    .line 1243
    move/from16 v16, v10

    .line 1245
    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int v6, v21, v9

    .line 1246
    .local v6, "childHeight":I
    if-le v6, v15, :cond_3

    .line 1247
    move v15, v6

    .line 1249
    :cond_3
    if-eqz v4, :cond_4

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    :cond_4
    if-eqz v3, :cond_6

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 1251
    :cond_5
    const/16 v17, 0x1

    .line 1216
    .end local v6    # "childHeight":I
    .end local v7    # "childHeightMeasureSpec":I
    .end local v8    # "childHorizontalMargins":I
    .end local v9    # "childVerticalMargins":I
    .end local v10    # "childWidth":I
    .end local v11    # "childWidthMeasureSpec":I
    .end local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v19    # "verticalGravityIsTop":Z
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 1206
    .end local v3    # "checkMatchParentHeight":Z
    .end local v4    # "checkMatchParentWidth":Z
    .end local v5    # "childCount":I
    .end local v12    # "horizontalPadding":I
    .end local v13    # "i":I
    .end local v15    # "maxHeight":I
    .end local v16    # "maxWidth":I
    .end local v17    # "mustMake2ndPass":Z
    .end local v18    # "v":Landroid/view/View;
    .end local v20    # "verticalPadding":I
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1207
    .restart local v4    # "checkMatchParentWidth":Z
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1220
    .restart local v3    # "checkMatchParentHeight":Z
    .restart local v5    # "childCount":I
    .restart local v12    # "horizontalPadding":I
    .restart local v13    # "i":I
    .restart local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v15    # "maxHeight":I
    .restart local v16    # "maxWidth":I
    .restart local v17    # "mustMake2ndPass":Z
    .restart local v18    # "v":Landroid/view/View;
    .restart local v20    # "verticalPadding":I
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 1227
    .restart local v8    # "childHorizontalMargins":I
    .restart local v19    # "verticalGravityIsTop":Z
    :cond_a
    const/16 v21, 0x0

    goto :goto_5

    .line 1255
    .end local v8    # "childHorizontalMargins":I
    .end local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v18    # "v":Landroid/view/View;
    .end local v19    # "verticalGravityIsTop":Z
    :cond_b
    add-int v16, v16, v12

    .line 1256
    add-int v15, v15, v20

    .line 1259
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getSuggestedMinimumHeight()I

    move-result v21

    move/from16 v0, v21

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1260
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getSuggestedMinimumWidth()I

    move-result v21

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1262
    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher2/PagedView;->resolveSize(II)I

    move-result v21

    move/from16 v0, p2

    invoke-static {v15, v0}, Lcom/android/launcher2/PagedView;->resolveSize(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->setMeasuredDimension(II)V

    .line 1267
    if-eqz v17, :cond_11

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v21

    sub-int v16, v21, v12

    .line 1269
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v21

    sub-int v15, v21, v20

    .line 1270
    const/4 v13, 0x0

    :goto_6
    if-ge v13, v5, :cond_11

    .line 1271
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 1272
    .restart local v18    # "v":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    .line 1273
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 1274
    .restart local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v4, :cond_c

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    :cond_c
    if-eqz v3, :cond_e

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 1280
    :cond_d
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 1281
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    sub-int v21, v16, v21

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1288
    .restart local v11    # "childWidthMeasureSpec":I
    :goto_7
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 1289
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    sub-int v21, v15, v21

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1296
    .restart local v7    # "childHeightMeasureSpec":I
    :goto_8
    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1270
    .end local v7    # "childHeightMeasureSpec":I
    .end local v11    # "childWidthMeasureSpec":I
    .end local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1284
    .restart local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_f
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v21, v0

    add-int v21, v21, v12

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v22, v0

    add-int v21, v21, v22

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move/from16 v22, v0

    move/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getChildMeasureSpec(III)I

    move-result v11

    .restart local v11    # "childWidthMeasureSpec":I
    goto :goto_7

    .line 1292
    :cond_10
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    add-int v21, v21, v20

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    add-int v21, v21, v22

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move/from16 v22, v0

    move/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getChildMeasureSpec(III)I

    move-result v7

    .restart local v7    # "childHeightMeasureSpec":I
    goto :goto_8

    .line 1301
    .end local v7    # "childHeightMeasureSpec":I
    .end local v11    # "childWidthMeasureSpec":I
    .end local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v18    # "v":Landroid/view/View;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->setMaxScrollX()V

    goto/16 :goto_0
.end method

.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 12
    .param p1, "motionEvent"    # Landroid/hardware/motion/MREvent;

    .prologue
    const-wide/16 v10, 0x0

    .line 3689
    iget-boolean v6, p0, Lcom/android/launcher2/PagedView;->mMotionListenerRegistered:Z

    if-nez v6, :cond_1

    .line 3780
    :cond_0
    :goto_0
    return-void

    .line 3691
    :cond_1
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v6, :cond_0

    .line 3693
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 3695
    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDx()I

    move-result v1

    .line 3696
    .local v1, "dx":I
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDy()I

    move-result v4

    .line 3703
    .local v4, "dy":I
    iget v6, p0, Lcom/android/launcher2/PagedView;->mCurrentRotation:I

    packed-switch v6, :pswitch_data_1

    .line 3714
    int-to-double v2, v1

    .line 3727
    .local v2, "delta":D
    :goto_1
    sget-boolean v6, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    if-eqz v6, :cond_2

    const-string v6, "MotionEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMotionListener : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " delta = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " acc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3730
    :cond_2
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mPanningStopDelta:D

    cmpl-double v6, v6, v10

    if-lez v6, :cond_4

    .line 3731
    iget-wide v8, p0, Lcom/android/launcher2/PagedView;->mPanningStopDelta:D

    cmpl-double v6, v2, v10

    if-lez v6, :cond_3

    const/4 v6, -0x1

    :goto_2
    int-to-double v6, v6

    mul-double/2addr v6, v2

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/launcher2/PagedView;->mPanningStopDelta:D

    goto :goto_0

    .line 3705
    .end local v2    # "delta":D
    :pswitch_1
    neg-int v6, v4

    int-to-double v2, v6

    .line 3706
    .restart local v2    # "delta":D
    goto :goto_1

    .line 3708
    .end local v2    # "delta":D
    :pswitch_2
    neg-int v6, v1

    int-to-double v2, v6

    .line 3709
    .restart local v2    # "delta":D
    goto :goto_1

    .line 3711
    .end local v2    # "delta":D
    :pswitch_3
    int-to-double v2, v4

    .line 3712
    .restart local v2    # "delta":D
    goto :goto_1

    .line 3731
    :cond_3
    const/4 v6, 0x1

    goto :goto_2

    .line 3735
    :cond_4
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    add-double/2addr v6, v2

    iput-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    .line 3736
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    .line 3738
    .local v0, "currentPage":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v6, v6, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    .line 3739
    .local v5, "workspace":Lcom/android/launcher2/Workspace;
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    neg-double v8, v8

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_9

    .line 3740
    if-ltz v0, :cond_7

    .line 3742
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_5

    .line 3743
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3744
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 3746
    :cond_5
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    .line 3748
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v6, v7, :cond_6

    .line 3749
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 3751
    :cond_6
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 3753
    sget-boolean v6, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "MotionEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMotionListener : panning left from page"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3755
    :cond_7
    sget-boolean v6, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    if-eqz v6, :cond_8

    const-string v6, "MotionEngine"

    const-string v7, "onMotionListener : accumulated delta is not considered, skip adding"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3756
    :cond_8
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    sub-double/2addr v6, v2

    iput-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    goto/16 :goto_0

    .line 3758
    :cond_9
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_0

    .line 3759
    iget v6, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-gt v6, v7, :cond_c

    .line 3761
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_a

    .line 3762
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3763
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 3765
    :cond_a
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    sub-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    .line 3767
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v6, v7, :cond_b

    .line 3768
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 3770
    :cond_b
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 3772
    sget-boolean v6, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "MotionEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMotionListener : panning right from page"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3774
    :cond_c
    sget-boolean v6, Lcom/android/launcher2/PagedView;->DEBUGGABLE:Z

    if-eqz v6, :cond_d

    const-string v6, "MotionEngine"

    const-string v7, "onMotionListener : accumulated delta is not considered, skip adding"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3775
    :cond_d
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    sub-double/2addr v6, v2

    iput-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    goto/16 :goto_0

    .line 3693
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch

    .line 3703
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPageBeginMoving()V
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/PagedView;->mIsPageFastMoving:Z

    .line 719
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()I

    .line 720
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 2

    .prologue
    .line 728
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/PagedView;->mIsPageFastMoving:Z

    .line 729
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()I

    .line 731
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_1

    .line 732
    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    sget v0, Lcom/android/launcher2/guide/GuideFragment;->currentPageToStopNavigation:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/launcher2/guide/GuideFragment;->currentPageToStopNavigation:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    .line 734
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/launcher2/guide/GuideFragment;->showCompleteDialog(Landroid/app/Activity;)V

    .line 739
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 3611
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1629
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1630
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1631
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1633
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2823
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/android/launcher2/PagedView$SavedState;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 2824
    check-cast v1, Lcom/android/launcher2/PagedView$SavedState;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2825
    check-cast p1, Lcom/android/launcher2/PagedView$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mPendingSavedState:Lcom/android/launcher2/PagedView$SavedState;

    .line 2833
    :goto_0
    return-void

    .line 2826
    .restart local p1    # "state":Landroid/os/Parcelable;
    :cond_0
    instance-of v1, p1, Lcom/android/launcher2/PagedView$SavedState;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 2827
    check-cast v0, Lcom/android/launcher2/PagedView$SavedState;

    .line 2828
    .local v0, "ss":Lcom/android/launcher2/PagedView$SavedState;
    invoke-virtual {v0}, Lcom/android/launcher2/PagedView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2829
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->restoreCurrentPageFromState(Lcom/android/launcher2/PagedView$SavedState;)V

    goto :goto_0

    .line 2831
    .end local v0    # "ss":Lcom/android/launcher2/PagedView$SavedState;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 3607
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 2815
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2816
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/launcher2/PagedView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/launcher2/PagedView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2817
    .local v0, "ss":Lcom/android/launcher2/PagedView$SavedState;
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iput v2, v0, Lcom/android/launcher2/PagedView$SavedState;->currentPage:I

    .line 2818
    return-object v0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 3614
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->cancelFastScroll()V

    .line 3615
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 36
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2149
    sget-boolean v31, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v31, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    move/from16 v31, v0

    if-nez v31, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 2150
    const/16 v31, 0x0

    .line 2380
    :goto_0
    return v31

    .line 2151
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    move/from16 v31, v0

    if-nez v31, :cond_1

    .line 2152
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->updateMotionTracking(Landroid/view/MotionEvent;)V

    .line 2154
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v31

    if-gtz v31, :cond_2

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v31

    goto :goto_0

    .line 2156
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PageIndicatorManager;->handleEvent(Landroid/view/MotionEvent;)Z

    .line 2158
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 2160
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 2162
    .local v7, "action":I
    and-int/lit16 v0, v7, 0xff

    move/from16 v31, v0

    packed-switch v31, :pswitch_data_0

    .line 2380
    :cond_3
    :goto_1
    :pswitch_0
    const/16 v31, 0x1

    goto :goto_0

    .line 2168
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Scroller;->isFinished()Z

    move-result v31

    if-nez v31, :cond_4

    .line 2169
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->abortScroll()V

    .line 2171
    :cond_4
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 2172
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalPredictionX:F

    .line 2173
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/PagedView;->isShowCamera:Z

    .line 2175
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 2176
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    goto :goto_1

    .line 2181
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v31

    if-nez v31, :cond_3

    .line 2182
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/Launcher;->isAddToScreenDialogShowing()Z

    move-result v31

    if-nez v31, :cond_3

    .line 2183
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 2185
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    .line 2188
    .local v30, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v31

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 2189
    const/16 v20, 0x0

    .local v20, "lastXVelocity":F
    const/16 v24, 0x0

    .line 2190
    .local v24, "predictionDelta":F
    const-wide/16 v18, 0x0

    .line 2193
    .local v18, "lastTime":J
    const v5, 0xf4240

    .line 2194
    .local v5, "NANOS_TO_MS":I
    const/16 v4, 0xc8

    .line 2196
    .local v4, "MAX_PREDICTION_X":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v31, v0

    const/16 v32, 0x258

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_7

    .line 2197
    const/high16 v25, 0x41400000    # 12.0f

    .line 2200
    .local v25, "predictionTime":F
    :goto_2
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2201
    .local v6, "accelerationRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v12

    .line 2203
    .local v12, "curXVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v13

    .line 2204
    .local v13, "curYVelocity":F
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v32

    const-wide/32 v34, 0xf4240

    div-long v10, v32, v34

    .line 2205
    .local v10, "curTime":J
    sub-long v14, v10, v18

    .line 2206
    .local v14, "deltaTime":J
    sub-float v31, v12, v20

    long-to-float v0, v14

    move/from16 v32, v0

    div-float v9, v31, v32

    .line 2209
    .local v9, "curXAcceleration":F
    move/from16 v20, v12

    .line 2210
    move/from16 v21, v13

    .line 2211
    .local v21, "lastYVelocity":F
    move-wide/from16 v18, v10

    .line 2212
    const/high16 v31, 0x3f800000    # 1.0f

    mul-float v31, v31, v9

    add-float v31, v31, v12

    mul-float v24, v31, v25

    .line 2216
    add-float v30, v30, v24

    .line 2217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalPredictionX:F

    move/from16 v31, v0

    add-float v31, v31, v24

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalPredictionX:F

    .line 2220
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v30, v31

    if-lez v31, :cond_5

    .line 2221
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v30, v0

    .line 2222
    :cond_5
    const/16 v31, 0x0

    cmpg-float v31, v30, v31

    if-gez v31, :cond_6

    .line 2223
    const/16 v30, 0x0

    .line 2227
    .end local v4    # "MAX_PREDICTION_X":I
    .end local v5    # "NANOS_TO_MS":I
    .end local v6    # "accelerationRatio":F
    .end local v9    # "curXAcceleration":F
    .end local v10    # "curTime":J
    .end local v12    # "curXVelocity":F
    .end local v13    # "curYVelocity":F
    .end local v14    # "deltaTime":J
    .end local v18    # "lastTime":J
    .end local v20    # "lastXVelocity":F
    .end local v21    # "lastYVelocity":F
    .end local v24    # "predictionDelta":F
    .end local v25    # "predictionTime":F
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    move/from16 v32, v0

    add-float v31, v31, v32

    sub-float v16, v31, v30

    .line 2228
    .local v16, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v31, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v32

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 2233
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-ltz v31, :cond_9

    .line 2234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchX:F

    move/from16 v31, v0

    add-float v31, v31, v16

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 2235
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-float v0, v0

    move/from16 v31, v0

    const v32, 0x4e6e6b28    # 1.0E9f

    div-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 2236
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    move/from16 v31, v0

    if-nez v31, :cond_8

    .line 2237
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->scrollBy(II)V

    .line 2242
    :goto_3
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 2243
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v31, v16, v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_1

    .line 2199
    .end local v16    # "deltaX":F
    .restart local v4    # "MAX_PREDICTION_X":I
    .restart local v5    # "NANOS_TO_MS":I
    .restart local v18    # "lastTime":J
    .restart local v20    # "lastXVelocity":F
    .restart local v24    # "predictionDelta":F
    :cond_7
    const/high16 v25, 0x41500000    # 13.0f

    .restart local v25    # "predictionTime":F
    goto/16 :goto_2

    .line 2240
    .end local v4    # "MAX_PREDICTION_X":I
    .end local v5    # "NANOS_TO_MS":I
    .end local v18    # "lastTime":J
    .end local v20    # "lastXVelocity":F
    .end local v24    # "predictionDelta":F
    .end local v25    # "predictionTime":F
    .restart local v16    # "deltaX":F
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_3

    .line 2245
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 2248
    .end local v16    # "deltaX":F
    .end local v30    # "x":F
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2253
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchUpPointX:F

    .line 2254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_16

    .line 2255
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v30

    .line 2256
    .restart local v30    # "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    .line 2257
    .local v28, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v31, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2258
    invoke-virtual/range {v28 .. v28}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v27, v0

    .line 2259
    .local v27, "tempVelocityX":I
    if-nez v27, :cond_c

    sget-object v31, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual/range {v31 .. v31}, Lcom/sec/dtl/launcher/Talk;->isTalkbackEnabled()Z

    move-result v31

    if-eqz v31, :cond_c

    .line 2260
    const/16 v31, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v27, v0

    .line 2261
    :cond_c
    move/from16 v29, v27

    .line 2263
    .local v29, "velocityX":I
    const/16 v26, 0x0

    .line 2264
    .local v26, "runEasyOneHand":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    move/from16 v33, v0

    add-float v32, v32, v33

    sub-float v32, v32, v30

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(F)F

    move-result v32

    add-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 2265
    const/16 v17, 0x1

    .line 2266
    .local v17, "dir":I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->isEasyOneHandTriggerGesture()Z

    move-result v31

    if-eqz v31, :cond_d

    .line 2267
    const/16 v26, 0x1

    .line 2270
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->MIN_LENGTH_FOR_FLING:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_14

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_14

    if-nez v26, :cond_14

    .line 2273
    if-lez v29, :cond_12

    .line 2274
    const/16 v17, 0x2

    .line 2275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    move/from16 v31, v0

    cmpg-float v31, v30, v31

    if-gez v31, :cond_10

    .line 2277
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v23, v0

    .line 2310
    .local v23, "nextPage":I
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v8

    .line 2311
    .local v8, "adjustedPage":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v8, v0, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mNextPage:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v8, v0, :cond_15

    .line 2312
    sget-boolean v31, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v31, :cond_e

    const/16 v31, 0x2

    move/from16 v0, v17

    move/from16 v1, v31

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchUpPointX:F

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_e

    .line 2313
    const/16 v17, 0x1

    .line 2315
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v31

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 2342
    .end local v8    # "adjustedPage":I
    .end local v17    # "dir":I
    .end local v23    # "nextPage":I
    .end local v26    # "runEasyOneHand":Z
    .end local v27    # "tempVelocityX":I
    .end local v28    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v29    # "velocityX":I
    .end local v30    # "x":F
    :goto_5
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 2343
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    .line 2344
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 2345
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/PagedView;->isShowCamera:Z

    .line 2346
    sget-object v31, Lcom/android/launcher2/PagedView;->chipset:Ljava/lang/String;

    const-string v32, "8930"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_f

    sget-object v31, Lcom/android/launcher2/PagedView;->chipset:Ljava/lang/String;

    const-string v32, "piranha"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 2347
    :cond_f
    sget-object v31, Lcom/android/launcher2/PagedView;->cpuMaxBooster:Landroid/os/DVFSHelper;

    invoke-virtual/range {v31 .. v31}, Landroid/os/DVFSHelper;->release()V

    .line 2348
    sget-object v31, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual/range {v31 .. v31}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v31

    if-eqz v31, :cond_3

    .line 2349
    sget-object v31, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual/range {v31 .. v31}, Landroid/os/DVFSHelper;->release()V

    goto/16 :goto_1

    .line 2281
    .restart local v17    # "dir":I
    .restart local v26    # "runEasyOneHand":Z
    .restart local v27    # "tempVelocityX":I
    .restart local v28    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v29    # "velocityX":I
    .restart local v30    # "x":F
    :cond_10
    sget-boolean v31, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-eqz v31, :cond_11

    .line 2282
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    if-nez v31, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v31

    if-eqz v31, :cond_11

    .line 2283
    new-instance v22, Landroid/os/Handler;

    invoke-direct/range {v22 .. v22}, Landroid/os/Handler;-><init>()V

    .line 2284
    .local v22, "mHandler":Landroid/os/Handler;
    new-instance v31, Lcom/android/launcher2/PagedView$4;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/PagedView$4;-><init>(Lcom/android/launcher2/PagedView;)V

    const-wide/16 v32, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2290
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    .line 2293
    .end local v22    # "mHandler":Landroid/os/Handler;
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    add-int/lit8 v23, v31, -0x1

    .restart local v23    # "nextPage":I
    goto/16 :goto_4

    .line 2296
    .end local v23    # "nextPage":I
    :cond_12
    const/16 v17, 0x3

    .line 2297
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    move/from16 v31, v0

    cmpl-float v31, v30, v31

    if-lez v31, :cond_13

    .line 2299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v23, v0

    .restart local v23    # "nextPage":I
    goto/16 :goto_4

    .line 2303
    .end local v23    # "nextPage":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    add-int/lit8 v23, v31, 0x1

    .restart local v23    # "nextPage":I
    goto/16 :goto_4

    .line 2307
    .end local v23    # "nextPage":I
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v23

    .restart local v23    # "nextPage":I
    goto/16 :goto_4

    .line 2317
    .restart local v8    # "adjustedPage":I
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto/16 :goto_5

    .line 2319
    .end local v8    # "adjustedPage":I
    .end local v17    # "dir":I
    .end local v23    # "nextPage":I
    .end local v26    # "runEasyOneHand":Z
    .end local v27    # "tempVelocityX":I
    .end local v28    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v29    # "velocityX":I
    .end local v30    # "x":F
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    .line 2323
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v23

    .line 2324
    .restart local v23    # "nextPage":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mNextPage:I

    move/from16 v31, v0

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_17

    .line 2325
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto/16 :goto_5

    .line 2327
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto/16 :goto_5

    .line 2329
    .end local v23    # "nextPage":I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1a

    .line 2333
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v23

    .line 2334
    .restart local v23    # "nextPage":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v31, v0

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mNextPage:I

    move/from16 v31, v0

    move/from16 v0, v23

    move/from16 v1, v31

    if-eq v0, v1, :cond_19

    .line 2335
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto/16 :goto_5

    .line 2337
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto/16 :goto_5

    .line 2340
    .end local v23    # "nextPage":I
    :cond_1a
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    .line 2351
    :cond_1b
    sget-object v31, Lcom/android/launcher2/PagedView;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual/range {v31 .. v31}, Landroid/os/DVFSHelper;->release()V

    .line 2352
    sget-object v31, Lcom/android/launcher2/PagedView;->busBooster:Landroid/os/DVFSHelper;

    invoke-virtual/range {v31 .. v31}, Landroid/os/DVFSHelper;->release()V

    .line 2354
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/Workspace;

    move/from16 v31, v0

    if-eqz v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    move-object/from16 v31, v0

    sget-object v32, Lcom/android/launcher2/PagedView$TransitionEffect;->SPIRAL:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual/range {v31 .. v32}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3

    sget-object v31, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual/range {v31 .. v31}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v31

    if-eqz v31, :cond_3

    .line 2357
    sget-object v31, Lcom/android/launcher2/PagedView;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual/range {v31 .. v31}, Landroid/os/DVFSHelper;->release()V

    goto/16 :goto_1

    .line 2363
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v31, v0

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1d

    .line 2364
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 2366
    :cond_1d
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 2367
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    .line 2368
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    .line 2372
    :pswitch_5
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    .line 2376
    :pswitch_6
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    .line 2162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2479
    return-void
.end method

.method protected onViewAddedInPagedView(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 3826
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    .line 3827
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    .line 3828
    instance-of v1, p1, Lcom/android/launcher2/Page;

    if-eqz v1, :cond_1

    .line 3829
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3830
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 3831
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 3833
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3834
    check-cast p1, Lcom/android/launcher2/Page;

    .end local p1    # "child":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher2/Page;->enableHardwareLayers()V

    .line 3837
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onViewRemovedInPagedView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3841
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    .line 3842
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    .line 3843
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()I

    .line 3844
    return-void
.end method

.method public openCamera()V
    .locals 2

    .prologue
    .line 2400
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    sget-object v1, Lcom/android/launcher2/PagedView;->CAMERA_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->startActivityWithTransition(Landroid/content/Intent;)V

    .line 2401
    return-void
.end method

.method public openHeadlines(Z)V
    .locals 2
    .param p1, "moveFromFirstPage"    # Z

    .prologue
    .line 2404
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    sget-object v1, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher2/Launcher;->startActivityWithTransitionForHeadlines(Landroid/content/Intent;Z)V

    .line 2405
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 2131
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->dampedOverScroll(F)V

    .line 2132
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 598
    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v3, :cond_3

    .line 599
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 600
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageBeginMoving()V

    .line 601
    sget-object v3, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 602
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    .line 603
    .local v1, "l":Lcom/android/launcher2/AnimationLayer;
    invoke-virtual {v1, v5}, Lcom/android/launcher2/AnimationLayer;->cancelAnimationsByGroup(I)V

    .line 604
    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 605
    const/16 v3, 0x558c

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/PagedView;->performHapticFeedback(II)Z

    .line 612
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 628
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v4, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 629
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->isPageInclusive(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 630
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 631
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 612
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 636
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v4, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 637
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncViewVisibility()V

    .line 640
    .end local v0    # "i":I
    .end local v1    # "l":Lcom/android/launcher2/AnimationLayer;
    :cond_3
    return-void
.end method

.method protected pageEndMoving()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 643
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_2

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 645
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageEndMoving()V

    .line 646
    sget-object v0, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 648
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 651
    :cond_0
    const/16 v0, 0x55a0

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/PagedView;->performHapticFeedback(II)Z

    .line 658
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    if-eqz v0, :cond_2

    .line 659
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 662
    :cond_2
    return-void

    .line 655
    :cond_3
    const/16 v0, 0x5596

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/PagedView;->performHapticFeedback(II)Z

    goto :goto_0
.end method

.method public removeHoverScrollHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4066
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    .line 4067
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    if-eqz v0, :cond_0

    .line 4069
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4070
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->removeMessages(I)V

    .line 4073
    :cond_0
    return-void
.end method

.method protected repositionOpenFolder()V
    .locals 0

    .prologue
    .line 3865
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 2485
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2486
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v0

    .line 2487
    .local v0, "page":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2488
    iget v1, p0, Lcom/android/launcher2/PagedView;->mLastFocusDir:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(II)V

    .line 2490
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastFocusDir:I

    .line 2491
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1619
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v0

    .line 1620
    .local v0, "page":I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1621
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1622
    const/4 v1, 0x1

    .line 1624
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1701
    if-eqz p1, :cond_1

    .line 1704
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1705
    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v0, :cond_0

    .line 1706
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 1707
    iput v1, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1709
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 1711
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1712
    return-void
.end method

.method protected restoreCurrentPageFromState(Lcom/android/launcher2/PagedView$SavedState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/launcher2/PagedView$SavedState;

    .prologue
    .line 2836
    iget v0, p1, Lcom/android/launcher2/PagedView$SavedState;->currentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 2837
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 2838
    return-void
.end method

.method final screenScrolled(I)V
    .locals 1
    .param p1, "screenCenter"    # I

    .prologue
    .line 1426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 1427
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 765
    iget v0, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 766
    return-void
.end method

.method public scrollByHover(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3240
    sget-boolean v8, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v8, :cond_0

    move v8, v9

    .line 3306
    :goto_0
    return v8

    .line 3242
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3243
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 3244
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 3245
    .local v7, "y":F
    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->isHoveringAreaX(F)I

    move-result v1

    .line 3247
    .local v1, "dir":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v11, "com.sec.feature.hovering_ui"

    invoke-static {v8, v11}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    move v8, v9

    .line 3248
    goto :goto_0

    .line 3250
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "pen_hovering"

    invoke-static {v8, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3251
    .local v2, "isHoveringOn":I
    if-nez v2, :cond_2

    move v8, v9

    goto :goto_0

    .line 3253
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "pen_hovering_list_scroll"

    invoke-static {v8, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3254
    .local v3, "isHoveringScrollOn":I
    if-nez v3, :cond_3

    move v8, v9

    goto :goto_0

    .line 3256
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    iget-object v8, v8, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    .line 3257
    .local v5, "workspace":Lcom/android/launcher2/Workspace;
    if-nez v5, :cond_4

    move v8, v9

    .line 3258
    goto :goto_0

    .line 3260
    :cond_4
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v8

    sget-object v11, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v8, v11, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    if-ne v8, v12, :cond_8

    .line 3261
    :cond_5
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-eqz v8, :cond_6

    .line 3262
    const-string v8, "Launcher.PagedView"

    const-string v11, "scrollByHover Workspace.State.RESIZE"

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->setHoveringSpenIcon(I)V

    .line 3264
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3265
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->removeMessages(I)V

    .line 3269
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    if-ne v8, v12, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    :cond_7
    move v8, v9

    .line 3270
    goto/16 :goto_0

    .line 3273
    :cond_8
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    if-nez v8, :cond_9

    .line 3274
    new-instance v8, Lcom/android/launcher2/PagedView$HoverScrollHandler;

    const/4 v11, 0x0

    invoke-direct {v8, p0, v11}, Lcom/android/launcher2/PagedView$HoverScrollHandler;-><init>(Lcom/android/launcher2/PagedView;Lcom/android/launcher2/PagedView$1;)V

    iput-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    .line 3276
    :cond_9
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 3304
    :cond_a
    :goto_1
    :pswitch_0
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-nez v8, :cond_b

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->setHoveringSpenIcon(I)V

    :cond_b
    move v8, v10

    .line 3306
    goto/16 :goto_0

    .line 3280
    :pswitch_1
    if-eqz v1, :cond_c

    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->isHoveringAreaY(F)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 3281
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-nez v8, :cond_a

    .line 3282
    iput-boolean v10, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    .line 3283
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->setHoveringSpenIcon(I)V

    .line 3285
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 3286
    .local v4, "msg":Landroid/os/Message;
    iput v10, v4, Landroid/os/Message;->what:I

    .line 3287
    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollDir:I

    .line 3288
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    const-wide/16 v12, 0xc8

    invoke-virtual {v8, v4, v12, v13}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 3291
    .end local v4    # "msg":Landroid/os/Message;
    :cond_c
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    .line 3292
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 3293
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->removeMessages(I)V

    goto :goto_1

    .line 3298
    :pswitch_2
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    .line 3299
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 3300
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mHoverScrollHandler:Lcom/android/launcher2/PagedView$HoverScrollHandler;

    invoke-virtual {v8, v10}, Lcom/android/launcher2/PagedView$HoverScrollHandler;->removeMessages(I)V

    goto :goto_1

    .line 3276
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public scrollLeft()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2746
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2747
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 2751
    :goto_0
    return-void

    .line 2749
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 2754
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2755
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 2759
    :goto_0
    return-void

    .line 2757
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    .line 792
    iput p1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    .line 793
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 798
    :goto_0
    int-to-float v0, p1

    iput v0, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 799
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 800
    return-void

    .line 796
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedView;->scrollToNonLooped(II)V

    goto :goto_0
.end method

.method protected setAccessibilityFocusChange(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 713
    return-void
.end method

.method protected setAllowLongPress(Z)V
    .locals 0
    .param p1, "allowLongPress"    # Z

    .prologue
    .line 2777
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 2778
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 3
    .param p1, "currentPage"    # I

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->abortScroll()V

    .line 537
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 541
    .local v0, "oldCurrentPage":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 546
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_2

    .line 547
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    .line 548
    :cond_2
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 549
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    if-nez v1, :cond_3

    .line 550
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iput v1, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    .line 551
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutMustAnim:Z

    goto :goto_0

    .line 554
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->jumpToPageInternal(I)V

    .line 558
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v0, v1, :cond_0

    .line 559
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    goto :goto_0
.end method

.method protected setCurrentPageIfNotSnapping(I)V
    .locals 1
    .param p1, "currentPage"    # I

    .prologue
    .line 515
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->setCurrentPageIfNotSnapping(IZ)V

    .line 516
    return-void
.end method

.method protected setCurrentPageIfNotSnapping(IZ)V
    .locals 2
    .param p1, "currentPage"    # I
    .param p2, "bPageIndicatorAnimation"    # Z

    .prologue
    .line 522
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-ne p1, v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    iget v1, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    if-eq v0, v1, :cond_0

    .line 528
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    if-nez p2, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/launcher2/PageIndicatorManager;->setAnimationPrevented(Z)V

    .line 529
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    goto :goto_0

    .line 528
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected setDataIsReady()V
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    .line 457
    return-void
.end method

.method public setDefaultTransitionEffect(Lcom/android/launcher2/PagedView$TransitionEffect;)V
    .locals 0
    .param p1, "transitionEffect"    # Lcom/android/launcher2/PagedView$TransitionEffect;

    .prologue
    .line 3379
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    .line 3380
    return-void
.end method

.method protected setDirtyFlags()V
    .locals 1

    .prologue
    .line 1420
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    .line 1421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 1423
    return-void
.end method

.method public setHideItems(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 3599
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    .line 3600
    return-void
.end method

.method public setHoverScrollBoundary()V
    .locals 5

    .prologue
    const v4, 0x7f0e0103

    const/4 v3, 0x0

    .line 4001
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4003
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollWidth:I

    .line 4004
    iput v3, p0, Lcom/android/launcher2/PagedView;->mHoverScrollRightPadding:I

    .line 4006
    iget v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    sget v2, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPaddingMatchParent:I

    if-ne v1, v2, :cond_2

    .line 4007
    iput v3, p0, Lcom/android/launcher2/PagedView;->mHoverScrollTop:I

    .line 4008
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollBottom:I

    .line 4010
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_1

    .line 4011
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4012
    iget v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollBottom:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollBottom:I

    .line 4014
    :cond_0
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 4015
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollRightPadding:I

    .line 4022
    :cond_1
    :goto_0
    return-void

    .line 4019
    :cond_2
    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollTop:I

    .line 4020
    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    invoke-static {}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mHoverScrollBottom:I

    goto :goto_0
.end method

.method public setHoveringSpenIcon(I)V
    .locals 2
    .param p1, "dir"    # I

    .prologue
    .line 3337
    packed-switch p1, :pswitch_data_0

    .line 3345
    const/4 v0, 0x1

    const/4 v1, -0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    .line 3346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    .line 3351
    :goto_0
    return-void

    .line 3339
    :pswitch_0
    const/16 v0, 0x11

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    goto :goto_0

    .line 3349
    :catch_0
    move-exception v0

    goto :goto_0

    .line 3342
    :pswitch_1
    const/16 v0, 0xd

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3337
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setLastPageNotify(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 594
    iput p1, p0, Lcom/android/launcher2/PagedView;->mLastPageNotify:I

    .line 595
    return-void
.end method

.method public setMaxScrollX()V
    .locals 4

    .prologue
    .line 1305
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1306
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v1

    .line 1308
    .local v1, "width":I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    if-gez v2, :cond_0

    .line 1309
    div-int/lit8 v2, v1, 0x10

    iput v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    .line 1314
    :goto_0
    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    .line 1315
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    .line 1319
    :goto_1
    return-void

    .line 1311
    :cond_0
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    iput v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    goto :goto_0

    .line 1317
    :cond_1
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v2, v1

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    goto :goto_1
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnDragListener;

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 758
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 759
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 758
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 761
    :cond_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 749
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 750
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 751
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 750
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 753
    :cond_0
    return-void
.end method

.method public setPageBackgroundAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 3369
    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    .line 3370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 3372
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 3373
    return-void
.end method

.method protected setPageIndicatorTop(I)V
    .locals 1
    .param p1, "top"    # I

    .prologue
    .line 3847
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->setTop(I)V

    .line 3848
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V
    .locals 3
    .param p1, "pageSwitchListener"    # Lcom/android/launcher2/PagedView$PageSwitchListener;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    .line 442
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 445
    :cond_0
    return-void
.end method

.method public setPageZoom(F)V
    .locals 1
    .param p1, "zoom"    # F

    .prologue
    .line 3355
    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    .line 3356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 3358
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 3359
    return-void
.end method

.method public showPageIndicator(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->showPageIndicator(Z)V

    .line 3176
    return-void
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 2590
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPageWithDur(II)V

    .line 2591
    return-void
.end method

.method protected snapToPage(I)V
    .locals 1
    .param p1, "whichPage"    # I

    .prologue
    .line 2652
    iget v0, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->snapToPageWithDur(II)V

    .line 2653
    return-void
.end method

.method protected snapToPage(III)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "dir"    # I

    .prologue
    .line 2670
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mLaidOutAfterViewTreeDirty:Z

    if-nez v0, :cond_0

    .line 2671
    iput p3, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDir:I

    .line 2672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutMustAnim:Z

    .line 2673
    iput p1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 2674
    iput p1, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    .line 2675
    iput p2, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayoutDur:I

    .line 2679
    :goto_0
    return-void

    .line 2678
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;->snapToPageInternal(III)V

    goto :goto_0
.end method

.method protected snapToPageFromFocusHelper(II)V
    .locals 0
    .param p1, "whichPage"    # I
    .param p2, "dir"    # I

    .prologue
    .line 2660
    iput p2, p0, Lcom/android/launcher2/PagedView;->mLastFocusDir:I

    .line 2661
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(II)V

    .line 2662
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 2663
    return-void
.end method

.method protected snapToPageWithDir(II)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "dir"    # I

    .prologue
    .line 2666
    iget v0, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 2667
    return-void
.end method

.method protected snapToPageWithDur(II)V
    .locals 1
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .prologue
    .line 2656
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 2657
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 9
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 2615
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2616
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 2618
    .local v4, "halfScreenSize":I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v5

    .line 2622
    .local v5, "newX":I
    iget v6, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 2623
    .local v0, "delta":I
    const/4 v3, 0x0

    .line 2625
    .local v3, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0xfa

    if-ge v6, v7, :cond_0

    .line 2628
    iget v6, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v6}, Lcom/android/launcher2/PagedView;->snapToPageWithDur(II)V

    .line 2649
    :goto_0
    return-void

    .line 2636
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2637
    .local v2, "distanceRatio":F
    int-to-float v6, v4

    int-to-float v7, v4

    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 2640
    .local v1, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 2641
    const/16 v6, 0x898

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2646
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 2648
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public abstract syncPageItems(IZ)V
.end method

.method protected syncPageWithQuickView(I)Z
    .locals 1
    .param p1, "whichPage"    # I

    .prologue
    .line 2762
    const/4 v0, 0x1

    return v0
.end method

.method public abstract syncPages()V
.end method

.method protected syncViewVisibility()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 676
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_7

    .line 677
    const/4 v0, 0x0

    .line 678
    .local v0, "found":Z
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedView$PageInfo;

    .line 679
    .local v3, "info":Lcom/android/launcher2/PagedView$PageInfo;
    iget v5, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    if-ne v5, v1, :cond_0

    .line 680
    const/4 v0, 0x1

    .line 685
    .end local v3    # "info":Lcom/android/launcher2/PagedView$PageInfo;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 686
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_2

    .line 676
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 689
    :cond_2
    if-eqz v0, :cond_6

    .line 690
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v6, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 694
    instance-of v5, v4, Lcom/android/launcher2/CellLayout;

    if-eqz v5, :cond_4

    move-object v5, v4

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenAlpha()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/launcher2/PagedView;->mIsPageFastMoving:Z

    if-eqz v5, :cond_4

    .line 695
    :cond_3
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 697
    :cond_4
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 701
    :cond_5
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 704
    :cond_6
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 707
    .end local v0    # "found":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "v":Landroid/view/View;
    :cond_7
    return-void
.end method

.method protected updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V
    .locals 8
    .param p1, "option"    # Lcom/android/launcher2/PagedView$LayerOptions;

    .prologue
    const/4 v7, 0x0

    .line 3103
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v0

    .line 3104
    .local v0, "enableChildrenLayers":Z
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mBlockHardwareLayers:Z

    if-eqz v4, :cond_0

    .line 3105
    sget-object p1, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    .line 3107
    :cond_0
    sget-object v4, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    if-ne p1, v4, :cond_3

    .line 3108
    const/4 v0, 0x0

    .line 3113
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 3114
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedView$PageInfo;

    .line 3115
    .local v3, "pageInfo":Lcom/android/launcher2/PagedView$PageInfo;
    iget v4, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3116
    iget v4, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Page;

    invoke-interface {v4}, Lcom/android/launcher2/Page;->enableHardwareLayers()V

    .line 3117
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    iget v5, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3109
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pageInfo":Lcom/android/launcher2/PagedView$PageInfo;
    :cond_3
    sget-object v4, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_HARDWARE:Lcom/android/launcher2/PagedView$LayerOptions;

    if-ne p1, v4, :cond_1

    .line 3110
    const/4 v0, 0x1

    goto :goto_0

    .line 3120
    :cond_4
    sget-object v4, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    if-ne p1, v4, :cond_5

    .line 3121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 3122
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Page;

    invoke-interface {v4}, Lcom/android/launcher2/Page;->disableHardwareLayers()V

    .line 3123
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3121
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3127
    .end local v1    # "i":I
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedView$PageInfo;

    .line 3128
    .restart local v3    # "pageInfo":Lcom/android/launcher2/PagedView$PageInfo;
    if-eqz v3, :cond_6

    iget v4, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Page;

    if-eqz v4, :cond_6

    .line 3129
    iget v4, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Page;

    invoke-interface {v4}, Lcom/android/launcher2/Page;->disableHardwareLayers()V

    .line 3130
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    iget v5, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3135
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pageInfo":Lcom/android/launcher2/PagedView$PageInfo;
    :cond_7
    return-void
.end method

.method updateIndicator(II)V
    .locals 2
    .param p1, "top"    # I
    .param p2, "gap"    # I

    .prologue
    .line 3851
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    .line 3852
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->setTop(I)V

    .line 3853
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/PageIndicatorManager;->setGap(I)V

    .line 3854
    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    .line 3855
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mHoverScrollVerticalPadding:I

    .line 3856
    return-void
.end method

.method updateIndicatorWidth(Z)V
    .locals 0
    .param p1, "hasHotseatRight"    # Z

    .prologue
    .line 3863
    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 0
    .param p1, "page"    # Landroid/view/View;
    .param p2, "scrollProgress"    # F

    .prologue
    .line 1435
    return-void
.end method

.method public updatePageTransforms()V
    .locals 7

    .prologue
    .line 1601
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v2, v6, 0x2

    .line 1602
    .local v2, "halfScreenSize":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v6

    add-int v5, v6, v2

    .line 1603
    .local v5, "screenCenter":I
    iget v6, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    if-eq v5, v6, :cond_0

    .line 1604
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->screenScrolled(I)V

    .line 1605
    iput v5, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 1607
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getDrawingTime()J

    move-result-wide v0

    .line 1608
    .local v0, "drawingTime":J
    iget-boolean v6, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    if-eqz v6, :cond_1

    .line 1609
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()I

    .line 1611
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedView$PageInfo;

    .line 1612
    .local v4, "pageInfo":Lcom/android/launcher2/PagedView$PageInfo;
    invoke-direct {p0, v4, v0, v1}, Lcom/android/launcher2/PagedView;->transformPage(Lcom/android/launcher2/PagedView$PageInfo;J)V

    goto :goto_0

    .line 1614
    .end local v4    # "pageInfo":Lcom/android/launcher2/PagedView$PageInfo;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 1615
    return-void
.end method

.method protected updateVisiblePages()I
    .locals 15

    .prologue
    .line 1055
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v12

    .line 1056
    .local v12, "scrollX":I
    iget v13, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    if-ne v12, v13, :cond_0

    iget v13, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    const/high16 v14, -0x80000000

    if-ne v13, v14, :cond_0

    .line 1060
    iget-object v13, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1120
    :goto_0
    return v13

    .line 1066
    :cond_0
    iget-object v13, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    iget-object v14, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1067
    iget-object v13, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1068
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v6

    .line 1069
    .local v6, "pageCount":I
    if-lez v6, :cond_6

    .line 1071
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getHorizontalVisibilityExtension()I

    move-result v1

    .line 1074
    .local v1, "horizontalVisibilityExtension":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v11

    .line 1075
    .local v11, "pageWidth":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v10

    .line 1076
    .local v10, "pageTotWidth":I
    div-int/lit8 v13, v11, 0x2

    add-int v5, v12, v13

    .line 1080
    .local v5, "pageCenter":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v13

    add-int/2addr v13, v12

    sub-int v8, v13, v1

    .line 1081
    .local v8, "pageLeftEdge":I
    add-int v13, v12, v10

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    mul-int/lit8 v14, v1, 0x2

    add-int v9, v13, v14

    .line 1088
    .local v9, "pageRightEdge":I
    const/high16 v3, -0x80000000

    .line 1090
    .local v3, "lastIndex":I
    move v0, v8

    .local v0, "currEdge":I
    :goto_1
    if-ge v0, v9, :cond_4

    .line 1091
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v2

    .line 1092
    .local v2, "index":I
    const/high16 v13, -0x80000000

    if-eq v3, v13, :cond_2

    if-ne v3, v2, :cond_2

    .line 1090
    :cond_1
    :goto_2
    add-int/lit8 v13, v10, -0x1

    add-int/2addr v0, v13

    goto :goto_1

    .line 1095
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 1096
    .local v4, "page":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 1099
    move v3, v2

    .line 1100
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->newPageInfo()Lcom/android/launcher2/PagedView$PageInfo;

    move-result-object v7

    .line 1101
    .local v7, "pageInfo":Lcom/android/launcher2/PagedView$PageInfo;
    iput v2, v7, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    .line 1102
    invoke-direct {p0, v0}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v13

    iput v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    .line 1103
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1104
    iget v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    mul-int/2addr v13, v10

    neg-int v13, v13

    iget v14, v7, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    add-int/2addr v13, v14

    iput v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    .line 1108
    :goto_3
    invoke-direct {p0, v4}, Lcom/android/launcher2/PagedView;->getCenterOfViewRelative(Landroid/view/View;)I

    move-result v13

    iput v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntrRel:I

    .line 1109
    iget v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntrRel:I

    iget v14, v7, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    add-int/2addr v13, v14

    iput v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntr:I

    .line 1110
    iget v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntr:I

    sub-int v13, v5, v13

    iput v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mDistFromCntr:I

    .line 1111
    iget-object v13, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1106
    :cond_3
    const/4 v13, 0x0

    iput v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    goto :goto_3

    .line 1113
    .end local v2    # "index":I
    .end local v4    # "page":Landroid/view/View;
    .end local v7    # "pageInfo":Lcom/android/launcher2/PagedView$PageInfo;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncViewVisibility()V

    .line 1115
    iget-boolean v13, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v13, :cond_5

    .line 1116
    sget-object v13, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v13}, Lcom/android/launcher2/PagedView;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 1118
    :cond_5
    iput v12, p0, Lcom/android/launcher2/PagedView;->mLastScrollX:I

    .line 1120
    .end local v0    # "currEdge":I
    .end local v1    # "horizontalVisibilityExtension":I
    .end local v3    # "lastIndex":I
    .end local v5    # "pageCenter":I
    .end local v8    # "pageLeftEdge":I
    .end local v9    # "pageRightEdge":I
    .end local v10    # "pageTotWidth":I
    .end local v11    # "pageWidth":I
    :cond_6
    iget-object v13, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    goto/16 :goto_0
.end method
