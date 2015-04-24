.class public Lcom/android/launcher2/PageIndicatorManager;
.super Ljava/lang/Object;
.source "PageIndicatorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;,
        Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;
    }
.end annotation


# static fields
.field private static final FAST_SCROLL_LONG_PRESS_TIMEOUT:I = 0xfa

.field private static mPageIndicatorHeight:I


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private fastScrollDarkeneffect:F

.field private fastScrollEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

.field private mAddPageIndicator:Landroid/graphics/drawable/Drawable;

.field private mAlphaValueBeforeFastScroll:F

.field private mCameraPageIndicator:Landroid/graphics/drawable/Drawable;

.field private final mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

.field private mDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

.field private mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

.field private mFestivalPageIndicator:Landroid/graphics/drawable/Drawable;

.field private mFocusDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

.field private mFolderPageIndicator:Landroid/graphics/drawable/Drawable;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadlinesPageIndicator:Landroid/graphics/drawable/Drawable;

.field private mHomePageIndicatorMaxWidth:I

.field private mHotseatSize:I

.field private mIndicatorTotalWidth:I

.field private mIsLongPressPending:Z

.field private mLastLoadedPage:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field protected mMaxVisiblePages:I

.field protected mPageIndicator:Lcom/android/launcher2/PageIndicator;

.field private mPageIndicatorFocus:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorGap:I

.field private mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorLeft:I

.field private mPageIndicatorMarginLeft:I

.field private mPageIndicatorTop:I

.field mPagedView:Lcom/android/launcher2/PagedView;

.field private final mScroller:Lcom/android/launcher2/ScalarAnimator;

.field private mSecretPageIndicator:Landroid/graphics/drawable/Drawable;

