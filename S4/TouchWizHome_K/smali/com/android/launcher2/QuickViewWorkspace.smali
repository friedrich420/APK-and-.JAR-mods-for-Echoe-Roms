.class public Lcom/android/launcher2/QuickViewWorkspace;
.super Lcom/android/launcher2/QuickView;
.source "QuickViewWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;,
        Lcom/android/launcher2/QuickViewWorkspace$SecretButton;,
        Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;,
        Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;
    }
.end annotation


# static fields
.field private static final ADD_BTN_TAG:Ljava/lang/Object;

.field private static final ANIMATED_SCROLL_DURATION:I = 0x258

.field private static final INSIDE_LEFT_SCROLL_ZONE:I = 0x1

.field private static final INSIDE_RIGHT_SCROLL_ZONE:I = 0x2

.field private static final OUTSIDE_SCROLL_ZONE:I = 0x0

.field private static final QV_PAGE_SNAP_ANIMATION_DURATION:I = 0x190

.field private static final RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

.field private static final ROW_BY_COL_LAYOUT:[[I

.field private static final TAG:Ljava/lang/String; = "QuickViewWorkspace"

.field private static final TOUCH_DRAG_DELETE:I = 0x1

.field private static final TOUCH_DRAG_NORMAL:I

.field private static sHitRect:Landroid/graphics/Rect;


# instance fields
.field public final MENU_ZONE:I

.field public final PAGE_SNAP_ANIMATION_DURATION:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

.field private mChildLeft:I

.field private mConfigurationChangeIsInProgress:Z

.field private mDeleteIndex:I

.field private mDeleteView:Landroid/view/View;

.field private mDragState:I

.field private mEnterAnimator:Landroid/animation/Animator;

.field private mExitAnimator:Landroid/animation/Animator;

.field private mHandler:Landroid/os/Handler;

.field private mHeightMeasureSpec:I

.field private final mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHomeBgMainDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaxDeltaX:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOrientation:I

.field private mPageLP:Landroid/widget/FrameLayout$LayoutParams;

.field private mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollCheck:Z

.field private mScrollDelay:I

.field private mScrollHalfWidth:I

.field private mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

.field private mScrollState:I

.field private mScrollWidth:I

.field mScroller:Landroid/widget/Scroller;

.field private final mSetHomeListener:Landroid/view/View$OnClickListener;

.field private mTempRects:[Landroid/graphics/Rect;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidthMeasureSpec:I

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

.field private vDeleteDropLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 105
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

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    .line 124
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/high16 v1, -0x680000

    const/high16 v2, -0xe00000

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace;->RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

    .line 272
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace;->sHitRect:Landroid/graphics/Rect;

    return-void

    .line 105
    nop

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
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
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

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->PAGE_SNAP_ANIMATION_DURATION:I

    .line 70
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0103

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->MENU_ZONE:I

    .line 74
    iput v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    .line 75
    new-instance v3, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-direct {v3, p0}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    .line 76
    iput v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mMaxDeltaX:I

    .line 133
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v3

    new-array v3, v3, [Lcom/android/launcher2/QuickView$Animate;

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    .line 137
    iput v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    .line 157
    iput-boolean v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollCheck:Z

    .line 159
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 1131
    new-instance v3, Lcom/android/launcher2/QuickViewWorkspace$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/QuickViewWorkspace$2;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mSetHomeListener:Landroid/view/View$OnClickListener;

    .line 2369
    iput-boolean v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mConfigurationChangeIsInProgress:Z

    .line 2371
    iput-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    .line 173
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v2

    .line 174
    .local v2, "maxScreenCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 175
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    new-instance v4, Lcom/android/launcher2/QuickView$Animate;

    invoke-direct {v4, p0}, Lcom/android/launcher2/QuickView$Animate;-><init>(Lcom/android/launcher2/QuickView;)V

    aput-object v4, v3, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_0
    new-instance v3, Landroid/widget/Scroller;

    invoke-direct {v3, p1, v7, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    .line 180
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollDelay:I

    .line 182
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 183
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mMinimumVelocity:I

    .line 184
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mMaximumVelocity:I

    .line 186
    const v3, 0x7f050012

    invoke-static {p1, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    .line 188
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 189
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    new-instance v4, Lcom/android/launcher2/QuickViewWorkspace$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/QuickViewWorkspace$1;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    const v3, 0x7f050013

    invoke-static {p1, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    .line 204
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    const-wide/16 v4, 0x168

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02009d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgMainDrawable:Landroid/graphics/drawable/Drawable;

    .line 210
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/QuickViewWorkspace;)Lcom/android/launcher2/Workspace;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/QuickViewWorkspace;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/QuickViewWorkspace;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/QuickViewWorkspace;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mConfigurationChangeIsInProgress:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher2/QuickViewWorkspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/QuickViewWorkspace;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/QuickViewWorkspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/QuickViewWorkspace;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollDelay:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/QuickViewWorkspace;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addScreen()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1407
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1408
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .line 1409
    .local v2, "index":I
    if-gez v2, :cond_0

    .line 1410
    const/4 v2, 0x0

    .line 1412
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1414
    .local v0, "add":Landroid/view/View;
    const/4 v3, 0x0

    .line 1418
    .local v3, "maxScreenCount":I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v3

    .line 1420
    if-lt v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v5, v6, :cond_1

    .line 1453
    :goto_0
    return-void

    .line 1422
    :cond_1
    if-ne v1, v3, :cond_2

    .line 1423
    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 1426
    :cond_2
    invoke-direct {p0, v2, v7}, Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(IZ)Landroid/view/View;

    move-result-object v4

    .line 1427
    .local v4, "screen":Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1433
    sget-boolean v5, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v5, :cond_4

    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v5, :cond_4

    .line 1437
    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v6

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    .line 1444
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    .line 1445
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 1446
    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    check-cast v5, Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v5, v8}, Lcom/android/launcher2/QuickViewDragBar;->enableDelete(Z)V

    .line 1448
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v5, v5, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 1449
    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v5}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    .line 1451
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    .line 1452
    sget-object v5, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f10005a

    invoke-virtual {v5, v6}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto :goto_0

    .line 1440
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v5}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->addPage()V

    .line 1441
    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_1
.end method

.method private enableWorkspaceScreensCache()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 975
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getNumPages()I

    move-result v1

    .line 977
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 978
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3, v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 979
    .local v0, "celllayout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 980
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 977
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 982
    .end local v0    # "celllayout":Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method private getViewLayout(III)V
    .locals 23
    .param p1, "count"    # I
    .param p2, "childWidth"    # I
    .param p3, "childHeight"    # I

    .prologue
    .line 1650
    if-lez p1, :cond_0

    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 1709
    :cond_0
    return-void

    .line 1657
    :cond_1
    move/from16 v0, p1

    new-array v0, v0, [Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    .line 1658
    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    array-length v13, v0

    .line 1659
    .local v13, "rows":I
    const/4 v8, 0x0

    .line 1660
    .local v8, "maxCols":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v13, :cond_3

    .line 1661
    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    aget v6, v19, v7

    .line 1662
    .local v6, "colsOnThisRow":I
    if-le v6, v8, :cond_2

    .line 1663
    move v8, v6

    .line 1660
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1672
    .end local v6    # "colsOnThisRow":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getMeasuredWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingLeft()I

    move-result v20

    sub-int v10, v19, v20

    .line 1673
    .local v10, "ourWidth":I
    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildGapH:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v18, v10, v19

    .line 1675
    .local v18, "usableWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getMeasuredHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingBottom()I

    move-result v20

    sub-int v9, v19, v20

    .line 1676
    .local v9, "ourHeight":I
    add-int/lit8 v19, v13, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildGapV:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v17, v9, v19

    .line 1678
    .local v17, "usableHeight":I
    mul-int v15, p3, v13

    .line 1679
    .local v15, "totChildHeight":I
    mul-int v16, p2, v8

    .line 1680
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

    .line 1682
    .local v14, "scale":F
    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v19, v14, v19

    if-lez v19, :cond_4

    .line 1683
    const/high16 v14, 0x3f800000    # 1.0f

    .line 1684
    :cond_4
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p2, v0

    .line 1685
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p3, v0

    .line 1689
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildGapV:I

    move/from16 v19, v0

    add-int v19, v19, p3

    mul-int v19, v19, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildGapV:I

    move/from16 v20, v0

    sub-int v15, v19, v20

    .line 1690
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingTop()I

    move-result v19

    sub-int v20, v9, v15

    div-int/lit8 v20, v20, 0x2

    add-int v12, v19, v20

    .line 1691
    .local v12, "rowTop":I
    const/4 v3, 0x0

    .line 1692
    .local v3, "childCount":I
    const/4 v11, 0x0

    .local v11, "row":I
    :goto_1
    if-ge v11, v13, :cond_0

    .line 1693
    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    aget v5, v19, v11

    .line 1694
    .local v5, "cols":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildGapH:I

    move/from16 v19, v0

    add-int v19, v19, p2

    mul-int v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildGapH:I

    move/from16 v20, v0

    sub-int v16, v19, v20

    .line 1695
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingLeft()I

    move-result v19

    sub-int v20, v10, v16

    div-int/lit8 v20, v20, 0x2

    add-int v4, v19, v20

    .line 1696
    .local v4, "colLeft":I
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_6

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v3

    if-nez v19, :cond_5

    .line 1698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    new-instance v20, Landroid/graphics/Rect;

    add-int v21, v4, p2

    add-int v22, v12, p3

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v4, v12, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v20, v19, v3

    .line 1704
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 1705
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildGapH:I

    move/from16 v19, v0

    add-int v19, v19, p2

    add-int v4, v4, v19

    .line 1696
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1701
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v3

    add-int v20, v4, p2

    add-int v21, v12, p3

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 1707
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildGapV:I

    move/from16 v19, v0

    add-int v19, v19, p3

    add-int v12, v12, v19

    .line 1692
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method

.method private isDeleteDropTarget(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1367
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v0

    .line 1368
    .local v0, "dragBar":Lcom/android/launcher2/QuickViewDragBar;
    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewDragBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 1369
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/QuickViewDragBar;->checkOver(II)Z

    move-result v1

    .line 1371
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isHome(Landroid/view/View;)Z
    .locals 4
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2311
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 2312
    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "v":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2313
    .local v1, "parentHome":Landroid/view/ViewGroup;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2314
    .local v0, "home":Landroid/view/View;
    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    .line 2315
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "home":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v2

    .line 2318
    :cond_0
    return v2
.end method

.method private makeAddBtn()Landroid/view/View;
    .locals 4

    .prologue
    .line 1267
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(IZ)Landroid/view/View;

    move-result-object v0

    .line 1268
    .local v0, "v":Landroid/view/View;
    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100027

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100028

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1273
    return-object v0
.end method

.method private makeScreen(IZ)Landroid/view/View;
    .locals 14
    .param p1, "index"    # I
    .param p2, "isAddBtn"    # Z

    .prologue
    .line 1185
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1186
    .local v5, "context":Landroid/content/Context;
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1187
    .local v9, "v":Landroid/widget/FrameLayout;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1188
    .local v8, "res":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 1189
    .local v3, "buttonParentPaddingRight":I
    const/4 v4, 0x0

    .line 1190
    .local v4, "buttonParentPaddingTop":I
    const/4 v2, 0x0

    .line 1195
    .local v2, "buttonParentPaddingLeft":I
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1196
    .local v1, "buttonParent":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    .line 1197
    .local v6, "lp":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v11, -0x2

    const/16 v12, 0x31

    invoke-direct {v7, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1200
    .local v7, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1222
    new-instance v0, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;

    invoke-direct {v0, v5}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;-><init>(Landroid/content/Context;)V

    .line 1224
    .local v0, "b":Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->setPadding(IIII)V

    .line 1225
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v10

    if-ne p1, v10, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {v0, v10}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->setChecked(Z)V

    .line 1226
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100018

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1228
    if-nez p2, :cond_0

    .line 1230
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1233
    :cond_0
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mSetHomeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1234
    invoke-virtual {v9, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1236
    const v10, 0x7f0c0018

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1238
    const v10, 0x7f0c0019

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1240
    const v10, 0x7f0c001a

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1242
    const/4 v10, 0x0

    invoke-virtual {v1, v2, v4, v3, v10}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1243
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPageLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v9, p1, v10}, Lcom/android/launcher2/QuickViewWorkspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1244
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    iget-object v13, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1255
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1256
    invoke-virtual {v9, p0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1257
    invoke-virtual {v9, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1258
    return-object v9

    .line 1225
    :cond_1
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private onDrawComplete(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2131
    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    # getter for: Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->mState:I
    invoke-static {v2}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->access$200(Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 2134
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollCheck:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2135
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    .line 2136
    .local v1, "workspace":Lcom/android/launcher2/Workspace;
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2137
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollCheck:Z

    .line 2165
    .end local v1    # "workspace":Lcom/android/launcher2/Workspace;
    :cond_1
    :goto_0
    return-void

    .line 2141
    :cond_2
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2143
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2146
    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 2147
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020106

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 2150
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2152
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2155
    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    .line 2156
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020107

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 2159
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollX()I

    move-result v3

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollX()I

    move-result v5

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2162
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private scroll(IIZ)V
    .locals 4
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "changePage"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1712
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollX()I

    move-result v1

    .line 1713
    .local v1, "scrollX":I
    if-gez p1, :cond_3

    .line 1714
    if-lez v1, :cond_2

    .line 1715
    add-int v2, v1, p1

    if-gez v2, :cond_1

    .line 1716
    neg-int v2, v1

    invoke-virtual {p0, v2, v3, p3}, Lcom/android/launcher2/QuickViewWorkspace;->smoothScrollBy(IIZ)V

    .line 1735
    :cond_0
    :goto_0
    return-void

    .line 1718
    :cond_1
    invoke-virtual {p0, p1, v3, p3}, Lcom/android/launcher2/QuickViewWorkspace;->smoothScrollBy(IIZ)V

    goto :goto_0

    .line 1721
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    goto :goto_0

    .line 1723
    :cond_3
    if-lez p1, :cond_0

    .line 1724
    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mMaxDeltaX:I

    sub-int v0, v2, v1

    .line 1725
    .local v0, "availableToScroll":I
    if-lez v0, :cond_5

    .line 1726
    if-le v0, p1, :cond_4

    .line 1727
    invoke-virtual {p0, p1, v3, p3}, Lcom/android/launcher2/QuickViewWorkspace;->smoothScrollBy(IIZ)V

    goto :goto_0

    .line 1729
    :cond_4
    invoke-virtual {p0, v0, v3, p3}, Lcom/android/launcher2/QuickViewWorkspace;->smoothScrollBy(IIZ)V

    goto :goto_0

    .line 1732
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method cancelDeleteView()V
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1016
    :goto_0
    return-void

    .line 1011
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 1012
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 1013
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    goto :goto_0
.end method

.method public cancelDrag()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1001
    invoke-direct {p0, v0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->isDeleteDropTarget(II)Z

    .line 1003
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->cancelDrag()V

    .line 1004
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    .line 1005
    return-void
.end method

.method public close(Z)V
    .locals 8
    .param p1, "bResetAlpha"    # Z

    .prologue
    const/4 v5, 0x1

    .line 945
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->close()V

    .line 946
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    .line 947
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v5}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 949
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v7

    .line 950
    .local v7, "vDeleteDropLayout":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 951
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 954
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 955
    .local v6, "r":Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    const v1, 0x7f0e00e0

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0e00df

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    .line 957
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_1

    .line 958
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->setVisibilityHomeOptionMenu(I)V

    .line 961
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->enableWorkspaceScreensCache()V

    .line 963
    if-eqz p1, :cond_2

    .line 964
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setDarkenViewAlpha(F)V

    .line 966
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    .line 970
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    const v2, 0x7f10006e

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getCurrentPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v4}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getNumPages()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;IIIZ)V

    .line 972
    return-void
.end method

.method public computeScroll()V
    .locals 11

    .prologue
    .line 1758
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-nez v7, :cond_1

    .line 1801
    :cond_0
    :goto_0
    return-void

    .line 1769
    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1770
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollX()I

    move-result v2

    .line 1771
    .local v2, "oldX":I
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollY()I

    move-result v3

    .line 1772
    .local v3, "oldY":I
    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1773
    .local v5, "x":I
    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1774
    .local v6, "y":I
    invoke-virtual {p0, v5}, Lcom/android/launcher2/QuickViewWorkspace;->setScrollX(I)V

    .line 1775
    invoke-virtual {p0, v6}, Lcom/android/launcher2/QuickViewWorkspace;->setScrollY(I)V

    .line 1782
    iget v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 1783
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollX()I

    move-result v7

    sub-int v1, v7, v2

    .line 1784
    .local v1, "deltaX":I
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 1785
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1786
    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    .line 1787
    .local v4, "r":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1788
    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v1

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 1789
    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 1791
    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->right:I

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1795
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "deltaX":I
    .end local v4    # "r":Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    goto :goto_0
.end method

.method disableWorkspaceScreensCache()V
    .locals 4

    .prologue
    .line 985
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getNumPages()I

    move-result v1

    .line 987
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 988
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3, v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 990
    .local v0, "celllayout":Lcom/android/launcher2/CellLayout;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 987
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 992
    .end local v0    # "celllayout":Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1940
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    .line 1941
    .local v19, "workspace":Lcom/android/launcher2/Workspace;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v8

    .line 1942
    .local v8, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getWidth()I

    move-result v18

    .line 1943
    .local v18, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getHeight()I

    move-result v12

    .line 1945
    .local v12, "height":I
    if-eqz v18, :cond_0

    if-nez v12, :cond_1

    .line 2128
    :cond_0
    :goto_0
    return-void

    .line 1948
    :cond_1
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1949
    .local v15, "progress":F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    .line 1950
    .local v9, "currentPage":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 1957
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v8, :cond_7

    :cond_3
    if-lez v8, :cond_7

    .line 1958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v8, :cond_a

    .line 1959
    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1960
    .local v4, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v7

    .line 1961
    .local v7, "chilecount":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1962
    .local v6, "childWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1963
    .local v5, "childHeight":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-lt v7, v0, :cond_0

    .line 1966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v8, :cond_6

    .line 1967
    :cond_5
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    .line 1969
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6, v5}, Lcom/android/launcher2/QuickViewWorkspace;->getViewLayout(III)V

    .line 1970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    .line 1976
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v7    # "chilecount":I
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 1977
    const/4 v15, 0x0

    .line 1978
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationStartTime:J

    .line 1979
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mPinchIndex:I

    .line 1981
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mIsWorkspace:Z

    .line 1982
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/QuickViewWorkspace;->setOpenStartRect(I)V

    .line 1984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    .line 1985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v16

    .line 1986
    .local v16, "vDeleteDropLayout":Landroid/view/View;
    if-eqz v16, :cond_8

    .line 1987
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1991
    .end local v16    # "vDeleteDropLayout":Landroid/view/View;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    .line 1992
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    .line 1993
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    .line 1994
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v8, :cond_11

    .line 1995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    aput-object v21, v20, v13

    .line 1996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 1997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v21, v0

    aget-object v21, v21, v13

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1998
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    aput-object v21, v20, v13

    .line 1994
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1972
    .end local v13    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 2000
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 2001
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationStartTime:J

    .line 2002
    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    .line 2003
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchIndex:I

    .line 2004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    .line 2005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v16

    .line 2006
    .restart local v16    # "vDeleteDropLayout":Landroid/view/View;
    if-eqz v16, :cond_c

    .line 2007
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2010
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v17

    .line 2011
    .local v17, "vHomeScreenOptionMenu":Landroid/view/View;
    if-eqz v17, :cond_d

    .line 2012
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2015
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 2016
    .local v14, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2017
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/QuickViewWorkspace;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2020
    .end local v14    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "vDeleteDropLayout":Landroid/view/View;
    .end local v17    # "vHomeScreenOptionMenu":Landroid/view/View;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    .line 2021
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/QuickViewWorkspace;->setCloseEndRect(I)V

    .line 2023
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    .line 2024
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    .line 2025
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    if-ge v13, v8, :cond_10

    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    aput-object v21, v20, v13

    .line 2027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    .line 2028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v21, v0

    aget-object v21, v21, v13

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2029
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    aput-object v21, v20, v13

    .line 2025
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2031
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->onQuickViewCloseAnimationStarted()V

    .line 2034
    .end local v13    # "i":I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 2035
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_4
    if-ge v13, v8, :cond_14

    .line 2036
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2037
    .restart local v4    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-eq v4, v0, :cond_13

    add-int/lit8 v20, v9, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_12

    add-int/lit8 v20, v9, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_13

    .line 2038
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v13}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    .line 2035
    :cond_13
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 2041
    .end local v4    # "child":Landroid/view/View;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    .line 2123
    .end local v13    # "i":I
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 2124
    const/4 v15, 0x0

    .line 2125
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 2127
    :cond_16
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/QuickViewWorkspace;->onDrawComplete(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 2044
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_29

    .line 2047
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchIndex:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_19

    .line 2049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    .line 2052
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationStartTime:J

    move-wide/from16 v22, v0

    sub-long v10, v20, v22

    .line 2054
    .local v10, "current":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationDuration:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v10, v20

    if-ltz v20, :cond_22

    .line 2056
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_21

    .line 2057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->onQuickViewCloseAnimationCompleted()V

    .line 2058
    :cond_1a
    const/16 v20, 0x8

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    .line 2063
    :goto_6
    const/high16 v15, 0x3f800000    # 1.0f

    .line 2068
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v8, :cond_1c

    .line 2069
    :cond_1b
    if-lez v8, :cond_1c

    .line 2070
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    .line 2073
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAniEngine:Lcom/android/launcher2/AnimateEngine;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/launcher2/AnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    .line 2074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    if-nez v20, :cond_23

    .line 2075
    const-string v20, "QuickViewWorkspace"

    const-string v21, "Failed to get current rectangles from animation engine"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_20

    .line 2098
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1f

    .line 2099
    const/high16 v15, 0x3f800000    # 1.0f

    .line 2101
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_20

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v17

    .line 2103
    .restart local v17    # "vHomeScreenOptionMenu":Landroid/view/View;
    if-eqz v17, :cond_20

    .line 2104
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/view/View;->setAlpha(F)V

    .line 2109
    .end local v17    # "vHomeScreenOptionMenu":Landroid/view/View;
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    goto/16 :goto_5

    .line 2060
    :cond_21
    const/16 v20, 0x7

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    goto/16 :goto_6

    .line 2065
    :cond_22
    long-to-float v0, v10

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationDuration:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v15, v20, v21

    goto/16 :goto_7

    .line 2077
    :cond_23
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_8
    if-ge v13, v8, :cond_1d

    .line 2078
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2079
    .restart local v4    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v21, v0

    aget-object v21, v21, v13

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v22, v0

    aget-object v22, v22, v13

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    aget-object v23, v23, v13

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 2081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->isAvailableRect(Landroid/graphics/Rect;)Z

    move-result v20

    if-eqz v20, :cond_26

    .line 2082
    float-to-double v0, v15

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    cmpg-double v20, v20, v22

    if-gez v20, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_25

    :cond_24
    float-to-double v0, v15

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    cmpl-double v20, v20, v22

    if-lez v20, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_27

    .line 2084
    :cond_25
    if-ne v13, v9, :cond_26

    .line 2085
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v13}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    .line 2077
    :cond_26
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_8

    .line 2088
    :cond_27
    add-int/lit8 v20, v9, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_28

    if-eq v13, v9, :cond_28

    add-int/lit8 v20, v9, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_26

    .line 2089
    :cond_28
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v13}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    goto :goto_9

    .line 2112
    .end local v4    # "child":Landroid/view/View;
    .end local v10    # "current":J
    .end local v13    # "i":I
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    move/from16 v20, v0

    if-eqz v20, :cond_2a

    .line 2113
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollX()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollHalfWidth:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    move/from16 v21, v0

    div-int v9, v20, v21

    .line 2115
    :cond_2a
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_a
    if-ge v13, v8, :cond_15

    .line 2116
    add-int/lit8 v20, v9, -0x1

    move/from16 v0, v20

    if-eq v13, v0, :cond_2b

    if-eq v13, v9, :cond_2b

    add-int/lit8 v20, v9, 0x1

    move/from16 v0, v20

    if-ne v13, v0, :cond_2c

    .line 2119
    :cond_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    .line 2115
    :cond_2c
    add-int/lit8 v13, v13, 0x1

    goto :goto_a
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V
    .locals 34
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I

    .prologue
    .line 2170
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v25

    .local v25, "viewWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v24

    .line 2171
    .local v24, "viewHeight":I
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    div-float v10, v29, v30

    .local v10, "halfViewWidth":F
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    div-float v9, v29, v30

    .line 2174
    .local v9, "halfViewHeight":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v26, v29, v10

    .line 2175
    .local v26, "viewXCenter":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v27, v29, v9

    .line 2176
    .local v27, "viewYCenter":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 2177
    .local v17, "res":Landroid/content/res/Resources;
    const v29, 0x7f0c0017

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 2179
    .local v7, "childPaddingLeft":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2183
    invoke-static/range {p2 .. p2}, Lcom/android/launcher2/QuickViewWorkspace;->isHome(Landroid/view/View;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 2184
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgMainDrawable:Landroid/graphics/drawable/Drawable;

    .line 2189
    .local v6, "bgDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_6

    .line 2190
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_4

    .line 2191
    sget-object v29, Lcom/android/launcher2/QuickViewWorkspace;->RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2192
    const/16 v29, 0x80

    const/16 v30, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 2196
    :goto_1
    sget v29, Lcom/android/launcher2/QuickViewWorkspace;->mScaleFactor:F

    const v30, 0x3ca3d70a    # 0.02f

    add-float v29, v29, v30

    const v30, 0x3f933333    # 1.15f

    cmpg-float v29, v29, v30

    if-gez v29, :cond_5

    sget v29, Lcom/android/launcher2/QuickViewWorkspace;->mScaleFactor:F

    const v30, 0x3ca3d70a    # 0.02f

    add-float v19, v29, v30

    .line 2197
    .local v19, "scaleFactor":F
    :goto_2
    sput v19, Lcom/android/launcher2/QuickViewWorkspace;->mScaleFactor:F

    .line 2203
    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2204
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2205
    neg-float v0, v10

    move/from16 v29, v0

    neg-float v0, v9

    move/from16 v30, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2207
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationStartTime:J

    move-wide/from16 v32, v0

    sub-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v8, v0

    .line 2208
    .local v8, "current":I
    int-to-float v0, v8

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationDuration:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v16, v29, v30

    .line 2209
    .local v16, "progress":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    move/from16 v4, v16

    .line 2210
    .local v4, "bgAlpha":F
    :goto_4
    const/16 v29, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    move/from16 v0, v30

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v30

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 2212
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v29, v0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v29, v0

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_0

    .line 2215
    const/high16 v4, 0x3f800000    # 1.0f

    .line 2217
    :cond_0
    const/high16 v29, 0x437f0000    # 255.0f

    mul-float v29, v29, v4

    move/from16 v0, v29

    float-to-int v5, v0

    .line 2221
    .local v5, "bgAndShadowAlpha":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getVisibility()I

    move-result v29

    if-nez v29, :cond_1

    .line 2222
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2223
    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2224
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2229
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v23

    .line 2230
    .local v23, "tag":Ljava/lang/Object;
    sget-object v29, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_a

    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v29, v0

    if-eqz v29, :cond_a

    .line 2232
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v29, v0

    check-cast v23, Ljava/lang/Integer;

    .end local v23    # "tag":Ljava/lang/Object;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v30

    invoke-interface/range {v29 .. v30}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v13

    .line 2235
    .local v13, "page":Lcom/android/launcher2/CellLayout;
    const/high16 v29, 0x3f800000    # 1.0f

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    .line 2236
    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v13, v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FF)V

    .line 2238
    invoke-virtual {v13}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v15

    .local v15, "pageWidth":I
    invoke-virtual {v13}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v14

    .local v14, "pageHeight":I
    move-object/from16 v29, p2

    .line 2240
    check-cast v29, Landroid/view/ViewGroup;

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v12, v29, v4

    .line 2242
    .local v12, "p":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v29, v25, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    int-to-float v0, v15

    move/from16 v30, v0

    div-float v20, v29, v30

    .line 2244
    .local v20, "scaleH":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v29, v24, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v30, v30, v12

    sub-float v29, v29, v30

    int-to-float v0, v14

    move/from16 v30, v0

    div-float v21, v29, v30

    .line 2246
    .local v21, "scaleV":F
    cmpl-float v29, v21, v20

    if-lez v29, :cond_8

    move/from16 v18, v20

    .line 2247
    .local v18, "scale":F
    :goto_5
    mul-float v18, v18, v19

    .line 2250
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    div-float v29, v29, v30

    add-float v29, v29, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v30, v30, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    sub-float v30, v30, v31

    const/high16 v31, 0x40000000    # 2.0f

    div-float v30, v30, v31

    add-float v30, v30, v27

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2254
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2255
    neg-int v0, v15

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    div-float v29, v29, v30

    neg-int v0, v14

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x40000000    # 2.0f

    div-float v30, v30, v31

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2257
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/launcher2/CellLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2259
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2262
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v29, v0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    move/from16 v29, v0

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_9

    const/16 v22, 0x1

    .line 2267
    .local v22, "shouldDrawHome":Z
    :goto_6
    if-eqz v22, :cond_2

    .line 2270
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2275
    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2276
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2277
    neg-float v0, v10

    move/from16 v29, v0

    neg-float v0, v9

    move/from16 v30, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2279
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2281
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2308
    .end local v12    # "p":F
    .end local v13    # "page":Lcom/android/launcher2/CellLayout;
    .end local v14    # "pageHeight":I
    .end local v15    # "pageWidth":I
    .end local v18    # "scale":F
    .end local v20    # "scaleH":F
    .end local v21    # "scaleV":F
    .end local v22    # "shouldDrawHome":Z
    :cond_2
    :goto_7
    return-void

    .line 2186
    .end local v4    # "bgAlpha":F
    .end local v5    # "bgAndShadowAlpha":I
    .end local v6    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    .end local v8    # "current":I
    .end local v16    # "progress":F
    .end local v19    # "scaleFactor":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mHomeBgDrawable:Landroid/graphics/drawable/Drawable;

    .restart local v6    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 2194
    :cond_4
    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_1

    .line 2196
    :cond_5
    const v19, 0x3f933333    # 1.15f

    goto/16 :goto_2

    .line 2199
    :cond_6
    const/high16 v19, 0x3f800000    # 1.0f

    .line 2200
    .restart local v19    # "scaleFactor":F
    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_3

    .line 2209
    .restart local v8    # "current":I
    .restart local v16    # "progress":F
    :cond_7
    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v4, v29, v16

    goto/16 :goto_4

    .restart local v4    # "bgAlpha":F
    .restart local v5    # "bgAndShadowAlpha":I
    .restart local v12    # "p":F
    .restart local v13    # "page":Lcom/android/launcher2/CellLayout;
    .restart local v14    # "pageHeight":I
    .restart local v15    # "pageWidth":I
    .restart local v20    # "scaleH":F
    .restart local v21    # "scaleV":F
    :cond_8
    move/from16 v18, v21

    .line 2246
    goto/16 :goto_5

    .line 2262
    .restart local v18    # "scale":F
    :cond_9
    const/16 v22, 0x0

    goto :goto_6

    .line 2285
    .end local v12    # "p":F
    .end local v13    # "page":Lcom/android/launcher2/CellLayout;
    .end local v14    # "pageHeight":I
    .end local v15    # "pageWidth":I
    .end local v18    # "scale":F
    .end local v20    # "scaleH":F
    .end local v21    # "scaleV":F
    .restart local v23    # "tag":Ljava/lang/Object;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v28

    .line 2286
    .local v28, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 2287
    .local v11, "height":I
    div-int/lit8 v29, v28, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v29, v10, v29

    div-int/lit8 v30, v11, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v30, v9, v30

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2289
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2290
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7
.end method

.method public drawCloseAnimation()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 878
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->drawCloseAnimation()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 879
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 881
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 882
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/Utilities;->getDeviceRotation(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_1

    .line 883
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicator()Lcom/android/launcher2/PageIndicator;

    move-result-object v3

    const v4, 0x7f0e00ac

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/PageIndicator;->setPageIndicatorPanelRightAdjust(I)V

    .line 889
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    const v4, 0x7f0e00e0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0e00df

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    .line 890
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->updateIndicatorWidth(Z)V

    .line 891
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 893
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 894
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 897
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDrag()V

    .line 898
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    .line 899
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->wallpaperHack()V

    .line 900
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 903
    .end local v0    # "r":Landroid/content/res/Resources;
    :goto_1
    return v1

    .line 885
    .restart local v0    # "r":Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/Utilities;->getDeviceRotation(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 886
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicator()Lcom/android/launcher2/PageIndicator;

    move-result-object v3

    const v4, 0x7f0e00ad

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/PageIndicator;->setPageIndicatorPanelRightAdjust(I)V

    goto :goto_0

    .end local v0    # "r":Landroid/content/res/Resources;
    :cond_2
    move v1, v2

    .line 903
    goto :goto_1
.end method

.method public drawOpenAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 859
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 860
    .local v1, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 863
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    const v3, 0x7f0e00e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0e00df

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    .line 864
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 865
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_1

    .line 866
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->updateIndicatorWidth(Z)V

    .line 870
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 871
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 872
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 873
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->drawOpenAnimation()V

    .line 874
    return-void

    .line 868
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/Workspace;->updateIndicatorWidth(Z)V

    goto :goto_0
.end method

.method protected drop(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v7, 0x6457

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1306
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/QuickViewWorkspace;->isDeleteDropTarget(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    if-ne v2, v6, :cond_2

    .line 1307
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1308
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1310
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewDragBar;->onDrop()V

    .line 1312
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 1313
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    iget v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 1314
    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->swapScreen(I)V

    .line 1316
    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    iput v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 1317
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 1319
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 1323
    .local v0, "deleteIndex":I
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v2, v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->isIncludeItem(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1324
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->showDeleteWorkScreen()V

    .line 1328
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1329
    invoke-virtual {p0, v7, v6}, Lcom/android/launcher2/QuickViewWorkspace;->performHapticFeedback(II)Z

    .line 1355
    .end local v0    # "deleteIndex":I
    :cond_0
    :goto_1
    return-void

    .line 1326
    .restart local v0    # "deleteIndex":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->removeScreen()V

    goto :goto_0

    .line 1333
    .end local v0    # "deleteIndex":I
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1336
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1337
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1339
    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    .line 1340
    .local v1, "dropedIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->isValidTag(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1341
    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->swapScreen(I)V

    .line 1349
    :goto_2
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v3, 0x7f1000ca

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/dtl/launcher/Talk;->say(III)V

    .line 1350
    iget-boolean v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1351
    invoke-virtual {p0, v7, v6}, Lcom/android/launcher2/QuickViewWorkspace;->performHapticFeedback(II)Z

    goto :goto_1

    .line 1346
    :cond_3
    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->swapScreen(I)V

    goto :goto_2
.end method

.method protected endDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1287
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->endDrag()V

    .line 1289
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1290
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0142

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1291
    .local v0, "bottomMargin":I
    invoke-virtual {v1, v4, v4, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1292
    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1294
    iput v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    .line 1295
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1296
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    .line 1297
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    check-cast v2, Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/QuickViewDragBar;->enableDelete(Z)V

    .line 1302
    :cond_0
    :goto_0
    return-void

    .line 1299
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    check-cast v2, Lcom/android/launcher2/QuickViewDragBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/QuickViewDragBar;->enableDelete(Z)V

    goto :goto_0
.end method

.method public exitDrakenView()V
    .locals 2

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 908
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 909
    return-void
.end method

.method public getCheckedIndex()I
    .locals 5

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v2

    .line 759
    .local v2, "numPages":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 760
    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 761
    .local v3, "page":Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 762
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "page":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 763
    .local v0, "homeButton":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/CompoundButton;

    if-eqz v4, :cond_0

    .line 764
    check-cast v0, Landroid/widget/CompoundButton;

    .end local v0    # "homeButton":Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 773
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 759
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 996
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    return v0
.end method

.method public getDeletePageIndex()I
    .locals 1

    .prologue
    .line 1358
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    return v0
.end method

.method public getTargetPage()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1908
    const/4 v0, 0x0

    .line 1909
    .local v0, "MaxNum":I
    const/4 v1, 0x0

    .line 1910
    .local v1, "Target":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 1911
    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1912
    .local v2, "child":Landroid/view/View;
    const/4 v6, 0x2

    new-array v5, v6, [I

    .line 1913
    .local v5, "posXY":[I
    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1914
    aget v6, v5, v8

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int v4, v6, v7

    .line 1916
    .local v4, "length":I
    aget v6, v5, v8

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getMeasuredWidth()I

    move-result v7

    if-gt v6, v7, :cond_0

    if-gez v4, :cond_1

    .line 1910
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1919
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getMeasuredWidth()I

    move-result v6

    if-le v4, v6, :cond_3

    .line 1920
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getMeasuredWidth()I

    move-result v6

    aget v7, v5, v8

    sub-int v4, v6, v7

    .line 1924
    :cond_2
    :goto_2
    if-le v4, v0, :cond_0

    .line 1925
    move v0, v4

    .line 1926
    move v1, v3

    goto :goto_1

    .line 1921
    :cond_3
    aget v6, v5, v8

    if-ltz v6, :cond_2

    .line 1922
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_2

    .line 1929
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "length":I
    .end local v5    # "posXY":[I
    :cond_4
    iget v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-le v1, v6, :cond_6

    .line 1930
    iget v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    .line 1934
    :cond_5
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    return-object v6

    .line 1931
    :cond_6
    iget v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-ge v1, v6, :cond_5

    .line 1932
    iget v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    goto :goto_3
.end method

.method public initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V
    .locals 14
    .param p1, "provider"    # Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    .prologue
    const/4 v13, 0x0

    .line 1033
    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->init(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPageLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 1035
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v9, :cond_0

    .line 1036
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    iget-object v9, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    :cond_0
    move-object v9, p1

    .line 1037
    check-cast v9, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    iput-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    .line 1039
    const/4 v6, 0x0

    .line 1040
    .local v6, "screenCount":I
    invoke-interface {p1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v6

    .line 1057
    sget-boolean v9, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v9, :cond_1

    sget-boolean v9, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v9, :cond_1

    .line 1059
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v9

    sub-int/2addr v6, v9

    .line 1061
    const-string v9, "QuickViewWorkspace"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initScreen() festival screenCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1065
    .local v5, "res":Landroid/content/res/Resources;
    const v9, 0x7f0200b7

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    .line 1066
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    iget-object v11, p0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v9, v13, v13, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1070
    # getter for: Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->LP:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->access$000()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    iget-object v11, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    neg-int v11, v11

    invoke-virtual {v9, v13, v10, v11, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1072
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1073
    .local v1, "context":Landroid/content/Context;
    new-instance v9, Landroid/widget/Scroller;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10, v13}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    .line 1075
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_2

    .line 1076
    invoke-direct {p0, v2, v13}, Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(IZ)Landroid/view/View;

    move-result-object v8

    .line 1079
    .local v8, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f10006e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    add-int/lit8 v11, v2, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    const/4 v11, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1075
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1087
    .end local v8    # "v":Landroid/view/View;
    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v9

    if-ge v6, v9, :cond_3

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 1090
    :cond_3
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v9}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    .line 1095
    sget-boolean v9, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1096
    const v9, 0x7f0e008c

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1102
    .local v7, "sidePadding":I
    :goto_1
    const v9, 0x7f0e0146

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1103
    .local v0, "bottomPadding":I
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v9}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v9

    invoke-virtual {v9, v7, v13, v7, v0}, Lcom/android/launcher2/HomeScreenOptionMenu;->setPadding(IIII)V

    .line 1105
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v9}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/HomeScreenOptionMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1106
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const v9, 0x7f0e0143

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1107
    .local v4, "optionHeight":I
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1108
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v9}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1110
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateWidgetButtonState()V

    .line 1112
    return-void

    .line 1099
    .end local v0    # "bottomPadding":I
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "optionHeight":I
    .end local v7    # "sidePadding":I
    :cond_4
    const v9, 0x7f0e0144

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .restart local v7    # "sidePadding":I
    goto :goto_1
.end method

.method protected isValidTag(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 804
    sget-object v0, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

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
    .line 2472
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2473
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 2474
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2476
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOrientation:I

    .line 2477
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchSlop:I

    .line 2478
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    .line 2480
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->reloadLayoutParameters()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    .line 2481
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 2482
    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2483
    .local v0, "child":Landroid/view/View;
    iget-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPanelPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 2485
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2481
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2487
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected measureChildViews()V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 239
    iget v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWidthMeasureSpec:I

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 240
    .local v6, "width":I
    iget v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHeightMeasureSpec:I

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 241
    .local v4, "height":I
    invoke-virtual {p0, v6, v4}, Lcom/android/launcher2/QuickViewWorkspace;->setMeasuredDimension(II)V

    .line 243
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 244
    .local v1, "childCount":I
    if-nez v1, :cond_1

    .line 270
    :cond_0
    return-void

    .line 258
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 260
    .local v3, "childMeasureWidthSpec":I
    invoke-virtual {p0, v8}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 264
    .local v2, "childMeasureHeightSpec":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 265
    invoke-virtual {p0, v5}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_2

    .line 267
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 264
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

    .line 1888
    new-array v0, v4, [I

    .line 1889
    .local v0, "posXY":[I
    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    if-eq v2, v4, :cond_1

    .line 1891
    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1892
    if-eqz v0, :cond_0

    .line 1893
    aget v2, v0, v1

    if-gez v2, :cond_0

    .line 1894
    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    .line 1897
    :cond_0
    aget v2, v0, v1

    iget v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2, v1, p1}, Lcom/android/launcher2/QuickViewWorkspace;->scroll(IIZ)V

    .line 1898
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 1900
    const/4 v1, 0x1

    .line 1902
    :cond_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 830
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "add_widgets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "change_wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isAnimStateOkayForClickEvents()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->isDeleteWorkScreenPopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 839
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getTargetPage()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 840
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 841
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->addScreen()V

    goto :goto_0

    .line 843
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    goto :goto_0

    .line 845
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_4

    .line 846
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    .line 847
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->moveCurrentPage(Z)Z

    .line 848
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    goto :goto_0

    .line 850
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    .line 851
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->moveCurrentPage(Z)Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 14
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2375
    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2376
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mConfigurationChangeIsInProgress:Z

    .line 2378
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/Launcher;

    iget-object v2, v10, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 2379
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2380
    .local v7, "res":Landroid/content/res/Resources;
    iget v10, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    const/4 v3, 0x1

    .line 2386
    .local v3, "isLandscape":Z
    :goto_0
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    if-eqz v10, :cond_1

    .line 2387
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2388
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDrag()V

    .line 2390
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchState()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2391
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    .line 2401
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2402
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2403
    const v10, 0x7f0e0054

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 2404
    .local v8, "top":I
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/launcher2/Workspace;->setPageIndicatorTop(I)V

    .line 2407
    .end local v8    # "top":I
    :cond_2
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    if-nez v10, :cond_3

    .line 2408
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    .line 2410
    :cond_3
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/launcher2/QuickViewWorkspace$4;

    invoke-direct {v11, p0}, Lcom/android/launcher2/QuickViewWorkspace$4;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    const-wide/16 v12, 0x1f4

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2469
    :goto_2
    return-void

    .line 2380
    .end local v3    # "isLandscape":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 2394
    .restart local v3    # "isLandscape":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 2395
    .local v4, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e0142

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2396
    .local v1, "bottomMargin":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v4, v10, v11, v12, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2397
    invoke-virtual {p0, v4}, Lcom/android/launcher2/QuickViewWorkspace;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2420
    .end local v1    # "bottomMargin":I
    .end local v4    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    const v10, 0x7f0e00fe

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2423
    .local v0, "barHeight":I
    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTop()Z

    move-result v10

    if-nez v10, :cond_a

    .line 2424
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v0, v12}, Lcom/android/launcher2/QuickViewWorkspace;->setPadding(IIII)V

    .line 2428
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v11, 0x258

    if-ge v10, v11, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2430
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2431
    .local v6, "r":Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    const v11, 0x7f0e00e1

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v12, 0x7f0e00df

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    .line 2432
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v10, v3}, Lcom/android/launcher2/Workspace;->updateIndicatorWidth(Z)V

    .line 2435
    .end local v6    # "r":Landroid/content/res/Resources;
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/Launcher;

    iget-object v10, v10, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeView;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v9

    .line 2438
    .local v9, "vDeleteDropLayout":Landroid/widget/FrameLayout;
    if-eqz v9, :cond_8

    .line 2439
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 2440
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v3, :cond_b

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTop()Z

    move-result v10

    if-nez v10, :cond_b

    .line 2441
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2442
    const/4 v10, -0x1

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2443
    const/16 v10, 0x15

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2449
    :goto_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTop()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTextRight()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2451
    if-eqz v3, :cond_c

    .line 2452
    check-cast v9, Lcom/android/launcher2/QuickViewDragBar;

    .end local v9    # "vDeleteDropLayout":Landroid/widget/FrameLayout;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/launcher2/QuickViewDragBar;->setTextDisplayPositionRight(Z)V

    .line 2459
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_8
    :goto_5
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    if-nez v10, :cond_9

    .line 2460
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    .line 2462
    :cond_9
    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/launcher2/QuickViewWorkspace$5;

    invoke-direct {v11, p0}, Lcom/android/launcher2/QuickViewWorkspace$5;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 2426
    :cond_a
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v0, v11, v12}, Lcom/android/launcher2/QuickViewWorkspace;->setPadding(IIII)V

    goto/16 :goto_3

    .line 2445
    .restart local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v9    # "vDeleteDropLayout":Landroid/widget/FrameLayout;
    :cond_b
    const/4 v10, -0x1

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2446
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2447
    const/16 v10, 0x31

    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_4

    .line 2454
    :cond_c
    check-cast v9, Lcom/android/launcher2/QuickViewDragBar;

    .end local v9    # "vDeleteDropLayout":Landroid/widget/FrameLayout;
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/launcher2/QuickViewDragBar;->setTextDisplayPositionRight(Z)V

    goto :goto_5
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 717
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 748
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 720
    :pswitch_0
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    .line 723
    .local v0, "cur":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 724
    const/4 v2, 0x0

    .line 725
    .local v2, "vscroll":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 730
    .local v1, "hscroll":F
    :goto_1
    cmpl-float v3, v1, v4

    if-nez v3, :cond_1

    cmpl-float v3, v2, v4

    if-eqz v3, :cond_0

    .line 731
    :cond_1
    iget v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-ne v0, v3, :cond_3

    .line 732
    cmpl-float v3, v1, v4

    if-gtz v3, :cond_2

    cmpl-float v3, v2, v4

    if-lez v3, :cond_5

    .line 733
    :cond_2
    iget v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    .line 738
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->snapToQvPage()V

    .line 739
    const/4 v3, 0x1

    goto :goto_0

    .line 727
    .end local v1    # "hscroll":F
    .end local v2    # "vscroll":F
    :cond_4
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    neg-float v2, v3

    .line 728
    .restart local v2    # "vscroll":F
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1    # "hscroll":F
    goto :goto_1

    .line 735
    :cond_5
    iget v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    goto :goto_2

    .line 717
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->isAnimating()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 424
    const/4 v14, 0x1

    .line 536
    :goto_0
    return v14

    .line 427
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mOrientation:I

    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 430
    .local v7, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .line 432
    .local v12, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    .line 536
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    if-eqz v14, :cond_a

    const/4 v14, 0x1

    goto :goto_0

    .line 434
    :sswitch_0
    sget-boolean v14, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v14, :cond_2

    sget-object v14, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v15, "add_widgets"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    sget-object v14, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v15, "change_wallpaper"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 436
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_3

    .line 437
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMultiTouchUsed:Z

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchOutProcess:Z

    if-eqz v14, :cond_1

    .line 438
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    .line 440
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    sub-float v14, v12, v14

    float-to-int v4, v14

    .line 441
    .local v4, "dy":I
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    sub-float v14, v7, v14

    float-to-int v3, v14

    .line 443
    .local v3, "dx":I
    mul-int v14, v4, v4

    mul-int v15, v3, v3

    add-int/2addr v14, v15

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchPointDistance:I

    sub-int v5, v14, v15

    .line 446
    .local v5, "pinchDelta":I
    const/16 v14, 0x32

    if-le v5, v14, :cond_1

    .line 447
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchOutIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 448
    .local v2, "childOnPinch":Landroid/view/View;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v14, v15, :cond_1

    .line 450
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMultiTouchUsed:Z

    .line 451
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchOutProcess:Z

    .line 452
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchOutIndex:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    .line 454
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 459
    .end local v2    # "childOnPinch":Landroid/view/View;
    .end local v3    # "dx":I
    .end local v4    # "dy":I
    .end local v5    # "pinchDelta":I
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionX:F

    sub-float/2addr v14, v7

    float-to-int v9, v14

    .line 460
    .local v9, "xDiff":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchSlop:I

    .line 461
    .local v6, "touchSlop":I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-le v14, v6, :cond_5

    const/4 v11, 0x1

    .line 462
    .local v11, "xMoved":Z
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    if-nez v14, :cond_4

    .line 463
    if-eqz v11, :cond_4

    .line 464
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    .line 465
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14, v15}, Lcom/android/launcher2/QuickViewWorkspace;->scroll(IIZ)V

    .line 466
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionX:F

    .line 467
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionY:F

    .line 471
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMultiTouchUsed:Z

    .line 472
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchOutProcess:Z

    goto/16 :goto_1

    .line 461
    .end local v11    # "xMoved":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 477
    .end local v6    # "touchSlop":I
    .end local v9    # "xDiff":I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDvfsHelper:Landroid/os/DVFSHelper;

    if-eqz v14, :cond_6

    .line 478
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDvfsHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v14}, Landroid/os/DVFSHelper;->acquire()V

    .line 493
    :cond_6
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionX:F

    .line 494
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionY:F

    .line 496
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->getFinalX()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->getCurrX()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 497
    .local v10, "xDist":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchSlop:I

    if-ge v10, v14, :cond_8

    .line 498
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    .line 499
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_1

    .line 501
    :cond_8
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    goto/16 :goto_1

    .line 506
    .end local v10    # "xDist":I
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMultiTouchUsed:Z

    if-eqz v14, :cond_9

    .line 507
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMultiTouchUsed:Z

    .line 508
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchOutProcess:Z

    goto/16 :goto_1

    .line 510
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    .line 511
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    .line 512
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-virtual {v14}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->removeSelf()V

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->endDrag()V

    goto/16 :goto_1

    .line 518
    :sswitch_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMultiTouchUsed:Z

    if-nez v14, :cond_1

    .line 519
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMultiTouchUsed:Z

    .line 521
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    float-to-int v14, v14

    int-to-float v13, v14

    .line 522
    .local v13, "y1":F
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    float-to-int v14, v14

    int-to-float v8, v14

    .line 524
    .local v8, "x1":F
    float-to-int v14, v7

    float-to-int v15, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v14

    float-to-int v15, v8

    float-to-int v0, v13

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v15

    if-ne v14, v15, :cond_1

    .line 525
    sub-float v14, v12, v13

    float-to-int v4, v14

    .line 526
    .restart local v4    # "dy":I
    sub-float v14, v7, v8

    float-to-int v3, v14

    .line 527
    .restart local v3    # "dx":I
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchOutProcess:Z

    .line 528
    mul-int v14, v4, v4

    mul-int v15, v3, v3

    add-int/2addr v14, v15

    int-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchPointDistance:I

    .line 529
    float-to-int v14, v7

    float-to-int v15, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchOutIndex:I

    goto/16 :goto_1

    .line 536
    .end local v3    # "dx":I
    .end local v4    # "dy":I
    .end local v8    # "x1":F
    .end local v13    # "y1":F
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 432
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
    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->isChangingOrientation()Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mEnabledChildAnimation:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_2

    const/4 v11, 0x1

    .line 285
    .local v11, "shouldAnimate":Z
    :goto_0
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mConfigurationChangeIsInProgress:Z

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 286
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->measureChildViews()V

    .line 290
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/QuickViewWorkspace;->updateParamsIfNeeded(Z)V

    .line 293
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMaxDeltaX:I

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v6

    .line 296
    .local v6, "count":I
    const/4 v13, 0x1

    if-ge v6, v13, :cond_3

    .line 408
    .end local v6    # "count":I
    :cond_1
    :goto_1
    return-void

    .line 279
    .end local v11    # "shouldAnimate":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 299
    .restart local v6    # "count":I
    .restart local v11    # "shouldAnimate":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    array-length v13, v13

    if-eq v13, v6, :cond_5

    .line 300
    :cond_4
    new-array v13, v6, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    .line 303
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    array-length v13, v13

    if-eq v13, v6, :cond_8

    .line 304
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    if-eqz v13, :cond_7

    .line 305
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    array-length v13, v13

    if-ge v8, v13, :cond_7

    .line 306
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    aget-object v13, v13, v8

    invoke-virtual {v13}, Lcom/android/launcher2/QuickView$Animate;->stop()V

    .line 305
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 308
    .end local v8    # "i":I
    :cond_7
    new-array v13, v6, [Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    .line 309
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v6, :cond_8

    .line 310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    new-instance v14, Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/launcher2/QuickView$Animate;-><init>(Lcom/android/launcher2/QuickView;)V

    aput-object v14, v13, v8

    .line 309
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 313
    .end local v8    # "i":I
    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 314
    .local v1, "child":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    .line 315
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 316
    .local v5, "childWidth":I
    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 320
    .local v2, "childHeight":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildGapH:I

    add-int/2addr v13, v5

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    .line 321
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollHalfWidth:I

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getMeasuredWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v13, v5

    div-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    .line 325
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    .line 326
    .local v3, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0e0141

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 342
    .local v4, "childTop":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    if-ge v8, v6, :cond_d

    .line 343
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_b

    .line 346
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v8

    if-nez v13, :cond_9

    .line 347
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    aput-object v14, v13, v8

    .line 350
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v8

    add-int v14, v3, v5

    add-int v15, v4, v2

    invoke-virtual {v13, v3, v4, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 354
    sget-object v13, Lcom/android/launcher2/QuickViewWorkspace;->sHitRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v13}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 355
    sget-object v13, Lcom/android/launcher2/QuickViewWorkspace;->sHitRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_c

    if-eqz v11, :cond_c

    .line 356
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_a

    .line 360
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    aget-object v13, v13, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v14, v14, v8

    invoke-virtual {v13, v1, v14}, Lcom/android/launcher2/QuickView$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 366
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildGapH:I

    add-int/2addr v13, v5

    add-int/2addr v3, v13

    .line 342
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 363
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v13, v13, v8

    iget v13, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v14, v14, v8

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v15, v15, v8

    iget v15, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v16, v0

    aget-object v16, v16, v8

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 370
    :cond_d
    sub-int v12, p4, p2

    .line 371
    .local v12, "width":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildGapH:I

    sub-int v13, v3, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    add-int v9, v13, v14

    .line 378
    .local v9, "lastChildPaddedRight":I
    if-le v9, v12, :cond_10

    .line 379
    sub-int v13, v9, v12

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMaxDeltaX:I

    .line 387
    :goto_6
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    .line 391
    .local v7, "currentPage":I
    sget-boolean v13, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v13, :cond_e

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v13, :cond_e

    .line 392
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v13

    if-lt v7, v13, :cond_e

    .line 393
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v7

    .line 396
    :cond_e
    if-ltz v7, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 398
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_11

    .line 399
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewWorkspace;->setScrollX(I)V

    .line 404
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mConfigurationChangeIsInProgress:Z

    if-eqz v13, :cond_1

    .line 406
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewWorkspace;->setScrollX(I)V

    goto/16 :goto_1

    .line 381
    .end local v7    # "currentPage":I
    :cond_10
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMaxDeltaX:I

    goto :goto_6

    .line 400
    .restart local v7    # "currentPage":I
    :cond_11
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    const/16 v14, 0xa

    if-ne v13, v14, :cond_f

    .line 401
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/QuickViewWorkspace;->setScrollX(I)V

    .line 402
    const/4 v13, 0x7

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAnimationState:I

    goto :goto_7
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 809
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_1

    .line 825
    :cond_0
    :goto_0
    return v0

    .line 811
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isAnimStateOkayForClickEvents()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 814
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 818
    iget-boolean v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mMultiTouchUsed:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 819
    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewWorkspace;->startDrag(Landroid/view/View;)V

    .line 820
    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    .line 821
    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->performHapticFeedback(I)Z

    .line 822
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 823
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 221
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CellLayoutChildren cannot accept an UNSPECIFIED MeasureSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/QuickView;->onMeasure(II)V

    .line 228
    iput p1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWidthMeasureSpec:I

    .line 229
    iput p2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mHeightMeasureSpec:I

    .line 230
    return-void
.end method

.method public onPinchOut()Z
    .locals 3

    .prologue
    .line 412
    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPinchOutIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 413
    .local v0, "childOnPinch":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 414
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->onPinchOut()Z

    .line 416
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->isAnimating()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 542
    const/4 v12, 0x0

    .line 711
    :goto_0
    return v12

    .line 545
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 546
    .local v9, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 548
    .local v11, "y":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_1

    .line 549
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 551
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 553
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 711
    :cond_2
    :goto_1
    const/4 v12, 0x1

    goto :goto_0

    .line 555
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->isFinished()Z

    move-result v12

    if-nez v12, :cond_2

    .line 556
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->abortAnimation()V

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->computeScroll()V

    goto :goto_1

    .line 561
    :pswitch_1
    sget-boolean v12, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v12, :cond_3

    const-string v12, "add_widgets"

    sget-object v13, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "change_wallpaper"

    sget-object v13, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 563
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionX:F

    sub-float/2addr v12, v9

    float-to-int v2, v12

    .line 564
    .local v2, "deltaX":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionY:F

    sub-float/2addr v12, v11

    float-to-int v3, v12

    .line 566
    .local v3, "deltaY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchSlop:I

    if-le v12, v13, :cond_5

    const/4 v10, 0x1

    .line 568
    .local v10, "xMoved":Z
    :goto_2
    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    if-nez v12, :cond_4

    .line 569
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    .line 572
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 573
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12, v13}, Lcom/android/launcher2/QuickViewWorkspace;->scroll(IIZ)V

    .line 574
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionX:F

    .line 575
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionY:F

    goto :goto_1

    .line 566
    .end local v10    # "xMoved":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 576
    .restart local v10    # "xMoved":Z
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    .line 577
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-eqz v12, :cond_7

    .line 578
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    sub-int/2addr v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int/2addr v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    sub-int/2addr v15, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v16

    sub-int v16, v16, v3

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 583
    :cond_7
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionX:F

    .line 584
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/QuickViewWorkspace;->mLastMotionY:F

    .line 586
    float-to-int v12, v9

    float-to-int v13, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/launcher2/QuickViewWorkspace;->isDeleteDropTarget(II)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 587
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_8

    .line 588
    sget-object v12, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v13, 0x7f100089

    invoke-virtual {v12, v13}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 589
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v12, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 591
    const/16 v12, 0x5695

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher2/QuickViewWorkspace;->performHapticFeedback(II)Z

    .line 596
    :cond_8
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    goto/16 :goto_1

    .line 599
    :cond_9
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    .line 602
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    .line 607
    :cond_a
    float-to-int v12, v9

    float-to-int v13, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v4

    .line 608
    .local v4, "index":I
    const/4 v12, -0x1

    if-eq v4, v12, :cond_b

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    if-eq v4, v12, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v12, v13, :cond_b

    const/4 v7, 0x1

    .line 611
    .local v7, "shouldRepositionDraggingView":Z
    :goto_3
    if-eqz v7, :cond_d

    .line 612
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-eqz v12, :cond_2

    .line 613
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    if-ge v12, v4, :cond_c

    .line 614
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->scrollToRight()V

    goto/16 :goto_1

    .line 608
    .end local v7    # "shouldRepositionDraggingView":Z
    :cond_b
    const/4 v7, 0x0

    goto :goto_3

    .line 615
    .restart local v7    # "shouldRepositionDraggingView":Z
    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    if-le v12, v4, :cond_2

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->scrollToLeft()V

    goto/16 :goto_1

    .line 630
    :cond_d
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    .line 631
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-virtual {v12}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->removeSelf()V

    goto/16 :goto_1

    .line 638
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "index":I
    .end local v7    # "shouldRepositionDraggingView":Z
    .end local v10    # "xMoved":Z
    :pswitch_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_16

    .line 639
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 640
    .local v8, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v12, 0x3e8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMaximumVelocity:I

    int-to-float v13, v13

    invoke-virtual {v8, v12, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 641
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v12

    float-to-int v5, v12

    .line 642
    .local v5, "initialVelocity":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    .line 644
    .local v1, "curPage":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getTargetPage()Landroid/view/View;

    .line 646
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/QuickViewWorkspace;->mMinimumVelocity:I

    if-le v12, v13, :cond_e

    .line 647
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-ne v1, v12, :cond_e

    .line 648
    if-lez v5, :cond_15

    .line 649
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    .line 656
    :cond_e
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->snapToQvPage()V

    .line 658
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v12, :cond_f

    .line 659
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->recycle()V

    .line 660
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 662
    :cond_f
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    .line 671
    .end local v1    # "curPage":I
    .end local v5    # "initialVelocity":I
    .end local v8    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_10
    :goto_5
    :pswitch_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mOrientation:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    if-ne v12, v13, :cond_11

    .line 673
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    .line 674
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-virtual {v12}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->removeSelf()V

    .line 675
    float-to-int v12, v9

    float-to-int v13, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher2/QuickViewWorkspace;->drop(II)V

    .line 678
    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-nez v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    if-eqz v12, :cond_13

    .line 679
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 682
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->endDrag()V

    .line 686
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getCheckedIndex()I

    move-result v12

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v13

    if-eq v12, v13, :cond_14

    .line 687
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateHomeScreenOnDrag()V

    .line 694
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDvfsHelper:Landroid/os/DVFSHelper;

    if-eqz v12, :cond_2

    .line 695
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDvfsHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v12}, Landroid/os/DVFSHelper;->release()V

    goto/16 :goto_1

    .line 650
    .restart local v1    # "curPage":I
    .restart local v5    # "initialVelocity":I
    .restart local v8    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_15
    if-gez v5, :cond_e

    .line 651
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    goto :goto_4

    .line 664
    .end local v1    # "curPage":I
    .end local v5    # "initialVelocity":I
    .end local v8    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v12}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v12

    invoke-virtual {v12, v9, v11}, Lcom/android/launcher2/PageIndicatorManager;->snapPageTouchArea(FF)I

    move-result v6

    .line 665
    .local v6, "page":I
    const/4 v12, -0x1

    if-le v6, v12, :cond_10

    .line 666
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->snapToQvPage()V

    goto :goto_5

    .line 553
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
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 912
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->open()V

    .line 913
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 915
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 916
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 917
    .local v0, "r":Landroid/content/res/Resources;
    const v2, 0x7f0e0054

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 918
    .local v1, "top":I
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->setPageIndicatorTop(I)V

    .line 921
    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v1    # "top":I
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 922
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 923
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v2

    if-le v2, v3, :cond_4

    .line 924
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    check-cast v2, Lcom/android/launcher2/QuickViewDragBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/QuickViewDragBar;->enableDelete(Z)V

    .line 930
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_2

    .line 931
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/HomeView;->setVisibilityHomeOptionMenu(I)V

    .line 933
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->disableWorkspaceScreensCache()V

    .line 937
    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v2, :cond_3

    .line 938
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    .line 941
    :cond_3
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v3, 0x7f100026

    invoke-virtual {v2, v3}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 942
    return-void

    .line 925
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v2

    if-gt v2, v3, :cond_1

    .line 926
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    check-cast v2, Lcom/android/launcher2/QuickViewDragBar;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/QuickViewDragBar;->enableDelete(Z)V

    goto :goto_0
.end method

.method refreshView()V
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1023
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 1026
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 1027
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    .line 1029
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    .line 1030
    return-void
.end method

.method public removeNormalScreen()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1573
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 1575
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1576
    .local v1, "count":I
    if-lt v1, v10, :cond_0

    add-int/lit8 v9, v1, -0x1

    invoke-virtual {p0, v9}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    sget-object v12, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v9, v12, :cond_1

    .line 1578
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 1581
    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v8

    .line 1582
    .local v8, "secretCount":I
    iget v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    add-int v0, v9, v8

    .line 1584
    .local v0, "adjustDeleteIndex":I
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v9, v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->deletePage(I)V

    .line 1586
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v9

    if-gt v0, v9, :cond_6

    .line 1587
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1588
    .local v5, "newHomeIndex":I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v9

    if-lt v5, v9, :cond_2

    .line 1589
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 1590
    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v9, v5}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setHomeScreenAt(I)V

    .line 1593
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v6

    .line 1596
    .local v6, "numPages":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_5

    .line 1597
    invoke-virtual {p0, v4}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1598
    .local v7, "page":Landroid/view/View;
    instance-of v9, v7, Landroid/view/ViewGroup;

    if-eqz v9, :cond_3

    move-object v9, v7

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lez v9, :cond_3

    .line 1599
    check-cast v7, Landroid/view/ViewGroup;

    .end local v7    # "page":Landroid/view/View;
    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1600
    .local v3, "homeButtonContainer":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-lt v9, v10, :cond_3

    .line 1601
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1602
    .local v2, "homeButton":Landroid/view/View;
    instance-of v9, v2, Landroid/widget/CompoundButton;

    if-eqz v9, :cond_3

    .line 1603
    check-cast v2, Landroid/widget/CompoundButton;

    .end local v2    # "homeButton":Landroid/view/View;
    sub-int v9, v5, v8

    if-ne v4, v9, :cond_4

    move v9, v10

    :goto_1
    invoke-virtual {v2, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1596
    .end local v3    # "homeButtonContainer":Landroid/view/ViewGroup;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .restart local v3    # "homeButtonContainer":Landroid/view/ViewGroup;
    :cond_4
    move v9, v11

    .line 1603
    goto :goto_1

    .line 1609
    .end local v3    # "homeButtonContainer":Landroid/view/ViewGroup;
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/Launcher;

    const v12, 0x7f10007e

    invoke-virtual {v10, v12}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1616
    .end local v4    # "i":I
    .end local v5    # "newHomeIndex":I
    .end local v6    # "numPages":I
    :cond_6
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v9}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->saveCurrentPageOrder()V

    .line 1617
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 1618
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 1620
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    .line 1622
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v9}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v9

    sub-int/2addr v9, v8

    iput v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    .line 1623
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v9}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    .line 1624
    return-void
.end method

.method public removeScreen()V
    .locals 22

    .prologue
    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 1457
    :cond_0
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 1550
    :goto_0
    return-void

    .line 1473
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 1475
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v19, v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1476
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/Launcher;

    const v21, 0x7f10007e

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 1481
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v5

    .line 1482
    .local v5, "count":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-lt v5, v0, :cond_3

    add-int/lit8 v19, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 1484
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 1487
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->deletePage(I)V

    .line 1489
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->vDeleteDropLayout:Landroid/view/View;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/launcher2/QuickViewDragBar;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/QuickViewDragBar;->enableDelete(Z)V

    .line 1493
    :cond_5
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1495
    .local v12, "now":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 1496
    .local v6, "date":Ljava/util/Date;
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v19, "yyyy/MM/dd HH:mm:ss"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1497
    .local v17, "sdfNow":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    .line 1498
    .local v18, "strNow":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/LauncherApplication;

    .line 1500
    .local v4, "app":Lcom/android/launcher2/LauncherApplication;
    const-string v19, "com.sec.android.app.launcher.prefs"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 1502
    .local v16, "prefs":Landroid/content/SharedPreferences$Editor;
    const-string v19, "quickviewDeletePage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", time : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1503
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1506
    .end local v4    # "app":Lcom/android/launcher2/LauncherApplication;
    .end local v6    # "date":Ljava/util/Date;
    .end local v12    # "now":J
    .end local v16    # "prefs":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "sdfNow":Ljava/text/SimpleDateFormat;
    .end local v18    # "strNow":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v19, v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_9

    .line 1507
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1508
    .local v11, "newHomeIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setHomeScreenAt(I)V

    .line 1511
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v14

    .line 1514
    .local v14, "numPages":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v14, :cond_9

    .line 1515
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1516
    .local v15, "page":Landroid/view/View;
    instance-of v0, v15, Landroid/view/ViewGroup;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v19, v15

    check-cast v19, Landroid/view/ViewGroup;

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    if-lez v19, :cond_7

    .line 1517
    check-cast v15, Landroid/view/ViewGroup;

    .end local v15    # "page":Landroid/view/View;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 1518
    .local v9, "homeButtonContainer":Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_7

    .line 1519
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1520
    .local v8, "homeButton":Landroid/view/View;
    instance-of v0, v8, Landroid/widget/CompoundButton;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 1521
    check-cast v8, Landroid/widget/CompoundButton;

    .end local v8    # "homeButton":Landroid/view/View;
    if-ne v10, v11, :cond_8

    const/16 v19, 0x1

    :goto_2
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1514
    .end local v9    # "homeButtonContainer":Landroid/view/ViewGroup;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1521
    .restart local v9    # "homeButtonContainer":Landroid/view/ViewGroup;
    :cond_8
    const/16 v19, 0x0

    goto :goto_2

    .line 1528
    .end local v9    # "homeButtonContainer":Landroid/view/ViewGroup;
    .end local v10    # "i":I
    .end local v11    # "newHomeIndex":I
    .end local v14    # "numPages":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->saveCurrentPageOrder()V

    .line 1530
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_a

    .line 1531
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    .line 1535
    :goto_3
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 1536
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 1538
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    .line 1543
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    .line 1544
    .local v7, "handler":Landroid/os/Handler;
    new-instance v19, Lcom/android/launcher2/QuickViewWorkspace$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace$3;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    const-wide/16 v20, 0x64

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1533
    .end local v7    # "handler":Landroid/os/Handler;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    goto :goto_3
.end method

.method public removeSecretScreen()V
    .locals 3

    .prologue
    .line 1552
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 1554
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v0

    .line 1555
    .local v0, "count":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    .line 1557
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 1560
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    invoke-interface {v1, v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->deletePage(I)V

    .line 1562
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->saveCurrentPageOrder()V

    .line 1564
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 1565
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 1567
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    .line 1569
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    .line 1570
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    .line 1571
    return-void
.end method

.method public scrollLeft()V
    .locals 3

    .prologue
    .line 1847
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1852
    :goto_0
    return-void

    .line 1849
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->scrollStart(I)V

    .line 1850
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    neg-int v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->scroll(IIZ)V

    .line 1851
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1855
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 1858
    const-string v0, "QuickViewWorkspace"

    const-string v1, "ignore scroll right to add btn page"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    :cond_0
    :goto_0
    return-void

    .line 1862
    :cond_1
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1864
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->scrollStart(I)V

    .line 1865
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollWidth:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->scroll(IIZ)V

    .line 1866
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    goto :goto_0
.end method

.method public scrollStart(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 1836
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    .line 1837
    .local v0, "mDesIndex":I
    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    add-int/2addr v1, p1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1838
    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    add-int v0, v1, p1

    .line 1839
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 1840
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 1841
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1842
    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    .line 1843
    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDraggingIndex:I

    .line 1844
    return-void
.end method

.method public scrollToLeft()V
    .locals 1

    .prologue
    .line 1830
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    .line 1831
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->postForScrollDelayed()V

    .line 1832
    return-void
.end method

.method public scrollToRight()V
    .locals 1

    .prologue
    .line 1825
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I

    .line 1826
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollRunnable:Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->postForScrollDelayed()V

    .line 1827
    return-void
.end method

.method public setDeletePageIndex(I)V
    .locals 1
    .param p1, "pageIndex"    # I

    .prologue
    .line 1362
    iput p1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 1363
    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 1364
    return-void
.end method

.method public setQvPage(I)Z
    .locals 3
    .param p1, "page"    # I

    .prologue
    const/4 v1, 0x0

    .line 1804
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v0

    .line 1808
    .local v0, "canDragChildCount":I
    iget v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-ne v2, p1, :cond_1

    .line 1821
    :cond_0
    :goto_0
    return v1

    .line 1811
    :cond_1
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 1812
    iput p1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    .line 1813
    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    .line 1817
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1, p1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setPage(I)V

    .line 1819
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final smoothScrollBy(IIZ)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "changePage"    # Z

    .prologue
    .line 1738
    if-eqz p3, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollY()I

    move-result v2

    const/16 v5, 0x258

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollCheck:Z

    .line 1741
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 1754
    :goto_0
    return-void

    .line 1747
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1748
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1750
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/QuickViewWorkspace;->scrollBy(II)V

    goto :goto_0
.end method

.method public snapToQvPage()V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 1870
    new-array v6, v2, [I

    .line 1871
    .local v6, "posXY":[I
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTouchState:I

    if-eq v0, v2, :cond_1

    .line 1873
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1874
    if-eqz v6, :cond_0

    .line 1875
    aget v0, v6, v4

    if-gez v0, :cond_0

    .line 1876
    aget v0, v6, v4

    add-int/lit8 v0, v0, -0x1

    aput v0, v6, v4

    .line 1879
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollY()I

    move-result v2

    aget v3, v6, v4

    iget v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildLeft:I

    sub-int/2addr v3, v5

    const/16 v5, 0x190

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mScrollCheck:Z

    .line 1883
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 1885
    :cond_1
    return-void
.end method

.method protected startDrag(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1278
    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->startDrag(Landroid/view/View;)V

    .line 1280
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1281
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1282
    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1283
    return-void
.end method

.method protected swapScreen(I)V
    .locals 2
    .param p1, "toIndex"    # I

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOriginDragIndex:I

    invoke-interface {v0, v1, p1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->movePage(II)V

    .line 1634
    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewWorkspace;->setQvPage(I)Z

    .line 1636
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    .line 1637
    return-void
.end method

.method public updateHomeScreenOnDrag()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 780
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v3

    .line 785
    .local v3, "newHomeIndex":I
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v4

    .line 788
    .local v4, "numPages":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 789
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 790
    .local v5, "page":Landroid/view/View;
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 791
    check-cast v5, Landroid/view/ViewGroup;

    .end local v5    # "page":Landroid/view/View;
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 792
    .local v1, "homeButtonContainer":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lt v6, v7, :cond_0

    .line 793
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 794
    .local v0, "homeButton":Landroid/view/View;
    instance-of v6, v0, Landroid/widget/CompoundButton;

    if-eqz v6, :cond_0

    .line 795
    check-cast v0, Landroid/widget/CompoundButton;

    .end local v0    # "homeButton":Landroid/view/View;
    if-ne v2, v3, :cond_1

    move v6, v7

    :goto_1
    invoke-virtual {v0, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 788
    .end local v1    # "homeButtonContainer":Landroid/view/ViewGroup;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v1    # "homeButtonContainer":Landroid/view/ViewGroup;
    :cond_1
    move v6, v8

    .line 795
    goto :goto_1

    .line 800
    .end local v1    # "homeButtonContainer":Landroid/view/ViewGroup;
    :cond_2
    return-void
.end method

.method protected updateTags()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1382
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1383
    .local v1, "count":I
    add-int/lit8 v10, v1, -0x1

    invoke-virtual {p0, v10}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1384
    .local v4, "lastChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 1385
    .local v5, "lastChildTag":Ljava/lang/Object;
    sget-object v10, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-ne v5, v10, :cond_1

    move v6, v8

    .line 1386
    .local v6, "lastPageIsAddButton":Z
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v10

    if-ne v10, v1, :cond_2

    if-nez v6, :cond_2

    move v2, v1

    .line 1388
    .local v2, "finalCount":I
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_3

    .line 1389
    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1390
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 1391
    .local v7, "tag":Ljava/lang/Object;
    sget-object v10, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v7, v10, :cond_0

    .line 1395
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1397
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f10006e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    add-int/lit8 v12, v3, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1388
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "finalCount":I
    .end local v3    # "i":I
    .end local v6    # "lastPageIsAddButton":Z
    .end local v7    # "tag":Ljava/lang/Object;
    :cond_1
    move v6, v9

    .line 1385
    goto :goto_0

    .line 1386
    .restart local v6    # "lastPageIsAddButton":Z
    :cond_2
    add-int/lit8 v2, v1, -0x1

    goto :goto_1

    .line 1404
    .restart local v2    # "finalCount":I
    .restart local v3    # "i":I
    :cond_3
    return-void
.end method

.method public updateWidgetButtonState()V
    .locals 3

    .prologue
    .line 1116
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->getWidgetButton()Landroid/view/View;

    move-result-object v1

    .line 1117
    .local v1, "widgetButton":Landroid/view/View;
    const/4 v0, 0x1

    .line 1126
    .local v0, "enableButton":Z
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1127
    if-eqz v0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1129
    return-void

    .line 1127
    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_0
.end method
