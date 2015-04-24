.class public Lcom/android/launcher2/Workspace;
.super Lcom/android/launcher2/SmoothPagedView;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/CellLayoutContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Workspace$31;,
        Lcom/android/launcher2/Workspace$CellOrient;,
        Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;,
        Lcom/android/launcher2/Workspace$StateChangeRunnable;,
        Lcom/android/launcher2/Workspace$ZoomInInterpolator;,
        Lcom/android/launcher2/Workspace$InverseZInterpolator;,
        Lcom/android/launcher2/Workspace$ZInterpolator;,
        Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;,
        Lcom/android/launcher2/Workspace$StateAnimatorProvider;,
        Lcom/android/launcher2/Workspace$State;,
        Lcom/android/launcher2/Workspace$BindWidgetsState;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final DEBUG_WP:Z = false

.field private static final DEBUG_WP_TAG:Ljava/lang/String; = "Launcher.WS.DebugWp"

.field private static final FAST_ROTATION:F = 15.0f

.field public static final GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

.field private static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final SLOW_ROTATION:F = 20.0f

.field private static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field static STATE_CHANGE_DURATION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Launcher.Workspace"

.field private static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f

.field private static TRANSITION_MAX_ROTATION:F = 0.0f

.field private static TRANSITION_PIVOT:F = 0.0f

.field private static final WALLPAPER_SCREENS_SPAN:F = 2.0f

.field private static final WORKSPACE_ROTATION:F = 20.0f

.field static final kPageFastScrollScaleLimit:F = 0.85f

.field static final kPageZoomScaleLimit:F = 0.8f

.field private static mSineIO70Interpolator:Landroid/view/animation/Interpolator;

.field private static mSineIO80Interpolator:Landroid/view/animation/Interpolator;

.field static final sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field public static sPanelBaseEditDarkenAmount:F

.field public static widgetSizeChanged:Z


# instance fields
.field private WIDGET_BINDER:Ljava/lang/Runnable;

.field private isStartDragStarted:Z

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mBackgroundDarken:F

.field private mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

.field private mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

.field private mCreatedPageForDragViewIndex:I

.field private mCurrentOrientation:I

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDragBarSize:I

.field private mDragFromMenu:Z

.field private mDragOutline:Landroid/graphics/Bitmap;

.field private mDragTargetLayout:Lcom/android/launcher2/CellLayout;

.field private mEditModePanel_left_Adjust:I

.field private mEditModePanel_top_Adjust:I

.field private mEditModeShrinkFactor:F

.field private mExitResizeDueToNewDrag:Z

.field private final mExternalDragOutlinePaint:Landroid/graphics/Paint;

.field private mFastScrollDrawInward:F

.field private mFixedWallpaper:Z

.field private mFolder:Lcom/android/launcher2/Folder;

.field final mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