.field private mViewsTotalWidth:I

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorHeight:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/PagedView;III)V
    .locals 8
    .param p1, "view"    # Lcom/android/launcher2/PagedView;
    .param p2, "pageIndicatorTop"    # I
    .param p3, "pageIndicatorGap"    # I
    .param p4, "pageIndicatorMaxVisible"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorMarginLeft:I

    .line 57
    iput v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mHotseatSize:I

    .line 60
    iput v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    .line 61
    iput v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mHomePageIndicatorMaxWidth:I

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/PageIndicatorManager;->fastScrollDarkeneffect:F

    .line 65
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mAlphaValueBeforeFastScroll:F

    .line 67
    new-instance v1, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v2, 0x320

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher2/ScalarAnimator;-><init>(JLandroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    .line 69
    new-instance v1, Lcom/android/launcher2/PageIndicatorManager$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/PageIndicatorManager$1;-><init>(Lcom/android/launcher2/PageIndicatorManager;)V

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->fastScrollEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

    .line 88
    iput-boolean v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    .line 107
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/PageIndicatorManager;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 109
    iput-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 114
    sget-object v1, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    .line 117
    iput-object p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    .line 119
    invoke-virtual {p1}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 120
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0200fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    .line 121
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sput v1, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorHeight:I

    .line 122
    const v1, 0x7f0200fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

    .line 123
    const v1, 0x7f0200fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mCameraPageIndicator:Landroid/graphics/drawable/Drawable;

    .line 126
    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v1, :cond_0

    .line 127
    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mFestivalPageIndicator:Landroid/graphics/drawable/Drawable;

    .line 129
    :cond_0
    const v1, 0x7f020100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mHeadlinesPageIndicator:Landroid/graphics/drawable/Drawable;

    .line 130
    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mAddPageIndicator:Landroid/graphics/drawable/Drawable;

    .line 131
    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mFolderPageIndicator:Landroid/graphics/drawable/Drawable;

    .line 132
    const v1, 0x7f0e0061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mHotseatSize:I

    .line 133
    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PageIndicatorManager;->fastScrollDarkeneffect:F

    .line 134
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v1

    const/16 v2, 0x258

    if-lt v1, v2, :cond_1

    .line 135
    const v1, 0x7f0200e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorFocus:Landroid/graphics/drawable/Drawable;

    .line 136
    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mFocusDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

    .line 138
    :cond_1
    iput p2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorTop:I

    .line 139
    iput p3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    .line 140
    const v1, 0x7f0e0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mHomePageIndicatorMaxWidth:I

    .line 141
    iput p4, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    .line 144
    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v1, :cond_2

    instance-of v1, p1, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_2

    .line 145
    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxFestivalScreenCount()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    .line 147
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicator(Landroid/content/res/Resources;)Lcom/android/launcher2/PageIndicator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    .line 148
    instance-of v1, p1, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_3

    .line 149
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iput-boolean v6, v1, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    .line 150
    check-cast p1, Lcom/android/launcher2/Workspace;

    .end local p1    # "view":Lcom/android/launcher2/PagedView;
    iput-object p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 153
    :cond_3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mHandler:Landroid/os/Handler;

    .line 154
    new-instance v1, Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    invoke-direct {v1, p0, v7}, Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;-><init>(Lcom/android/launcher2/PageIndicatorManager;Lcom/android/launcher2/PageIndicatorManager$1;)V

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    .line 155
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->fastScrollEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/ScalarAnimator;->setEndListener(Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;)V

    .line 156
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/PageIndicatorManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PageIndicatorManager;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/PageIndicatorManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/PageIndicatorManager;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/PageIndicatorManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PageIndicatorManager;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionX:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/PageIndicatorManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PageIndicatorManager;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionY:F

    return v0
.end method

.method static getPageIndicatorHeight()I
    .locals 1

    .prologue
    .line 589
    sget v0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorHeight:I

    return v0
.end method

.method private loadPageIfNeeded()V
    .locals 3

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget-boolean v1, v1, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-nez v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    .line 285
    .local v0, "p":I
    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastLoadedPage:I

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastLoadedPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->isPageFastMoving()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    :cond_2
    iput v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastLoadedPage:I

    .line 287
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastLoadedPage:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    goto :goto_0
.end method

.method private snapToScreen(I)V
    .locals 5
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v0, 0x0

    .line 334
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    .line 337
    .local v1, "currentPage":I
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 339
    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    .line 343
    .local v0, "changingScreens":Z
    :cond_0
    const/4 v2, 0x1

    .line 345
    .local v2, "dir":I
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v4

    if-nez v4, :cond_1

    .line 346
    if-ge p1, v1, :cond_3

    .line 347
    const/4 v2, 0x2

    .line 352
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 353
    .local v3, "focusedChild":Landroid/view/View;
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 354
    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 356
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4, p1, v2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(II)V

    .line 357
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 358
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 359
    return-void

    .line 348
    .end local v3    # "focusedChild":Landroid/view/View;
    :cond_3
    if-le p1, v1, :cond_1

    .line 349
    const/4 v2, 0x3

    goto :goto_0
.end method


# virtual methods
.method public cancelEnterFastScroll()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    .line 514
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelFastScroll()V

    .line 517
    :cond_0
    return-void
.end method

.method protected cancelFastScroll()V
    .locals 3

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 484
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getDarkenView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    iget v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mAlphaValueBeforeFastScroll:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 486
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getDarkenView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mAlphaValueBeforeFastScroll:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 487
    iput v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mAlphaValueBeforeFastScroll:F

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->abort()Z

    .line 492
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    if-eqz v0, :cond_1

    .line 493
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicator;->exitFastScroll()V

    .line 497
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 498
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 501
    :cond_2
    return-void
.end method

.method protected checkPageIndicatorLongPress(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 404
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->CheckFolderOpen()V

    .line 405
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    :goto_0
    return v0

    .line 407
    :cond_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 408
    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PageIndicatorManager;->isInPageIndicator(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 411
    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 413
    goto :goto_0

    .line 417
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PageIndicatorManager;->enterFastScoll(FF)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 421
    goto :goto_0
.end method

.method protected checkPageIndicatorTouch(FF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 363
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v1

    .line 366
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v3

    float-to-int v4, p1

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v4

    float-to-int v5, p2

    add-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorArea(II)I

    move-result v0

    .line 367
    .local v0, "index":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v1, v1, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-eqz v1, :cond_3

    .line 369
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    check-cast v1, Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v3, :cond_2

    .line 370
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedView;->openHeadlines(Z)V

    .line 371
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    new-instance v3, Lcom/android/launcher2/PageIndicatorManager$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/PageIndicatorManager$2;-><init>(Lcom/android/launcher2/PageIndicatorManager;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher2/PagedView;->post(Ljava/lang/Runnable;)Z

    move v1, v2

    .line 377
    goto :goto_0

    .line 379
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 381
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/launcher2/PageIndicatorManager;->snapToScreen(I)V

    move v1, v2

    .line 383
    goto :goto_0
.end method

.method drawPageIndicator(Landroid/graphics/Canvas;J)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "currentTime"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 292
    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-nez v6, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    if-eqz v6, :cond_0

    .line 297
    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    .line 298
    .local v0, "currentPage":I
    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v6, v6, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    if-eq v0, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 299
    iget-boolean v6, p0, Lcom/android/launcher2/PageIndicatorManager;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v6, :cond_2

    .line 300
    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "haptic_feedback_extra"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_4

    move v2, v4

    .line 302
    .local v2, "isHapticFeedbackExtraOn":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 303
    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    const/16 v7, 0x4e98

    invoke-virtual {v6, v7, v4}, Lcom/android/launcher2/PagedView;->performHapticFeedback(II)Z

    .line 309
    .end local v2    # "isHapticFeedbackExtraOn":Z
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/launcher2/PageIndicator;->setCurrentPage(IZLcom/android/launcher2/PagedView;)V

    .line 310
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v7}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorTop:I

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/PageIndicator;->setOffset(II)V

    .line 312
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4, p1, v6, p2, p3}, Lcom/android/launcher2/PageIndicator;->draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;J)Z

    move-result v3

    .line 314
    .local v3, "redraw":Z
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v4}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 315
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v4}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v1

    .line 316
    .local v1, "f":F
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v4, v1}, Lcom/android/launcher2/PageIndicator;->setScrollPosition(F)V

    .line 317
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-virtual {v4, v6, v5}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 318
    const/4 v3, 0x1

    .line 319
    invoke-direct {p0}, Lcom/android/launcher2/PageIndicatorManager;->loadPageIfNeeded()V

    .line 322
    .end local v1    # "f":F
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v3, v4

    .line 323
    if-eqz v3, :cond_0

    .line 324
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto/16 :goto_0

    .end local v3    # "redraw":Z
    :cond_4
    move v2, v5

    .line 300
    goto :goto_1
