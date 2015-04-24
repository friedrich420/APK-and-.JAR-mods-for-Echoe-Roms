.class public Lcom/android/launcher2/MenuWidgets;
.super Lcom/android/launcher2/PagedViewWithDraggableItems;
.source "MenuWidgets.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;,
        Lcom/android/launcher2/MenuWidgets$WidgetComparator;,
        Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateObj;,
        Lcom/android/launcher2/MenuWidgets$WidgetState;,
        Lcom/android/launcher2/MenuWidgets$Filter;,
        Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;,
        Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;,
        Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;,
        Lcom/android/launcher2/MenuWidgets$DisplayType;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final MW_DEBUG:Z = false

.field private static final PAGE_BG_ALPHA_VALUE:I = 0x0

.field private static final PAGE_SLEEP_DELAY:I = 0x96

.field private static final PAGE_SLEEP_DELAY_FIRST:I = 0xc8

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final TAG:Ljava/lang/String; = "Launcher.MenuWidgets"

.field private static final TRANSITION_PIVOT:F = 0.5f

.field private static final UPDATE_PACKAGES_STR:Ljava/lang/String; = "packagesChanged"

.field private static final WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgets$WidgetComparator;

.field private static mSecretItemOffset:I


# instance fields
.field private mCurrentOrientation:I

.field private mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

.field private mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

.field private mDisplayedWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mDragInProgress:Z

.field public mDragOnSearchState:Z

.field private mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

.field private mHasUninstallableWidgets:Z

.field private final mHelpWidgetProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidgetListProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstEnter:Z

.field private final mLastPositions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListenerAttached:Z

.field private mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

.field private mNumSecretWidgetPages:I

.field private mNumWidgetPages:I

.field private mPendingUpdatePackages:Z

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field private mRequestedOrientation:I

.field private final mRunningTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveInstanceStateItemIndex:I

.field public mSearchString:Ljava/lang/String;

.field private mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

.field private mStateNormal:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mStateSearch:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mStateUninstall:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mTabHost:Lcom/android/launcher2/MenuView;

.field private mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

.field private mToast:Landroid/widget/Toast;

.field private mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