.field final mHelpStartNowImage:[Landroid/widget/ImageView;

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mInScrollArea:Z

.field private mInterceptedTouchEvent:Z

.field private mIsDragOccuring:Z

.field public mIsHelpOrientationChanged:Z

.field private mIsStaticWallpaper:Z

.field private mIsSwitchingState:Z

.field private final mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private mMultiTouchUsed:Z

.field private mNormalScrollDrawInward:F

.field private mOldState:Lcom/android/launcher2/Workspace$State;

.field private mPageIndicatorTopShrunken:I

.field mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

.field public mPendingSnapToPageIndex:I

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mRequestedOrientation:I

.field private mShrinkTranslateX:F

.field private mShrinkTranslateY:F

.field protected mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mState:Lcom/android/launcher2/Workspace$State;

.field private mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

.field private mStateAnimatorProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Workspace$StateAnimatorProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchStateAfterFirstLayout:Z

.field private mTempCell:[I

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private mTouchPointDistance:I

.field private mUpdateWallpaperOffsetImmediately:Z

.field private mWallpaperHeight:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

.field private mWallpaperTravelWidth:I

.field private mWallpaperWidth:I

.field private mWidgetSkipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetsToBind:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowToken:Landroid/os/IBinder;

.field private mXDown:F

.field private mYDown:F

.field private final mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

.field private m_cling:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Workspace;->DEBUGGABLE:Z

    .line 144
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Workspace;->widgetSizeChanged:Z

    .line 172
    new-instance v0, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v0}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 201
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    .line 202
    const/high16 v0, 0x40c00000    # 6.0f

    sput v0, Lcom/android/launcher2/Workspace;->TRANSITION_MAX_ROTATION:F

    .line 228
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/Workspace;->sPanelBaseEditDarkenAmount:F

    .line 230
    new-instance v0, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->mSineIO80Interpolator:Landroid/view/animation/Interpolator;

    .line 231
    new-instance v0, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    .line 238
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/Workspace;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 261
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    sget-object v3, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    .line 114
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    .line 129
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 136
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 137
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 140
    iput v6, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_left_Adjust:I

    .line 141
    iput v6, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_top_Adjust:I

    .line 146
    new-array v3, v5, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mHelpStartNowImage:[Landroid/widget/ImageView;

    .line 147
    new-array v3, v5, [Landroid/graphics/drawable/AnimationDrawable;

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    .line 148
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->m_cling:Landroid/widget/RelativeLayout;

    .line 150
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 152
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    .line 153
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 159
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    .line 166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    .line 169
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 171
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 173
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 176
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    .line 181
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 196
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    .line 197
    iput v6, p0, Lcom/android/launcher2/Workspace;->mTouchPointDistance:I

    .line 205
    const v3, 0x3ee66666    # 0.45f

    iput v3, p0, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    .line 207
    const v3, 0x3e4ccccd    # 0.2f

    iput v3, p0, Lcom/android/launcher2/Workspace;->mNormalScrollDrawInward:F

    .line 212
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    .line 215
    iput v6, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    .line 220
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    .line 233
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mIsHelpOrientationChanged:Z

    .line 235
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    .line 236
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/launcher2/Workspace;->mPendingSnapToPageIndex:I

    .line 434
    new-instance v3, Lcom/android/launcher2/Workspace$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$2;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    .line 1226
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    .line 1828
    new-instance v3, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v3}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    .line 4206
    new-instance v3, Lcom/android/launcher2/Workspace$22;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$22;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->WIDGET_BINDER:Ljava/lang/Runnable;

    .line 262
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mContentIsRefreshable:Z

    .line 266
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setDataIsReady()V

    .line 268
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 270
    invoke-static {p1}, Lcom/sec/dtl/launcher/GyroForShadow;->initialize(Landroid/content/Context;)V

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 274
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 275
    .local v0, "config":Landroid/content/res/Configuration;
    const-string v3, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SmallestWidth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ScreenSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 280
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    const-string v3, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen Width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Density: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", DensityDpi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const v3, 0x7f0c0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    .line 287
    const v3, 0x7f0b000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    .line 289
    const v3, 0x7f0e00e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    .line 290
    const v3, 0x7f0e00e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_left_Adjust:I

    .line 291
    const v3, 0x7f0e00e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_top_Adjust:I

    .line 293
    iget v3, p0, Lcom/android/launcher2/Workspace;->mCellCountX:I

    iget v4, p0, Lcom/android/launcher2/Workspace;->mCellCountY:I

    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    .line 294
    const v3, 0x7f0e00da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    .line 295
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 297
    const v3, 0x7f0c0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    .line 298
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 300
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    iput v3, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    .line 301
    const v3, 0x7f0d0002

    invoke-virtual {v2, v3, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    sput v3, Lcom/android/launcher2/Workspace;->sPanelBaseEditDarkenAmount:F

    .line 303
    const v3, 0x7f0d000b

    invoke-virtual {v2, v3, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mNormalScrollDrawInward:F

    .line 308
    sget-object v3, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    .line 309
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/Workspace;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 101
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/Workspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;
    .param p1, "x1"    # Lcom/android/launcher2/Workspace$State;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/launcher2/Workspace;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/Workspace;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/launcher2/Workspace;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;
    .param p1, "x1"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/launcher2/Workspace;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->refreshHotseat()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/launcher2/Workspace;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mExitResizeDueToNewDrag:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;
    .param p1, "x1"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/Workspace;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher2/Workspace;Landroid/content/res/Resources;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/Workspace$CellOrient;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;
    .param p1, "x1"    # Landroid/content/res/Resources;
    .param p2, "x2"    # Lcom/android/launcher2/CellLayout;
    .param p3, "x3"    # Lcom/android/launcher2/Workspace$CellOrient;
    .param p4, "x4"    # Z

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/Workspace;->changeOrientationChild(Landroid/content/res/Resources;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/Workspace$CellOrient;Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/launcher2/Workspace;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$BindWidgetsState;)Lcom/android/launcher2/Workspace$BindWidgetsState;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;
    .param p1, "x1"    # Lcom/android/launcher2/Workspace$BindWidgetsState;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;
    .param p1, "x1"    # Lcom/android/launcher2/Workspace$State;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->setTransitionEffectBasedOnState(Lcom/android/launcher2/Workspace$State;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 101
    iget v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 101
    iget v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/Workspace;)Landroid/app/WallpaperManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Workspace;

    .prologue
    .line 101
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    return v0
.end method

.method private backgroundAlphaInterpolator(F)F
    .locals 4
    .param p1, "r"    # F

    .prologue
    .line 1239
    const/4 v0, 0x0

    .line 1240
    .local v0, "pivotA":F
    const v1, 0x3e99999a    # 0.3f

    .line 1241
    .local v1, "pivotB":F
    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    .line 1242
    const/4 v2, 0x0

    .line 1246
    :goto_0
    return v2

    .line 1243
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 1244
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1246
    :cond_1
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private calculateglassAlpha(FZ)F
    .locals 6
    .param p1, "absSP"    # F
    .param p2, "isBottomCard"    # Z

    .prologue
    const v5, 0x3f2b851f    # 0.67f

    const v4, 0x3f28f5c3    # 0.66f

    const/4 v0, 0x0

    const v3, 0x3e19999a    # 0.15f

    const v2, 0x3ea8f5c3    # 0.33f

    .line 1420
    if-eqz p2, :cond_2

    .line 1421
    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    .line 1422
    div-float v0, p1, v2

    mul-float/2addr v0, v3

    .line 1431
    :cond_0
    :goto_0
    return v0

    .line 1423
    :cond_1
    cmpg-float v1, p1, v4

    if-gez v1, :cond_0

    .line 1424
    sub-float v0, v4, p1

    div-float/2addr v0, v2

    mul-float/2addr v0, v3

    goto :goto_0

    .line 1428
    :cond_2
    cmpg-float v1, p1, v5

    if-ltz v1, :cond_0

    .line 1431
    sub-float v0, p1, v5

    mul-float/2addr v0, v3

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method private changeOrientationChild(Landroid/content/res/Resources;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/Workspace$CellOrient;Z)V
    .locals 7
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "cl"    # Lcom/android/launcher2/CellLayout;
    .param p3, "co"    # Lcom/android/launcher2/Workspace$CellOrient;
    .param p4, "isCurrentPage"    # Z

    .prologue
    .line 4391
    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4392
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->leftMargin:I

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 4393
    iget v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->topMargin:I

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 4394
    iget v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->rightMargin:I

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 4395
    invoke-virtual {p2, v3}, Lcom/android/launcher2/CellLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4397
    iget v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->cellWidth:I

    iget v6, p3, Lcom/android/launcher2/Workspace$CellOrient;->cellHeight:I

    invoke-virtual {p2, v5, v6}, Lcom/android/launcher2/CellLayout;->setCellSize(II)V

    .line 4398
    iget v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->cellGapX:I

    iget v6, p3, Lcom/android/launcher2/Workspace$CellOrient;->cellGapY:I

    invoke-virtual {p2, v5, v6}, Lcom/android/launcher2/CellLayout;->setGaps(II)V

    .line 4399
    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->refreshCellDimension()V

    .line 4401
    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "j":I
    :goto_0
    if-ltz v2, :cond_8

    .line 4402
    invoke-virtual {p2, v2}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 4403
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 4405
    .local v4, "tag":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/launcher2/HomeWidgetItem;

    if-nez v5, :cond_0

    instance-of v5, v4, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v5, :cond_5

    .line 4406
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    instance-of v5, v4, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    move-object v5, v4

    check-cast v5, Lcom/android/launcher2/HomeItem;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    instance-of v5, v4, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    move-object v5, v4

    check-cast v5, Lcom/android/launcher2/HomeItem;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4401
    .end local v0    # "childView":Landroid/view/View;
    .end local v4    # "tag":Ljava/lang/Object;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4411
    .restart local v0    # "childView":Landroid/view/View;
    .restart local v4    # "tag":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p2, v0}, Lcom/android/launcher2/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    move-object v5, v4

    .line 4412
    check-cast v5, Lcom/android/launcher2/BaseItem;

    invoke-virtual {p2, v5}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-object v5, v4

    .line 4413
    check-cast v5, Lcom/android/launcher2/HomeItem;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeItem;->unbind()V

    .line 4414
    if-eqz p4, :cond_4

    .line 4415
    check-cast v4, Lcom/android/launcher2/HomeItem;

    .end local v4    # "tag":Ljava/lang/Object;
    invoke-direct {p0, v4}, Lcom/android/launcher2/Workspace;->createAndBindWidget(Lcom/android/launcher2/BaseItem;)V

    goto :goto_1

    .line 4417
    .restart local v4    # "tag":Ljava/lang/Object;
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    check-cast v4, Lcom/android/launcher2/HomeItem;

    .end local v4    # "tag":Ljava/lang/Object;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4418
    .restart local v4    # "tag":Ljava/lang/Object;
    :cond_5
    instance-of v5, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_6

    move-object v1, v0

    .line 4419
    check-cast v1, Lcom/android/launcher2/FolderIconView;

    .line 4420
    .local v1, "folderIcon":Lcom/android/launcher2/FolderIconView;
    iget-object v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->fivView:Landroid/content/res/TypedArray;

    iget-object v6, p3, Lcom/android/launcher2/Workspace$CellOrient;->fivTextView:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher2/FolderIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 4421
    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->refresh()V

    goto :goto_1

    .line 4422
    .end local v1    # "folderIcon":Lcom/android/launcher2/FolderIconView;
    :cond_6
    instance-of v5, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v5, :cond_2

    .line 4423
    check-cast v4, Lcom/android/launcher2/BaseItem;

    .end local v4    # "tag":Ljava/lang/Object;
    iget-object v5, v4, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-nez v5, :cond_7

    .line 4424
    check-cast v0, Lcom/android/launcher2/AppIconView;

    .end local v0    # "childView":Landroid/view/View;
    iget-object v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->aivView:Landroid/content/res/TypedArray;

    iget-object v6, p3, Lcom/android/launcher2/Workspace$CellOrient;->aivTextView:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_1

    .restart local v0    # "childView":Landroid/view/View;
    :cond_7
    move-object v5, v0

    .line 4426
    check-cast v5, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/AppIconView;->updateMovieValues()V

    .line 4427
    check-cast v0, Lcom/android/launcher2/AppIconView;

    .end local v0    # "childView":Landroid/view/View;
    iget-object v5, p3, Lcom/android/launcher2/Workspace$CellOrient;->mivView:Landroid/content/res/TypedArray;

    iget-object v6, p3, Lcom/android/launcher2/Workspace$CellOrient;->mivTextView:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_1

    .line 4431
    :cond_8
    return-void
.end method

.method private changeOrientationIfRequired(Landroid/content/res/Configuration;)Z
    .locals 24
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 3814
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 3815
    .local v16, "r":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v11

    .line 3817
    .local v11, "homescreenoption":Lcom/android/launcher2/HomeScreenOptionMenu;
    if-eqz v11, :cond_0

    .line 3818
    const v20, 0x7f0f0058

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/launcher2/HomeScreenOptionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 3821
    .local v19, "tw":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 3822
    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 3826
    .end local v19    # "tw":Landroid/widget/TextView;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isShown()Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v20

    if-nez v20, :cond_5

    .line 3829
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 3830
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 3831
    const v20, 0x7f0e0054

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const v21, 0x7f0e00df

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    .line 3834
    :cond_2
    :goto_1
    const/16 v20, 0x0

    .line 3935
    :goto_2
    return v20

    .line 3824
    .restart local v19    # "tw":Landroid/widget/TextView;
    :cond_3
    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 3833
    .end local v19    # "tw":Landroid/widget/TextView;
    :cond_4
    const v20, 0x7f0e00e1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const v21, 0x7f0e00df

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    goto :goto_1

    .line 3836
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    .line 3837
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v20

    sget-object v21, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 3838
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 3840
    :cond_6
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/SmoothPagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-nez v20, :cond_7

    .line 3843
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->loadWidgetSkipList()Z

    .line 3845
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->setWorkspaceLoading()V

    .line 3850
    const v20, 0x7f0e00d9

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mPageSpacingHint:I

    .line 3852
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 3854
    .local v7, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v17

    .line 3855
    .local v17, "screenCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v8

    .line 3857
    .local v8, "currentPage":I
    new-instance v6, Lcom/android/launcher2/Workspace$CellOrient;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Lcom/android/launcher2/Workspace$CellOrient;-><init>(Lcom/android/launcher2/Workspace$1;)V

    .line 3858
    .local v6, "co":Lcom/android/launcher2/Workspace$CellOrient;
    const v20, 0x7f110016

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->aivTextView:Landroid/content/res/TypedArray;

    .line 3859
    const v20, 0x7f110016

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->aivView:Landroid/content/res/TypedArray;

    .line 3860
    const v20, 0x7f110018

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->mivTextView:Landroid/content/res/TypedArray;

    .line 3861
    const v20, 0x7f110018

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->mivView:Landroid/content/res/TypedArray;

    .line 3862
    const v20, 0x7f110017

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->fivTextView:Landroid/content/res/TypedArray;

    .line 3863
    const v20, 0x7f110017

    move/from16 v0, v20

    invoke-static {v7, v0}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->fivView:Landroid/content/res/TypedArray;

    .line 3865
    const v20, 0x7f0e00db

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->cellWidth:I

    .line 3866
    const v20, 0x7f0e00dc

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->cellHeight:I

    .line 3867
    const v20, 0x7f0e00dd

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->cellGapX:I

    .line 3868
    const v20, 0x7f0e00de

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->cellGapY:I

    .line 3870
    const v20, 0x7f0e00d8

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->leftMargin:I

    .line 3871
    const v20, 0x7f0e00d6

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->topMargin:I

    .line 3872
    const v20, 0x7f0e00d7

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v6, Lcom/android/launcher2/Workspace$CellOrient;->rightMargin:I

    .line 3874
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v12, v0, :cond_9

    .line 3875
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 3876
    .local v5, "cl":Lcom/android/launcher2/CellLayout;
    if-ne v12, v8, :cond_8

    .line 3877
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/android/launcher2/Workspace;->changeOrientationChild(Landroid/content/res/Resources;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/Workspace$CellOrient;Z)V

    .line 3874
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 3879
    :cond_8
    new-instance v20, Lcom/android/launcher2/Workspace$20;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/launcher2/Workspace$20;-><init>(Lcom/android/launcher2/Workspace;Landroid/content/res/Resources;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/Workspace$CellOrient;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 3886
    .end local v5    # "cl":Lcom/android/launcher2/CellLayout;
    :cond_9
    new-instance v20, Lcom/android/launcher2/Workspace$21;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/android/launcher2/Workspace$21;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$CellOrient;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 3901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace;->loadLayoutParameters()V

    .line 3902
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->reConfigureHotseat()V

    .line 3903
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getHomeBottomBar()Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_a

    .line 3904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getGoogleSearchView()Landroid/view/View;

    move-result-object v9

    .line 3905
    .local v9, "googleSearchView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 3906
    .local v14, "lpView":Landroid/view/ViewGroup$LayoutParams;
    const v20, 0x7f0e02c5

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3907
    invoke-virtual {v9, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->setTabletHotseat()V

    .line 3912
    .end local v9    # "googleSearchView":Landroid/view/View;
    .end local v14    # "lpView":Landroid/view/ViewGroup$LayoutParams;
    :cond_a
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 3913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getHomeEditTitleBar()Landroid/view/ViewGroup;

    move-result-object v18

    .line 3914
    .local v18, "titleBar":Landroid/view/ViewGroup;
    if-eqz v18, :cond_b

    .line 3915
    const v20, 0x7f0e0114

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 3916
    .local v15, "padding":I
    const v20, 0x7f0e0016

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 3919
    .local v10, "height":I
    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3920
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v10, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 3921
    iput v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3922
    iput v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 3923
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3924
    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v21

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 3929
    .end local v10    # "height":I
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v15    # "padding":I
    .end local v18    # "titleBar":Landroid/view/ViewGroup;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->handleScrollOnOrientationChange()V

    .line 3931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 3932
    const v20, 0x7f0e00e1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const v21, 0x7f0e00df

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    .line 3935
    :goto_5
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 3934
    :cond_c
    const v20, 0x7f0e00e0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    const v21, 0x7f0e00df

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    goto :goto_5
.end method

.method private changeState(Lcom/android/launcher2/Workspace$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/launcher2/Workspace$State;

    .prologue
    .line 2144
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    .line 2145
    return-void
.end method

.method private createAndBindWidget(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 3949
    sget-object v0, Lcom/android/launcher2/Workspace$31;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3962
    .end local p1    # "item":Lcom/android/launcher2/BaseItem;
    :goto_0
    return-void

    .line 3951
    .restart local p1    # "item":Lcom/android/launcher2/BaseItem;
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/HomeWidgetItem;

    .end local p1    # "item":Lcom/android/launcher2/BaseItem;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    goto :goto_0

    .line 3954
    .restart local p1    # "item":Lcom/android/launcher2/BaseItem;
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/SamsungWidgetItem;

    .end local p1    # "item":Lcom/android/launcher2/BaseItem;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindSamsungWidget(Lcom/android/launcher2/SamsungWidgetItem;)V

    goto :goto_0

    .line 3957
    .restart local p1    # "item":Lcom/android/launcher2/BaseItem;
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local p1    # "item":Lcom/android/launcher2/BaseItem;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->bindSurfaceWidget(Lcom/android/launcher2/SurfaceWidgetItem;)V

    goto :goto_0

    .line 3949
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "v"    # Landroid/view/View;
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "padding"    # I

    .prologue
    const/4 v7, 0x1

    .line 2602
    const/4 v0, 0x0

    .line 2604
    .local v0, "b":Landroid/graphics/Bitmap;
    instance-of v4, p0, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    move-object v4, p0

    .line 2605
    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v1, v4, v7

    .line 2606
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, p2

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2613
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2614
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x7f0c001b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 2615
    .local v3, "threshold":I
    if-lez v3, :cond_0

    .line 2616
    neg-int v4, v3

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2618
    :cond_0
    if-eqz v0, :cond_1

    .line 2619
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2620
    :cond_1
    invoke-static {p0, p1, p2, v7}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 2621
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2622
    return-object v0

    .line 2609
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "threshold":I
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, p2

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private createExternalDragOutline(Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "padding"    # I

    .prologue
    .line 2658
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2659
    .local v5, "r":Landroid/content/res/Resources;
    const v7, 0x1060012

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 2660
    .local v4, "outlineColor":I
    const v7, 0x7f0e00db

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2661
    .local v2, "iconWidth":I
    const v7, 0x7f0e00dc

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2662
    .local v1, "iconHeight":I
    const v7, 0x7f0e013a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 2663
    .local v6, "rectRadius":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .line 2664
    .local v3, "inset":I
    add-int v7, v2, p2

    add-int v8, v1, p2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2667
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2668
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v3

    int-to-float v9, v3

    sub-int v10, v2, v3

    int-to-float v10, v10

    sub-int v11, v1, v3

    int-to-float v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v8, v6

    int-to-float v9, v6

    iget-object v10, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2670
    sget-object v7, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v7, v0, p1, v4, v4}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 2671
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2672
    return-object v0
.end method

.method private static drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 21
    .param p0, "v"    # Landroid/view/View;
    .param p1, "destCanvas"    # Landroid/graphics/Canvas;
    .param p2, "padding"    # I
    .param p3, "pruneToDrawable"    # Z

    .prologue
    .line 2521
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2522
    .local v6, "clipRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2524
    const/4 v14, 0x0

    .line 2526
    .local v14, "textVisible":Z
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2527
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    if-eqz p3, :cond_5

    .line 2528
    const/4 v9, 0x0

    .line 2529
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v17, p0

    .line 2530
    check-cast v17, Lcom/android/launcher2/FolderIconView;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/FolderIconView;->getDragIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2531
    .local v5, "b":Landroid/graphics/Bitmap;
    new-instance v9, Lcom/android/launcher2/FastBitmapDrawable;

    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v9, v5}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2540
    .end local v5    # "b":Landroid/graphics/Bitmap;
    .restart local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    if-eqz v9, :cond_2

    .line 2542
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 2543
    .local v12, "r":Landroid/content/res/Resources;
    const v17, 0x7f0c001b

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 2545
    .local v15, "threshold":I
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    add-int v19, v19, p2

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    add-int v20, v20, p2

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2548
    div-int/lit8 v17, p2, 0x2

    add-int v17, v17, v15

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-int/lit8 v18, p2, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2552
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 2553
    .local v8, "dm":Landroid/util/DisplayMetrics;
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    const/16 v18, 0xf0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 2554
    const v17, 0x3f59999a    # 0.85f

    const v18, 0x3f59999a    # 0.85f

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2558
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2594
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "r":Landroid/content/res/Resources;
    .end local v15    # "threshold":I
    .end local p0    # "v":Landroid/view/View;
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2595
    return-void

    .restart local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local p0    # "v":Landroid/view/View;
    :cond_3
    move-object/from16 v17, p0

    .line 2533
    check-cast v17, Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_2
    if-ge v10, v11, :cond_0

    aget-object v7, v4, v10

    .line 2534
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_4

    .line 2535
    move-object v9, v7

    .line 2536
    goto/16 :goto_0

    .line 2533
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2560
    .end local v4    # "arr$":[Landroid/graphics/drawable/Drawable;
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/SurfaceWidgetView;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v17, p0

    .line 2561
    check-cast v17, Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/SurfaceWidgetView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 2562
    .local v13, "surfaceWidgetScreenshot":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_2

    .line 2564
    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v13, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 2565
    check-cast p0, Lcom/android/launcher2/SurfaceWidgetView;

    .end local p0    # "v":Landroid/view/View;
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->setVisibility(I)V

    goto :goto_1

    .line 2569
    .end local v13    # "surfaceWidgetScreenshot":Landroid/graphics/Bitmap;
    .restart local p0    # "v":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v16, p0

    .line 2570
    check-cast v16, Lcom/android/launcher2/AppIconView;

    .line 2571
    .local v16, "tv":Lcom/android/launcher2/AppIconView;
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/AppIconView;->getExtendedPaddingTop()I

    move-result v17

    add-int/lit8 v17, v17, -0x3

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/AppIconView;->getLayout()Landroid/text/Layout;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/text/Layout;->getLineTop(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 2575
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/AppIconView;->getTextVisible()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2576
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    .line 2577
    const/4 v14, 0x1

    .line 2585
    .end local v16    # "tv":Lcom/android/launcher2/AppIconView;
    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v18, p2, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v18

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    div-int/lit8 v19, p2, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2586
    sget-object v17, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2587
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2590
    if-eqz v14, :cond_2

    .line 2591
    check-cast p0, Lcom/android/launcher2/AppIconView;

    .end local p0    # "v":Landroid/view/View;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    goto/16 :goto_1

    .line 2580
    .restart local p0    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v16, p0

    .line 2581
    check-cast v16, Landroid/widget/TextView;

    .line 2582
    .local v16, "tv":Landroid/widget/TextView;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/text/Layout;->getLineTop(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_3
.end method

.method private getCurrentDropLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    .prologue
    .line 2731
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method private static getHomeItems(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3728
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 3729
    .local v3, "numItems":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3730
    .local v0, "homeItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 3731
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 3732
    .local v2, "item":Lcom/android/launcher2/BaseItem;
    instance-of v4, v2, Lcom/android/launcher2/HomeItem;

    if-eqz v4, :cond_0

    .line 3733
    check-cast v2, Lcom/android/launcher2/HomeItem;

    .end local v2    # "item":Lcom/android/launcher2/BaseItem;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3730
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3736
    :cond_1
    return-object v0
.end method

.method private getScrollRange()I
    .locals 2

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getViewForTag(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 12
    .param p1, "tag"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 2919
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v2

    .line 2920
    .local v2, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayoutChildren;

    .line 2921
    .local v6, "layout":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 2922
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 2923
    invoke-virtual {v6, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2924
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 2925
    .local v1, "childItem":Lcom/android/launcher2/BaseItem;
    if-eqz v1, :cond_1

    iget-wide v8, v1, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v10, p1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    .line 2930
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childItem":Lcom/android/launcher2/BaseItem;
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v6    # "layout":Lcom/android/launcher2/CellLayoutChildren;
    :goto_1
    return-object v0

    .line 2922
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childItem":Lcom/android/launcher2/BaseItem;
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    .restart local v6    # "layout":Lcom/android/launcher2/CellLayoutChildren;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2930
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childItem":Lcom/android/launcher2/BaseItem;
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v6    # "layout":Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/CellLayoutChildren;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2907
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2908
    .local v0, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 2909
    .local v2, "screenCount":I
    const/4 v1, 0x0

    .local v1, "screen":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2910
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2909
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2912
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2913
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2915
    :cond_1
    return-object v0
.end method

.method private getWorkspaceAndHotseatCellLayouts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2890
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2891
    .local v1, "layouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    .line 2892
    .local v3, "screenCount":I
    const/4 v2, 0x0

    .local v2, "screen":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2893
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2892
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2895
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    .line 2896
    .local v0, "hotseat":Lcom/android/launcher2/Hotseat;
    if-eqz v0, :cond_1

    .line 2897
    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2899
    :cond_1
    return-object v1
.end method

.method private handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 6
    .param p1, "info"    # Lcom/android/launcher2/FolderItem;
    .param p2, "folderIcon"    # Lcom/android/launcher2/FolderIconView;
    .param p3, "animateOpen"    # Z

    .prologue
    .line 3384
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_1

    .line 3410
    :cond_0
    :goto_0
    return-void

    .line 3392
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mIsPageMoving:Z

    if-eqz v2, :cond_2

    .line 3394
    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 3395
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 3396
    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 3397
    .local v0, "item":Lcom/android/launcher2/HomeItem;
    iget-wide v2, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 3404
    .end local v0    # "item":Lcom/android/launcher2/HomeItem;
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3405
    const-string v2, "Launcher.Workspace"

    const-string v3, "Folder info marked as open, but associated folder is not open."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3406
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lcom/android/launcher2/FolderItem;->setOpened(Z)V

    .line 3409
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Workspace;->openFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    goto :goto_0
.end method

.method private initWorkspace()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 347
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->initCurrentPage(I)V

    .line 348
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 350
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 351
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setWillNotDraw(Z)V

    .line 352
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 354
    new-instance v1, Lcom/android/launcher2/Workspace$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$1;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 381
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mSnapVelocity:I

    .line 382
    new-instance v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    .line 383
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 384
    .local v0, "size":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 385
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    .line 386
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    .line 387
    iget v1, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v3, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    .line 389
    return-void
.end method

.method private isTouchActive()Z
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/android/launcher2/Workspace;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimationOnThis(I)Landroid/animation/Animator;
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 2506
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 2507
    .local v0, "s":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 2508
    return-object v0
.end method

.method private loadWhenRotationSkipList(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 4351
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 4354
    .local v6, "startDepth":I
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 4355
    .local v1, "attrs":Landroid/util/AttributeSet;
    const/4 v5, 0x0

    .line 4356
    .local v5, "pkgName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 4357
    .local v2, "className":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v6, :cond_2

    .line 4358
    :cond_1
    if-ne v7, v11, :cond_3

    .line 4378
    :cond_2
    return-void

    .line 4359
    :cond_3
    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 4361
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4362
    .local v4, "name":Ljava/lang/String;
    const-string v8, "Launcher.Workspace"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadWhenRotationSkipList. Process tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4364
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/launcher/R$styleable;->Favorite:[I

    invoke-virtual {v8, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4365
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4366
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4367
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4369
    const-string v8, "appwidget"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4370
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4371
    .local v3, "cn":Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4373
    .end local v3    # "cn":Landroid/content/ComponentName;
    :cond_4
    const-string v8, "sactivitywidget"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "surfacewidget"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4374
    :cond_5
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4375
    .restart local v3    # "cn":Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadWidgetSkipList()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 4315
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    if-nez v7, :cond_3

    .line 4316
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    .line 4320
    :goto_0
    const/4 v3, 0x0

    .line 4321
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    .line 4323
    .local v4, "resParser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 4324
    const-string v7, "widget_skip"

    invoke-static {v4, v7}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 4325
    move-object v3, v4

    .line 4327
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 4330
    .local v0, "depth":I
    :cond_0
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v0, :cond_2

    :cond_1
    if-eq v5, v6, :cond_2

    .line 4333
    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    .line 4334
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4335
    .local v2, "name":Ljava/lang/String;
    const-string v7, "when_rotation"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4336
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7, v3}, Lcom/android/launcher2/Workspace;->loadWhenRotationSkipList(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 4339
    .end local v0    # "depth":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "type":I
    :catch_0
    move-exception v1

    .line 4340
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "Launcher.Workspace"

    const-string v7, "Got exception parsing default_widget_skiplist.xml"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4346
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    const/4 v6, 0x0

    :cond_2
    return v6

    .line 4318
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "resParser":Landroid/content/res/XmlResourceParser;
    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 4341
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "resParser":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v1

    .line 4342
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "Launcher.Workspace"

    const-string v7, "Got exception parsing default_widget_skiplist.xml"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 4343
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 4344
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "Launcher.Workspace"

    const-string v7, "Got exception parsing default_widget_skiplist.xml"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1768
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 1769
    .local v8, "position":[I
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    .line 1771
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 1772
    .local v7, "pointerIndex":I
    aget v0, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v5

    .line 1773
    aget v0, v8, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v4

    .line 1775
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "android.wallpaper.tap"

    :goto_0
    aget v3, v8, v5

    aget v4, v8, v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1779
    return-void

    .line 1775
    :cond_0
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_0
.end method

.method private openFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 7
    .param p1, "folderItem"    # Lcom/android/launcher2/FolderItem;
    .param p2, "icon"    # Lcom/android/launcher2/FolderIconView;
    .param p3, "animateOpen"    # Z

    .prologue
    const/4 v6, 0x1

    .line 3337
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 3339
    .local v2, "parentView":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    .line 3340
    .local v1, "menuView":Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 3371
    :cond_0
    :goto_0
    return-void

    .line 3343
    :cond_1
    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/Workspace;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 3345
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    .line 3346
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/Folder;->setHomeView(Lcom/android/launcher2/HomeView;)V

    .line 3347
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, p0}, Lcom/android/launcher2/Folder;->setItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 3349
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    new-instance v4, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;

    invoke-direct {v4, p0, p2, p3}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIconView;Z)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Folder;->setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V

    .line 3350
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    .line 3351
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->enableChildBadges()V

    .line 3352
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    invoke-virtual {v4, v3, v2, p3}, Lcom/android/launcher2/Folder;->open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V

    .line 3355
    new-instance v3, Lcom/android/launcher2/Workspace$19;

    invoke-direct {v3, p0, p2}, Lcom/android/launcher2/Workspace$19;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIconView;)V

    const-wide/16 v4, 0x32

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3362
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3363
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v6, :cond_2

    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3368
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/Folder;->startEditingFolderName(Z)V

    .line 3369
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->requestChildFocusForHWKey()V

    goto :goto_0
.end method

.method private reConfigureHotseat()V
    .locals 9

    .prologue
    .line 3696
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    .line 3697
    .local v3, "oldHotseat":Lcom/android/launcher2/Hotseat;
    if-nez v3, :cond_1

    .line 3725
    :cond_0
    :goto_0
    return-void

    .line 3699
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->removeStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 3700
    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 3701
    .local v4, "parentOfHotSeat":Landroid/view/ViewGroup;
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 3702
    .local v1, "idx":I
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 3704
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03002d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Hotseat;

    .line 3706
    .local v0, "hotSeat":Lcom/android/launcher2/Hotseat;
    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3707
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v0}, Lcom/android/launcher2/HomeView;->setHotseat(Lcom/android/launcher2/Hotseat;)V

    .line 3708
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 3710
    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->allItems()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher2/Workspace;->getHomeItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 3711
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v2}, Lcom/android/launcher2/HomeView;->bindHotseat(Ljava/util/List;)V

    .line 3713
    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->reapplyIconViewStyles()V

    .line 3715
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3716
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    .line 3717
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 3720
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3721
    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v7

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v7, v6}, Lcom/android/launcher2/CellLayout;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/FolderIconView;

    .line 3722
    .local v5, "v":Lcom/android/launcher2/FolderIconView;
    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->restoreStateForOpenVisualize()V

    .line 3723
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6, v5}, Lcom/android/launcher2/Folder;->updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V

    goto :goto_0
.end method

.method private reConfigureQuickLaunch()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 3741
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v1

    .line 3742
    .local v1, "oldQuickLaunch":Lcom/android/launcher2/QuickLaunch;
    if-nez v1, :cond_1

    .line 3789
    :cond_0
    :goto_0
    return-void

    .line 3743
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v4

    .line 3745
    .local v4, "quickLaunchCamera":Lcom/android/launcher2/QuickLaunch;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->removeStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 3746
    invoke-virtual {v1}, Lcom/android/launcher2/QuickLaunch;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 3747
    .local v2, "parentQL":Landroid/view/ViewGroup;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3748
    .local v0, "idx":I
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 3749
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030022

    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/QuickLaunch;

    .line 3751
    .local v3, "quickLaunch":Lcom/android/launcher2/QuickLaunch;
    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3752
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v3}, Lcom/android/launcher2/HomeView;->setQuickLaunch(Lcom/android/launcher2/QuickLaunch;)V

    .line 3753
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 3754
    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3755
    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, 0x5

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3760
    :goto_1
    if-nez v4, :cond_2

    .line 3761
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030023

    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .end local v4    # "quickLaunchCamera":Lcom/android/launcher2/QuickLaunch;
    check-cast v4, Lcom/android/launcher2/QuickLaunch;

    .line 3764
    .restart local v4    # "quickLaunchCamera":Lcom/android/launcher2/QuickLaunch;
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3765
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v4}, Lcom/android/launcher2/HomeView;->setQuickLaunchCamera(Lcom/android/launcher2/QuickLaunch;)V

    .line 3766
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 3767
    invoke-virtual {v4}, Lcom/android/launcher2/QuickLaunch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, 0x3

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3769
    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/FocusHelper;->QUICK_ALLAPPS_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/AllappsIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3770
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 3771
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 3772
    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/FocusHelper;->QUICK_CAMERA_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/AllappsIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3779
    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v5

    .line 3780
    .local v5, "qvw":Lcom/android/launcher2/QuickViewWorkspace;
    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3781
    invoke-virtual {v3, v10}, Lcom/android/launcher2/QuickLaunch;->setAlpha(F)V

    .line 3782
    invoke-virtual {v3, v12}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 3784
    :cond_3
    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/android/launcher2/QuickLaunch;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3785
    invoke-virtual {v4, v10}, Lcom/android/launcher2/QuickLaunch;->setAlpha(F)V

    .line 3786
    invoke-virtual {v4, v12}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    goto/16 :goto_0

    .line 3757
    .end local v5    # "qvw":Lcom/android/launcher2/QuickViewWorkspace;
    :cond_4
    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x50

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_1

    .line 3774
    :cond_5
    invoke-virtual {v4, v11}, Lcom/android/launcher2/QuickLaunch;->setAlpha(F)V

    .line 3775
    invoke-virtual {v4}, Lcom/android/launcher2/QuickLaunch;->getCameraLayout()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/View;->setAlpha(F)V

    .line 3776
    invoke-virtual {v4, v9}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 3777
    invoke-virtual {v4}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/FocusHelper;->QUICK_CAMERA_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/AllappsIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_2
.end method

.method private refreshHotseat()V
    .locals 2

    .prologue
    .line 3690
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    .line 3691
    .local v0, "oldHotseat":Lcom/android/launcher2/Hotseat;
    if-nez v0, :cond_0

    .line 3693
    :goto_0
    return-void

    .line 3692
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->reapplyIconViewStyles()V

    goto :goto_0
.end method

.method private setScrollDirection(I)V
    .locals 0
    .param p1, "scrollDirection"    # I

    .prologue
    .line 2856
    return-void
.end method

.method private setTransitionEffectBasedOnState(Lcom/android/launcher2/Workspace$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/launcher2/Workspace$State;

    .prologue
    .line 2479
    sget-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/Workspace$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2480
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    .line 2485
    :goto_0
    return-void

    .line 2483
    :cond_0
    sget-object v0, Lcom/android/launcher2/PagedView$TransitionEffect;->SPIRAL:Lcom/android/launcher2/PagedView$TransitionEffect;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    goto :goto_0
.end method

.method private showMagazineCling()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 4516
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    const v8, 0x7f0f0083

    invoke-virtual {v7, v8}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 4517
    .local v1, "magazine_cling_message":Landroid/view/ViewStub;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 4518
    .local v6, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4520
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_0

    .line 4521
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/launcher2/Workspace;->m_cling:Landroid/widget/RelativeLayout;

    .line 4524
    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->m_cling:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_1

    .line 4525
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->m_cling:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4528
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mHelpStartNowImage:[Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    const v9, 0x7f0f00a3

    invoke-virtual {v7, v9}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    aput-object v7, v8, v10

    .line 4529
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mHelpStartNowImage:[Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    const v9, 0x7f0f00a4

    invoke-virtual {v7, v9}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    aput-object v7, v8, v12

    .line 4530
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mHelpStartNowImage:[Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    const v9, 0x7f0f00a5

    invoke-virtual {v7, v9}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    aput-object v7, v8, v13

    .line 4532
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mHelpStartNowImage:[Landroid/widget/ImageView;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v7, v8, v10

    .line 4533
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mHelpStartNowImage:[Landroid/widget/ImageView;

    aget-object v7, v7, v12

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v7, v8, v12

    .line 4534
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mHelpStartNowImage:[Landroid/widget/ImageView;

    aget-object v7, v7, v13

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/AnimationDrawable;

    aput-object v7, v8, v13

    .line 4536
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mHelpStartNowImage:[Landroid/widget/ImageView;

    aget-object v7, v7, v10

    new-instance v8, Lcom/android/launcher2/Workspace$24;

    invoke-direct {v8, p0}, Lcom/android/launcher2/Workspace$24;-><init>(Lcom/android/launcher2/Workspace;)V

    const-wide/16 v10, 0x190

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4538
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mHelpStartNowImage:[Landroid/widget/ImageView;

    aget-object v7, v7, v12

    new-instance v8, Lcom/android/launcher2/Workspace$25;

    invoke-direct {v8, p0}, Lcom/android/launcher2/Workspace$25;-><init>(Lcom/android/launcher2/Workspace;)V

    const-wide/16 v10, 0xc8

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4540
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mHelpStartNowImage:[Landroid/widget/ImageView;

    aget-object v7, v7, v13

    new-instance v8, Lcom/android/launcher2/Workspace$26;

    invoke-direct {v8, p0}, Lcom/android/launcher2/Workspace$26;-><init>(Lcom/android/launcher2/Workspace;)V

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4544
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    const v8, 0x7f0f009d

    invoke-virtual {v7, v8}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 4545
    .local v4, "magazine_cling_message_checkbox_check":Landroid/widget/CheckBox;
    if-eqz v4, :cond_2

    .line 4546
    new-instance v7, Lcom/android/launcher2/Workspace$27;

    invoke-direct {v7, p0}, Lcom/android/launcher2/Workspace$27;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4552
    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    const v8, 0x7f0f009e

    invoke-virtual {v7, v8}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 4553
    .local v5, "magazine_cling_message_checkbox_text":Landroid/widget/TextView;
    if-eqz v5, :cond_3

    .line 4554
    new-instance v7, Lcom/android/launcher2/Workspace$28;

    invoke-direct {v7, p0, v4}, Lcom/android/launcher2/Workspace$28;-><init>(Lcom/android/launcher2/Workspace;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4561
    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    const v8, 0x7f0f009f

    invoke-virtual {v7, v8}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 4562
    .local v2, "magazine_cling_message_button_help":Landroid/widget/Button;
    if-eqz v2, :cond_4

    .line 4563
    new-instance v7, Lcom/android/launcher2/Workspace$29;

    invoke-direct {v7, p0, v4, v0}, Lcom/android/launcher2/Workspace$29;-><init>(Lcom/android/launcher2/Workspace;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4579
    :cond_4
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    const v8, 0x7f0f00a0

    invoke-virtual {v7, v8}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 4580
    .local v3, "magazine_cling_message_button_ok":Landroid/widget/Button;
    if-eqz v3, :cond_5

    .line 4581
    new-instance v7, Lcom/android/launcher2/Workspace$30;

    invoke-direct {v7, p0, v4, v0}, Lcom/android/launcher2/Workspace$30;-><init>(Lcom/android/launcher2/Workspace;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4592
    :cond_5
    return-void
.end method

.method private syncWallpaperOffsetWithScroll()V
    .locals 4

    .prologue
    .line 980
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v0

    .line 981
    .local v0, "enableWallpaperEffects":Z
    if-eqz v0, :cond_0

    .line 982
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->wallpaperOffsetForCurrentScroll()F

    move-result v2

    const-string v3, "syncWallpaperOffsetWithScroll"

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(FLjava/lang/String;)V

    .line 984
    :cond_0
    return-void
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .locals 23

    .prologue
    .line 903
    const/4 v8, 0x1

    .line 904
    .local v8, "overScrollWallpaper":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    .line 909
    .local v3, "isStaticWallpaper":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    move/from16 v19, v0

    .line 910
    .local v19, "wallpaperTravelWidth":I
    if-nez v3, :cond_0

    .line 911
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    move/from16 v19, v0

    .line 916
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    const/high16 v22, 0x3f000000    # 0.5f

    invoke-virtual/range {v20 .. v22}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 925
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v15

    .line 926
    .local v15, "scrollRange":I
    const/4 v14, 0x0

    .line 932
    .local v14, "scrollProgressOffset":F
    if-eqz v3, :cond_1

    .line 933
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v7, v0

    .line 934
    .local v7, "overScrollOffset":I
    int-to-float v0, v7

    move/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    add-float v14, v14, v20

    .line 935
    mul-int/lit8 v20, v7, 0x2

    add-int v15, v15, v20

    .line 939
    .end local v7    # "overScrollOffset":I
    :cond_1
    const/4 v4, 0x0

    .local v4, "newScrollX":I
    const/4 v10, 0x0

    .local v10, "pg":I
    const/4 v12, 0x0

    .local v12, "scrollDelta":I
    const/16 v18, 0x0

    .line 940
    .local v18, "totWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v16

    .line 941
    .local v16, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 943
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v11

    .line 945
    .local v11, "pgCnt":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageTotWidth()I

    move-result v20

    mul-int v18, v20, v11

    .line 946
    if-lez v16, :cond_6

    .line 947
    rem-int v17, v16, v18

    .line 948
    .local v17, "tempScrollX":I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Scroller;->isFinished()Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    .line 949
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    move/from16 v20, v0

    sub-int v12, v17, v20

    .line 950
    const/high16 v20, 0x3f800000    # 1.0f

    int-to-float v0, v12

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageTotWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    sub-float v9, v20, v21

    .line 951
    .local v9, "perRemain":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v9

    move/from16 v0, v20

    float-to-int v4, v0

    .line 963
    .end local v9    # "perRemain":F
    .end local v11    # "pgCnt":I
    .end local v17    # "tempScrollX":I
    :cond_2
    :goto_1
    int-to-float v2, v4

    .line 965
    .local v2, "adjustedScrollX":F
    int-to-float v0, v15

    move/from16 v20, v0

    div-float v20, v2, v20

    add-float v13, v20, v14

    .line 966
    .local v13, "scrollProgress":F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    move/from16 v21, v0

    sub-int v21, v21, v19

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v6, v20, v21

    .line 968
    .local v6, "offsetInDips":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v5, v6, v20

    .line 969
    .local v5, "offset":F
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 970
    const/4 v5, 0x0

    .line 977
    :cond_3
    return v5

    .line 919
    .end local v2    # "adjustedScrollX":F
    .end local v4    # "newScrollX":I
    .end local v5    # "offset":F
    .end local v6    # "offsetInDips":F
    .end local v10    # "pg":I
    .end local v12    # "scrollDelta":I
    .end local v13    # "scrollProgress":F
    .end local v14    # "scrollProgressOffset":F
    .end local v15    # "scrollRange":I
    .end local v16    # "scrollX":I
    .end local v18    # "totWidth":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-virtual/range {v20 .. v22}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    goto/16 :goto_0

    .line 953
    .restart local v4    # "newScrollX":I
    .restart local v10    # "pg":I
    .restart local v11    # "pgCnt":I
    .restart local v12    # "scrollDelta":I
    .restart local v14    # "scrollProgressOffset":F
    .restart local v15    # "scrollRange":I
    .restart local v16    # "scrollX":I
    .restart local v17    # "tempScrollX":I
    .restart local v18    # "totWidth":I
    :cond_5
    move/from16 v4, v17

    goto :goto_1

    .line 955
    .end local v17    # "tempScrollX":I
    :cond_6
    if-gez v16, :cond_2

    .line 956
    rem-int v20, v16, v18

    add-int v4, v18, v20

    goto :goto_1

    .line 959
    .end local v11    # "pgCnt":I
    :cond_7
    move/from16 v4, v16

    goto :goto_1
.end method

.method private wallpaperTravelToScreenHeightRatio(II)F
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 817
    const v0, 0x3f8ccccd    # 1.1f

    return v0
.end method

.method private wallpaperTravelToScreenWidthRatio(II)F
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 823
    int-to-float v7, p1

    int-to-float v8, p2

    div-float v4, v7, v8

    .line 830
    .local v4, "aspectRatio":F
    const v0, 0x3fcccccd    # 1.6f

    .line 831
    .local v0, "ASPECT_RATIO_LANDSCAPE":F
    const/high16 v1, 0x3f200000    # 0.625f

    .line 832
    .local v1, "ASPECT_RATIO_PORTRAIT":F
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 833
    .local v2, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_LANDSCAPE":F
    const v3, 0x3f99999a    # 1.2f

    .line 840
    .local v3, "WALLPAPER_WIDTH_TO_SCREEN_RATIO_PORTRAIT":F
    const v5, 0x3e9d89d7

    .line 843
    .local v5, "x":F
    const v6, 0x3f80fc10

    .line 844
    .local v6, "y":F
    const v7, 0x3e9d89d7

    mul-float/2addr v7, v4

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method


# virtual methods
.method abortConfigChanges()V
    .locals 1

    .prologue
    .line 3944
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3945
    sget-object v0, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    .line 3946
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
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
    .line 1759
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1760
    .local v0, "openFolder":Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 1761
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1765
    :goto_0
    return-void

    .line 1763
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public addItem(Lcom/android/launcher2/HomeItem;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/HomeItem;

    .prologue
    .line 497
    const/4 v0, 0x0

    .line 499
    .local v0, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "layout":Lcom/android/launcher2/CellLayout;
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 501
    .restart local v0    # "layout":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 509
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    .line 511
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentOrientation:I

    .line 515
    :cond_0
    instance-of v1, p1, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v1, :cond_1

    .line 516
    check-cast p1, Lcom/android/launcher2/HomeWidgetItem;

    .end local p1    # "item":Lcom/android/launcher2/HomeItem;
    invoke-virtual {p1}, Lcom/android/launcher2/HomeWidgetItem;->updateSupportWidgetSize()V

    .line 519
    :cond_1
    return-void
.end method

.method public addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/launcher2/Workspace$StateAnimatorProvider;

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2134
    return-void
.end method

.method bindWidgetsAfterConfigChange()V
    .locals 4

    .prologue
    .line 3976
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 3977
    .local v1, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isLauncherDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    sget-object v3, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    if-ne v2, v3, :cond_1

    .line 4000
    :cond_0
    :goto_0
    return-void

    .line 3980
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3981
    sget-object v2, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    .line 3982
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->finishBindingItems()V

    .line 3996
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_3

    .line 3997
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 3999
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->WIDGET_BINDER:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3990
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 3991
    .local v0, "i":I
    if-ltz v0, :cond_2

    .line 3992
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-direct {p0, v2}, Lcom/android/launcher2/Workspace;->createAndBindWidget(Lcom/android/launcher2/BaseItem;)V

    goto :goto_1
.end method

.method protected cardTransform(Landroid/view/View;F)V
    .locals 25
    .param p1, "page"    # Landroid/view/View;
    .param p2, "scrollProgress"    # F

    .prologue
    .line 1278
    const/16 v22, 0x0

    cmpg-float v22, p2, v22

    if-gez v22, :cond_2

    const/4 v2, 0x1

    .local v2, "BOTTOM_CARD":Z
    :goto_0
    move-object/from16 v5, p1

    .line 1279
    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 1280
    .local v5, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 1281
    .local v8, "i":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1282
    .local v3, "absScrollProgress":F
    sget-boolean v22, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLETILTEFFECT:Z

    if-nez v22, :cond_0

    sget v22, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    if-nez v22, :cond_3

    .line 1283
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/launcher2/Workspace;->updatePageTransformWithoutTilt(Landroid/view/View;F)V

    .line 1417
    :cond_1
    :goto_1
    return-void

    .line 1278
    .end local v2    # "BOTTOM_CARD":Z
    .end local v3    # "absScrollProgress":F
    .end local v5    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v8    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1285
    .restart local v2    # "BOTTOM_CARD":Z
    .restart local v3    # "absScrollProgress":F
    .restart local v5    # "cl":Lcom/android/launcher2/CellLayout;
    .restart local v8    # "i":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v6

    .line 1286
    .local v6, "factor":F
    const/high16 v22, 0x3f800000    # 1.0f

    cmpl-float v22, p2, v22

    if-gtz v22, :cond_1

    const/high16 v22, -0x40800000    # -1.0f

    cmpg-float v22, p2, v22

    if-ltz v22, :cond_1

    .line 1289
    const/high16 v21, 0x3f800000    # 1.0f

    .line 1290
    .local v21, "zoom":F
    const/4 v13, 0x0

    .line 1291
    .local v13, "rotation":F
    const/16 v19, 0x0

    .line 1292
    .local v19, "translationX":F
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v14

    .line 1293
    .local v14, "scrollAlpha":F
    const/16 v18, 0x0

    .line 1294
    .local v18, "shadowAlpha":F
    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v22, v3

    const v23, 0x3f333333    # 0.7f

    mul-float v22, v22, v23

    const v23, 0x3e99999a    # 0.3f

    add-float v7, v22, v23

    .line 1295
    .local v7, "fastScrollBgAlpha":F
    const/4 v4, 0x1

    .line 1298
    .local v4, "blendBackground":Z
    const v16, 0x3ea8f5c3    # 0.33f

    .line 1299
    .local v16, "segment1":F
    const v17, 0x3f2b851f    # 0.67f

    .line 1300
    .local v17, "segment2":F
    const/4 v9, 0x0

    .line 1302
    .local v9, "interpolatedAlpha":F
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1303
    .local v15, "scrollScaleFactor":F
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1306
    .local v12, "panelAlpha":F
    if-eqz v2, :cond_6

    .line 1307
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v19, p2, v22

    .line 1309
    cmpg-float v22, v3, v17

    if-gez v22, :cond_5

    .line 1310
    sget-object v22, Lcom/android/launcher2/Workspace;->mSineIO80Interpolator:Landroid/view/animation/Interpolator;

    sub-float v23, v17, v3

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v24, v24, v16

    div-float v23, v23, v24

    invoke-interface/range {v22 .. v23}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    .line 1312
    move v12, v9

    .line 1313
    cmpg-float v22, v3, v16

    if-gez v22, :cond_4

    .line 1314
    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v22, v22, v3

    div-float v18, v22, v16

    .line 1324
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mPageBackgroundAlpha:F

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1, v4}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    .line 1328
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getBackgroundAlpha()F

    move-result v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_7

    .line 1329
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setNoNeedToDraw(Z)V

    goto/16 :goto_1

    .line 1316
    :cond_4
    const/high16 v22, 0x3f000000    # 0.5f

    sub-float v23, v17, v3

    mul-float v22, v22, v23

    div-float v18, v22, v16

    goto :goto_2

    .line 1318
    :cond_5
    const/4 v12, 0x0

    .line 1319
    const/16 v18, 0x0

    goto :goto_2

    .line 1334
    :cond_6
    invoke-static {v14, v7, v6}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mPageBackgroundAlpha:F

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1, v4}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    .line 1346
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isFastScrolling()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 1348
    const v22, 0x3f59999a    # 0.85f

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 1349
    const v22, 0x3f59999a    # 0.85f

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 1350
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1351
    const v15, 0x3f59999a    # 0.85f

    .line 1357
    :goto_3
    const v22, 0x3dcccccd    # 0.1f

    sget-object v23, Lcom/android/launcher2/Workspace;->mSineIO80Interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v23

    mul-float v22, v22, v23

    sub-float v21, v15, v22

    .line 1359
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v22

    if-nez v22, :cond_8

    .line 1360
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v11

    .line 1361
    .local v11, "pageWidth":I
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v10

    .line 1362
    .local v10, "pageHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0c001d

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v20, v0

    .line 1364
    .local v20, "vtransition_rotation_max":F
    if-nez v8, :cond_d

    const/16 v22, 0x0

    cmpg-float v22, p2, v22

    if-gez v22, :cond_d

    .line 1368
    sget-boolean v22, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-nez v22, :cond_c

    .line 1369
    const v22, 0x3dcccccd    # 0.1f

    sget-object v23, Lcom/android/launcher2/Workspace;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v23

    mul-float v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v23

    div-float v22, v22, v23

    sub-float v21, v15, v22

    .line 1379
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1380
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1398
    .end local v10    # "pageHeight":I
    .end local v11    # "pageWidth":I
    .end local v20    # "vtransition_rotation_max":F
    :cond_8
    :goto_5
    invoke-virtual {v5, v12}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    .line 1399
    const/16 v22, 0x0

    cmpl-float v22, v12, v22

    if-nez v22, :cond_9

    .line 1400
    const/16 v22, 0x4

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setVisibility(I)V

    .line 1409
    :cond_9
    if-eqz v2, :cond_a

    .line 1410
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 1411
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 1413
    :cond_a
    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 1415
    invoke-virtual {v5, v13}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    goto/16 :goto_1

    .line 1355
    :cond_b
    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_3

    .line 1373
    .restart local v10    # "pageHeight":I
    .restart local v11    # "pageWidth":I
    .restart local v20    # "vtransition_rotation_max":F
    :cond_c
    sget v22, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    int-to-float v0, v11

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1374
    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v23

    div-float v13, v22, v23

    .line 1375
    move/from16 v21, v15

    goto :goto_4

    .line 1381
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_e

    const/16 v22, 0x0

    cmpl-float v22, p2, v22

    if-lez v22, :cond_e

    .line 1386
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1387
    const v22, 0x3dcccccd    # 0.1f

    sget-object v23, Lcom/android/launcher2/Workspace;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v23

    mul-float v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v23

    div-float v22, v22, v23

    sub-float v21, v15, v22

    .line 1389
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 1390
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 1391
    const/high16 v12, 0x3f800000    # 1.0f

    goto/16 :goto_5

    .line 1393
    :cond_e
    int-to-float v0, v10

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1394
    int-to-float v0, v11

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    goto/16 :goto_5
.end method

.method public changeOrientationExtras()V
    .locals 5

    .prologue
    .line 4434
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4436
    .local v0, "r":Landroid/content/res/Resources;
    const v2, 0x7f0c0021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mCellCountX:I

    .line 4437
    const v2, 0x7f0c0022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mCellCountY:I

    .line 4438
    const v2, 0x7f0e00da

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    .line 4439
    iget v2, p0, Lcom/android/launcher2/Workspace;->mCellCountX:I

    iget v3, p0, Lcom/android/launcher2/Workspace;->mCellCountY:I

    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    .line 4441
    const v2, 0x7f0e00e1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    .line 4442
    const v2, 0x7f0e00e7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_left_Adjust:I

    .line 4443
    const v2, 0x7f0e00e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_top_Adjust:I

    .line 4445
    const v2, 0x7f0c0004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    .line 4449
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->loadLayoutParameters()V

    .line 4451
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 4452
    .local v1, "size":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4453
    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    .line 4454
    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    .line 4455
    iget v2, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v4, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-direct {p0, v3, v4}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    .line 4457
    return-void
.end method

.method changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V
    .locals 28
    .param p1, "state"    # Lcom/android/launcher2/Workspace$State;
    .param p2, "animated"    # Z
    .param p3, "delay"    # I
    .param p4, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 2149
    sget-boolean v3, Lcom/android/launcher2/Workspace;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "Launcher.Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", animated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", delay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/Workspace;->mFirstLayout:Z

    if-eqz v3, :cond_1

    .line 2151
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 2152
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

    .line 2475
    :goto_0
    return-void

    .line 2156
    :cond_1
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2157
    const/16 p2, 0x0

    .line 2159
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    .line 2160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2164
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setCurrentPageIfNotSnapping(I)V

    .line 2165
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_4

    .line 2166
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->setTransitionEffectBasedOnState(Lcom/android/launcher2/Workspace$State;)V

    .line 2168
    :cond_4
    const/high16 v18, 0x3f800000    # 1.0f

    .line 2169
    .local v18, "finalScaleFactor":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 2170
    .local v4, "oldState":Lcom/android/launcher2/Workspace$State;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_5

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/Workspace;->mOldState:Lcom/android/launcher2/Workspace$State;

    .line 2171
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 2173
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/CellLayout;

    .line 2174
    .local v16, "cl":Lcom/android/launcher2/CellLayout;
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_f

    .line 2175
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    move/from16 v18, v0

    .line 2177
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    .line 2197
    sget-boolean v3, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v3, :cond_6

    .line 2198
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v3

    sget-object v5, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    .line 2212
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v19

    .line 2214
    .local v19, "hotseat":Lcom/android/launcher2/Hotseat;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomeEditTitleBar()Landroid/view/ViewGroup;

    move-result-object v10

    .line 2215
    .local v10, "HomeEditTitleBar":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomeAppsBtn()Landroid/view/View;

    move-result-object v8

    .line 2216
    .local v8, "HomeAppsBtn":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomeEditBtn()Landroid/view/View;

    move-result-object v9

    .line 2217
    .local v9, "HomeEditBtn":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomePhoneBtn()Landroid/view/View;

    move-result-object v11

    .line 2219
    .local v11, "HomePhoneBtn":Landroid/view/View;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    .line 2221
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2223
    .local v7, "mainAnimators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_12

    .line 2230
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_9

    .line 2231
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 2234
    if-eqz v19, :cond_7

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Hotseat;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_7

    .line 2235
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    if-eqz v3, :cond_7

    .line 2236
    const/16 v3, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 2240
    :cond_7
    if-eqz v10, :cond_8

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_8

    .line 2241
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0e0016

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v22, v0

    .line 2243
    .local v22, "titleBarHeight":F
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x0

    aput v27, v25, v26

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    fill-array-data v25, :array_0

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v10, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 2246
    .local v12, "a":Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/launcher2/Workspace$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10}, Lcom/android/launcher2/Workspace$13;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v12, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2252
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2254
    const/4 v3, 0x2

    sget-object v5, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v3, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2258
    .end local v12    # "a":Landroid/animation/ObjectAnimator;
    .end local v22    # "titleBarHeight":F
    :cond_8
    if-eqz v10, :cond_9

    if-eqz p4, :cond_9

    .line 2259
    const/4 v3, 0x2

    sget-object v5, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v3, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2260
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v27

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    fill-array-data v25, :array_1

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v10, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 2263
    .restart local v12    # "a":Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/launcher2/Workspace$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10}, Lcom/android/launcher2/Workspace$14;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v12, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2270
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v12, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2272
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2277
    .end local v12    # "a":Landroid/animation/ObjectAnimator;
    :cond_9
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_b

    .line 2278
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getTopBar()Landroid/view/View;

    move-result-object v23

    .line 2279
    .local v23, "v":Landroid/view/View;
    if-eqz v23, :cond_b

    .line 2280
    if-eqz p2, :cond_11

    .line 2281
    const/4 v3, 0x2

    sget-object v5, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2282
    const-string v3, "alpha"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/16 v25, 0x0

    aput v25, v5, v6

    move-object/from16 v0, v23

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 2283
    .restart local v12    # "a":Landroid/animation/ObjectAnimator;
    const-wide/16 v26, 0xdc

    move-wide/from16 v0, v26

    invoke-virtual {v12, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2284
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2386
    .end local v12    # "a":Landroid/animation/ObjectAnimator;
    .end local v23    # "v":Landroid/view/View;
    :cond_b
    :goto_2
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_c

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1a

    .line 2387
    :cond_c
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_19

    .line 2388
    if-nez p4, :cond_d

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_18

    .line 2389
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    invoke-virtual {v3}, Lcom/android/launcher2/PageIndicatorPreviewManager;->startEditMode()V

    .line 2396
    :goto_3
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->hideHomeBottomBar()V

    .line 2399
    :cond_e
    const v3, 0x7f05001c

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/Workspace;->loadAnimationOnThis(I)Landroid/animation/Animator;

    move-result-object v13

    .line 2400
    .local v13, "anim":Landroid/animation/Animator;
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2401
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_1e

    .line 2402
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f05001e

    invoke-static {v3, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v14

    .line 2404
    .local v14, "animator":Landroid/animation/Animator;
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 2405
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2401
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 2200
    .end local v7    # "mainAnimators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v8    # "HomeAppsBtn":Landroid/view/View;
    .end local v9    # "HomeEditBtn":Landroid/view/View;
    .end local v10    # "HomeEditTitleBar":Landroid/view/ViewGroup;
    .end local v11    # "HomePhoneBtn":Landroid/view/View;
    .end local v13    # "anim":Landroid/animation/Animator;
    .end local v14    # "animator":Landroid/animation/Animator;
    .end local v19    # "hotseat":Lcom/android/launcher2/Hotseat;
    .end local v20    # "i":I
    :cond_f
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    .line 2203
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->isGoogleSearchWidget(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2204
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    .line 2209
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v3

    sget-object v5, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    goto/16 :goto_1

    .line 2206
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    goto :goto_5

    .line 2286
    .restart local v7    # "mainAnimators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v8    # "HomeAppsBtn":Landroid/view/View;
    .restart local v9    # "HomeEditBtn":Landroid/view/View;
    .restart local v10    # "HomeEditTitleBar":Landroid/view/ViewGroup;
    .restart local v11    # "HomePhoneBtn":Landroid/view/View;
    .restart local v19    # "hotseat":Lcom/android/launcher2/Hotseat;
    .restart local v23    # "v":Landroid/view/View;
    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_2

    .line 2290
    .end local v23    # "v":Landroid/view/View;
    :cond_12
    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_13

    .line 2295
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_b

    .line 2298
    if-eqz v10, :cond_b

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_b

    .line 2299
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0e0016

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v22, v0

    .line 2301
    .restart local v22    # "titleBarHeight":F
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x0

    aput v27, v25, v26

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    fill-array-data v25, :array_2

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v10, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 2304
    .restart local v12    # "a":Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/launcher2/Workspace$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10}, Lcom/android/launcher2/Workspace$15;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v12, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2310
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2312
    const/4 v3, 0x2

    sget-object v5, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v3, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 2323
    .end local v12    # "a":Landroid/animation/ObjectAnimator;
    .end local v22    # "titleBarHeight":F
    :cond_13
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_15

    .line 2324
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_15

    .line 2325
    if-eqz v19, :cond_14

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-nez v3, :cond_14

    .line 2326
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 2329
    :cond_14
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 2330
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 2332
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 2334
    if-eqz v10, :cond_15

    .line 2335
    const/4 v3, 0x2

    sget-object v5, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v3, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2336
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getHeight()I

    move-result v27

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    fill-array-data v25, :array_3

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v10, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 2339
    .restart local v12    # "a":Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/launcher2/Workspace$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10}, Lcom/android/launcher2/Workspace$16;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v12, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2346
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v12, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2347
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2352
    .end local v12    # "a":Landroid/animation/ObjectAnimator;
    :cond_15
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-nez v3, :cond_16

    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_17

    .line 2353
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getTopBar()Landroid/view/View;

    move-result-object v23

    .line 2354
    .restart local v23    # "v":Landroid/view/View;
    if-eqz v23, :cond_b

    .line 2355
    const-string v3, "alpha"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    aput v25, v5, v6

    move-object/from16 v0, v23

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 2356
    .restart local v12    # "a":Landroid/animation/ObjectAnimator;
    const-wide/16 v26, 0xdc

    move-wide/from16 v0, v26

    invoke-virtual {v12, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2357
    new-instance v3, Lcom/android/launcher2/Workspace$17;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v3, v0, v1}, Lcom/android/launcher2/Workspace$17;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/View;)V

    invoke-virtual {v12, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2372
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2375
    .end local v12    # "a":Landroid/animation/ObjectAnimator;
    .end local v23    # "v":Landroid/view/View;
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    goto/16 :goto_2

    .line 2391
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    invoke-virtual {v3}, Lcom/android/launcher2/PageIndicatorPreviewManager;->endEditMode()V

    goto/16 :goto_3

    .line 2394
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    invoke-virtual {v3}, Lcom/android/launcher2/PageIndicatorPreviewManager;->startEditMode()V

    goto/16 :goto_3

    .line 2407
    :cond_1a
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v3, :cond_1b

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_1e

    :cond_1b
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1e

    .line 2409
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/CellLayout;

    .line 2410
    .local v15, "cellLayout":Lcom/android/launcher2/CellLayout;
    if-eqz v15, :cond_1c

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_1c

    .line 2411
    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->reset()V

    .line 2414
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    invoke-virtual {v3}, Lcom/android/launcher2/PageIndicatorPreviewManager;->endEditMode()V

    .line 2416
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->showHomeBottomBar()V

    .line 2419
    :cond_1d
    const v3, 0x7f05001d

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/Workspace;->loadAnimationOnThis(I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2420
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_1e

    .line 2421
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f05001f

    invoke-static {v3, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v14

    .line 2423
    .restart local v14    # "animator":Landroid/animation/Animator;
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 2424
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2420
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 2428
    .end local v14    # "animator":Landroid/animation/Animator;
    .end local v15    # "cellLayout":Lcom/android/launcher2/CellLayout;
    .end local v20    # "i":I
    :cond_1e
    if-eqz v9, :cond_1f

    .line 2429
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_24

    .line 2430
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2435
    :cond_1f
    :goto_7
    if-eqz v8, :cond_20

    .line 2436
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_25

    .line 2437
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2442
    :cond_20
    :goto_8
    if-eqz v11, :cond_21

    .line 2443
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_26

    .line 2444
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2449
    :cond_21
    :goto_9
    if-eqz p2, :cond_27

    sget v17, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    .line 2451
    .local v17, "duration":I
    :goto_a
    sget-object v3, Lcom/android/launcher2/Workspace;->PAGE_ZOOM:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v18, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    .line 2452
    .local v24, "zoomAnim":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2453
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_22
    :goto_b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Workspace$StateAnimatorProvider;

    .line 2456
    .local v2, "provider":Lcom/android/launcher2/Workspace$StateAnimatorProvider;
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_28

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_28

    if-nez p4, :cond_28

    .line 2459
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v3, :cond_23

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_22

    :cond_23
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_22

    .line 2460
    sget-object v5, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v3, p0

    move-object/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/launcher2/Workspace$StateAnimatorProvider;->collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V

    goto :goto_b

    .line 2432
    .end local v2    # "provider":Lcom/android/launcher2/Workspace$StateAnimatorProvider;
    .end local v17    # "duration":I
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v24    # "zoomAnim":Landroid/animation/ObjectAnimator;
    :cond_24
    const/4 v3, 0x4

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 2439
    :cond_25
    const/4 v3, 0x4

    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 2446
    :cond_26
    const/4 v3, 0x4

    invoke-virtual {v11, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 2449
    :cond_27
    const/16 v17, 0x0

    goto :goto_a

    .restart local v2    # "provider":Lcom/android/launcher2/Workspace$StateAnimatorProvider;
    .restart local v17    # "duration":I
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v24    # "zoomAnim":Landroid/animation/ObjectAnimator;
    :cond_28
    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    .line 2463
    invoke-interface/range {v2 .. v7}, Lcom/android/launcher2/Workspace$StateAnimatorProvider;->collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V

    goto :goto_b

    .line 2466
    .end local v2    # "provider":Lcom/android/launcher2/Workspace$StateAnimatorProvider;
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 2473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 2243
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2260
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 2301
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2336
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public closeFolder()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3373
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 3374
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->disableChildBadges()V

    .line 3375
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    iget-object v0, v0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_1

    .line 3376
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/Folder;->close(ZZ)V

    .line 3379
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    .line 3381
    :cond_0
    return-void

    .line 3378
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0, v2, v2}, Lcom/android/launcher2/Folder;->close(ZZ)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 1210
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->computeScroll()V

    .line 1211
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-nez v0, :cond_0

    .line 1212
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->syncWallpaperOffsetWithScroll()V

    .line 1214
    :cond_0
    return-void
.end method

.method createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "padding"    # I

    .prologue
    .line 2630
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 2632
    .local v5, "outlineColor":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2633
    .local v6, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2634
    .local v3, "height":I
    instance-of v7, p1, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    move-object v4, p1

    .line 2635
    check-cast v4, Landroid/widget/ImageView;

    .line 2636
    .local v4, "image":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-virtual {v7}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2637
    .local v2, "dragOutline":Landroid/graphics/Bitmap;
    int-to-float v7, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 2638
    .local v1, "d":F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-int v6, v7

    .line 2639
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-int v3, v7

    .line 2642
    .end local v1    # "d":F
    .end local v2    # "dragOutline":Landroid/graphics/Bitmap;
    .end local v4    # "image":Landroid/widget/ImageView;
    :cond_0
    add-int v7, v6, p3

    add-int v8, v3, p3

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2645
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2646
    const/4 v7, 0x1

    invoke-static {p1, p2, p3, v7}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 2647
    sget-object v7, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v7, v0, p2, v5, v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 2648
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2649
    return-object v0
.end method

.method public createPageForDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4253
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_1

    .line 4289
    :cond_0
    :goto_0
    return-void

    .line 4273
    :cond_1
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v0, :cond_3

    .line 4274
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v0, :cond_0

    .line 4275
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    .line 4277
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    if-lt v0, v1, :cond_2

    .line 4278
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 4280
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->insertPlusPage(Z)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    goto :goto_0

    .line 4285
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v0, :cond_0

    .line 4286
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    .line 4287
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->insertPlusPage(Z)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    goto :goto_0
.end method

.method createWidgetPreviewDragOutline(IILandroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "padding"    # I

    .prologue
    const/4 v2, 0x0

    .line 2680
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/CellLayout;->spanToPixel(II)[I

    move-result-object v0

    .line 2681
    .local v0, "size":[I
    aget v1, v0, v2

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-static {v1, v2}, Lcom/android/launcher2/Outliner;->boxOutline(II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method createWidgetPreviewDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "padding"    # I

    .prologue
    .line 2676
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 2677
    .local v0, "item":Lcom/android/launcher2/BaseItem;
    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v2

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/launcher2/Workspace;->createWidgetPreviewDragOutline(IILandroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const v8, 0x3f060a92

    .line 721
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v4, :cond_2

    .line 722
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 723
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 725
    .local v1, "deltaY":F
    float-to-double v4, v1

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v3, v4

    .line 727
    .local v3, "theta":F
    iget v4, p0, Lcom/android/launcher2/Workspace;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/Workspace;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    .line 728
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    .line 731
    :cond_1
    const v4, 0x3f860a92

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    iget v4, p0, Lcom/android/launcher2/Workspace;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_3

    .line 748
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v3    # "theta":F
    :cond_2
    :goto_0
    return-void

    .line 734
    .restart local v0    # "deltaX":F
    .restart local v1    # "deltaY":F
    .restart local v3    # "theta":F
    :cond_3
    cmpl-float v4, v3, v8

    if-lez v4, :cond_4

    .line 739
    sub-float/2addr v3, v8

    .line 740
    div-float v4, v3, v8

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 742
    .local v2, "extraRatio":F
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-super {p0, p1, v4}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_0

    .line 745
    .end local v2    # "extraRatio":F
    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public dismissMagazineCling()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4595
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 4596
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 4597
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHelpStartNow:[Landroid/graphics/drawable/AnimationDrawable;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 4598
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->m_cling:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->m_cling:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4599
    :cond_3
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 4240
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4249
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0

    .line 4242
    :pswitch_0
    new-instance v0, Lcom/android/launcher2/Workspace$23;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Workspace$23;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4240
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1698
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1700
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->screenScrolled(I)V

    .line 1702
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1703
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mHideItems:Z

    if-eqz v0, :cond_1

    .line 1707
    :goto_0
    return-void

    .line 1706
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->onDrawComplete(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    .line 571
    const/4 v0, 0x0

    .line 573
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public enterSurfaceWidgetResizeMode(Lcom/android/launcher2/SurfaceWidgetView;Lcom/android/launcher2/CellLayout;)V
    .locals 5
    .param p1, "surfaceWidgetView"    # Lcom/android/launcher2/SurfaceWidgetView;
    .param p2, "layout"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 1944
    instance-of v2, p2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/SurfaceWidgetView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/SurfaceWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-nez v2, :cond_1

    .line 1998
    .end local v0    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    :goto_0
    return-void

    .line 1952
    .restart local v0    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    const-string v2, "Launcher.Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterSurfaceWidgetResizeMode state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    new-instance v1, Lcom/android/launcher2/Workspace$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher2/Workspace$9;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/SurfaceWidgetView;)V

    .line 1981
    .local v1, "resizeRunnable":Ljava/lang/Runnable;
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 1982
    new-instance v2, Lcom/android/launcher2/Workspace$10;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher2/Workspace$10;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1996
    const-string v2, "Launcher.Workspace"

    const-string v3, "enterSurfaceWidgetResizeMode switching to resize mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    sget-object v2, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v2}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto :goto_0
.end method

.method public enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V
    .locals 9
    .param p1, "hostView"    # Lcom/android/launcher2/LauncherAppWidgetHostView;
    .param p2, "layout"    # Lcom/android/launcher2/CellLayout;

    .prologue
    const/4 v8, 0x0

    .line 2001
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_2

    .line 2002
    const-string v6, "add_widgets"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2085
    :cond_0
    :goto_0
    return-void

    .line 2005
    :cond_1
    const-string v6, "resize_widgets"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2006
    sput-boolean v8, Lcom/android/launcher2/Workspace;->widgetSizeChanged:Z

    .line 2009
    :cond_2
    instance-of v6, p2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-ne v6, p0, :cond_0

    .line 2010
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v7, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v6, v7, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 2011
    new-instance v5, Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/launcher2/WidgetSizes;-><init>(Landroid/content/Context;)V

    .line 2012
    .local v5, "sizes":Lcom/android/launcher2/WidgetSizes;
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_3

    .line 2013
    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v7, "resize_widgets"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2014
    const/4 v3, 0x0

    .line 2015
    .local v3, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v3, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    .end local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v6}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    .line 2016
    .restart local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v3, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    .end local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v3}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->showHelpDialog_step2()V

    .line 2019
    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/WidgetSizes;->load(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 2020
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2021
    .local v1, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v6, 0x4

    new-array v2, v6, [I

    .line 2022
    .local v2, "mExpandability":[I
    invoke-virtual {p2, p1, v2}, Lcom/android/launcher2/CellLayout;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    .line 2023
    aget v6, v2, v8

    if-nez v6, :cond_4

    const/4 v6, 0x2

    aget v6, v2, v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v6

    iget v7, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v6, v7, :cond_4

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    iget v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 2029
    :cond_4
    invoke-virtual {v5}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v6

    if-eqz v6, :cond_0

    .line 2030
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeWidgetItem;

    .line 2031
    .local v0, "homeItem":Lcom/android/launcher2/HomeWidgetItem;
    new-instance v4, Lcom/android/launcher2/Workspace$11;

    invoke-direct {v4, p0, p2, p1, v0}, Lcom/android/launcher2/Workspace$11;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/HomeWidgetItem;)V

    .line 2061
    .local v4, "resizeRunnable":Ljava/lang/Runnable;
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 2062
    new-instance v6, Lcom/android/launcher2/Workspace$12;

    invoke-direct {v6, p0, v4, v0}, Lcom/android/launcher2/Workspace$12;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 2082
    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mExitResizeDueToNewDrag:Z

    .line 2083
    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v6}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto/16 :goto_0
.end method

.method public exitWidgetResizeMode()V
    .locals 1

    .prologue
    .line 2088
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode(Z)V

    .line 2089
    return-void
.end method

.method public exitWidgetResizeMode(Z)V
    .locals 8
    .param p1, "newDragStarted"    # Z

    .prologue
    .line 2094
    const/4 v2, 0x0

    .line 2095
    .local v2, "isClearResizeFrame":Z
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mExitResizeDueToNewDrag:Z

    .line 2096
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2097
    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exitWidgetResizeMode State: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newDragStarted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v5, v6, :cond_2

    .line 2130
    :cond_1
    :goto_0
    return-void

    .line 2100
    :cond_2
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-boolean v5, v5, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    if-nez v5, :cond_1

    .line 2102
    :cond_3
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsHelpOrientationChanged:Z

    if-nez v5, :cond_4

    .line 2104
    sget-object v5, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v6, "resize_widgets"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2106
    const/4 v4, 0x0

    .line 2107
    .local v4, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v4, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    .end local v4    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-direct {v4, v5}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    .line 2108
    .restart local v4    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v4, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    .end local v4    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v4}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->dismissHelpDialog()V

    .line 2111
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 2112
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 2113
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 2114
    .local v3, "l":Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 2115
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->clearResizeFrame()V

    .line 2116
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->commitDeltas()V

    .line 2117
    const/4 v2, 0x1

    .line 2112
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2120
    .end local v3    # "l":Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    :cond_6
    if-nez v2, :cond_7

    .line 2121
    const-string v5, "Launcher.Workspace"

    const-string v6, "exitWidgetResizeMode. isClearResizeFrame is false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v6, :cond_8

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2124
    sget-object v5, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v5}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    .line 2129
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->refreshHotseat()V

    goto :goto_0

    .line 2126
    :cond_8
    sget-object v5, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v5}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto :goto_2
.end method

.method public getBackgroundDarken()F
    .locals 1

    .prologue
    .line 1235
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    return v0
.end method

.method public getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;
    .locals 1

    .prologue
    .line 4292
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3178
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10006e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 315
    if-eqz p1, :cond_3

    .line 316
    instance-of v0, p1, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/SamsungWidgetItem;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v0, :cond_2

    .line 321
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->createWidgetPreviewDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 332
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    return-object v0

    .line 324
    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 328
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Workspace;->createExternalDragOutline(Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getEditModeShrinkFactor()F
    .locals 1

    .prologue
    .line 4235
    iget v0, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 2723
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v1, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2724
    return-void
.end method

.method protected getHorizontalVisibilityExtension()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1612
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    .line 1613
    .local v0, "fsf":Lcom/android/launcher2/ScalarAnimator;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1615
    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v2

    iget v3, p0, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1617
    :cond_0
    return v1
.end method

.method public getHorizontalWallpaperOffset()F
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v0

    return v0
.end method

.method public getIsDragOccuring()Z
    .locals 1

    .prologue
    .line 3685
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    return v0
.end method

.method getOpenFolder()Lcom/android/launcher2/Folder;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method public getPageIndicatorManager(Lcom/android/launcher2/PagedView;III)Lcom/android/launcher2/PageIndicatorManager;
    .locals 1
    .param p1, "pagedView"    # Lcom/android/launcher2/PagedView;
    .param p2, "pageIndicatorTop"    # I
    .param p3, "pageIndicatorGap"    # I
    .param p4, "pageIndicatorMaxVisible"    # I

    .prologue
    .line 4214
    new-instance v0, Lcom/android/launcher2/PageIndicatorPreviewManager;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/launcher2/PageIndicatorPreviewManager;-><init>(Lcom/android/launcher2/PagedView;III)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    .line 4216
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    return-object v0
.end method

.method public getPendingSnapToPage()I
    .locals 1

    .prologue
    .line 1082
    iget v0, p0, Lcom/android/launcher2/Workspace;->mPendingSnapToPageIndex:I

    return v0
.end method

.method protected getScrollMode()I
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x1

    return v0
.end method

.method protected getScrollZoneLeftWidth()I
    .locals 2

    .prologue
    .line 2774
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getScrollZoneRightWidth()I
    .locals 2

    .prologue
    .line 2779
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/launcher2/Workspace$State;
    .locals 1

    .prologue
    .line 2140
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method protected getUnEncumberedPagedViewBounds(Landroid/graphics/Rect;)Z
    .locals 10
    .param p1, "aRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x1

    .line 1710
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1711
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1712
    .local v1, "config":Landroid/content/res/Configuration;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    .line 1713
    .local v2, "hs":Lcom/android/launcher2/Hotseat;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->isShown()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1714
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_0

    .line 1715
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 1717
    :cond_0
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1718
    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 1721
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getEditBar()Lcom/android/launcher2/HomeEditBar;

    move-result-object v0

    .line 1722
    .local v0, "bar":Lcom/android/launcher2/HomeEditBar;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/HomeEditBar;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1723
    invoke-virtual {v0}, Lcom/android/launcher2/HomeEditBar;->getBarPosition()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1734
    :cond_2
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v3

    .line 1735
    .local v3, "ql":Lcom/android/launcher2/QuickLaunch;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1736
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_3

    .line 1737
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3}, Lcom/android/launcher2/QuickLaunch;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 1743
    :cond_3
    return v9

    .line 1725
    .end local v3    # "ql":Lcom/android/launcher2/QuickLaunch;
    :pswitch_1
    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/android/launcher2/HomeEditBar;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 1730
    :pswitch_2
    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/android/launcher2/HomeEditBar;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 1723
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getVerticalWallpaperOffset()F
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v0

    return v0
.end method

.method public getWidgetRotateSkipList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4381
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWidgetSkipList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public insertPlusPage(Z)Lcom/android/launcher2/CellLayout;
    .locals 4
    .param p1, "isSecretPage"    # Z

    .prologue
    .line 4074
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030059

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 4075
    .local v0, "cell":Lcom/android/launcher2/CellLayout;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4076
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/Workspace;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 4078
    if-eqz p1, :cond_0

    .line 4079
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setPageType(I)V

    .line 4080
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->saveSecretScreenInfo()V

    .line 4082
    :cond_0
    return-object v0
.end method

.method public insertWorkspaceFestivalScreen(IIZ)Lcom/android/launcher2/CellLayout;
    .locals 12
    .param p1, "insertAt"    # I
    .param p2, "festivalKey"    # I
    .param p3, "isDBupdate"    # Z

    .prologue
    const/4 v11, -0x1

    .line 4156
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 4157
    .local v3, "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getFestivalPageManager()Lcom/android/launcher2/FestivalPageManager;

    move-result-object v2

    .line 4158
    .local v2, "fpMgr":Lcom/android/launcher2/FestivalPageManager;
    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f03005a

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 4159
    .local v0, "cell":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4160
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/android/launcher2/CellLayout;->setPageType(I)V

    .line 4162
    const-string v8, "Launcher.Workspace"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insertWorkspaceFestivalScreen() insertAt :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4164
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 4165
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v5, :cond_0

    .line 4166
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v5, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4171
    .restart local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {v2, v0, p2}, Lcom/android/launcher2/FestivalPageManager;->drawFestivalPageTitle(Lcom/android/launcher2/CellLayout;I)Z

    .line 4173
    invoke-virtual {p0, v0, p1, v5}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4174
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    .line 4175
    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->saveFestivalScreenInfo()V

    .line 4177
    if-eqz p3, :cond_2

    .line 4178
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4179
    .local v7, "updatedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    .line 4180
    .local v6, "totalScreens":I
    add-int/lit8 v4, p1, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 4181
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 4182
    .local v1, "clc":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v1, v4, v7}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    .line 4180
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4184
    .end local v1    # "clc":Lcom/android/launcher2/CellLayoutChildren;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 4186
    .end local v4    # "i":I
    .end local v6    # "totalScreens":I
    .end local v7    # "updatedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    :cond_2
    return-object v0
.end method

.method public insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;
    .locals 12
    .param p1, "insertAt"    # I
    .param p2, "showEmptyMessage"    # Z

    .prologue
    const/4 v11, -0x1

    .line 4037
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 4040
    .local v3, "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030059

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 4041
    .local v0, "cell":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4042
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 4043
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v5, :cond_0

    .line 4044
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v5, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4047
    .restart local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p0, v0, p1, v5}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4048
    if-nez p2, :cond_1

    .line 4049
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 4051
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    .line 4052
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v2

    .line 4053
    .local v2, "homePageIndex":I
    if-gt p1, v2, :cond_2

    .line 4054
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/HomeView;->setHomeScreenAt(I)V

    .line 4056
    :cond_2
    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    .line 4059
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4061
    .local v7, "updatedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    .line 4062
    .local v6, "totalScreens":I
    add-int/lit8 v4, p1, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 4063
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 4064
    .local v1, "clc":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v1, v4, v7}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    .line 4062
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4067
    .end local v1    # "clc":Lcom/android/launcher2/CellLayoutChildren;
    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 4068
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 4070
    :cond_4
    return-object v0
.end method

.method public insertWorkspaceSecretScreen(IZZ)Lcom/android/launcher2/CellLayout;
    .locals 11
    .param p1, "insertAt"    # I
    .param p2, "showEmptyMessage"    # Z
    .param p3, "isDBupdate"    # Z

    .prologue
    const/4 v10, -0x1

    .line 4122
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 4124
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030059

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 4125
    .local v0, "cell":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4126
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayout;->setPageType(I)V

    .line 4128
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 4129
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v4, :cond_0

    .line 4130
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v4, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4133
    .restart local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p0, v0, p1, v4}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4134
    if-nez p2, :cond_1

    .line 4135
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 4137
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    .line 4139
    if-eqz p3, :cond_3

    .line 4140
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->saveSecretScreenInfo()V

    .line 4142
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4144
    .local v6, "updatedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    .line 4145
    .local v5, "totalScreens":I
    add-int/lit8 v3, p1, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 4146
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 4147
    .local v1, "clc":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v1, v3, v6}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    .line 4145
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4149
    .end local v1    # "clc":Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 4151
    .end local v3    # "i":I
    .end local v5    # "totalScreens":I
    .end local v6    # "updatedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    :cond_3
    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 398
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    .line 399
    .local v0, "qvw":Lcom/android/launcher2/QuickViewWorkspace;
    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 400
    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 402
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v1

    return-object v1
.end method

.method protected invalidatePageData()V
    .locals 1

    .prologue
    .line 4227
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->invalidatePageData()V

    .line 4228
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 4229
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setDirtyFlags()V

    .line 4230
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->updatePageTransforms()V

    .line 4232
    :cond_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderOpened()Z
    .locals 2

    .prologue
    .line 529
    const/4 v0, 0x0

    .line 531
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    .line 536
    :cond_0
    return v0
.end method

.method public isGoogleSearchWidget(I)Z
    .locals 9
    .param p1, "currentPage"    # I

    .prologue
    const/4 v6, 0x0

    .line 2488
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2489
    .local v0, "cellLayout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 2490
    .local v1, "cl":Lcom/android/launcher2/CellLayoutChildren;
    if-nez v1, :cond_1

    .line 2502
    :cond_0
    :goto_0
    return v6

    .line 2492
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 2493
    .local v3, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 2494
    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2495
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2496
    .local v4, "tag":Ljava/lang/Object;
    instance-of v7, v4, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v7, :cond_2

    .line 2497
    check-cast v4, Lcom/android/launcher2/HomeWidgetItem;

    .end local v4    # "tag":Ljava/lang/Object;
    invoke-virtual {v4}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/Workspace;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2498
    const/4 v6, 0x1

    goto :goto_0

    .line 2493
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isInResizeMode()Z
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLoopingEnabled()Z
    .locals 1

    .prologue
    .line 1254
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPageAddedForDrag(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 4306
    const/4 v1, 0x0

    .line 4307
    .local v1, "result":Z
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 4308
    .local v0, "cellLayout":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    if-ne v0, v2, :cond_0

    .line 4309
    const/4 v1, 0x1

    .line 4311
    :cond_0
    return v1
.end method

.method public isQuickViewWorkspaceOpend()Z
    .locals 1

    .prologue
    .line 4498
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4499
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    .line 4501
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartDragStarted()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    return v0
.end method

.method public isSwitchingState()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method public isTouchResizeFrame(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 618
    .local v0, "cl":Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->isPointInFrame(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 621
    .local v1, "frame":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 623
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 624
    const/4 v2, 0x1

    .line 628
    .end local v1    # "frame":Landroid/graphics/Rect;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Landroid/view/View;
    .param p4, "outLocalPoint"    # Landroid/graphics/PointF;

    .prologue
    .line 3638
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v4, :cond_1

    instance-of v3, p3, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v3, :cond_1

    move-object v2, p3

    .line 3639
    check-cast v2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 3640
    .local v2, "page":Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    iget v3, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 3641
    .local v0, "localX":F
    iget v3, p0, Lcom/android/launcher2/Workspace;->mScrollY:I

    int-to-float v3, v3

    add-float/2addr v3, p2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 3642
    .local v1, "localY":F
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->isPointInRegion(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3643
    if-eqz p4, :cond_0

    .line 3644
    invoke-virtual {p4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 3646
    :cond_0
    const/4 v3, 0x1

    .line 3649
    .end local v0    # "localX":F
    .end local v1    # "localY":F
    .end local v2    # "page":Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    :goto_0
    return v3

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher2/SmoothPagedView;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v3

    goto :goto_0
.end method

.method launchAllAppsIcon()V
    .locals 2

    .prologue
    .line 3566
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_0

    .line 3568
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getAllAppsIcon()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->onClickAllAppsButton(Landroid/view/View;)V

    .line 3570
    :cond_0
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "xy"    # [F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2712
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 2713
    .local v0, "cachedInverseMatrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2714
    aget v1, p2, v3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v3

    .line 2715
    aget v1, p2, v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v4

    .line 2716
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2717
    return-void
.end method

.method moveToDefaultScreen(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 3125
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v0

    .line 3126
    .local v0, "homeScreenIndex":I
    if-eqz p1, :cond_1

    .line 3127
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 3131
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3132
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 3133
    :cond_0
    return-void

    .line 3129
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method moveToLeftScreen(ZZ)V
    .locals 6
    .param p1, "left"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 3136
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    .line 3137
    .local v2, "homeScreenIndex":I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v3

    .line 3138
    .local v3, "maxScreenIndex":I
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 3159
    :goto_0
    return-void

    .line 3142
    :cond_0
    if-eqz p1, :cond_2

    .line 3143
    add-int/lit8 v5, v2, -0x1

    if-ltz v5, :cond_1

    add-int/lit8 v4, v2, -0x1

    .line 3147
    .local v4, "toPage_right":I
    :goto_1
    if-eqz p2, :cond_5

    .line 3149
    if-eqz p1, :cond_4

    const/4 v0, 0x2

    .line 3150
    .local v0, "dir":I
    :goto_2
    iget v5, p0, Lcom/android/launcher2/Workspace;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v4, v5, v0}, Lcom/android/launcher2/Workspace;->snapToPage(III)V

    .line 3155
    .end local v0    # "dir":I
    :goto_3
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3156
    :catch_0
    move-exception v1

    .line 3157
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3143
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "toPage_right":I
    :cond_1
    add-int/lit8 v4, v3, -0x1

    goto :goto_1

    .line 3145
    :cond_2
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v3, :cond_3

    add-int/lit8 v4, v2, 0x1

    .restart local v4    # "toPage_right":I
    :goto_4
    goto :goto_1

    .end local v4    # "toPage_right":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 3149
    .restart local v4    # "toPage_right":I
    :cond_4
    const/4 v0, 0x3

    goto :goto_2

    .line 3152
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_3
.end method

.method public newPage(Z)I
    .locals 6
    .param p1, "showEmptyMessage"    # Z

    .prologue
    .line 4016
    const/high16 v3, -0x80000000

    .line 4017
    .local v3, "insertAt":I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    .line 4018
    .local v2, "currentPage":I
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 4019
    .local v1, "cell":Lcom/android/launcher2/CellLayout;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    const/4 v0, 0x1

    .line 4021
    .local v0, "canCreatePage":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 4022
    add-int/lit8 v3, v2, 0x1

    .line 4023
    invoke-virtual {p0, v3, p1}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    .line 4025
    :cond_0
    return v3

    .line 4019
    .end local v0    # "canCreatePage":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1625
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onAttachedToWindow()V

    .line 1626
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1627
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->computeScroll()V

    .line 1628
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    .line 1629
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 3184
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 3185
    .local v3, "tag":Ljava/lang/Object;
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3227
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 3189
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->cancelClicksOnHome()V

    .line 3190
    instance-of v4, v3, Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 3191
    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 3192
    .local v1, "item":Lcom/android/launcher2/BaseItem;
    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_2

    .line 3193
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v4, :cond_0

    .line 3194
    check-cast v1, Lcom/android/launcher2/FolderItem;

    .end local v1    # "item":Lcom/android/launcher2/BaseItem;
    check-cast p1, Lcom/android/launcher2/FolderIconView;

    .end local p1    # "view":Landroid/view/View;
    invoke-direct {p0, v1, p1, v10}, Lcom/android/launcher2/Workspace;->handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    goto :goto_0

    .line 3196
    .restart local v1    # "item":Lcom/android/launcher2/BaseItem;
    .restart local p1    # "view":Landroid/view/View;
    :cond_2
    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v4, v5, :cond_3

    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_0

    .line 3202
    :cond_3
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_4

    .line 3203
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    move-object v4, v3

    .line 3207
    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v0, v4, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 3208
    .local v0, "intent":Landroid/content/Intent;
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 3209
    .local v2, "pos":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3210
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v2, v11

    aget v6, v2, v10

    aget v7, v2, v11

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v2, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 3212
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4, p1, v0, v3}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 3215
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3216
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v4, :cond_0

    .line 3217
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->disableChildBadges()V

    .line 3218
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, v10, v11}, Lcom/android/launcher2/Folder;->close(ZZ)V

    .line 3219
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 3803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsHelpOrientationChanged:Z

    .line 3804
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/Workspace;->mRequestedOrientation:I

    .line 3805
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->changeOrientationIfRequired(Landroid/content/res/Configuration;)Z

    .line 3807
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    .line 3808
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/guide/GuideFragment;->isWrongActionDialogVisible:Z

    if-nez v0, :cond_0

    .line 3809
    invoke-static {}, Lcom/android/launcher2/guide/GuideFragment;->getGuideFragmentInstance()Lcom/android/launcher2/guide/GuideFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Launcher;->sInComingIntentHelpHub:Landroid/content/Intent;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher2/guide/GuideFragment;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/app/Activity;Landroid/content/Intent;)V

    .line 3811
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1633
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onDetachedFromWindow()V

    .line 1634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1635
    return-void
.end method

.method public onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V
    .locals 5
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1906
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    .line 1907
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->disableRollNavigation()V

    .line 1908
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1909
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    if-nez v1, :cond_0

    .line 1937
    :goto_0
    return-void

    .line 1911
    :cond_0
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 1912
    sget-object v1, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 1913
    const/4 v0, 0x0

    .line 1914
    .local v0, "state":Lcom/android/launcher2/Workspace$State;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v2, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_6

    .line 1915
    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_5

    .line 1916
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1917
    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    if-eqz v1, :cond_2

    .line 1918
    :cond_1
    sget-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    .line 1930
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/HomeView;->setCurrentDragItem(Lcom/android/launcher2/BaseItem;)V

    .line 1932
    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_3

    .line 1933
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    .line 1936
    :cond_3
    new-instance v1, Lcom/android/launcher2/Workspace$StateChangeRunnable;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/Workspace$StateChangeRunnable;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1921
    :cond_4
    sget-object v0, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    goto :goto_1

    .line 1925
    :cond_5
    sget-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    goto :goto_1

    .line 1926
    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v2, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_2

    .line 1927
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/Launcher;->exitAllappsAnimation(Z)V

    goto :goto_1
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 1834
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 1835
    :cond_0
    const-string v2, "Launcher.Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDragStartedWithItem ignored. mIsDragging: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", View: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    :goto_0
    return-void

    .line 1838
    :cond_1
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    .line 1840
    const-string v2, "Launcher.Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDragStartedWithItem. View: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_2

    .line 1842
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/HomeView;->setCurrentDragItem(Lcom/android/launcher2/BaseItem;)V

    .line 1844
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->createPageForDrag()V

    .line 1846
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_3

    .line 1847
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentDragItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 1849
    .local v1, "dragItem":Lcom/android/launcher2/BaseItem;
    instance-of v2, v1, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_5

    .line 1850
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1851
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    if-ne v2, v5, :cond_4

    sget-object v2, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->SECRET_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    .line 1861
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v1    # "dragItem":Lcom/android/launcher2/BaseItem;
    :cond_3
    :goto_2
    new-instance v2, Lcom/android/launcher2/Workspace$8;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/Workspace$8;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1879
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->enableRollNavigation()V

    .line 1880
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    goto :goto_0

    .line 1851
    .restart local v0    # "cl":Lcom/android/launcher2/CellLayout;
    .restart local v1    # "dragItem":Lcom/android/launcher2/BaseItem;
    :cond_4
    sget-object v2, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    goto :goto_1

    .line 1855
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v3

    iget-boolean v2, v1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->SECRET_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    :goto_3
    invoke-virtual {v3, v2}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    goto :goto_3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1690
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-nez v0, :cond_0

    .line 1691
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    .line 1693
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1694
    return-void
.end method

.method public onEnterScrollArea(III)Z
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "direction"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2785
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_1

    .line 2786
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v7

    .line 2852
    :cond_0
    :goto_0
    return v3

    .line 2790
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->onEnterScrollArea(III)Z

    .line 2792
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2793
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2794
    .local v2, "r":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 2795
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v7

    .line 2796
    goto :goto_0

    .line 2799
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2800
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2801
    .restart local v2    # "r":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher2/QuickLaunch;->getHitRect(Landroid/graphics/Rect;)V

    .line 2802
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v7

    .line 2803
    goto :goto_0

    .line 2807
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_3
    invoke-direct {p0, p3}, Lcom/android/launcher2/Workspace;->setScrollDirection(I)V

    .line 2809
    const/4 v3, 0x0

    .line 2810
    .local v3, "result":Z
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v4, :cond_0

    .line 2811
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v8

    if-nez p3, :cond_5

    move v4, v5

    :goto_1
    add-int v1, v8, v4

    .line 2812
    .local v1, "page":I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2813
    if-ne v1, v5, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 2816
    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2818
    .local v0, "layout":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    .line 2831
    sget-boolean v4, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v4, :cond_7

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v4, :cond_7

    .line 2832
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 2833
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelScrollRunnable()V

    move v3, v7

    .line 2834
    goto :goto_0

    .end local v0    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v1    # "page":I
    :cond_5
    move v4, v6

    .line 2811
    goto :goto_1

    .line 2814
    .restart local v1    # "page":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    if-ne v1, v4, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    .line 2839
    .restart local v0    # "layout":Lcom/android/launcher2/CellLayout;
    :cond_7
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v4, :cond_8

    .line 2840
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2842
    :cond_8
    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2843
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2847
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 2848
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 2849
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public onExitScrollArea()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2866
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onExitScrollArea()V

    .line 2867
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v1, :cond_1

    .line 2868
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_0

    .line 2870
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2872
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2873
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->onDragEnter()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2880
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 2882
    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 2884
    :cond_1
    return-void

    .line 2874
    :catch_0
    move-exception v0

    .line 2875
    .local v0, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method onFadeEnd()V
    .locals 3

    .prologue
    .line 3609
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 3610
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3611
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3612
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->destroyDummyPanel()V

    .line 3610
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3614
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method onFadeStart()V
    .locals 7

    .prologue
    .line 3590
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    .line 3591
    .local v0, "c":I
    add-int/lit8 v4, v0, -0x1

    .line 3592
    .local v4, "l":I
    add-int/lit8 v5, v0, 0x1

    .line 3593
    .local v5, "r":I
    if-gez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 3594
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v6

    if-lt v5, v6, :cond_1

    const/4 v5, 0x0

    .line 3596
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 3597
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 3598
    if-eq v3, v0, :cond_2

    if-eq v3, v4, :cond_2

    if-ne v3, v5, :cond_4

    .line 3599
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 3600
    .local v1, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->setupDummyPanel()V

    .line 3601
    if-eq v3, v0, :cond_4

    if-eq v3, v4, :cond_3

    if-ne v3, v5, :cond_4

    .line 3602
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    .line 3597
    .end local v1    # "cl":Lcom/android/launcher2/CellLayout;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3606
    :cond_5
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 634
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v6, :cond_1

    .line 635
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->isTouchResizeFrame(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 712
    :cond_0
    :goto_0
    return v3

    .line 637
    :cond_1
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mHideItems:Z

    if-eqz v4, :cond_2

    move v3, v5

    .line 638
    goto :goto_0

    .line 640
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 707
    :cond_3
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 708
    .local v3, "r":Z
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mOldState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v6, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 709
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setAllowLongPress(Z)V

    .line 710
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelLongPress()V

    goto :goto_0

    .line 643
    .end local v3    # "r":Z
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    .line 644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    .line 645
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    goto :goto_1

    .line 649
    :pswitch_2
    iget v4, p0, Lcom/android/launcher2/Workspace;->mTouchState:I

    if-nez v4, :cond_4

    .line 650
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v6

    if-le v4, v6, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v4

    if-nez v4, :cond_4

    .line 652
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    .line 655
    :cond_4
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    goto :goto_1

    .line 658
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->isAddToScreenDialogShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 661
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    if-eqz v4, :cond_3

    .line 662
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    .line 665
    iget v4, p0, Lcom/android/launcher2/Workspace;->mTouchState:I

    if-eqz v4, :cond_5

    .line 666
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->snapToDestination()V

    .line 668
    :cond_5
    iput v5, p0, Lcom/android/launcher2/Workspace;->mTouchState:I

    .line 670
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    if-nez v4, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v7, :cond_7

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v4

    if-nez v4, :cond_7

    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v4

    if-nez v4, :cond_7

    .line 674
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v1, v4

    .line 675
    .local v1, "dy":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v0, v4

    .line 676
    .local v0, "dx":I
    iget v4, p0, Lcom/android/launcher2/Workspace;->mTouchPointDistance:I

    mul-int v6, v1, v1

    mul-int v7, v0, v0

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    sub-int v2, v4, v6

    .line 678
    .local v2, "pinchDelta":I
    const/16 v4, 0x32

    if-le v2, v4, :cond_7

    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v4, :cond_7

    .line 679
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    .line 680
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    .line 681
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    .line 682
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->motionTrackingIsCurrent:Z

    goto/16 :goto_0

    .line 687
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v2    # "pinchDelta":I
    :cond_7
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->isStartDragStarted:Z

    goto/16 :goto_1

    .line 691
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-gt v4, v7, :cond_3

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    goto/16 :goto_1

    .line 695
    :pswitch_5
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    .line 696
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 697
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v1, v4

    .line 698
    .restart local v1    # "dy":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v0, v4

    .line 700
    .restart local v0    # "dx":I
    mul-int v4, v1, v1

    mul-int v6, v0, v0

    add-int/2addr v4, v6

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v4, v6

    iput v4, p0, Lcom/android/launcher2/Workspace;->mTouchPointDistance:I

    .line 702
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    goto/16 :goto_1

    .line 640
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1639
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    .line 1640
    .local v1, "currentPage":I
    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mFirstLayout:Z

    if-eqz v5, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1641
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 1643
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/SmoothPagedView;->onLayout(ZIIII)V

    .line 1647
    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    if-eqz v5, :cond_1

    .line 1648
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 1651
    new-instance v5, Lcom/android/launcher2/Workspace$7;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Workspace$7;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1660
    :cond_1
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    .line 1661
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    .line 1662
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1663
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 1664
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1665
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    sget-boolean v5, Lcom/android/launcher2/Launcher;->UseQwertyKeypad:Z

    if-eqz v5, :cond_5

    .line 1666
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float/2addr v6, v7

    mul-float v3, v5, v6

    .line 1667
    .local v3, "maxShrinkAmount":F
    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v3, v5

    .line 1668
    .local v4, "maxXlate":F
    iget v5, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_3

    .line 1669
    iget v5, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 1671
    :cond_3
    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float/2addr v5, v6

    div-float v5, v4, v5

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    .line 1683
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "maxShrinkAmount":F
    .end local v4    # "maxXlate":F
    :cond_4
    :goto_0
    iget v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    iget v6, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_left_Adjust:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    .line 1684
    iget v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    iget v6, p0, Lcom/android/launcher2/Workspace;->mEditModePanel_top_Adjust:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    .line 1686
    return-void

    .line 1674
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    int-to-float v4, v5

    .line 1675
    .restart local v4    # "maxXlate":F
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 1676
    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_7

    .line 1677
    const/4 v4, 0x0

    .line 1680
    :cond_6
    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float/2addr v5, v6

    div-float v5, v4, v5

    iput v5, p0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    goto :goto_0

    .line 1678
    :cond_7
    iget v5, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_6

    .line 1679
    iget v5, p0, Lcom/android/launcher2/Workspace;->mDragBarSize:I

    int-to-float v4, v5

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3521
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onLongClick(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3522
    const/4 v11, 0x1

    .line 3561
    :goto_0
    return v11

    .line 3528
    :cond_0
    instance-of v11, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v11, :cond_2

    .line 3531
    const/4 v11, 0x2

    new-array v0, v11, [I

    .line 3532
    .local v0, "cellLayoutXY":[I
    const/4 v11, 0x2

    new-array v8, v11, [I

    .line 3533
    .local v8, "pagedViewXY":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3534
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->getLocationInWindow([I)V

    .line 3536
    iget v11, p0, Lcom/android/launcher2/Workspace;->mLastMotionX:F

    float-to-int v11, v11

    const/4 v12, 0x0

    aget v12, v8, v12

    add-int/2addr v11, v12

    const/4 v12, 0x0

    aget v12, v0, v12

    sub-int/2addr v11, v12

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    sub-int v9, v11, v12

    .line 3537
    .local v9, "x":I
    iget v11, p0, Lcom/android/launcher2/Workspace;->mLastMotionY:F

    float-to-int v11, v11

    const/4 v12, 0x1

    aget v12, v8, v12

    add-int/2addr v11, v12

    const/4 v12, 0x1

    aget v12, v0, v12

    sub-int/2addr v11, v12

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    sub-int v10, v11, v12

    .local v10, "y":I
    move-object v4, p1

    .line 3539
    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 3541
    .local v4, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v5

    .line 3542
    .local v5, "cw":I
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v3

    .line 3543
    .local v3, "ch":I
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getWidthGap()I

    move-result v7

    .line 3544
    .local v7, "gw":I
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getHeightGap()I

    move-result v6

    .line 3546
    .local v6, "gh":I
    add-int v11, v5, v7

    div-int v1, v9, v11

    .line 3547
    .local v1, "cellX":I
    add-int v11, v3, v6

    div-int v2, v10, v11

    .line 3552
    .local v2, "cellY":I
    add-int v11, v5, v7

    mul-int/2addr v11, v1

    div-int/lit8 v12, v7, 0x2

    sub-int/2addr v11, v12

    sub-int v11, v9, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int v12, v3, v6

    mul-int/2addr v12, v2

    div-int/lit8 v13, v6, 0x2

    sub-int/2addr v12, v13

    sub-int v12, v10, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v11, v12, :cond_1

    .line 3553
    invoke-virtual {v4, v1, v2}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v4, v11, v2}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3554
    const/4 v11, 0x1

    goto :goto_0

    .line 3556
    :cond_1
    invoke-virtual {v4, v1, v2}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v4, v1, v11}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3557
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 3561
    .end local v0    # "cellLayoutXY":[I
    .end local v1    # "cellX":I
    .end local v2    # "cellY":I
    .end local v3    # "ch":I
    .end local v4    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v5    # "cw":I
    .end local v6    # "gh":I
    .end local v7    # "gw":I
    .end local v8    # "pagedViewXY":[I
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 752
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageBeginMoving()V

    .line 753
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    .line 754
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    .line 755
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 756
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    .line 759
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 760
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 763
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    .line 764
    .local v0, "qlCamera":Lcom/android/launcher2/QuickLaunch;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 765
    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 767
    :cond_2
    return-void

    .line 754
    .end local v0    # "qlCamera":Lcom/android/launcher2/QuickLaunch;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPageEndMoving()V
    .locals 3

    .prologue
    .line 771
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageEndMoving()V

    .line 772
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 773
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 774
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 776
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    .line 781
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 782
    new-instance v2, Lcom/android/launcher2/Workspace$3;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Workspace$3;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 790
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 791
    new-instance v2, Lcom/android/launcher2/Workspace$4;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Workspace$4;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 798
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v0

    .line 799
    .local v0, "qlCamera":Lcom/android/launcher2/QuickLaunch;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 800
    new-instance v2, Lcom/android/launcher2/Workspace$5;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/Workspace$5;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/QuickLaunch;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 807
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    .line 808
    .local v1, "qw":Lcom/android/launcher2/QuickViewWorkspace;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 809
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    .line 810
    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 812
    :cond_4
    return-void
.end method

.method public onPreShowAllApps()V
    .locals 1

    .prologue
    .line 4221
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->abortScroll()V

    .line 4222
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    .line 4223
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1748
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1749
    .local v0, "openFolder":Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 1750
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1752
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
    .line 2746
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2747
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    .line 2748
    return-void
.end method

.method public onScrollComplete()V
    .locals 0

    .prologue
    .line 2860
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onScrollComplete()V

    .line 2861
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->onExitScrollArea()V

    .line 2862
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 599
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    if-eqz v1, :cond_0

    move v1, v2

    .line 612
    :goto_0
    return v1

    .line 582
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    .line 605
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v3, :cond_3

    .line 606
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 607
    .local v0, "cl":Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 608
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/AppWidgetResizeFrame;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    move v1, v2

    .line 610
    goto :goto_0

    .line 585
    .end local v0    # "cl":Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    if-eqz v1, :cond_0

    .line 586
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    move v1, v2

    .line 587
    goto :goto_0

    .line 594
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isAddToScreenDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    move v1, v2

    .line 595
    goto :goto_0

    .line 612
    :cond_3
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 580
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onViewAddedInPagedView(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 407
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onViewAddedInPagedView(Landroid/view/View;)V

    .line 408
    instance-of v2, p1, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-nez v2, :cond_0

    .line 409
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A Workspace can only have CellLayoutWithResizableWidgets children."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p1

    .line 411
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 412
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setHomeView(Lcom/android/launcher2/HomeView;)V

    .line 413
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 414
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setClickable(Z)V

    .line 416
    sget-object v2, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v2}, Lcom/android/launcher2/PanelDrawer;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 419
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    .line 423
    const/4 v1, 0x0

    .line 424
    .local v1, "opt_showHelpTextOnEmptyHomePage":Z
    const-string v2, "USA"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 425
    const/4 v1, 0x1

    .line 429
    :goto_0
    if-eqz v1, :cond_1

    .line 430
    const v2, 0x7f0f00e4

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 432
    :cond_1
    return-void

    .line 427
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 3792
    if-nez p2, :cond_0

    .line 3793
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3794
    .local v0, "newConfig":Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->changeOrientationIfRequired(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3795
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->WIDGET_BINDER:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 3798
    .end local v0    # "newConfig":Landroid/content/res/Configuration;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 3799
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeView;->onWindowVisibilityChanged(I)V

    .line 562
    if-nez p1, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorPreviewManager;->layoutPageIndicator()V

    .line 565
    :cond_0
    return-void
.end method

.method pauseScreen(I)V
    .locals 10
    .param p1, "which"    # I

    .prologue
    .line 3414
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    .line 3415
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v7

    if-lt p1, v7, :cond_2

    .line 3416
    :cond_0
    const-string v7, "Launcher.Workspace"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR: trying to pause screen on invalid page index. passed in page number = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", children count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3443
    :cond_1
    return-void

    .line 3421
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3422
    .local v0, "cell":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_1

    .line 3423
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayout;->setIsPaused(Z)V

    .line 3424
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 3425
    .local v1, "cl":Lcom/android/launcher2/CellLayoutChildren;
    if-eqz v1, :cond_1

    .line 3427
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v4

    .line 3428
    .local v4, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 3429
    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3430
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 3431
    .local v5, "tag":Ljava/lang/Object;
    instance-of v7, v5, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v7, :cond_4

    .line 3432
    check-cast v5, Lcom/android/launcher2/SamsungWidgetItem;

    .end local v5    # "tag":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/launcher2/SamsungWidgetItem;->fireOnPause(Landroid/content/Context;)V

    .line 3428
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3433
    .restart local v5    # "tag":Ljava/lang/Object;
    :cond_4
    instance-of v7, v5, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v7, :cond_5

    .line 3434
    check-cast v5, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v5    # "tag":Ljava/lang/Object;
    invoke-virtual {v5}, Lcom/android/launcher2/SurfaceWidgetItem;->onPause()V

    goto :goto_1

    .line 3435
    .restart local v5    # "tag":Ljava/lang/Object;
    :cond_5
    instance-of v7, v5, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v7, :cond_3

    move-object v7, v5

    .line 3436
    check-cast v7, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v7, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v7, :cond_3

    .line 3438
    check-cast v5, Lcom/android/launcher2/HomeShortcutItem;

    .end local v5    # "tag":Ljava/lang/Object;
    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppIconView;

    .line 3439
    .local v3, "iconView":Lcom/android/launcher2/AppIconView;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getMovieDrawable()Lcom/android/launcher2/MovieDrawable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MovieDrawable;->pause()V

    goto :goto_1
.end method

.method public releaseShadows()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 3573
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 3574
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 3575
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 3576
    .local v1, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 3578
    .local v5, "l":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 3579
    .local v0, "ccout":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 3580
    invoke-virtual {v5, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3581
    .local v6, "v":Landroid/view/View;
    instance-of v7, v6, Lcom/android/launcher2/AppIconView;

    if-eqz v7, :cond_0

    move-object v7, v6

    .line 3582
    check-cast v7, Lcom/android/launcher2/AppIconView;

    move-object v8, v9

    check-cast v8, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/drawable/Drawable;)V

    .line 3583
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/BaseItem;

    iput-object v9, v7, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 3579
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3574
    .end local v6    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3587
    .end local v0    # "ccout":I
    .end local v1    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v4    # "j":I
    .end local v5    # "l":Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    return-void
.end method

.method public remainOrRemovePlusPage()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 4086
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    if-eqz v6, :cond_2

    .line 4087
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v6

    if-ne v6, v2, :cond_3

    .line 4089
    .local v2, "isSecretPage":Z
    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 4090
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Workspace;->removeViewInLayout(Landroid/view/View;)V

    .line 4091
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->requestLayout()V

    .line 4093
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    .line 4094
    .local v5, "workScreenCount":I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 4095
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 4097
    :cond_0
    if-eqz v2, :cond_1

    .line 4098
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->saveSecretScreenInfo()V

    .line 4117
    .end local v5    # "workScreenCount":I
    :cond_1
    :goto_1
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    .line 4119
    .end local v2    # "isSecretPage":Z
    :cond_2
    return-void

    .line 4087
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 4102
    .restart local v2    # "isSecretPage":Z
    :cond_4
    iget v6, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    .line 4104
    if-eqz v2, :cond_6

    .line 4105
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4107
    .local v4, "updatedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    .line 4108
    .local v3, "totalScreens":I
    iget v6, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    add-int/lit8 v1, v6, 0x1

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_5

    .line 4109
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    .line 4110
    .local v0, "clc":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v0, v1, v4}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    .line 4108
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4112
    .end local v0    # "clc":Lcom/android/launcher2/CellLayoutChildren;
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1

    .line 4114
    .end local v1    # "i":I
    .end local v3    # "totalScreens":I
    .end local v4    # "updatedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    goto :goto_1
.end method

.method protected removeCreatedPageForDrag()V
    .locals 2

    .prologue
    .line 4296
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_1

    .line 4297
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4298
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDragViewIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    .line 4300
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mCreatedPageForDrag:Lcom/android/launcher2/CellLayout;

    .line 4302
    :cond_1
    return-void
.end method

.method removeHelpAppItem(Lcom/android/launcher2/HomeItem;)V
    .locals 8
    .param p1, "item"    # Lcom/android/launcher2/HomeItem;

    .prologue
    .line 2937
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2939
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2942
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/List;

    move-result-object v0

    .line 2944
    .local v0, "cellLayouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/CellLayout;>;"
    iget-wide v4, p1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 2948
    iget-wide v4, p1, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v4, v5}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v1

    .line 2949
    .local v1, "folder":Lcom/android/launcher2/HomeFolderItem;
    if-eqz v1, :cond_1

    .line 2950
    invoke-virtual {v1, p1}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    .line 2963
    .end local v1    # "folder":Lcom/android/launcher2/HomeFolderItem;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 2967
    return-void

    .line 2953
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 2954
    .local v3, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v3, p1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2955
    instance-of v4, p1, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v4, :cond_1

    .line 2956
    const-string v4, "SurfaceWidgetFlow"

    const-string v5, "destroying surface widget for removeHelpItem?"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p1

    .line 2957
    check-cast v4, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher2/SurfaceWidgetItem;->destroyWidget(Landroid/content/Context;Lcom/android/launcher2/SurfaceWidgetPackageManager;Z)V

    goto :goto_0
.end method

.method removeItems(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2970
    .local p1, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 2971
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/HomeItem;

    .line 2972
    .local v7, "item":Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2975
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "item":Lcom/android/launcher2/HomeItem;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/List;

    move-result-object v3

    .line 2976
    .local v3, "cellLayouts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/CellLayout;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/HomeItem;

    .line 2977
    .restart local v7    # "item":Lcom/android/launcher2/HomeItem;
    iget-wide v14, v7, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v16, -0x64

    cmp-long v13, v14, v16

    if-eqz v13, :cond_3

    iget-wide v14, v7, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v16, -0x65

    cmp-long v13, v14, v16

    if-eqz v13, :cond_3

    iget-wide v14, v7, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v16, -0x1

    cmp-long v13, v14, v16

    if-eqz v13, :cond_3

    .line 2981
    iget-wide v14, v7, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v14, v15}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v4

    .line 2982
    .local v4, "folder":Lcom/android/launcher2/HomeFolderItem;
    if-eqz v4, :cond_2

    .line 2983
    invoke-virtual {v4, v7}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    .line 2991
    .end local v4    # "folder":Lcom/android/launcher2/HomeFolderItem;
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v7}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 2993
    instance-of v13, v7, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v13, :cond_5

    move-object v12, v7

    .line 2994
    check-cast v12, Lcom/android/launcher2/HomeWidgetItem;

    .line 2995
    .local v12, "widgetItem":Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v2

    .line 2996
    .local v2, "appWidgetHost":Lcom/android/launcher2/LauncherAppWidgetHost;
    if-eqz v2, :cond_1

    .line 2997
    new-instance v13, Lcom/android/launcher2/Workspace$18;

    const-string v14, "deleteAppWidgetId"

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14, v2, v12}, Lcom/android/launcher2/Workspace$18;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace$18;->start()V

    goto :goto_1

    .line 2986
    .end local v2    # "appWidgetHost":Lcom/android/launcher2/LauncherAppWidgetHost;
    .end local v12    # "widgetItem":Lcom/android/launcher2/HomeWidgetItem;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 2987
    .local v8, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v8, v7}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_2

    .line 3005
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "layout":Lcom/android/launcher2/CellLayout;
    :cond_5
    instance-of v13, v7, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v13, :cond_6

    move-object v11, v7

    .line 3006
    check-cast v11, Lcom/android/launcher2/SamsungWidgetItem;

    .line 3007
    .local v11, "widget":Lcom/android/launcher2/SamsungWidgetItem;
    sget-object v14, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Launcher;

    invoke-virtual {v14, v13, v11}, Lcom/android/launcher2/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungWidgetItem;)V

    goto :goto_1

    .line 3009
    .end local v11    # "widget":Lcom/android/launcher2/SamsungWidgetItem;
    :cond_6
    instance-of v13, v7, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v13, :cond_1

    move-object v10, v7

    .line 3010
    check-cast v10, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 3011
    .local v10, "swItem":Lcom/android/launcher2/SurfaceWidgetItem;
    sget-object v9, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    .line 3012
    .local v9, "packageManager":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v10, v13, v9, v14}, Lcom/android/launcher2/SurfaceWidgetItem;->destroyWidget(Landroid/content/Context;Lcom/android/launcher2/SurfaceWidgetPackageManager;Z)V

    goto/16 :goto_1

    .line 3024
    .end local v7    # "item":Lcom/android/launcher2/HomeItem;
    .end local v9    # "packageManager":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .end local v10    # "swItem":Lcom/android/launcher2/SurfaceWidgetItem;
    :cond_7
    return-void
.end method

.method public removeStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/launcher2/Workspace$StateAnimatorProvider;

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2137
    return-void
.end method

.method protected repositionOpenFolder()V
    .locals 1

    .prologue
    .line 3654
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 3655
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->repositionOpenFolder()V

    .line 3657
    :cond_0
    return-void
.end method

.method public restartSurfaceWidgets()V
    .locals 7

    .prologue
    .line 4003
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v4

    .line 4004
    .local v4, "pageCount":I
    const/4 v2, 0x0

    .local v2, "currentPage":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 4005
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 4006
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 4007
    .local v1, "clChildren":Lcom/android/launcher2/CellLayoutChildren;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 4008
    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4009
    .local v5, "v":Landroid/view/View;
    instance-of v6, v5, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v6, :cond_0

    .line 4010
    check-cast v5, Lcom/android/launcher2/SurfaceWidgetView;

    .end local v5    # "v":Landroid/view/View;
    invoke-virtual {v5}, Lcom/android/launcher2/SurfaceWidgetView;->surfaceWidgetRestart()V

    .line 4007
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4004
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4013
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v1    # "clChildren":Lcom/android/launcher2/CellLayoutChildren;
    .end local v3    # "j":I
    :cond_2
    return-void
.end method

.method public restoreOpenFolder(Lcom/android/launcher2/HomeFolderItem;)Z
    .locals 2
    .param p1, "openFolder"    # Lcom/android/launcher2/HomeFolderItem;

    .prologue
    const/4 v1, 0x0

    .line 3510
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->getViewForTag(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    .line 3511
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3512
    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .end local v0    # "v":Landroid/view/View;
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    .line 3513
    const/4 v1, 0x1

    .line 3515
    :cond_0
    return v1
.end method

.method resumeMagazineCling()V
    .locals 4

    .prologue
    .line 3489
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3490
    .local v0, "prefs":Landroid/content/SharedPreferences;
    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v1, :cond_0

    const-string v1, "SHOW_MAGAZINE_CLING_MSG"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->checkFactoryMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-boolean v1, v1, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3496
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->showMagazineCling()V

    .line 3498
    :cond_0
    return-void
.end method

.method resumeScreen(I)V
    .locals 11
    .param p1, "which"    # I

    .prologue
    .line 3447
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 3449
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 3450
    if-eq v3, p1, :cond_0

    .line 3451
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 3452
    .local v6, "layout":Lcom/android/launcher2/CellLayout;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->isPaused()Z

    move-result v9

    if-nez v9, :cond_0

    .line 3453
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    .line 3449
    .end local v6    # "layout":Lcom/android/launcher2/CellLayout;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3458
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3459
    .local v0, "cell":Lcom/android/launcher2/CellLayout;
    if-nez v0, :cond_3

    .line 3486
    :cond_2
    return-void

    .line 3460
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayout;->setIsPaused(Z)V

    .line 3461
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 3462
    .local v2, "cl":Lcom/android/launcher2/CellLayoutChildren;
    if-eqz v2, :cond_2

    .line 3464
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    .line 3465
    .local v5, "itemCount":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    .line 3466
    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3467
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 3468
    .local v7, "tag":Ljava/lang/Object;
    instance-of v9, v7, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v9, :cond_5

    .line 3469
    check-cast v7, Lcom/android/launcher2/SamsungWidgetItem;

    .end local v7    # "tag":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/launcher2/SamsungWidgetItem;->fireOnResume(Landroid/content/Context;)V

    .line 3465
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3470
    .restart local v7    # "tag":Ljava/lang/Object;
    :cond_5
    instance-of v9, v7, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v9, :cond_6

    .line 3471
    check-cast v7, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v7    # "tag":Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    goto :goto_2

    .line 3472
    .restart local v7    # "tag":Ljava/lang/Object;
    :cond_6
    instance-of v9, v7, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v9, :cond_7

    move-object v9, v7

    .line 3473
    check-cast v9, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v9, v9, Lcom/android/launcher2/HomeShortcutItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v9, :cond_4

    .line 3475
    check-cast v7, Lcom/android/launcher2/HomeShortcutItem;

    .end local v7    # "tag":Ljava/lang/Object;
    invoke-virtual {v2, v7}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppIconView;

    .line 3476
    .local v4, "iconView":Lcom/android/launcher2/AppIconView;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/launcher2/AppIconView;->getMovieDrawable()Lcom/android/launcher2/MovieDrawable;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/MovieDrawable;->resume()V

    goto :goto_2

    .line 3478
    .end local v4    # "iconView":Lcom/android/launcher2/AppIconView;
    .restart local v7    # "tag":Ljava/lang/Object;
    :cond_7
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v10, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v9, v10, :cond_4

    instance-of v9, v7, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v9, :cond_4

    .line 3481
    check-cast v7, Lcom/android/launcher2/HomeWidgetItem;

    .end local v7    # "tag":Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    sget-object v10, Lcom/android/launcher2/Workspace;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3482
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    goto :goto_2
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 2752
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 2753
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollLeft()V

    .line 2755
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 2756
    .local v0, "openFolder":Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 2757
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 2759
    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 2763
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 2764
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollRight()V

    .line 2766
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 2767
    .local v0, "openFolder":Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 2768
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 2770
    :cond_1
    return-void
.end method

.method public sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V
    .locals 2
    .param p1, "sx"    # I
    .param p2, "sy"    # I
    .param p3, "provider"    # Landroid/content/ComponentName;
    .param p4, "appWidgetId"    # I

    .prologue
    .line 3500
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3501
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3502
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3503
    const-string v1, "widgetspanx"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3504
    const-string v1, "widgetspany"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3505
    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3506
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 3507
    return-void
.end method

.method protected setAccessibilityFocusChange(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 4513
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->setWorkspaceAccessibilityEnabled(Z)V

    .line 4514
    return-void
.end method

.method setAllEmptyMessageVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 3661
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 3662
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 3663
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3664
    .local v0, "cell":Lcom/android/launcher2/CellLayout;
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/HomeView;->determineEmptyPageMsgVisibility(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 3662
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3664
    :cond_0
    const/16 v3, 0x8

    goto :goto_1

    .line 3666
    .end local v0    # "cell":Lcom/android/launcher2/CellLayout;
    :cond_1
    return-void
.end method

.method public setAllPagesVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 4477
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v3, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4479
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->syncViewVisibility()V

    .line 4486
    :cond_0
    return-void

    .line 4482
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4483
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 4484
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setVisibility(I)V

    .line 4482
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setBackgroundDarken(F)V
    .locals 2
    .param p1, "darken"    # F

    .prologue
    .line 1228
    iput p1, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    .line 1229
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getDarkenView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getDarkenView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->setDummyPanelProperties()V

    .line 1232
    return-void
.end method

.method public setContentIsRefreshable(Z)V
    .locals 0
    .param p1, "refreshable"    # Z

    .prologue
    .line 4494
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mContentIsRefreshable:Z

    .line 4495
    return-void
.end method

.method public setDragOutline(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1884
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1885
    return-void
.end method

.method setDummyPanelProperties(FI)V
    .locals 3
    .param p1, "baseDarken"    # F
    .param p2, "alpha"    # I

    .prologue
    .line 3617
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 3618
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3619
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3620
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayout;->setDummyPanelProperties(FI)V

    .line 3618
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3622
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public setHorizontalWallpaperOffset(F)V
    .locals 2
    .param p1, "offset"    # F

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    const-string v1, "setHorizontalWallpaperOffset"

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(FLjava/lang/String;)V

    .line 897
    return-void
.end method

.method public setPageVisibility(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 4489
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 4490
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p2}, Lcom/android/launcher2/CellLayout;->setVisibility(I)V

    .line 4491
    return-void
.end method

.method public setPageZoom(F)V
    .locals 5
    .param p1, "zoom"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 3627
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 3628
    iget v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float v3, v4, v3

    div-float v0, v2, v3

    .line 3629
    .local v0, "p":F
    iget v2, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    int-to-float v2, v2

    sub-float v3, v4, v0

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTop:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 3630
    .local v1, "top":I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setPageIndicatorTop(I)V

    .line 3632
    .end local v0    # "p":F
    .end local v1    # "top":I
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->setPageZoom(F)V

    .line 3633
    return-void
.end method

.method public setPendingSnapToPage(I)V
    .locals 0
    .param p1, "whichPage"    # I

    .prologue
    .line 1079
    iput p1, p0, Lcom/android/launcher2/Workspace;->mPendingSnapToPageIndex:I

    .line 1080
    return-void
.end method

.method setSecretPageMetaphorVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 3681
    return-void
.end method

.method public setVerticalWallpaperOffset(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalY(F)V

    .line 891
    return-void
.end method

.method public setWallpaperDimension()V
    .locals 5

    .prologue
    .line 853
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 854
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher2/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 855
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 856
    .local v0, "maxDim":I
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 860
    .local v1, "minDim":I
    iget-boolean v3, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-eqz v3, :cond_0

    .line 861
    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 862
    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    .line 881
    :goto_0
    new-instance v3, Lcom/android/launcher2/Workspace$6;

    const-string v4, "setWallpaperDimension"

    invoke-direct {v3, p0, v4}, Lcom/android/launcher2/Workspace$6;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace$6;->start()V

    .line 887
    return-void

    .line 874
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 875
    int-to-float v3, v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 876
    int-to-float v3, v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenHeightRatio(II)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    goto :goto_0

    .line 878
    :cond_1
    int-to-float v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 879
    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    goto :goto_0
.end method

.method public setWorkspaceAccessibilityEnabled(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    .line 4460
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4461
    .local v3, "talkbackString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    if-eqz v3, :cond_1

    const-string v4, "(?i).*talkback.*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4463
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 4464
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    .line 4465
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setAccessibilityEnabled(Z)V

    .line 4466
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    .line 4467
    .local v2, "hotseat":Lcom/android/launcher2/Hotseat;
    if-eqz v2, :cond_1

    .line 4468
    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    .line 4469
    .local v1, "cl_hotseat":Lcom/android/launcher2/CellLayout;
    if-eqz v1, :cond_1

    .line 4470
    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayout;->setAccessibilityEnabled(Z)V

    .line 4474
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v1    # "cl_hotseat":Lcom/android/launcher2/CellLayout;
    .end local v2    # "hotseat":Lcom/android/launcher2/Hotseat;
    :cond_1
    return-void
.end method

.method setup(Lcom/android/launcher2/HomeView;)V
    .locals 1
    .param p1, "home"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 2735
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 2737
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->initWorkspace()V

    .line 2741
    sget-object v0, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 2742
    return-void
.end method

.method public showOutlinesTemporarily()V
    .locals 1

    .prologue
    .line 1217
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1218
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1220
    :cond_0
    return-void
.end method

.method protected snapToPage(III)V
    .locals 4
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .prologue
    .line 1047
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_1

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1050
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    if-eq p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 1065
    :cond_2
    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v2, :cond_3

    .line 1066
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getAdjustedPageIndex(I)I

    move-result p1

    .line 1067
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentDragItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 1068
    .local v1, "dragItem":Lcom/android/launcher2/BaseItem;
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1070
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 1074
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v1    # "dragItem":Lcom/android/launcher2/BaseItem;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method protected spiralTransform(Landroid/view/View;F)V
    .locals 18
    .param p1, "page"    # Landroid/view/View;
    .param p2, "scrollProgress"    # F

    .prologue
    .line 1436
    sget-boolean v15, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLETILTEFFECT:Z

    if-nez v15, :cond_0

    sget v15, Lcom/android/launcher2/Launcher;->sWhichTransitionEffect:I

    if-nez v15, :cond_2

    .line 1438
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/launcher2/Workspace;->updatePageTransformWithoutTilt(Landroid/view/View;F)V

    .line 1539
    :cond_1
    :goto_0
    return-void

    .line 1441
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v4

    .line 1442
    .local v4, "factor":F
    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, p2, v15

    if-gtz v15, :cond_1

    const/high16 v15, -0x40800000    # -1.0f

    cmpg-float v15, p2, v15

    if-ltz v15, :cond_1

    .line 1444
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/Workspace;->mPageZoom:F

    const v16, 0x3f4ccccd    # 0.8f

    move/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v14

    .line 1448
    .local v14, "zoom":F
    const/high16 v15, 0x3f800000    # 1.0f

    const v16, 0x3f4ccccd    # 0.8f

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v17

    invoke-static/range {v15 .. v17}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v15

    mul-float/2addr v14, v15

    .line 1450
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 1451
    .local v6, "i":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v11

    .line 1454
    .local v11, "scrollAlpha":F
    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v16

    sub-float v15, v15, v16

    const v16, 0x3f333333    # 0.7f

    mul-float v15, v15, v16

    const v16, 0x3e99999a    # 0.3f

    add-float v5, v15, v16

    .local v5, "fastScrollBgAlpha":F
    move-object/from16 v3, p1

    .line 1456
    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 1460
    .local v3, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 1462
    const/4 v2, 0x0

    .line 1466
    .local v2, "blendBackground":Z
    const v15, 0x3e4ccccd    # 0.2f

    cmpl-float v15, v4, v15

    if-lez v15, :cond_3

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const v16, 0x3f19999a    # 0.6f

    cmpg-float v15, v15, v16

    if-lez v15, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher2/Workspace;->mIsPageMoving:Z

    if-nez v15, :cond_5

    .line 1467
    :cond_4
    const/4 v2, 0x1

    .line 1470
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v16, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual/range {v15 .. v16}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 1471
    invoke-static {v11, v5, v4}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mPageBackgroundAlpha:F

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0, v2}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    .line 1475
    :cond_6
    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v17

    sub-float v16, v16, v17

    const v17, 0x3e4ccccd    # 0.2f

    add-float v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1477
    .local v1, "alpha":F
    const/high16 v15, 0x41a00000    # 20.0f

    const/high16 v16, 0x41700000    # 15.0f

    move/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v15

    mul-float v10, v15, p2

    .line 1479
    .local v10, "rotation":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/Workspace;->mNormalScrollDrawInward:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v15, v0, v4}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v15

    mul-float v15, v15, p2

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v12, v15, v16

    .line 1480
    .local v12, "translationX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c001d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    int-to-float v13, v15

    .line 1481
    .local v13, "vtransition_rotation_max":F
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v9

    .line 1482
    .local v9, "pageWidth":I
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v8

    .line 1483
    .local v8, "pageHeight":I
    sget-boolean v15, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v15, :cond_a

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v7, 0x1

    .line 1485
    .local v7, "isHomeEditMode":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 1486
    int-to-float v15, v8

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v3, v15}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1487
    int-to-float v15, v9

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v3, v15}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1520
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v16, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual/range {v15 .. v16}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 1521
    invoke-virtual {v3, v1}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    .line 1522
    invoke-virtual {v3, v14}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 1523
    invoke-virtual {v3, v14}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 1526
    :cond_7
    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v15, v14, v15

    if-gez v15, :cond_9

    .line 1527
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_8

    .line 1528
    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mShrinkTranslateX:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v12, v15

    .line 1530
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isFastScrolling()Z

    move-result v15

    if-nez v15, :cond_9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-eqz v15, :cond_9

    .line 1531
    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    invoke-virtual {v3, v15}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 1534
    :cond_9
    invoke-virtual {v3, v12}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 1535
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v16, Lcom/android/launcher2/PagedView$TransitionEffect;->NONE:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual/range {v15 .. v16}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1536
    invoke-virtual {v3, v10}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    goto/16 :goto_0

    .line 1483
    .end local v7    # "isHomeEditMode":Z
    :cond_a
    const/4 v7, 0x0

    goto :goto_1

    .line 1489
    .restart local v7    # "isHomeEditMode":Z
    :cond_b
    if-nez v6, :cond_10

    const/4 v15, 0x0

    cmpg-float v15, p2, v15

    if-gez v15, :cond_10

    .line 1493
    sget-boolean v15, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-nez v15, :cond_d

    .line 1494
    if-eqz v7, :cond_c

    int-to-float v15, v9

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    :goto_3
    invoke-virtual {v3, v15}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1495
    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v13, v15

    neg-float v15, v15

    mul-float v15, v15, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v16

    div-float v10, v15, v16

    .line 1502
    :goto_4
    if-eqz v7, :cond_e

    const/4 v12, 0x0

    .line 1503
    :goto_5
    if-eqz v7, :cond_f

    .line 1504
    :goto_6
    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 1494
    :cond_c
    const/4 v15, 0x0

    goto :goto_3

    .line 1498
    :cond_d
    sget v15, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    int-to-float v0, v9

    move/from16 v16, v0

    mul-float v15, v15, v16

    invoke-virtual {v3, v15}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1499
    neg-float v15, v13

    mul-float v15, v15, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v16

    div-float v10, v15, v16

    goto :goto_4

    .line 1502
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v15

    int-to-float v12, v15

    goto :goto_5

    .line 1503
    :cond_f
    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_6

    .line 1505
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v6, v15, :cond_14

    const/4 v15, 0x0

    cmpl-float v15, p2, v15

    if-lez v15, :cond_14

    .line 1509
    if-eqz v7, :cond_11

    int-to-float v15, v9

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    :goto_7
    invoke-virtual {v3, v15}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1510
    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v13, v15

    neg-float v15, v15

    mul-float v15, v15, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v16

    div-float v10, v15, v16

    .line 1511
    if-eqz v7, :cond_12

    const/4 v12, 0x0

    .line 1512
    :goto_8
    if-eqz v7, :cond_13

    .line 1513
    :goto_9
    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 1509
    :cond_11
    int-to-float v15, v9

    goto :goto_7

    .line 1511
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v12, v15

    goto :goto_8

    .line 1512
    :cond_13
    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_9

    .line 1515
    :cond_14
    int-to-float v15, v8

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v3, v15}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1516
    int-to-float v15, v9

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v3, v15}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    goto/16 :goto_2
.end method

.method startDrag(Landroid/view/View;)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2689
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2690
    :cond_0
    const/4 v0, 0x0

    .line 2704
    :cond_1
    :goto_0
    return v0

    .line 2693
    :cond_2
    iget v3, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v4, :cond_4

    iget v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    :goto_1
    invoke-static {p1, v3, v2}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;FF)Z

    move-result v0

    .line 2694
    .local v0, "rc":Z
    if-eqz v0, :cond_1

    .line 2695
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->enableRollNavigation()V

    .line 2696
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 2697
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v2, :cond_5

    .line 2698
    check-cast v1, Lcom/android/launcher2/SamsungWidgetItem;

    .end local v1    # "tag":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/SamsungWidgetItem;->fireOnPause(Landroid/content/Context;)V

    .line 2702
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    const-wide/16 v4, 0x23

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 2693
    .end local v0    # "rc":Z
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    .line 2699
    .restart local v0    # "rc":Z
    .restart local v1    # "tag":Ljava/lang/Object;
    :cond_5
    instance-of v2, v1, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v2, :cond_3

    .line 2700
    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v1    # "tag":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetItem;->onPause()V

    goto :goto_2
.end method

.method public syncPageItems(IZ)V
    .locals 2
    .param p1, "page"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 3172
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3173
    .local v0, "l":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->buildViews()V

    .line 3174
    return-void
.end method

.method protected syncPageWithQuickView(I)Z
    .locals 2
    .param p1, "whichPage"    # I

    .prologue
    .line 1016
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1017
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getAdjustedPageIndex(I)I

    move-result p1

    .line 1019
    move v0, p1

    .line 1033
    .local v0, "movePageIdx":I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1034
    const/4 v1, 0x0

    .line 1041
    .end local v0    # "movePageIdx":I
    :goto_0
    return v1

    .line 1037
    .restart local v0    # "movePageIdx":I
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setCurrentPage(I)V

    .line 1038
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->snapToQvPage()V

    .line 1041
    .end local v0    # "movePageIdx":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public syncPages()V
    .locals 3

    .prologue
    .line 3163
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 3164
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3165
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 3166
    .local v2, "l":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->removeAllViewsOnPage()V

    .line 3164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3168
    .end local v2    # "l":Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public turnOffEmptyPageMsg()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4196
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4197
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Launcher;->setShowEmptyPageMessagePref(Z)V

    .line 4198
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4199
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4200
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SHOW_EMPTY_PAGE_MSG"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4202
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 4204
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 3
    .param p1, "page"    # Landroid/view/View;
    .param p2, "scrollProgress"    # F

    .prologue
    .line 1260
    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v2, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v2, :cond_1

    .line 1261
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 1262
    .local v0, "isDisableTransform":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1275
    .end local v0    # "isDisableTransform":Z
    :goto_1
    return-void

    .line 1261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1271
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mCurrentTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v2, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedView$TransitionEffect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1272
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->cardTransform(Landroid/view/View;F)V

    goto :goto_1

    .line 1274
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->spiralTransform(Landroid/view/View;F)V

    goto :goto_1
.end method

.method protected updatePageTransformWithoutTilt(Landroid/view/View;F)V
    .locals 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scrollProgress"    # F

    .prologue
    .line 1543
    if-nez p1, :cond_0

    .line 1608
    :goto_0
    return-void

    .line 1545
    :cond_0
    const/4 v11, 0x0

    .line 1546
    .local v11, "translationX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v6

    .line 1547
    .local v6, "pageCount":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v10

    .line 1549
    .local v10, "scrollAlpha":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v2

    .line 1551
    .local v2, "factor":F
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float/2addr v12, v13

    const v13, 0x3f333333    # 0.7f

    mul-float/2addr v12, v13

    const v13, 0x3e99999a    # 0.3f

    add-float v3, v12, v13

    .line 1552
    .local v3, "fastScrollBgAlpha":F
    const/4 v4, 0x0

    .line 1553
    .local v4, "fixedPosition":Z
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/Workspace;->mPageZoom:F

    .line 1554
    .local v9, "pageZoom":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v12

    if-nez v12, :cond_4

    .line 1555
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 1556
    .local v5, "i":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1557
    .local v8, "pageWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1562
    .local v7, "pageHeight":I
    sget v12, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    int-to-float v13, v8

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sget v14, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    sub-float/2addr v13, v14

    int-to-float v14, v8

    mul-float/2addr v13, v14

    int-to-float v14, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    invoke-static {v12, v13, v14}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setPivotX(F)V

    .line 1565
    int-to-float v12, v7

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setPivotY(F)V

    .line 1567
    if-nez v5, :cond_2

    const/4 v12, 0x0

    cmpg-float v12, p2, v12

    if-gez v12, :cond_2

    .line 1571
    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3dcccccd    # 0.1f

    sget-object v14, Lcom/android/launcher2/Workspace;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v15

    invoke-interface {v14, v15}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v14

    mul-float/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v14

    div-float/2addr v13, v14

    sub-float v9, v12, v13

    .line 1574
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v12

    int-to-float v11, v12

    .line 1575
    const/4 v4, 0x1

    .line 1589
    .end local v5    # "i":I
    .end local v7    # "pageHeight":I
    .end local v8    # "pageWidth":I
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleX(F)V

    .line 1590
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleY(F)V

    .line 1591
    if-nez v4, :cond_1

    .line 1592
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v9

    mul-float v12, v12, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    const/high16 v13, 0x40200000    # 2.5f

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    .line 1594
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 1595
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/Workspace;->mShrinkTranslateY:F

    mul-float/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 1600
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/Launcher;

    iget-object v12, v12, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/Workspace;->getBackgroundDarken()F

    move-result v1

    .local v1, "darkenAmount":F
    move-object/from16 v12, p1

    .line 1603
    check-cast v12, Lcom/android/launcher2/CellLayout;

    invoke-static {v10, v3, v2}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/Workspace;->mPageBackgroundAlpha:F

    invoke-static {v13, v14, v15}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v1, v14}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    .line 1607
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v14

    sub-float/2addr v13, v14

    const v14, 0x3e4ccccd    # 0.2f

    add-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 1576
    .end local v1    # "darkenAmount":F
    .restart local v5    # "i":I
    .restart local v7    # "pageHeight":I
    .restart local v8    # "pageWidth":I
    :cond_2
    add-int/lit8 v12, v6, -0x1

    if-ne v5, v12, :cond_3

    const/4 v12, 0x0

    cmpl-float v12, p2, v12

    if-lez v12, :cond_3

    .line 1578
    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3dcccccd    # 0.1f

    sget-object v14, Lcom/android/launcher2/Workspace;->mSineIO70Interpolator:Landroid/view/animation/Interpolator;

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v15

    invoke-interface {v14, v15}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v14

    mul-float/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v14

    div-float/2addr v13, v14

    sub-float v9, v12, v13

    .line 1580
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    sub-int/2addr v12, v13

    int-to-float v11, v12

    .line 1581
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1583
    :cond_3
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_1

    .line 1586
    .end local v5    # "i":I
    .end local v7    # "pageHeight":I
    .end local v8    # "pageWidth":I
    :cond_4
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_1
.end method

.method updateShortcutsAndSurfaceWidgets(Ljava/util/List;Z)V
    .locals 24
    .param p2, "isBadgeUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3027
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    const-string v20, "Launcher.Workspace"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "isBadgeUpdate : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v8

    .line 3029
    .local v8, "childrenLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/CellLayoutChildren;

    .line 3030
    .local v16, "layout":Lcom/android/launcher2/CellLayoutChildren;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/BaseItem;

    .line 3031
    .local v15, "item":Lcom/android/launcher2/BaseItem;
    instance-of v0, v15, Lcom/android/launcher2/HomeShortcutItem;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object v14, v15

    .line 3032
    check-cast v14, Lcom/android/launcher2/HomeShortcutItem;

    .line 3033
    .local v14, "info":Lcom/android/launcher2/HomeShortcutItem;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    .line 3034
    .local v5, "app":Lcom/android/launcher2/HomeItem;
    if-ne v5, v14, :cond_2

    .line 3035
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v19

    .line 3036
    .local v19, "view":Landroid/view/View;
    if-eqz p2, :cond_3

    .line 3037
    if-eqz v19, :cond_3

    .line 3038
    check-cast v19, Lcom/android/launcher2/AppIconView;

    .end local v19    # "view":Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/AppIconView;->refreshBadge()V

    goto :goto_1

    .line 3043
    .restart local v19    # "view":Landroid/view/View;
    :cond_3
    iget-object v0, v14, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    .line 3044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 3046
    :cond_4
    iget-object v0, v14, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    .line 3047
    const-string v20, ""

    move-object/from16 v0, v20

    iput-object v0, v14, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 3049
    :cond_5
    const/16 v17, 0x0

    .line 3050
    .local v17, "oldTitle":Ljava/lang/CharSequence;
    if-eqz v19, :cond_6

    move-object/from16 v20, v19

    .line 3051
    check-cast v20, Landroid/widget/TextView;

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    move-object/from16 v20, v19

    .line 3052
    check-cast v20, Lcom/android/launcher2/AppIconView;

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    move-object/from16 v20, v19

    .line 3053
    check-cast v20, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/AppIconView;->refreshBadge()V

    move-object/from16 v20, v19

    .line 3054
    check-cast v20, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/HomeItem;

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/AppIconView;->setHotseatText(Lcom/android/launcher2/HomeItem;)V

    .line 3056
    :cond_6
    if-nez v17, :cond_7

    .line 3057
    const-string v17, ""

    .line 3059
    :cond_7
    iget-object v0, v14, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 3060
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_1

    .line 3064
    .end local v5    # "app":Lcom/android/launcher2/HomeItem;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .end local v17    # "oldTitle":Ljava/lang/CharSequence;
    .end local v19    # "view":Landroid/view/View;
    :cond_8
    instance-of v0, v15, Lcom/android/launcher2/HomeFolderItem;

    move/from16 v20, v0

    if-eqz v20, :cond_f

    move-object v14, v15

    .line 3065
    check-cast v14, Lcom/android/launcher2/HomeFolderItem;

    .line 3066
    .local v14, "info":Lcom/android/launcher2/HomeFolderItem;
    const/4 v6, 0x0

    .line 3067
    .local v6, "changed":Z
    invoke-virtual {v14}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v9

    .line 3068
    .local v9, "folderItemCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v9, :cond_d

    .line 3069
    invoke-virtual {v14, v10}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/HomeShortcutItem;

    .line 3070
    .local v7, "childItem":Lcom/android/launcher2/HomeShortcutItem;
    if-nez v7, :cond_a

    .line 3068
    :cond_9
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 3073
    :cond_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    .line 3074
    .restart local v5    # "app":Lcom/android/launcher2/HomeItem;
    if-ne v5, v7, :cond_b

    .line 3075
    const/4 v6, 0x1

    .line 3076
    if-nez p2, :cond_9

    .line 3078
    iget-object v0, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-nez v20, :cond_c

    .line 3079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 3081
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_3

    .line 3086
    .end local v5    # "app":Lcom/android/launcher2/HomeItem;
    .end local v7    # "childItem":Lcom/android/launcher2/HomeShortcutItem;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_d
    if-eqz v6, :cond_1

    .line 3087
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v19

    .line 3088
    .restart local v19    # "view":Landroid/view/View;
    if-eqz v19, :cond_e

    move-object/from16 v20, v19

    .line 3089
    check-cast v20, Lcom/android/launcher2/FolderIconView;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/FolderIconView;->refreshBadge()V

    .line 3090
    check-cast v19, Lcom/android/launcher2/FolderIconView;

    .end local v19    # "view":Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/FolderIconView;->redrawFolderIcon()Z

    .line 3092
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v14, :cond_1

    .line 3093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    .line 3094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Folder;->enableChildBadges()V

    goto/16 :goto_0

    .line 3098
    .end local v6    # "changed":Z
    .end local v9    # "folderItemCount":I
    .end local v10    # "i":I
    .end local v14    # "info":Lcom/android/launcher2/HomeFolderItem;
    :cond_f
    instance-of v0, v15, Lcom/android/launcher2/SurfaceWidgetItem;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v18, v15

    .line 3100
    check-cast v18, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 3101
    .local v18, "sItem":Lcom/android/launcher2/SurfaceWidgetItem;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_10
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    .line 3102
    .restart local v5    # "app":Lcom/android/launcher2/HomeItem;
    if-nez p2, :cond_10

    move-object/from16 v0, v18

    if-ne v5, v0, :cond_10

    .line 3103
    const-string v20, "SurfaceWidgetFlow"

    const-string v21, "making surface widget for update"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/SurfaceWidgetItem;->makeSurfaceWidget(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;Lcom/android/launcher2/SurfaceWidgetView;Z)V

    .line 3107
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v20, v0

    if-nez v20, :cond_12

    .line 3122
    .end local v5    # "app":Lcom/android/launcher2/HomeItem;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "item":Lcom/android/launcher2/BaseItem;
    .end local v16    # "layout":Lcom/android/launcher2/CellLayoutChildren;
    .end local v18    # "sItem":Lcom/android/launcher2/SurfaceWidgetItem;
    :cond_11
    return-void

    .line 3109
    .restart local v5    # "app":Lcom/android/launcher2/HomeItem;
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v15    # "item":Lcom/android/launcher2/BaseItem;
    .restart local v16    # "layout":Lcom/android/launcher2/CellLayoutChildren;
    .restart local v18    # "sItem":Lcom/android/launcher2/SurfaceWidgetItem;
    :cond_12
    sget-object v20, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->RUNNING:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetItem;->setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V

    .line 3111
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/launcher2/FocusHelper;->WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/SurfaceWidgetView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3112
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/SurfaceWidgetView;->setHapticFeedbackEnabled(Z)V

    .line 3113
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/SurfaceWidgetView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3114
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/SurfaceWidgetView;->isShown()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 3115
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    goto :goto_4
.end method

.method protected updateWallpaperOffsets()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 987
    const/4 v3, 0x0

    .line 988
    .local v3, "updateNow":Z
    const/4 v0, 0x1

    .line 990
    .local v0, "keepUpdating":Z
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    if-eqz v4, :cond_3

    .line 991
    const/4 v3, 0x1

    .line 992
    const/4 v0, 0x0

    .line 993
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 994
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 998
    :goto_0
    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-boolean v4, v4, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v4, :cond_1

    .line 999
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    if-eqz v4, :cond_1

    .line 1000
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-eqz v4, :cond_4

    move v1, v5

    .line 1001
    .local v1, "offsetX":F
    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-eqz v4, :cond_5

    move v2, v5

    .line 1002
    .local v2, "offsetY":F
    :goto_2
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v1, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 1008
    .end local v1    # "offsetX":F
    .end local v2    # "offsetY":F
    :cond_1
    if-eqz v0, :cond_2

    .line 1009
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 1011
    :cond_2
    return-void

    .line 996
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v0

    move v3, v0

    goto :goto_0

    .line 1000
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v1

    goto :goto_1

    .line 1001
    .restart local v1    # "offsetX":F
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v2

    goto :goto_2
.end method