.end method

.method public endEditMode()V
    .locals 0

    .prologue
    .line 594
    return-void
.end method

.method protected enterFastScoll(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getDarkenView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 471
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getDarkenView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mAlphaValueBeforeFastScroll:F

    .line 472
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getDarkenView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PageIndicatorManager;->fastScrollDarkeneffect:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 475
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    .line 476
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v1}, Lcom/android/launcher2/PageIndicator;->enterFastScroll()V

    .line 477
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->layoutPageIndicator()V

    .line 478
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/launcher2/PageIndicatorManager;->handleMove(FFZ)Z

    .line 479
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0
.end method

.method getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicator;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;I)V
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "scrollX"    # I

    .prologue
    .line 637
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v2, v2, Lcom/android/launcher2/PageIndicator;->mGap:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v2, v2, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    mul-int v0, v1, v2

    .line 638
    .local v0, "width":I
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v1, v1, Lcom/android/launcher2/PageIndicator;->mGap:I

    sub-int/2addr v0, v1

    .line 639
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v1, v1, Lcom/android/launcher2/PageIndicator;->mLeft:I

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v2, v2, Lcom/android/launcher2/PageIndicator;->mTop:I

    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v3, v3, Lcom/android/launcher2/PageIndicator;->mLeft:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v4, v4, Lcom/android/launcher2/PageIndicator;->mTop:I

    sget v5, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorHeight:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 640
    return-void
.end method

.method public getPageIndicator()Lcom/android/launcher2/PageIndicator;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    return-object v0
.end method