.field private mWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidgetListProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/MenuWidgets;->DEBUGGABLE:Z

    .line 86
    new-instance v0, Lcom/android/launcher2/MenuWidgets$WidgetComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetComparator;-><init>(Lcom/android/launcher2/MenuWidgets$1;)V

    sput-object v0, Lcom/android/launcher2/MenuWidgets;->WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgets$WidgetComparator;

    .line 140
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/MenuWidgets;->mSecretItemOffset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mDragOnSearchState:Z

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    .line 123
    iput-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    .line 124
    const-string v1, ""

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    .line 128
    iput-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    .line 131
    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mPendingUpdatePackages:Z

    .line 132
    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mDragInProgress:Z

    .line 141
    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mIsFirstEnter:Z

    .line 144
    sget-object v1, Lcom/android/launcher2/MenuWidgets$DisplayType;->NORMAL:Lcom/android/launcher2/MenuWidgets$DisplayType;

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

    .line 559
    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    .line 888
    iput-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    .line 1517
    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateNormal:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    .line 1518
    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateUninstall:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    .line 1519
    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateSearch:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    .line 1520
    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    .line 2655
    new-instance v1, Lcom/android/launcher2/MenuWidgets$7;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgets$7;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    .line 148
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    .line 150
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuWidgets;->setDisplayedWidgets(Ljava/util/List;)V

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/List;

    .line 153
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 159
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0e012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    .line 160
    const v1, 0x7f0e012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    .line 162
    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgets;->setDragSlopeThreshold(F)V

    .line 164
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/launcher2/AvailableWidgetListProvider;

    new-instance v2, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetProviders:Ljava/util/List;

    .line 169
    new-array v1, v6, [Lcom/android/launcher2/AvailableWidgetListProvider;

    new-instance v2, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mHelpWidgetProviders:Ljava/util/List;

    .line 174
    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuWidgets;->setSaveEnabled(Z)V

    .line 176
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    .line 177
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgetsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateNormal:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateUninstall:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateSearch:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;
    .param p1, "x1"    # Lcom/android/launcher2/WidgetFolderView;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->openWidgetFolder(Lcom/android/launcher2/WidgetFolderView;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher2/MenuWidgets;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->clickNotAllowed(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/MenuWidgets;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/launcher2/MenuWidgets;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mIsFirstEnter:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/launcher2/MenuWidgets;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/launcher2/MenuWidgets;->mIsFirstEnter:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/launcher2/MenuWidgets;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->getDesiredChildPageWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuStateAnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher2/MenuWidgets;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->setDragInProgress(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/WidgetFolder;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolder;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;
    .param p1, "x1"    # Lcom/android/launcher2/WidgetFolder;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/launcher2/MenuWidgets;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->setMenuWidgetsAccessibilityEnabled(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/launcher2/MenuWidgets;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/MenuWidgets;Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;
    .param p3, "x3"    # Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/MenuWidgets;->loadWidgetPreviewsInBackground(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/MenuWidgets;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/MenuWidgets;Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewGridLayout;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;
    .param p1, "x1"    # Lcom/android/launcher2/PagedViewGridLayout;
    .param p2, "x2"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/MenuWidgets;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/MenuWidgets;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MenuWidgets;
    .param p1, "x1"    # Lcom/android/launcher2/PagedViewGridLayout;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 81
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/MenuWidgets;->prepareLoadWidgetPreviewsTask(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;III)V

    return-void
.end method

.method private addCategoryFolder(Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "widgetsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 191
    .local v12, "widgetsMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 192
    .local v13, "widgetsNameMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    .line 194
    .local v0, "avaiableWidgetList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 195
    .local v9, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v9, :cond_3

    .line 197
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AvailableWidget;

    .line 198
    .local v1, "availWidget":Lcom/android/launcher2/AvailableWidget;
    invoke-interface {v1}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v5

    .line 199
    .local v5, "item":Lcom/android/launcher2/HomePendingItem;
    invoke-virtual {v5}, Lcom/android/launcher2/HomePendingItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {v12, v8}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 204
    invoke-direct {p0, v8}, Lcom/android/launcher2/MenuWidgets;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "label":Ljava/lang/String;
    invoke-virtual {v12, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 206
    .local v3, "availableWidgetObject":Ljava/lang/Object;
    instance-of v14, v3, Lcom/android/launcher2/AvailableWidget;

    if-eqz v14, :cond_1

    .line 208
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v7, "newItemWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    check-cast v3, Lcom/android/launcher2/AvailableWidget;

    .end local v3    # "availableWidgetObject":Ljava/lang/Object;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {v12, v8, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {v13, v8, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .end local v7    # "newItemWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 214
    .restart local v3    # "availableWidgetObject":Ljava/lang/Object;
    :cond_1
    instance-of v14, v3, Ljava/util/ArrayList;

    if-eqz v14, :cond_0

    move-object v2, v3

    .line 216
    check-cast v2, Ljava/util/ArrayList;

    .line 217
    .local v2, "availWidgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v12, v8, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 223
    .end local v2    # "availWidgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    .end local v3    # "availableWidgetObject":Ljava/lang/Object;
    .end local v6    # "label":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v6

    .line 224
    .restart local v6    # "label":Ljava/lang/String;
    invoke-virtual {v12, v8, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-virtual {v13, v8, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 231
    .end local v1    # "availWidget":Lcom/android/launcher2/AvailableWidget;
    .end local v5    # "item":Lcom/android/launcher2/HomePendingItem;
    .end local v6    # "label":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_3
    invoke-static {v13}, Lcom/android/launcher2/MenuWidgets;->sortByValues(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v14

    invoke-direct {p0, v14, v12}, Lcom/android/launcher2/MenuWidgets;->getSortedByPackage(Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/util/Map;

    move-result-object v10

    .line 233
    .local v10, "sortedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 274
    .local v11, "widgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iput-object v11, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    .line 278
    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 279
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->clear()V

    .line 281
    return-void
.end method

.method private beginDraggingWidget(Lcom/android/launcher2/PagedViewWidget;)V
    .locals 13
    .param p1, "v"    # Lcom/android/launcher2/PagedViewWidget;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 702
    invoke-virtual {p1}, Lcom/android/launcher2/PagedViewWidget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomePendingItem;

    .line 703
    .local v0, "createHomeItem":Lcom/android/launcher2/HomePendingItem;
    iget v6, p1, Lcom/android/launcher2/PagedViewWidget;->spanX:I

    iput v6, v0, Lcom/android/launcher2/HomePendingItem;->spanX:I

    .line 704
    iget v6, p1, Lcom/android/launcher2/PagedViewWidget;->spanY:I

    iput v6, v0, Lcom/android/launcher2/HomePendingItem;->spanY:I

    .line 706
    const v6, 0x7f0f0017

    invoke-virtual {p1, v6}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .local v2, "dragView":Landroid/view/View;
    move-object v6, v2

    .line 707
    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 708
    .local v1, "dragDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    .line 710
    .local v3, "launcher":Lcom/android/launcher2/Launcher;
    iget-object v6, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspaceLoading()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 735
    .end local v1    # "dragDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_0
    :goto_0
    return-void

    .line 714
    .restart local v1    # "dragDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/PagedViewWidget;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 716
    new-instance v6, Lcom/android/launcher2/ShadowBuilder;

    check-cast v1, Lcom/android/launcher2/FastBitmapDrawable;

    .end local v1    # "dragDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-static {v2, v6}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move-result v4

    .line 718
    .local v4, "ret":Z
    if-eqz v4, :cond_3

    .line 719
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->closeFolder()Z

    .line 721
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v6, v7, :cond_2

    .line 722
    iput-boolean v11, p0, Lcom/android/launcher2/MenuWidgets;->mDragOnSearchState:Z

    .line 724
    :cond_2
    invoke-virtual {v3, v11, v12}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    .line 725
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "vibrator"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    const-wide/16 v8, 0x23

    invoke-virtual {v6, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 728
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v6, v6, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    .line 729
    .local v5, "ws":Lcom/android/launcher2/Workspace;
    sget-object v6, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f10006e

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p0, v7, v11}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    goto :goto_0

    .line 731
    .end local v5    # "ws":Lcom/android/launcher2/Workspace;
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuWidgets;->clickNotAllowed(Landroid/view/View;)V

    goto :goto_0
.end method

.method private cancelAllTasks(Ljava/lang/String;)V
    .locals 4
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 771
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 772
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 773
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;

    .line 774
    .local v2, "task":Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->requestCancel(Z)Z

    move-result v1

    .line 778
    .local v1, "res":Z
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 780
    .end local v1    # "res":Z
    .end local v2    # "task":Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;
    :cond_0
    return-void
.end method

.method private changeOrientationIfRequired(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2380
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuView;->getQuickView(Z)Lcom/android/launcher2/QuickViewMainMenu;

    move-result-object v0

    .line 2381
    .local v0, "qv":Lcom/android/launcher2/QuickViewMainMenu;
    iget v2, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    iget v3, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->isShown()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_1

    .line 2409
    :cond_0
    :goto_0
    return-void

    .line 2381
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2386
    :cond_2
    iget v2, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    iput v2, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    .line 2387
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2390
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->handleScrollOnOrientationChange()V

    .line 2391
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2392
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x7f0e00d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/MenuWidgets;->mPageSpacingHint:I

    .line 2393
    const v2, 0x7f0c002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    .line 2394
    const v2, 0x7f0c002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    .line 2395
    const v2, 0x7f0e012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    .line 2396
    const v2, 0x7f0e0130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/MenuWidgets;->mCellGapY:I

    .line 2397
    const v2, 0x7f0e0131

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/MenuWidgets;->mPagePaddingTop:I

    .line 2398
    const v2, 0x7f0e0132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/MenuWidgets;->mPagePaddingBottom:I

    .line 2399
    const v2, 0x7f0e0133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/MenuWidgets;->mPagePaddingLeft:I

    .line 2400
    const v2, 0x7f0e0134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/MenuWidgets;->mPagePaddingRight:I

    .line 2402
    const v2, 0x7f0e012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0e012a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/MenuWidgets;->updateIndicator(II)V

    .line 2404
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->syncPages()V

    .line 2405
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updatePageLayout()I

    .line 2406
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->updateQuickViewMainMenu()V

    .line 2407
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuWidgets;->refreshWidgetStateModel(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 2408
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->requestLayout()V

    goto/16 :goto_0
.end method

.method private clickNotAllowed(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v4, 0x7f100004

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2022
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v3, :cond_0

    .line 2023
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    if-nez v3, :cond_1

    .line 2024
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    .line 2029
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2033
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e014b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v1, v3

    .line 2034
    .local v1, "offsetY":F
    const v3, 0x7f0f0017

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2035
    .local v2, "p":Landroid/view/View;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2036
    .local v0, "bounce":Landroid/animation/AnimatorSet;
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    aput v1, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v6, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2043
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2044
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2045
    return-void

    .line 2027
    .end local v0    # "bounce":Landroid/animation/AnimatorSet;
    .end local v1    # "offsetY":F
    .end local v2    # "p":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 332
    const/4 v2, 0x0

    .line 333
    .local v2, "folderLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 334
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 336
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 340
    :goto_0
    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2    # "folderLabel":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 343
    .restart local v2    # "folderLabel":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDesiredChildPageHeight()I
    .locals 3

    .prologue
    .line 434
    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    iget v2, p0, Lcom/android/launcher2/MenuWidgets;->mCellGapY:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getDesiredChildPageWidth()I
    .locals 3

    .prologue
    .line 430
    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    iget v2, p0, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getMiddleComponentIndexOnCurrentPage()I
    .locals 7

    .prologue
    .line 352
    const/4 v2, -0x1

    .line 353
    .local v2, "i":I
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v1

    .line 355
    .local v1, "currentPage":I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewGridLayout;

    .line 356
    .local v3, "layout":Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v0

    .line 357
    .local v0, "childCount":I
    if-lez v0, :cond_0

    .line 358
    iget v5, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    iget v6, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    mul-int v4, v5, v6

    .line 359
    .local v4, "numItemsPerPage":I
    mul-int v5, v1, v4

    div-int/lit8 v6, v0, 0x2

    add-int v2, v5, v6

    .line 362
    .end local v0    # "childCount":I
    .end local v1    # "currentPage":I
    .end local v3    # "layout":Lcom/android/launcher2/PagedViewGridLayout;
    .end local v4    # "numItemsPerPage":I
    :cond_0
    return v2
.end method

.method private getSleepForPage(I)I
    .locals 4
    .param p1, "page"    # I

    .prologue
    const/4 v2, 0x0

    .line 802
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->isLoopingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_0

    .line 803
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v1

    sub-int p1, v1, p1

    .line 805
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v1

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 806
    .local v0, "pageDiff":I
    mul-int/lit16 v3, v0, 0x96

    if-lez v0, :cond_1

    const/16 v1, 0xc8

    :goto_0
    add-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private getSortedByPackage(Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "sortedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "unSortedMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v3, p1

    .line 290
    .local v3, "sortedMapItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 291
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 293
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 294
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 297
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private getThreadPriorityForPage(I)I
    .locals 3
    .param p1, "page"    # I

    .prologue
    const/4 v1, 0x0

    .line 788
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 789
    .local v0, "pageDiff":I
    if-gtz v0, :cond_1

    .line 791
    const/4 v1, -0x1

    .line 797
    :cond_0
    :goto_0
    return v1

    .line 792
    :cond_1
    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_0
.end method

.method private isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher2/PagedViewGridLayout;
    .param p2, "page"    # I

    .prologue
    .line 1101
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/PagedViewGridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    .line 1105
    .local v0, "pageValid":Z
    :goto_0
    return v0

    .line 1101
    .end local v0    # "pageValid":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadWidgetPreviewsInBackground(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 11
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;
    .param p3, "data"    # Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    .prologue
    .line 1118
    if-eqz p3, :cond_0

    iget-object v9, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    iget v10, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    invoke-direct {p0, v9, v10}, Lcom/android/launcher2/MenuWidgets;->isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1160
    :cond_0
    return-void

    .line 1125
    :cond_1
    if-eqz p2, :cond_2

    .line 1127
    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 1131
    :cond_2
    iget-object v6, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 1132
    .local v6, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget v2, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellWidth:I

    .line 1133
    .local v2, "cellWidth":I
    iget v1, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellHeight:I

    .line 1134
    .local v1, "cellHeight":I
    iget-object v9, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1135
    .local v0, "availableWidget":Ljava/lang/Object;
    if-eqz p2, :cond_4

    .line 1137
    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->wasCancelRequested()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1140
    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 1142
    :cond_4
    instance-of v9, v0, Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    .line 1143
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    .local v3, "folderImage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    check-cast v0, Ljava/util/ArrayList;

    .end local v0    # "availableWidget":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AvailableWidget;

    .line 1145
    .local v8, "widget":Lcom/android/launcher2/AvailableWidget;
    invoke-interface {v8, v2, v1}, Lcom/android/launcher2/AvailableWidget;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1146
    .local v7, "preview":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1148
    .end local v7    # "preview":Landroid/graphics/Bitmap;
    .end local v8    # "widget":Lcom/android/launcher2/AvailableWidget;
    :cond_5
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1151
    .end local v3    # "folderImage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .restart local v0    # "availableWidget":Ljava/lang/Object;
    :cond_6
    instance-of v9, v0, Lcom/android/launcher2/AvailableWidget;

    if-eqz v9, :cond_3

    .line 1152
    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    .end local v0    # "availableWidget":Ljava/lang/Object;
    invoke-interface {v0, v2, v1}, Lcom/android/launcher2/AvailableWidget;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1153
    .restart local v7    # "preview":Landroid/graphics/Bitmap;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 16
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    .prologue
    .line 1171
    if-eqz p2, :cond_0

    .line 1172
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/launcher2/MenuWidgets;->isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1176
    :cond_1
    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    .line 1181
    .local v8, "page":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    mul-int/2addr v14, v15

    mul-int v5, v8, v14

    .line 1182
    .local v5, "keyOffset":I
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    .line 1184
    .local v7, "layout":Lcom/android/launcher2/PagedViewGridLayout;
    if-eqz v7, :cond_0

    .line 1186
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    .line 1187
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_7

    .line 1188
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Ljava/util/ArrayList;

    if-eqz v14, :cond_3

    .line 1189
    invoke-virtual {v7, v3}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/WidgetFolderView;

    .line 1190
    .local v13, "widgetFolder":Lcom/android/launcher2/WidgetFolderView;
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 1191
    .local v10, "preview":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v13, v10}, Lcom/android/launcher2/WidgetFolderView;->setWidgetFolderImage(Ljava/util/ArrayList;)V

    .line 1187
    .end local v10    # "preview":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    .end local v13    # "widgetFolder":Lcom/android/launcher2/WidgetFolderView;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1193
    :cond_3
    invoke-virtual {v7, v3}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/PagedViewWidget;

    .line 1194
    .local v12, "widget":Lcom/android/launcher2/PagedViewWidget;
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 1195
    .local v9, "preview":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_2

    .line 1196
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellWidth:I

    if-ge v14, v15, :cond_4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellHeight:I

    if-lt v14, v15, :cond_5

    :cond_4
    const/4 v11, 0x1

    .line 1200
    .local v11, "scale":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v14

    sget-object v15, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v14, v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v14

    if-ne v8, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    add-int v15, v3, v5

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eq v14, v9, :cond_6

    const/4 v1, 0x1

    .line 1203
    .local v1, "animate":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    add-int v15, v3, v5

    invoke-virtual {v14, v15, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1208
    new-instance v14, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v14, v9}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v12, v14, v3, v11, v1}, Lcom/android/launcher2/PagedViewWidget;->applyPreview(Lcom/android/launcher2/FastBitmapDrawable;IZZ)V

    goto :goto_2

    .line 1196
    .end local v1    # "animate":Z
    .end local v11    # "scale":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .line 1200
    .restart local v11    # "scale":Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    .line 1214
    .end local v9    # "preview":Landroid/graphics/Bitmap;
    .end local v11    # "scale":Z
    .end local v12    # "widget":Lcom/android/launcher2/PagedViewWidget;
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    mul-int v6, v14, v15

    .line 1215
    .local v6, "last":I
    move v4, v3

    .local v4, "j":I
    :goto_5
    if-ge v4, v6, :cond_8

    .line 1216
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    add-int v15, v4, v5

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->remove(I)V

    .line 1215
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1218
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->onWidgetLoadPreviewComplete()V

    goto/16 :goto_0
.end method

.method private onWidgetLoadPreviewComplete()V
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->refreshWidgetStateView()V

    .line 1098
    return-void
.end method

.method private openWidgetFolder(Lcom/android/launcher2/WidgetFolderView;)V
    .locals 2
    .param p1, "widgetFolderView"    # Lcom/android/launcher2/WidgetFolderView;

    .prologue
    .line 2470
    new-instance v0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolderView;Z)V

    .line 2471
    .local v0, "mgr":Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2472
    invoke-virtual {p1, p0, v0}, Lcom/android/launcher2/WidgetFolderView;->openWidgetFolder(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    .line 2477
    :cond_0
    :goto_0
    return-void

    .line 2474
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    if-nez v1, :cond_0

    .line 2475
    invoke-virtual {p1, p0, v0}, Lcom/android/launcher2/WidgetFolderView;->openWidgetFolder(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    goto :goto_0
.end method

.method private prepareLoadWidgetPreviewsTask(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;III)V
    .locals 13
    .param p1, "pl"    # Lcom/android/launcher2/PagedViewGridLayout;
    .param p2, "page"    # I
    .param p4, "cellWidth"    # I
    .param p5, "cellHeight"    # I
    .param p6, "cellCountX"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/PagedViewGridLayout;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 814
    .local p3, "widgets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 885
    :goto_0
    return-void

    .line 820
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 821
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v8

    .line 822
    .local v8, "currentPage":I
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 823
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;

    .line 824
    .local v11, "task":Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;
    iget v12, v11, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->page:I

    .line 825
    .local v12, "taskPage":I
    if-eq v12, p2, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuWidgets;->getAssociatedLowerPageBound(I)I

    move-result v1

    if-lt v12, v1, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuWidgets;->getAssociatedUpperPageBound(I)I

    move-result v1

    if-le v12, v1, :cond_2

    .line 828
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->requestCancel(Z)Z

    .line 829
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 834
    :cond_2
    invoke-direct {p0, v12}, Lcom/android/launcher2/MenuWidgets;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_1

    .line 839
    .end local v11    # "task":Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;
    .end local v12    # "taskPage":I
    :cond_3
    new-instance v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    new-instance v6, Lcom/android/launcher2/MenuWidgets$4;

    invoke-direct {v6, p0}, Lcom/android/launcher2/MenuWidgets$4;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    new-instance v7, Lcom/android/launcher2/MenuWidgets$5;

    invoke-direct {v7, p0}, Lcom/android/launcher2/MenuWidgets$5;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;-><init>(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;IILcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;)V

    .line 878
    .local v0, "pageData":Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;
    new-instance v10, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;

    invoke-direct {v10, p2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;-><init>(I)V

    .line 879
    .local v10, "t":Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;
    invoke-direct {p0, p2}, Lcom/android/launcher2/MenuWidgets;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->setThreadPriority(I)V

    .line 880
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v10, v1, v2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 884
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setDisplayedWidgets(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "displayedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/List;

    .line 390
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    .line 391
    .local v0, "hadUninstallable":Z
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    .line 392
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AvailableWidget;

    .line 393
    .local v2, "widget":Lcom/android/launcher2/AvailableWidget;
    invoke-interface {v2}, Lcom/android/launcher2/AvailableWidget;->canUninstall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    .line 398
    .end local v2    # "widget":Lcom/android/launcher2/AvailableWidget;
    :cond_1
    iget-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    if-eq v3, v0, :cond_2

    .line 399
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Launcher;->menuWidgetsUpdated(Z)V

    .line 401
    :cond_2
    return-void
.end method

.method private setDragInProgress(Z)V
    .locals 1
    .param p1, "dragInProgress"    # Z

    .prologue
    .line 2073
    iput-boolean p1, p0, Lcom/android/launcher2/MenuWidgets;->mDragInProgress:Z

    .line 2074
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mDragInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mPendingUpdatePackages:Z

    if-eqz v0, :cond_0

    .line 2075
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mPendingUpdatePackages:Z

    .line 2076
    const-string v0, "packagesChanged"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    .line 2078
    :cond_0
    return-void
.end method

.method private setMenuWidgetsAccessibilityEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 2675
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2676
    .local v1, "talkbackString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "(?i).*talkback.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2678
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher2/MenuView;->setAccessibilityEnabled(Z)V

    .line 2680
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getComingPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewGridLayout;

    .line 2681
    .local v0, "pagedViewGridLayout":Lcom/android/launcher2/PagedViewGridLayout;
    if-eqz v0, :cond_0

    .line 2682
    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewGridLayout;->setAccessibilityEnabled(Z)V

    .line 2684
    .end local v0    # "pagedViewGridLayout":Lcom/android/launcher2/PagedViewGridLayout;
    :cond_0
    return-void
.end method

.method public static sortByValues(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 304
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v3

    .line 305
    .local v3, "mCollator":Ljava/text/Collator;
    new-instance v5, Lcom/android/launcher2/MenuWidgets$1;

    invoke-direct {v5, v3}, Lcom/android/launcher2/MenuWidgets$1;-><init>(Ljava/text/Collator;)V

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 321
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 323
    .local v4, "sortedMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 324
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 327
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-object v4
.end method

.method private syncWidgetPageItems(IZ)V
    .locals 36
    .param p1, "page"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 890
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    mul-int v23, v5, v7

    .line 891
    .local v23, "numItemsPerPage":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    .line 892
    .local v27, "pm":Landroid/content/pm/PackageManager;
    const/16 v29, 0x0

    .local v29, "secretWidgetCount":I
    const/16 v28, 0x0

    .line 893
    .local v28, "secretPageCount":I
    const/16 v25, 0x0

    .local v25, "offset":I
    const/4 v14, 0x0

    .line 894
    .local v14, "end":I
    const/16 v17, 0x0

    .line 895
    .local v17, "isSecretPage":Z
    const/4 v8, 0x0

    .line 932
    .local v8, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    mul-int v25, p1, v23

    .line 933
    add-int v5, v25, v23

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 934
    const-string v5, "Launcher.MenuWidgets"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syncWidgetPageItems Page: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " immediate "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " subListOffsets "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    move/from16 v0, v25

    if-le v0, v14, :cond_0

    .line 1059
    :goto_0
    return-void

    .line 937
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    move/from16 v0, v25

    invoke-interface {v5, v0, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    .line 944
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/PagedViewGridLayout;

    .line 945
    .local v6, "layout":Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/PagedViewGridLayout;->removeAllViews()V

    .line 947
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v16

    if-ge v0, v5, :cond_9

    .line 949
    move/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    .line 951
    .local v24, "obj":Ljava/lang/Object;
    move-object/from16 v0, v24

    instance-of v5, v0, Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 952
    const-string v5, "Launcher.MenuWidgets"

    const-string v7, " Creating Widget Folder View"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v24

    .line 953
    check-cast v21, Ljava/util/ArrayList;

    .line 955
    .local v21, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030057

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/android/launcher2/WidgetFolderView;

    .line 957
    .local v32, "widgetFolderView":Lcom/android/launcher2/WidgetFolderView;
    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v5}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v18

    .line 958
    .local v18, "item":Lcom/android/launcher2/HomePendingItem;
    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WidgetFolderView;->setTag(Ljava/lang/Object;)V

    .line 959
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomePendingItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    .line 960
    .local v26, "packageName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 962
    .local v10, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 966
    :goto_2
    if-eqz v10, :cond_1

    .line 967
    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 968
    .local v15, "folderLabel":Ljava/lang/String;
    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Lcom/android/launcher2/WidgetFolderView;->setWidgetFolderTitle(Ljava/lang/String;)V

    .line 971
    .end local v15    # "folderLabel":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WidgetFolderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 972
    sget-object v5, Lcom/android/launcher2/FocusHelper;->MENU_WIDGETS_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/launcher2/WidgetFolderView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 973
    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WidgetFolderView;->setWidgetFolderItems(Ljava/util/ArrayList;)V

    .line 976
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    rem-int v19, v16, v5

    .line 977
    .local v19, "ix":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    div-int v20, v16, v5

    .line 978
    .local v20, "iy":I
    new-instance v22, Landroid/widget/GridLayout$LayoutParams;

    sget-object v5, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v20

    invoke-static {v0, v5}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    sget-object v7, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v19

    invoke-static {v0, v7}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v7}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 981
    .local v22, "lp":Landroid/widget/GridLayout$LayoutParams;
    const/16 v5, 0x33

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    .line 985
    if-lez v19, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    :goto_3
    move-object/from16 v0, v22

    iput v5, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 986
    if-lez v20, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapY:I

    :goto_4
    move-object/from16 v0, v22

    iput v5, v0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    .line 987
    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 947
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "item":Lcom/android/launcher2/HomePendingItem;
    .end local v21    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    .end local v26    # "packageName":Ljava/lang/String;
    .end local v32    # "widgetFolderView":Lcom/android/launcher2/WidgetFolderView;
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 963
    .end local v19    # "ix":I
    .end local v20    # "iy":I
    .end local v22    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .restart local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v18    # "item":Lcom/android/launcher2/HomePendingItem;
    .restart local v21    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    .restart local v26    # "packageName":Ljava/lang/String;
    .restart local v32    # "widgetFolderView":Lcom/android/launcher2/WidgetFolderView;
    :catch_0
    move-exception v13

    .line 964
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 985
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v19    # "ix":I
    .restart local v20    # "iy":I
    .restart local v22    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 986
    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    .line 997
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "item":Lcom/android/launcher2/HomePendingItem;
    .end local v19    # "ix":I
    .end local v20    # "iy":I
    .end local v21    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    .end local v22    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v26    # "packageName":Ljava/lang/String;
    .end local v32    # "widgetFolderView":Lcom/android/launcher2/WidgetFolderView;
    :cond_4
    const-string v5, "Launcher.MenuWidgets"

    const-string v7, " Creating Widget View"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    move/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/AvailableWidget;

    .line 1000
    .local v11, "availableWidget":Lcom/android/launcher2/AvailableWidget;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030003

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/PagedViewWidget;

    .line 1005
    .local v31, "widget":Lcom/android/launcher2/PagedViewWidget;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1006
    invoke-interface {v11}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    .line 1010
    :goto_6
    const/4 v5, 0x2

    new-array v12, v5, [I

    .line 1011
    .local v12, "cellSpan":[I
    invoke-interface {v11, v12}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    .line 1012
    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v7, 0x1

    aget v7, v12, v7

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v7}, Lcom/android/launcher2/PagedViewWidget;->applyCellSpan(II)V

    .line 1013
    invoke-interface {v11}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 1015
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1016
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1017
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1018
    sget-object v5, Lcom/android/launcher2/FocusHelper;->MENU_WIDGETS_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/launcher2/PagedViewWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1021
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    rem-int v19, v16, v5

    .line 1022
    .restart local v19    # "ix":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    div-int v20, v16, v5

    .line 1023
    .restart local v20    # "iy":I
    new-instance v22, Landroid/widget/GridLayout$LayoutParams;

    sget-object v5, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v20

    invoke-static {v0, v5}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    sget-object v7, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v19

    invoke-static {v0, v7}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v7}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 1026
    .restart local v22    # "lp":Landroid/widget/GridLayout$LayoutParams;
    const/16 v5, 0x33

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    .line 1030
    if-lez v19, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    :goto_7
    move-object/from16 v0, v22

    iput v5, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 1031
    if-lez v20, :cond_8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapY:I

    :goto_8
    move-object/from16 v0, v22

    iput v5, v0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    .line 1032
    sget-boolean v5, Lcom/android/launcher2/MenuWidgets;->DEBUGGABLE:Z

    if-eqz v5, :cond_5

    const-string v5, "Launcher.MenuWidgets"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "; row: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", col: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", lm: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    iget v9, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", tm: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    iget v9, v0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_5
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 1008
    .end local v12    # "cellSpan":[I
    .end local v19    # "ix":I
    .end local v20    # "iy":I
    .end local v22    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_6
    invoke-interface {v11}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v7}, Lcom/android/launcher2/PagedViewWidget;->applyHighLightLabel(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1030
    .restart local v12    # "cellSpan":[I
    .restart local v19    # "ix":I
    .restart local v20    # "iy":I
    .restart local v22    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_7
    const/4 v5, 0x0

    goto :goto_7

    .line 1031
    :cond_8
    const/4 v5, 0x0

    goto :goto_8

    .line 1046
    .end local v11    # "availableWidget":Lcom/android/launcher2/AvailableWidget;
    .end local v12    # "cellSpan":[I
    .end local v19    # "ix":I
    .end local v20    # "iy":I
    .end local v22    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v24    # "obj":Ljava/lang/Object;
    .end local v31    # "widget":Lcom/android/launcher2/PagedViewWidget;
    :cond_9
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    invoke-virtual {v6, v5}, Lcom/android/launcher2/PagedViewGridLayout;->setColumnCount(I)V

    .line 1048
    new-instance v4, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;

    move-object/from16 v5, p0

    move/from16 v7, p1

    move/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;Z)V

    .line 1049
    .local v4, "blr":Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v5

    move/from16 v0, p1

    if-ne v0, v5, :cond_a

    .line 1053
    invoke-virtual {v4}, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->run()V

    goto/16 :goto_0

    .line 1055
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/MenuWidgets;->getSleepForPage(I)I

    move-result v30

    .line 1056
    .local v30, "sleepMs":I
    sget-boolean v5, Lcom/android/launcher2/MenuWidgets;->DEBUGGABLE:Z

    if-eqz v5, :cond_b

    const-string v5, "Launcher.MenuWidgets"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Running runnable "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " after "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " ms"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " page "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " items "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_b
    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/launcher2/MenuWidgets;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private syncWidgetRotation(I)V
    .locals 41
    .param p1, "page"    # I

    .prologue
    .line 2240
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    .line 2241
    .local v36, "r":Landroid/content/res/Resources;
    const v6, 0x7f0e012d

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v40

    .line 2242
    .local v40, "widgetWidth":I
    const v6, 0x7f0e012e

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v39

    .line 2244
    .local v39, "widgetHeight":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    mul-int v29, v6, v8

    .line 2245
    .local v29, "numItemsPerPage":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    .line 2248
    .local v33, "pm":Landroid/content/pm/PackageManager;
    mul-int v31, p1, v29

    .line 2249
    .local v31, "offset":I
    add-int v6, v31, v29

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 2250
    .local v16, "end":I
    const-string v6, "Launcher.MenuWidgets"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "syncWidgetPageItems Page: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " subListOffsets "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    move/from16 v0, v31

    move/from16 v1, v16

    if-le v0, v1, :cond_0

    .line 2362
    :goto_0
    return-void

    .line 2253
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    move/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v6, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 2256
    .local v7, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/PagedViewGridLayout;

    .line 2258
    .local v25, "layout":Lcom/android/launcher2/PagedViewGridLayout;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2260
    .local v21, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v19

    if-ge v0, v6, :cond_d

    .line 2261
    move/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    .line 2263
    .local v30, "obj":Ljava/lang/Object;
    move-object/from16 v0, v30

    instance-of v6, v0, Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    .line 2264
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->removeViewAt(I)V

    .line 2265
    const-string v6, "Launcher.MenuWidgets"

    const-string v8, " Creating Widget Folder View"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v27, v30

    .line 2266
    check-cast v27, Ljava/util/ArrayList;

    .line 2267
    .local v27, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2269
    .local v17, "folderImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030057

    const/4 v9, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v6, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v38

    check-cast v38, Lcom/android/launcher2/WidgetFolderView;

    .line 2271
    .local v38, "widgetFolderView":Lcom/android/launcher2/WidgetFolderView;
    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v6}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v22

    .line 2272
    .local v22, "item":Lcom/android/launcher2/HomePendingItem;
    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WidgetFolderView;->setTag(Ljava/lang/Object;)V

    .line 2273
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/HomePendingItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v32

    .line 2274
    .local v32, "packageName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 2276
    .local v12, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 2280
    :goto_2
    if-eqz v12, :cond_1

    .line 2281
    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 2282
    .local v18, "folderLabel":Ljava/lang/String;
    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WidgetFolderView;->setWidgetFolderTitle(Ljava/lang/String;)V

    .line 2285
    .end local v18    # "folderLabel":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WidgetFolderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2286
    sget-object v6, Lcom/android/launcher2/FocusHelper;->MENU_WIDGETS_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Lcom/android/launcher2/WidgetFolderView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2287
    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WidgetFolderView;->setWidgetFolderItems(Ljava/util/ArrayList;)V

    .line 2290
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    rem-int v23, v19, v6

    .line 2291
    .local v23, "ix":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    div-int v24, v19, v6

    .line 2292
    .local v24, "iy":I
    new-instance v28, Landroid/widget/GridLayout$LayoutParams;

    sget-object v6, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v24

    invoke-static {v0, v6}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    sget-object v8, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v23

    invoke-static {v0, v8}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-direct {v0, v6, v8}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 2295
    .local v28, "lp":Landroid/widget/GridLayout$LayoutParams;
    const/16 v6, 0x33

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    .line 2296
    invoke-virtual/range {v36 .. v36}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    .line 2297
    if-lez v23, :cond_2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    :goto_3
    move-object/from16 v0, v28

    iput v6, v0, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    .line 2300
    :goto_4
    if-lez v24, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapY:I

    :goto_5
    move-object/from16 v0, v28

    iput v6, v0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    .line 2301
    move-object/from16 v0, v25

    move-object/from16 v1, v38

    move/from16 v2, v19

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2303
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/launcher2/AvailableWidget;

    .line 2304
    .local v37, "widget":Lcom/android/launcher2/AvailableWidget;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    move-object/from16 v0, v37

    invoke-interface {v0, v6, v8}, Lcom/android/launcher2/AvailableWidget;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2277
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v23    # "ix":I
    .end local v24    # "iy":I
    .end local v28    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v37    # "widget":Lcom/android/launcher2/AvailableWidget;
    :catch_0
    move-exception v15

    .line 2278
    .local v15, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v15}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 2297
    .end local v15    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v23    # "ix":I
    .restart local v24    # "iy":I
    .restart local v28    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    .line 2299
    :cond_3
    if-lez v23, :cond_4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    :goto_7
    move-object/from16 v0, v28

    iput v6, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    goto :goto_7

    .line 2300
    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    .line 2306
    .restart local v20    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2260
    .end local v12    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "folderImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v22    # "item":Lcom/android/launcher2/HomePendingItem;
    .end local v27    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v38    # "widgetFolderView":Lcom/android/launcher2/WidgetFolderView;
    :goto_8
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 2308
    .end local v23    # "ix":I
    .end local v24    # "iy":I
    .end local v28    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_7
    const-string v6, "Launcher.MenuWidgets"

    const-string v8, " Creating Widget View"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v13, v30

    .line 2310
    check-cast v13, Lcom/android/launcher2/AvailableWidget;

    .line 2312
    .local v13, "availableWidget":Lcom/android/launcher2/AvailableWidget;
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Lcom/android/launcher2/PagedViewWidget;

    .line 2314
    .local v37, "widget":Lcom/android/launcher2/PagedViewWidget;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2315
    invoke-interface {v13}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    .line 2320
    :goto_9
    const/4 v6, 0x2

    new-array v14, v6, [I

    .line 2321
    .local v14, "cellSpan":[I
    invoke-interface {v13, v14}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    .line 2322
    const/4 v6, 0x0

    aget v6, v14, v6

    const/4 v8, 0x1

    aget v8, v14, v8

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v8}, Lcom/android/launcher2/PagedViewWidget;->applyCellSpan(II)V

    .line 2323
    invoke-interface {v13}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 2325
    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2326
    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2327
    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2328
    sget-object v6, Lcom/android/launcher2/FocusHelper;->MENU_WIDGETS_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Lcom/android/launcher2/PagedViewWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2330
    const v6, 0x7f0f0017

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/ImageView;

    .line 2331
    .local v34, "preview":Landroid/widget/ImageView;
    invoke-virtual/range {v34 .. v34}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    check-cast v26, Landroid/view/View;

    .line 2332
    .local v26, "linear":Landroid/view/View;
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v35

    .line 2333
    .local v35, "previewParam":Landroid/view/ViewGroup$LayoutParams;
    move/from16 v0, v40

    move-object/from16 v1, v35

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2334
    move/from16 v0, v39

    move-object/from16 v1, v35

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2335
    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2338
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    rem-int v23, v19, v6

    .line 2339
    .restart local v23    # "ix":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    div-int v24, v19, v6

    .line 2340
    .restart local v24    # "iy":I
    invoke-virtual/range {v37 .. v37}, Lcom/android/launcher2/PagedViewWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/widget/GridLayout$LayoutParams;

    .line 2341
    .restart local v28    # "lp":Landroid/widget/GridLayout$LayoutParams;
    invoke-virtual/range {v36 .. v36}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_a

    .line 2342
    if-lez v23, :cond_9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    :goto_a
    move-object/from16 v0, v28

    iput v6, v0, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    .line 2345
    :goto_b
    if-lez v24, :cond_c

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapY:I

    :goto_c
    move-object/from16 v0, v28

    iput v6, v0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    .line 2346
    const/high16 v6, -0x80000000

    invoke-static {v6}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    move-object/from16 v0, v28

    iput-object v6, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 2347
    const/high16 v6, -0x80000000

    invoke-static {v6}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    move-object/from16 v0, v28

    iput-object v6, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 2348
    const/16 v6, 0x33

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    .line 2349
    move-object/from16 v0, v37

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2351
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    invoke-interface {v13, v6, v8}, Lcom/android/launcher2/AvailableWidget;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 2317
    .end local v14    # "cellSpan":[I
    .end local v23    # "ix":I
    .end local v24    # "iy":I
    .end local v26    # "linear":Landroid/view/View;
    .end local v28    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v34    # "preview":Landroid/widget/ImageView;
    .end local v35    # "previewParam":Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    invoke-interface {v13}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v8}, Lcom/android/launcher2/PagedViewWidget;->applyHighLightLabel(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2342
    .restart local v14    # "cellSpan":[I
    .restart local v23    # "ix":I
    .restart local v24    # "iy":I
    .restart local v26    # "linear":Landroid/view/View;
    .restart local v28    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .restart local v34    # "preview":Landroid/widget/ImageView;
    .restart local v35    # "previewParam":Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    const/4 v6, 0x0

    goto :goto_a

    .line 2344
    :cond_a
    if-lez v23, :cond_b

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    :goto_d
    move-object/from16 v0, v28

    iput v6, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    goto :goto_b

    :cond_b
    const/4 v6, 0x0

    goto :goto_d

    .line 2345
    :cond_c
    const/4 v6, 0x0

    goto :goto_c

    .line 2354
    .end local v13    # "availableWidget":Lcom/android/launcher2/AvailableWidget;
    .end local v14    # "cellSpan":[I
    .end local v23    # "ix":I
    .end local v24    # "iy":I
    .end local v26    # "linear":Landroid/view/View;
    .end local v28    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v30    # "obj":Ljava/lang/Object;
    .end local v34    # "preview":Landroid/widget/ImageView;
    .end local v35    # "previewParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v37    # "widget":Lcom/android/launcher2/PagedViewWidget;
    :cond_d
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/launcher2/PagedViewGridLayout;->setColumnCount(I)V

    .line 2356
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedViewGridLayout;

    .line 2357
    .local v5, "pl":Lcom/android/launcher2/PagedViewGridLayout;
    new-instance v4, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v6, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;-><init>(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;IILcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;)V

    .line 2359
    .local v4, "data":Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;
    move-object/from16 v0, v21

    iput-object v0, v4, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 2360
    const-string v6, "rotation"

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/launcher2/MenuWidgets;->onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    .line 2361
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v6, v0, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private testDataReady()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePageCounts()V
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    .line 420
    return-void
.end method

.method private updatePageLayout()I
    .locals 6

    .prologue
    .line 2140
    const/4 v3, 0x0

    .line 2142
    .local v3, "updatePageCount":I
    iget-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mIsDataReady:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mContentIsRefreshable:Z

    if-eqz v4, :cond_2

    .line 2144
    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mScroller:Landroid/widget/Scroller;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2145
    const/high16 v4, -0x80000000

    iput v4, p0, Lcom/android/launcher2/MenuWidgets;->mNextPage:I

    .line 2148
    const-string v4, "rotation"

    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuWidgets;->cancelAllTasks(Ljava/lang/String;)V

    .line 2149
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updateWidgetGridChildCount()I

    move-result v3

    .line 2150
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->updateDirtyPage()V

    .line 2153
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v2

    .line 2154
    .local v2, "pages":I
    if-lez v2, :cond_2

    .line 2155
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v0

    .line 2156
    .local v0, "currentPage":I
    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v2, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2157
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->setCurrentPage(I)V

    .line 2158
    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuWidgets;->syncWidgetRotation(I)V

    .line 2159
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2160
    if-eq v1, v0, :cond_0

    .line 2161
    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuWidgets;->syncWidgetRotation(I)V

    .line 2159
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2163
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->requestLayout()V

    .line 2166
    .end local v0    # "currentPage":I
    .end local v1    # "i":I
    .end local v2    # "pages":I
    :cond_2
    return v3
.end method

.method private updateWidgetGridChildCount()I
    .locals 20

    .prologue
    .line 2170
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    move/from16 v18, v0

    mul-int v12, v17, v18

    .line 2171
    .local v12, "numItemsPerPage":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v16

    .line 2172
    .local v16, "widgetCount":I
    rem-int v9, v16, v12

    .line 2173
    .local v9, "lastPageItemCount":I
    div-int v18, v16, v12

    if-nez v9, :cond_0

    const/16 v17, 0x0

    :goto_0
    add-int v13, v18, v17

    .line 2174
    .local v13, "pageCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v4

    .line 2175
    .local v4, "childCount":I
    const/4 v14, 0x0

    .line 2178
    .local v14, "pageDiff":I
    sub-int v6, v13, v4

    .line 2179
    .local v6, "diff":I
    move v14, v6

    .line 2180
    :goto_1
    if-eqz v6, :cond_2

    .line 2181
    if-lez v6, :cond_1

    .line 2182
    new-instance v10, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v10, v0, v1, v2}, Lcom/android/launcher2/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    .line 2183
    .local v10, "layout":Lcom/android/launcher2/PagedViewGridLayout;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/android/launcher2/PagedViewGridLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2184
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 2185
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1, v11}, Lcom/android/launcher2/MenuWidgets;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2186
    add-int/lit8 v6, v6, -0x1

    .line 2187
    goto :goto_1

    .line 2173
    .end local v4    # "childCount":I
    .end local v6    # "diff":I
    .end local v10    # "layout":Lcom/android/launcher2/PagedViewGridLayout;
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v13    # "pageCount":I
    .end local v14    # "pageDiff":I
    :cond_0
    const/16 v17, 0x1

    goto :goto_0

    .line 2188
    .restart local v4    # "childCount":I
    .restart local v6    # "diff":I
    .restart local v13    # "pageCount":I
    .restart local v14    # "pageDiff":I
    :cond_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->removeViewAt(I)V

    .line 2189
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2193
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v4

    .line 2194
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int/lit8 v18, v4, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2195
    .local v5, "currentPage":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/MenuWidgets;->setCurrentPage(I)V

    .line 2197
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v4, :cond_8

    .line 2198
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewGridLayout;

    .line 2201
    .local v3, "child":Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v8

    .line 2202
    .local v8, "itemCount":I
    add-int/lit8 v17, v4, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_4

    .line 2204
    sub-int v6, v12, v8

    .line 2206
    :goto_3
    if-eqz v6, :cond_7

    .line 2207
    if-lez v6, :cond_3

    .line 2208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f030003

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/PagedViewWidget;

    .line 2210
    .local v15, "widget":Lcom/android/launcher2/PagedViewWidget;
    invoke-virtual {v3, v15}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;)V

    .line 2211
    add-int/lit8 v6, v6, -0x1

    .line 2212
    goto :goto_3

    .line 2213
    .end local v15    # "widget":Lcom/android/launcher2/PagedViewWidget;
    :cond_3
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PagedViewGridLayout;->removeViewAt(I)V

    .line 2214
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2219
    :cond_4
    if-nez v9, :cond_5

    sub-int v6, v12, v8

    .line 2221
    :goto_4
    if-eqz v6, :cond_7

    .line 2222
    if-lez v6, :cond_6

    .line 2223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f030003

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/PagedViewWidget;

    .line 2225
    .restart local v15    # "widget":Lcom/android/launcher2/PagedViewWidget;
    invoke-virtual {v3, v15}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;)V

    .line 2226
    add-int/lit8 v6, v6, -0x1

    .line 2227
    goto :goto_4

    .line 2219
    .end local v15    # "widget":Lcom/android/launcher2/PagedViewWidget;
    :cond_5
    sub-int v6, v9, v8

    goto :goto_4

    .line 2228
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PagedViewGridLayout;->removeViewAt(I)V

    .line 2229
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2197
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2236
    .end local v3    # "child":Lcom/android/launcher2/PagedViewGridLayout;
    .end local v8    # "itemCount":I
    :cond_8
    return v14
.end method


# virtual methods
.method protected beginDragging(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    .line 741
    const-string v0, "Launcher.MenuWidgets"

    const-string v1, "This widget state is Uninstall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const/4 v0, 0x0

    .line 748
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return v0

    .line 745
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    instance-of v0, p1, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v0, :cond_1

    .line 746
    check-cast p1, Lcom/android/launcher2/PagedViewWidget;

    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->beginDraggingWidget(Lcom/android/launcher2/PagedViewWidget;)V

    .line 748
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public changeToWidgetStateNormal()V
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 675
    return-void
.end method

.method cleanupCache(Ljava/lang/String;)V
    .locals 3
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 550
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AvailableWidget;

    .line 551
    .local v1, "w":Lcom/android/launcher2/AvailableWidget;
    if-eqz v1, :cond_0

    .line 552
    invoke-interface {v1}, Lcom/android/launcher2/AvailableWidget;->cleanupCache()V

    goto :goto_0

    .line 555
    .end local v1    # "w":Lcom/android/launcher2/AvailableWidget;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 556
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 557
    return-void
.end method

.method public closeFolder()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2663
    const-string v1, "Launcher.MenuWidgets"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Close Widget Folder  -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2665
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 2666
    .local v0, "realParent":Lcom/android/launcher2/AnimationLayer;
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/WidgetFolder;->setOpened(Z)V

    .line 2667
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 2668
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetFolder;->closeFolder()V

    .line 2669
    const/4 v1, 0x1

    .line 2671
    .end local v0    # "realParent":Lcom/android/launcher2/AnimationLayer;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected determineDraggingStart(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 698
    return-void
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 1326
    const/4 v0, 0x0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1336
    const v0, 0x7f10006e

    .line 1338
    .local v0, "stringId":I
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getComingPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPageCacheSize()I
    .locals 1

    .prologue
    .line 2424
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v0

    return v0
.end method

.method getSaveInstanceStateIndex()I
    .locals 2

    .prologue
    .line 367
    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->getMiddleComponentIndexOnCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    .line 370
    :cond_0
    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    return v0
.end method

.method public getSecretWidgetCount()I
    .locals 2

    .prologue
    .line 2442
    const/4 v0, 0x0

    .line 2444
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2465
    .end local v0    # "count":I
    :cond_1
    return v0
.end method

.method public getSecretWidgetPageCount()I
    .locals 1

    .prologue
    .line 2491
    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mNumSecretWidgetPages:I

    return v0
.end method

.method public getWidgetFolder()Lcom/android/launcher2/WidgetFolder;
    .locals 1

    .prologue
    .line 2487
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    return-object v0
.end method

.method public getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 1

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    return-object v0
.end method

.method getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 2

    .prologue
    .line 1958
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    .line 1959
    .local v0, "widgetState":Lcom/android/launcher2/MenuWidgets$WidgetState;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleWidgetStateChange(Lcom/android/launcher2/MenuWidgets$WidgetState;Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 4
    .param p1, "newState"    # Lcom/android/launcher2/MenuWidgets$WidgetState;
    .param p2, "oldState"    # Lcom/android/launcher2/MenuWidgets$WidgetState;

    .prologue
    .line 1963
    sget-boolean v1, Lcom/android/launcher2/MenuWidgets;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string v2, "Launcher.MenuWidgets"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State change from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    .line 1966
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1967
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz p2, :cond_1

    .line 1968
    invoke-virtual {p2, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->exit(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V

    .line 1969
    :cond_1
    if-eqz p1, :cond_2

    .line 1970
    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V

    .line 1971
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    .line 1972
    return-void

    .line 1963
    .end local v0    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    :cond_3
    const-string v1, "UNKNOWN"

    goto :goto_0

    :cond_4
    const-string v1, "UNKNOWN"

    goto :goto_1
.end method

.method public hasSecretWidget()Z
    .locals 3

    .prologue
    .line 647
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    .line 648
    .local v0, "a":Lcom/android/launcher2/AvailableWidget;
    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->isSecret()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 651
    .end local v0    # "a":Lcom/android/launcher2/AvailableWidget;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasUninstallableWidgets()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    return v0
.end method

.method public initSecretItemOffset()V
    .locals 1

    .prologue
    .line 2495
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/MenuWidgets;->mSecretItemOffset:I

    .line 2496
    return-void
.end method

.method public isUninstallable(Lcom/android/launcher2/HomePendingItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/HomePendingItem;

    .prologue
    .line 2011
    iget-boolean v0, p1, Lcom/android/launcher2/HomePendingItem;->mSystemApp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 2056
    const-string v1, "Launcher.MenuWidgets"

    const-string v2, "MenuWidgets::onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onAttachedToWindow()V

    .line 2058
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2059
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2060
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 682
    instance-of v2, p1, Lcom/android/launcher2/PagedViewWidget;

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/android/launcher2/WidgetFolderView;

    if-eqz v2, :cond_1

    .line 683
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 684
    .local v0, "tag":Ljava/lang/Object;
    instance-of v2, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v2, :cond_1

    .line 685
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    .line 686
    .local v1, "widgetStateObj":Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    if-eqz v1, :cond_1

    .line 687
    check-cast v0, Lcom/android/launcher2/HomePendingItem;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v1, v0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V

    .line 690
    .end local v1    # "widgetStateObj":Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2375
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/MenuWidgets;->mRequestedOrientation:I

    .line 2376
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    .line 2377
    return-void
.end method

.method protected onDataReady(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updatePageCounts()V

    .line 426
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->invalidatePageData(I)V

    .line 427
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 753
    const-string v1, "Launcher.MenuWidgets"

    const-string v2, "MenuWidgets::onDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onDetachedFromWindow()V

    .line 755
    const-string v1, "onDetachedFromWindow"

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuWidgets;->cancelAllTasks(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 758
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 759
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2083
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2084
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2086
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->closeKeyboard()V

    .line 2088
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    .line 439
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 440
    .local v7, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 441
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->isDataReady()Z

    move-result v8

    if-nez v8, :cond_0

    .line 442
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->testDataReady()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->setDataIsReady()V

    .line 444
    invoke-virtual {p0, v7, v2}, Lcom/android/launcher2/MenuWidgets;->setMeasuredDimension(II)V

    .line 445
    invoke-virtual {p0, v7, v2}, Lcom/android/launcher2/MenuWidgets;->onDataReady(II)V

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v1

    .line 450
    .local v1, "childCount":I
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->getDesiredChildPageWidth()I

    move-result v6

    .line 451
    .local v6, "minWidth":I
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->getDesiredChildPageHeight()I

    move-result v5

    .line 453
    .local v5, "minHeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 454
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewGridLayout;

    .line 455
    .local v0, "child":Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v0, v6}, Lcom/android/launcher2/PagedViewGridLayout;->setMinimumWidth(I)V

    .line 456
    invoke-virtual {v0, v5}, Lcom/android/launcher2/PagedViewGridLayout;->setMinimumHeight(I)V

    .line 457
    iget v8, p0, Lcom/android/launcher2/MenuWidgets;->mPagePaddingTop:I

    iget v9, p0, Lcom/android/launcher2/MenuWidgets;->mPagePaddingBottom:I

    invoke-virtual {v0, v10, v8, v10, v9}, Lcom/android/launcher2/PagedViewGridLayout;->setPadding(IIII)V

    .line 458
    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewGridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 459
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v8, 0x33

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 460
    iget v8, p0, Lcom/android/launcher2/MenuWidgets;->mPagePaddingTop:I

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 461
    iget v8, p0, Lcom/android/launcher2/MenuWidgets;->mPagePaddingLeft:I

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 462
    iget v8, p0, Lcom/android/launcher2/MenuWidgets;->mPagePaddingRight:I

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 463
    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedViewGridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 465
    .end local v0    # "child":Lcom/android/launcher2/PagedViewGridLayout;
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onMeasure(II)V

    .line 466
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 1

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2050
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2051
    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onPageBeginMoving()V

    .line 2052
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 1313
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onPageEndMoving()V

    .line 1317
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    .line 1318
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 4
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 2063
    const-string v1, "Launcher.MenuWidgets"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MenuWidgets::onTouchModeChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 2065
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->getSearchState()Lcom/android/launcher2/MenuWidgetsSearch;

    move-result-object v0

    .line 2066
    .local v0, "searchObj":Lcom/android/launcher2/MenuWidgetsSearch;
    if-eqz v0, :cond_0

    .line 2067
    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgetsSearch;->onTouchModeChanged(Z)V

    .line 2070
    .end local v0    # "searchObj":Lcom/android/launcher2/MenuWidgetsSearch;
    :cond_0
    return-void
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 347
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 2093
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 2097
    instance-of v2, p1, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 2098
    check-cast v1, Lcom/android/launcher2/PagedViewGridLayout;

    .line 2099
    .local v1, "layout":Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v1, p0}, Lcom/android/launcher2/PagedViewGridLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2100
    invoke-virtual {v1}, Lcom/android/launcher2/PagedViewGridLayout;->getBitmapLoaderRunnable()Ljava/lang/Runnable;

    move-result-object v0

    .line 2104
    .local v0, "blr":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 2105
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2106
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedViewGridLayout;->setBitmapLoaderRunnable(Ljava/lang/Runnable;)V

    .line 2109
    .end local v0    # "blr":Ljava/lang/Runnable;
    .end local v1    # "layout":Lcom/android/launcher2/PagedViewGridLayout;
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 2366
    if-nez p2, :cond_0

    .line 2367
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2368
    .local v0, "newConfig":Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuWidgets;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    .line 2370
    .end local v0    # "newConfig":Landroid/content/res/Configuration;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2371
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 1308
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuWidgets;->acceleratedOverScroll(F)V

    .line 1309
    return-void
.end method

.method public packagesChanged()V
    .locals 4

    .prologue
    .line 474
    new-instance v0, Lcom/android/launcher2/MenuWidgets$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuWidgets$2;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher2/MenuWidgets;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 485
    return-void
.end method

.method refreshQuickViewMenuWidget(Z)V
    .locals 2
    .param p1, "isSecret"    # Z

    .prologue
    .line 2118
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    if-eqz v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    check-cast v0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->refreshQuickView(Z)V

    .line 2121
    :cond_0
    return-void
.end method

.method public refreshWidgetStateModel(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 1
    .param p1, "currState"    # Lcom/android/launcher2/MenuWidgets$WidgetState;

    .prologue
    .line 1975
    if-eqz p1, :cond_0

    .line 1976
    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->refreshModel()V

    .line 1977
    :cond_0
    return-void
.end method

.method public refreshWidgetStateView(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 1
    .param p1, "currState"    # Lcom/android/launcher2/MenuWidgets$WidgetState;

    .prologue
    .line 1980
    if-eqz p1, :cond_0

    .line 1981
    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->refreshView()V

    .line 1982
    :cond_0
    return-void
.end method

.method protected repositionOpenFolder()V
    .locals 1

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    if-eqz v0, :cond_0

    .line 2482
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v0}, Lcom/android/launcher2/WidgetFolder;->repositionOpenFolder()V

    .line 2484
    :cond_0
    return-void
.end method

.method restorePageForIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 384
    if-ltz p1, :cond_0

    .line 385
    iput p1, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    .line 386
    :cond_0
    return-void
.end method

.method public runFilter()V
    .locals 3

    .prologue
    .line 603
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    if-nez v1, :cond_1

    .line 604
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuWidgets;->setDisplayedWidgets(Ljava/util/List;)V

    .line 605
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuWidgets;->addCategoryFolder(Ljava/util/List;)V

    .line 613
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuWidgets;->setDisplayedWidgets(Ljava/util/List;)V

    .line 615
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updatePageCounts()V

    .line 616
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgets;->invalidatePageData(I)V

    .line 618
    iget-boolean v1, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    if-nez v1, :cond_0

    .line 619
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    .line 620
    new-instance v1, Lcom/android/launcher2/MenuWidgets$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgets$3;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgets;->post(Ljava/lang/Runnable;)Z

    .line 634
    :cond_0
    return-void

    .line 607
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/android/launcher2/MenuWidgets$Filter;->filterWidgets(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 608
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuWidgets;->setDisplayedWidgets(Ljava/util/List;)V

    .line 609
    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuWidgets;->addCategoryFolder(Ljava/util/List;)V

    goto :goto_0

    .line 613
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/android/launcher2/MenuWidgets$Filter;->filterWidgets(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method protected setAccessibilityFocusChange(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2689
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->setMenuWidgetsAccessibilityEnabled(Z)V

    .line 2690
    return-void
.end method

.method public setDisplayType(Lcom/android/launcher2/MenuWidgets$DisplayType;)V
    .locals 1
    .param p1, "type"    # Lcom/android/launcher2/MenuWidgets$DisplayType;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

    if-eq v0, p1, :cond_0

    .line 181
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayType:Lcom/android/launcher2/MenuWidgets$DisplayType;

    .line 182
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    .line 184
    :cond_0
    return-void
.end method

.method public setFilter(Lcom/android/launcher2/MenuWidgets$Filter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/launcher2/MenuWidgets$Filter;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    .line 661
    return-void
.end method

.method public setMenuWidgetsFragment(Lcom/android/launcher2/MenuWidgetsFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/launcher2/MenuWidgetsFragment;

    .prologue
    .line 1985
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    .line 1986
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 667
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    .line 668
    return-void
.end method

.method public setSecretAvailableWidget(Ljava/util/List;Z)V
    .locals 4
    .param p2, "isAddList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 637
    .local p1, "secretList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 644
    :cond_0
    return-void

    .line 639
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    .line 640
    .local v0, "a":Lcom/android/launcher2/AvailableWidget;
    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->getWidgetPackageName()Ljava/lang/String;

    move-result-object v2

    .line 641
    .local v2, "pkgName":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 642
    if-eqz p2, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v0, v3}, Lcom/android/launcher2/AvailableWidget;->setSecret(Z)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setTabHost(Lcom/android/launcher2/MenuView;)V
    .locals 2
    .param p1, "tabHost"    # Lcom/android/launcher2/MenuView;

    .prologue
    .line 1990
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;

    .line 1991
    if-eqz p1, :cond_0

    .line 1992
    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    .line 1993
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    if-nez v0, :cond_0

    .line 1994
    new-instance v0, Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-direct {v0}, Lcom/android/launcher2/MenuStateAnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    .line 1995
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    new-instance v1, Lcom/android/launcher2/MenuWidgets$6;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgets$6;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuStateAnimatorSet;->setListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V

    .line 2008
    :cond_0
    return-void
.end method

.method public setWidgetTextVisible(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    .line 2412
    const/4 v0, 0x0

    .local v0, "curPage":I
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v2

    .local v2, "numPages":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2413
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewGridLayout;

    .line 2414
    .local v4, "page":Lcom/android/launcher2/PagedViewGridLayout;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v3

    .local v3, "numWidgets":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 2415
    invoke-virtual {v4, v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedViewWidget;

    .line 2416
    .local v5, "widget":Lcom/android/launcher2/PagedViewWidget;
    invoke-virtual {v5, p1}, Lcom/android/launcher2/PagedViewWidget;->setLabelVisible(Z)V

    .line 2417
    invoke-virtual {v5, p1}, Lcom/android/launcher2/PagedViewWidget;->setCellSpanVisible(Z)V

    .line 2414
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2412
    .end local v5    # "widget":Lcom/android/launcher2/PagedViewWidget;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2420
    .end local v1    # "i":I
    .end local v3    # "numWidgets":I
    .end local v4    # "page":Lcom/android/launcher2/PagedViewGridLayout;
    :cond_1
    return-void
.end method

.method public syncPageItems(IZ)V
    .locals 0
    .param p1, "page"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 1250
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->syncWidgetPageItems(IZ)V

    .line 1251
    return-void
.end method

.method public syncPages()V
    .locals 6

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->removeAllViews()V

    .line 1226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncPages numPages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuWidgets;->cancelAllTasks(Ljava/lang/String;)V

    .line 1233
    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_0

    .line 1235
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/launcher2/MenuWidgets;->mCurrentOrientation:I

    .line 1238
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1239
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    if-ge v1, v4, :cond_1

    .line 1240
    new-instance v2, Lcom/android/launcher2/PagedViewGridLayout;

    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    iget v5, p0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    invoke-direct {v2, v0, v4, v5}, Lcom/android/launcher2/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    .line 1241
    .local v2, "layout":Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v2, p0}, Lcom/android/launcher2/PagedViewGridLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1242
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1243
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/MenuWidgets;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1246
    .end local v2    # "layout":Lcom/android/launcher2/PagedViewGridLayout;
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public updateAvailableWidget()V
    .locals 5

    .prologue
    .line 2499
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->getAvailableWidgets()Ljava/util/List;

    move-result-object v1

    .line 2501
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    if-eqz v1, :cond_0

    .line 2502
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2503
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetProviders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AvailableWidgetListProvider;

    .line 2504
    .local v2, "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    invoke-interface {v2}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2507
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    :cond_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 2508
    sget-object v3, Lcom/android/launcher2/MenuWidgets;->WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgets$WidgetComparator;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets$WidgetComparator;->updateCollator()V

    .line 2509
    sget-object v3, Lcom/android/launcher2/MenuWidgets;->WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgets$WidgetComparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2511
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 2512
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2513
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2539
    :cond_1
    :goto_1
    return-void

    .line 2517
    :cond_2
    const-string v3, "Launcher.MenuWidgets"

    const-string v4, "updateAvailableWidget : can\'t load available widget"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method updateDirtyPage()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2124
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v2

    .line 2125
    .local v2, "total":I
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2126
    .local v1, "dirtyCount":I
    sub-int v0, v1, v2

    .line 2128
    .local v0, "diff":I
    :goto_0
    if-eqz v0, :cond_1

    .line 2129
    if-lez v0, :cond_0

    .line 2130
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2131
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2133
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2137
    :cond_1
    return-void
.end method

.method public updatePackages(Ljava/lang/String;)V
    .locals 6
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 488
    iget-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mDragInProgress:Z

    if-eqz v3, :cond_1

    .line 489
    iput-boolean v5, p0, Lcom/android/launcher2/MenuWidgets;->mPendingUpdatePackages:Z

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    const-string v3, "updatePackages"

    invoke-direct {p0, v3}, Lcom/android/launcher2/MenuWidgets;->cancelAllTasks(Ljava/lang/String;)V

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " updatePackages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuWidgets;->cleanupCache(Ljava/lang/String;)V

    .line 496
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    .line 497
    .local v2, "wasEmpty":Z
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 499
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgetsFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 500
    const-string v3, "Launcher.MenuWidgets"

    const-string v4, "Launcher model is reloading becuase of configuration change ( ex. mcc/mnc update )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :cond_2
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v3, :cond_3

    .line 505
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetProviders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AvailableWidgetListProvider;

    .line 506
    .local v1, "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v1}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 509
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    :cond_3
    sput-boolean v5, Lcom/android/launcher2/Launcher;->wasWidgetsTabShown:Z

    .line 510
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mHelpWidgetProviders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AvailableWidgetListProvider;

    .line 511
    .restart local v1    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    invoke-interface {v1}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 514
    .end local v1    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    :cond_4
    sget-object v3, Lcom/android/launcher2/MenuWidgets;->WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgets$WidgetComparator;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets$WidgetComparator;->updateCollator()V

    .line 515
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/List;

    sget-object v4, Lcom/android/launcher2/MenuWidgets;->WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgets$WidgetComparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 521
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    .line 523
    if-eqz v2, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->testDataReady()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->requestLayout()V

    goto/16 :goto_0
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scrollProgress"    # F

    .prologue
    .line 1255
    const/4 v6, 0x0

    .line 1256
    .local v6, "translationX":F
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c001d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v7, v8

    .line 1257
    .local v7, "vtransition_rotation_max":F
    const/4 v1, 0x0

    .line 1259
    .local v1, "fixedPosition":Z
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->isLoopingEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1260
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuWidgets;->indexOfChild(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuWidgets;->indexToPage(I)I

    move-result v2

    .line 1261
    .local v2, "i":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1262
    .local v4, "pageWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1267
    .local v3, "pageHeight":I
    const/high16 v8, 0x3f000000    # 0.5f

    int-to-float v9, v4

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    int-to-float v10, v4

    mul-float/2addr v9, v10

    int-to-float v10, v2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v8, v9, v10}, Lcom/android/launcher2/MenuWidgets;->mix(FFF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1270
    int-to-float v8, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    .line 1272
    if-nez v2, :cond_3

    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gez v8, :cond_3

    .line 1274
    neg-float v8, v7

    mul-float/2addr v8, p2

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1276
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getScrollX()I

    move-result v8

    int-to-float v6, v8

    .line 1277
    const/4 v1, 0x1

    .line 1289
    .end local v2    # "i":I
    .end local v3    # "pageHeight":I
    .end local v4    # "pageWidth":I
    :cond_0
    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1290
    .local v5, "pageZoom":F
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 1291
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 1292
    if-nez v1, :cond_1

    .line 1293
    const/4 v8, 0x0

    mul-float/2addr v8, p2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x40200000    # 2.5f

    div-float/2addr v8, v9

    add-float/2addr v6, v8

    .line 1296
    :cond_1
    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1298
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1299
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 1300
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1303
    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    const v10, 0x3e4ccccd    # 0.2f

    add-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 1304
    return-void

    .line 1278
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v5    # "pageZoom":F
    .restart local v2    # "i":I
    .restart local v3    # "pageHeight":I
    .restart local v4    # "pageWidth":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_4

    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-lez v8, :cond_4

    .line 1280
    neg-float v8, v7

    mul-float/2addr v8, p2

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1282
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getScrollX()I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/MenuWidgets;->mMaxScrollX:I

    sub-int/2addr v8, v9

    int-to-float v6, v8

    .line 1283
    const/4 v1, 0x1

    goto :goto_0

    .line 1285
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0
.end method

.method updateQuickViewMainMenu()V
    .locals 2

    .prologue
    .line 2112
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    if-eqz v0, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    check-cast v0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->updateQuickView()V

    .line 2115
    :cond_0
    return-void
.end method