.method protected getPageIndicator(Landroid/content/res/Resources;)Lcom/android/launcher2/PageIndicator;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 601
    new-instance v0, Lcom/android/launcher2/PageIndicator;

    iget v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-direct {v0, p1, v1}, Lcom/android/launcher2/PageIndicator;-><init>(Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method protected getPageIndicatorArea(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 426
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/PageIndicator;->getPageTouchArea(II)I

    move-result v0

    goto :goto_0
.end method

.method public getPreviewRects()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 540
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 541
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 542
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 543
    .local v2, "y":F
    iput v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionX:F

    .line 544
    iput v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionY:F

    .line 546
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    :cond_0
    move v3, v4

    .line 568
    :goto_0
    return v3

    .line 548
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    .line 549
    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v5}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->checkPageIndicatorTouch(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 555
    :pswitch_1
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/launcher2/PageIndicatorManager;->handleMove(FFZ)Z

    move-result v3

    goto :goto_0

    .line 558
    :pswitch_2
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->isInPageIndicator(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 559
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->scheduleEnterFastScroll()V

    goto :goto_0

    .line 565
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    goto :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method handleMove(FFZ)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pan"    # Z

    .prologue
    const/4 v3, 0x0

    .line 452
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v2

    if-nez v2, :cond_0

    .line 465
    :goto_0
    return v3

    .line 453
    :cond_0
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    int-to-float v2, v2

    sub-float v6, p1, v2

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-boolean v2, v2, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v2, v2, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    :goto_1
    int-to-float v2, v2

    add-float/2addr v2, v6

    iget v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 455
    .local v0, "f":F
    if-eqz p3, :cond_2

    .line 456
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 457
    .local v1, "start":F
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher2/ScalarAnimator;->start(FF)V

    .line 464
    .end local v1    # "start":F
    :goto_2
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 465
    const/4 v3, 0x1

    goto :goto_0

    .end local v0    # "f":F
    :cond_1
    move v2, v3

    .line 453
    goto :goto_1

    .line 459
    .restart local v0    # "f":F
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/PageIndicator;->setScrollPosition(F)V

    .line 460
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v2, v4, v3}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 461
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 462
    invoke-direct {p0}, Lcom/android/launcher2/PageIndicatorManager;->loadPageIfNeeded()V

    goto :goto_2
.end method

.method public handleOrientationChange()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PageIndicator;->handleOrientationChange(Landroid/content/res/Resources;)V

    .line 586
    return-void
.end method

.method public hidePageIndicator(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicator;->hide(Z)V

    .line 582
    :cond_0
    return-void
.end method

.method isFastScrolling()Z
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicator;->isFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isHoveringOnPageIndicator(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v1

    float-to-int v2, p1

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v2

    float-to-int v3, p2

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorArea(II)I

    move-result v0

    .line 396
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 397
    const/4 v1, 0x1

    .line 399
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isInPageIndicator(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v0

    float-to-int v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v1

    float-to-int v2, p2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorArea(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layoutPageIndicator()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 175
    iget-object v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    sget-object v10, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    if-eq v9, v10, :cond_0

    .line 176
    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {p0, v7}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    .line 230
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v9}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    .line 180
    .local v4, "pageCount":I
    iget-object v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 182
    .local v2, "indicatorWidth":I
    const/4 v0, 0x0

    .line 183
    .local v0, "camera_page":I
    const/4 v1, 0x0

    .line 185
    .local v1, "headlines_page":I
    iget-object v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v9, :cond_1

    sget-boolean v9, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v9

    if-nez v9, :cond_1

    .line 186
    const/4 v1, 0x1

    .line 188
    :cond_1
    iget-object v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-ne v1, v7, :cond_5

    :goto_1
    invoke-virtual {v9, v7}, Lcom/android/launcher2/PageIndicator;->setShowHeadLinePage(Z)V

    .line 190
    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v9}, Lcom/android/launcher2/PageIndicator;->setPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v9}, Lcom/android/launcher2/PageIndicator;->setDefaultPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mCameraPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v9}, Lcom/android/launcher2/PageIndicator;->setCameraPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mHeadlinesPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v9}, Lcom/android/launcher2/PageIndicator;->setHeadlinesPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mAddPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v9}, Lcom/android/launcher2/PageIndicator;->setAddPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    sget-boolean v7, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v7, :cond_2

    .line 198
    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mFestivalPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v9}, Lcom/android/launcher2/PageIndicator;->setFestivalPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mFolderPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v9}, Lcom/android/launcher2/PageIndicator;->setFolderPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v7

    const/16 v9, 0x258

    if-lt v7, v9, :cond_3

    .line 203
    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorFocus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v9}, Lcom/android/launcher2/PageIndicator;->setFocusPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mFocusDefaultPageIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v9}, Lcom/android/launcher2/PageIndicator;->setFocusDefaultPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v7, v4}, Lcom/android/launcher2/PageIndicator;->setPageCount(I)V

    .line 208
    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v7}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 211
    .local v5, "res":Landroid/content/res/Resources;
    add-int v7, v4, v0

    add-int v6, v7, v1

    .line 212
    .local v6, "totalpageCount":I
    const v7, 0x7f0e00df

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 214
    .local v3, "originPageIndicatorGap":I
    sget-boolean v7, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v7, v7, Lcom/android/launcher2/Workspace;

    if-eqz v7, :cond_6

    mul-int v7, v6, v2

    add-int/lit8 v9, v6, -0x1

    mul-int/2addr v9, v3

    add-int/2addr v7, v9

    iget v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mHomePageIndicatorMaxWidth:I

    if-le v7, v9, :cond_6

    .line 216
    iget v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mHomePageIndicatorMaxWidth:I

    mul-int v9, v6, v2

    sub-int/2addr v7, v9

    add-int/lit8 v9, v6, -0x1

    div-int/2addr v7, v9

    iput v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    .line 221
    :goto_2
    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    invoke-virtual {v7, v9}, Lcom/android/launcher2/PageIndicator;->setGap(I)V

    .line 223
    add-int v7, v4, v0

    add-int/2addr v7, v1

    iget v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v9, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    add-int/2addr v9, v2

    mul-int/2addr v7, v9

    if-lez v4, :cond_4

    iget v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    :cond_4
    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    .line 225
    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v7}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    .line 227
    iget-object v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v7}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    goto/16 :goto_0

    .end local v3    # "originPageIndicatorGap":I
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "totalpageCount":I
    :cond_5
    move v7, v8

    .line 188
    goto/16 :goto_1

    .line 218
    .restart local v3    # "originPageIndicatorGap":I
    .restart local v5    # "res":Landroid/content/res/Resources;
    .restart local v6    # "totalpageCount":I
    :cond_6
    iput v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    goto :goto_2
.end method

.method public onDragEnter(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 614
    :cond_0
    :goto_0
    return v0

    .line 611
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/launcher2/PageIndicator$Page;->isDraggedOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PageIndicator$Page;->setDraggedOn(Z)V

    goto :goto_0
.end method

.method public onDragExit(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 623
    :cond_0
    :goto_0
    return v0

    .line 620
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/launcher2/PageIndicator$Page;->isDraggedOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, v1, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PageIndicator$Page;->setDraggedOn(Z)V

    goto :goto_0
.end method

.method public onDrop(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 627
    const/4 v1, 0x0

    .line 628
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v2, v2, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 629
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v2, v2, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/launcher2/PageIndicator$Page;->isDraggedOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v2, v2, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PageIndicator$Page;->setDraggedOn(Z)V

    .line 628
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    :cond_1
    return v1
.end method

.method scheduleEnterFastScroll()V
    .locals 4

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    .line 522
    return-void
.end method

.method public setAnimationPrevented(Z)V
    .locals 1
    .param p1, "bIsAnimationPrevented"    # Z

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicator;->setAnimationPrevented(Z)V

    .line 644
    return-void
.end method

.method public setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V
    .locals 9
    .param p1, "itemType"    # Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 234
    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v3

    .line 235
    .local v3, "pageCount":I
    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 245
    .local v1, "indicatorWidth":I
    sget-boolean v8, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v8, :cond_0

    sget-boolean v8, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v8, :cond_0

    .line 246
    sget-object v8, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    if-ne p1, v8, :cond_0

    .line 247
    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v8}, Lcom/android/launcher2/PagedView;->getFestivalPageCnt()I

    move-result v8

    sub-int/2addr v3, v8

    .line 250
    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v8, v3}, Lcom/android/launcher2/PageIndicator;->setPageCount(I)V

    .line 251
    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v8, p1}, Lcom/android/launcher2/PageIndicator;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    .line 252
    iput-object p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "headlines_page":I
    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v8, :cond_1

    sget-boolean v8, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v8

    if-nez v8, :cond_1

    .line 255
    const/4 v0, 0x1

    .line 257
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-ne v0, v6, :cond_3

    :goto_0
    invoke-virtual {v8, v6}, Lcom/android/launcher2/PageIndicator;->setShowHeadLinePage(Z)V

    .line 259
    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 261
    .local v4, "res":Landroid/content/res/Resources;
    add-int v5, v3, v0

    .line 262
    .local v5, "totalpageCount":I
    const v6, 0x7f0e00df

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 264
    .local v2, "originPageIndicatorGap":I
    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    sget-object v8, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    if-ne v6, v8, :cond_4

    sget-boolean v6, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v6, v6, Lcom/android/launcher2/Workspace;

    if-eqz v6, :cond_4

    mul-int v6, v5, v1

    add-int/lit8 v8, v5, -0x1

    mul-int/2addr v8, v2

    add-int/2addr v6, v8

    iget v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mHomePageIndicatorMaxWidth:I

    if-le v6, v8, :cond_4

    .line 267
    iget v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mHomePageIndicatorMaxWidth:I

    mul-int v8, v5, v1

    sub-int/2addr v6, v8

    add-int/lit8 v8, v5, -0x1

    div-int/2addr v6, v8

    iput v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    .line 272
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    invoke-virtual {v6, v8}, Lcom/android/launcher2/PageIndicator;->setGap(I)V

    .line 274
    add-int v6, v3, v0

    iget v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v8, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    add-int/2addr v8, v1

    mul-int/2addr v6, v8

    if-lez v3, :cond_2

    iget v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    :cond_2
    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    .line 276
    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorMarginLeft:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    .line 278
    iget-object v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v6}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    .line 279
    return-void

    .end local v2    # "originPageIndicatorGap":I
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "totalpageCount":I
    :cond_3
    move v6, v7

    .line 257
    goto :goto_0

    .line 269
    .restart local v2    # "originPageIndicatorGap":I
    .restart local v4    # "res":Landroid/content/res/Resources;
    .restart local v5    # "totalpageCount":I
    :cond_4
    iput v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    goto :goto_1
.end method

.method public setGap(I)V
    .locals 0
    .param p1, "gap"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    .line 164
    return-void
.end method

.method public setLeftForQuickView(Z)V
    .locals 1
    .param p1, "hasHotseatRight"    # Z

    .prologue
    .line 167
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 168
    iget v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mHotseatSize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorMarginLeft:I

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorMarginLeft:I

    goto :goto_0
.end method

.method public setTop(I)V
    .locals 0
    .param p1, "top"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorTop:I

    .line 160
    return-void
.end method

.method public showPageIndicator()V
    .locals 1

    .prologue
    .line 572
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PageIndicatorManager;->showPageIndicator(Z)V

    .line 573
    return-void
.end method

.method public showPageIndicator(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher2/PageIndicator;->show(ZZ)V

    .line 577
    :cond_0
    return-void
.end method

.method snapPageTouchArea(FF)I
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, -0x1

    .line 435
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v2

    float-to-int v3, p1

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v3

    float-to-int v4, p2

    add-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorArea(II)I

    move-result v0

    .line 437
    .local v0, "page":I
    if-eq v0, v1, :cond_0

    .line 438
    invoke-direct {p0, v0}, Lcom/android/launcher2/PageIndicatorManager;->snapToScreen(I)V

    .line 448
    .end local v0    # "page":I
    :goto_0
    return v0

    .restart local v0    # "page":I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public startEditMode()V
    .locals 0

    .prologue
    .line 592
    return-void
.end method
