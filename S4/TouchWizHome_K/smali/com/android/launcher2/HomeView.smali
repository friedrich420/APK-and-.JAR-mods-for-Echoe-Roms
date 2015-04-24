.class public final Lcom/android/launcher2/HomeView;
.super Landroid/widget/FrameLayout;
.source "HomeView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
.implements Lcom/android/launcher2/Launcher$ActivityResultCallback;
.implements Lcom/android/launcher2/Launcher$HardwareKeys;
.implements Lcom/android/launcher2/Launcher$StateAnimatorProvider;
.implements Lcom/android/launcher2/LifeCycle;
.implements Lcom/android/launcher2/PagedView$PageSwitchListener;
.implements Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeView$28;,
        Lcom/android/launcher2/HomeView$LayoutParams;,
        Lcom/android/launcher2/HomeView$DropPos;,
        Lcom/android/launcher2/HomeView$HomeEditTabClickListener;,
        Lcom/android/launcher2/HomeView$AppWidgetResetObserver;,
        Lcom/android/launcher2/HomeView$SavedState;,
        Lcom/android/launcher2/HomeView$PendingAddArguments;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x400

.field public static final CHOOSER_MODE:Ljava/lang/String; = "mode"

.field private static final DEBUGGABLE:Z

.field static final DEBUG_WIDGETS:Z = false

.field static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field static final LOGD:Z = false

.field private static final MAGAZINE_CONTENT_URI:Landroid/net/Uri;

.field private static final MAGAZINE_FLICK_UP_MAX_DEGREE:F = 20.0f

.field static final MENU_GROUP_WALLPAPER:I = 0x1

.field static final MENU_HELP:I = 0x5

.field static final MENU_MANAGE_APPS:I = 0x3

.field static final MENU_SYSTEM_SETTINGS:I = 0x4

.field static final MENU_WALLPAPER_SETTINGS:I = 0x2

.field private static final OPEN_FOLDER_ID:Ljava/lang/String; = "launcher.workspace_open_folder_id"

.field private static final PENDING_FOLDER_EDIT_TEXT:Ljava/lang/String; = "launcher.workspace_pending_folder_edit_text"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_END:Ljava/lang/String; = "launcher.workspace_pending_folder_edit_text_selection_end"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_START:Ljava/lang/String; = "launcher.workspace_pending_folder_edit_text_selection_start"

.field static final PROFILE_STARTUP:Z = false

.field static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field static final REQUEST_CREATE_NEW_FOLDER_WITH_SHORTCUT_ITEM:I = 0x2

.field static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field static final REQUEST_PICK_APPWIDGET:I = 0x9

.field static final REQUEST_PICK_SHORTCUT:I = 0x7

.field static final REQUEST_PICK_WALLPAPER:I = 0xa

.field public static final RESPONSE_CODE_SHOW_WIDGETS:I = -0x2710

.field private static final TAG:Ljava/lang/String; = "Launcher.HomeView"

.field private static final TOOLBAR_ICON_METADATA_NAME:Ljava/lang/String; = "com.android.launcher.toolbar_icon"

.field static final WIDGET_BACKGROUND:I = 0x1000000

.field private static cpuBooster:Landroid/os/DVFSHelper; = null

.field static mDestinationNewFolderId:J = 0x0L

.field static mIsAllAppsButtonDisable:Z = false

.field private static sCurrentRotationAngle:I = 0x0

.field static final sDumpLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sFolders:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field public static sIsBindHotseat:Z = false

.field static sIsDragState:Z = false

.field static sPanelDrawer:Lcom/android/launcher2/PanelDrawer; = null

.field private static sPendingAddList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeView$PendingAddArguments;",
            ">;"
        }
    .end annotation
.end field

.field private static sTouchPt:Landroid/graphics/PointF; = null

.field private static final sTransitionInDuration:I = 0xc8

.field private static final sTransitionOutDuration:I = 0xaf


# instance fields
.field private final ADVANCE_MSG:I

.field private MyFilesButtonClickListener:Landroid/view/View$OnClickListener;

.field private final REMOVE_MARKETSAMPLE:I

.field private final SHOW_MARKETSAMPLE:I

.field private SearchButtonClickListener:Landroid/view/View$OnClickListener;

.field private VoiceSearchButtonClickListener:Landroid/view/View$OnClickListener;

.field public isHelpAppPageAdded:Z

.field public isHelpAppPageDeleted:Z

.field private final mAdvanceInterval:I

.field private final mAdvanceStagger:I

.field private mAfterSavedInstanceState:Z

.field private mAllAppsIconTouchListener:Landroid/view/View$OnTouchListener;

.field private mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

.field private mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAutoAdvanceRunning:Z

.field private mAutoAdvanceSentTime:J

.field private mAutoAdvanceTimeLeft:J

.field private mCameraCut:Landroid/widget/ImageView;

.field private final mChangeTphoneModeObserver:Landroid/database/ContentObserver;

.field private mCreateFolderColor:I

.field private mCurrentDragItem:Lcom/android/launcher2/BaseItem;

.field private mCurrentResizeWidgetItem:Lcom/android/launcher2/BaseItem;

.field private mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

.field private mDarkenView:Landroid/view/View;

.field private mDeleteDropLayout:Lcom/android/launcher2/QuickViewDragBar;

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mEditBar:Lcom/android/launcher2/HomeEditBar;

.field private mEditIcon:Landroid/view/View;

.field private mEditIconDivider:Landroid/view/View;

.field private mFolderBundle:Landroid/os/Bundle;

.field private mGoogleSearchView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mHelphubObserver:Landroid/database/ContentObserver;

.field private mHomeAppsBtn:Landroid/view/View;

.field private mHomeBottomBar:Landroid/view/View;

.field private mHomeContainer:Landroid/view/View;

.field private mHomeDarkenLayer:Landroid/view/View;

.field private mHomeEditButtonListener:Lcom/android/launcher2/HomeView$HomeEditTabClickListener;

.field mHomeEditItem:Landroid/view/MenuItem;

.field private mHomeEditTitleBar:Landroid/view/ViewGroup;

.field public mHomeKeyPress:Z

.field private mHomePhoneBtn:Landroid/view/View;

.field private mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

.field private mHomeSearchBtn:Landroid/view/View;

.field private mHomeTopBar:Landroid/view/View;

.field private mHotseat:Lcom/android/launcher2/Hotseat;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsDeletePopup:Z

.field public mIsHelpItemAdded:Z

.field private mIsStartFlickUp:Z

.field private mMarketSample:Landroid/view/View;

.field private mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mMyFilesView:Landroid/view/View;

.field private mPanelBackgroundAlpha:F

.field private mPendingAddInfo:Lcom/android/launcher2/HomeItem;

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

.field private mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

.field private mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

.field private mRestoring:Z

.field private mSavedState:Lcom/android/launcher2/HomeView$SavedState;

.field private mShadow:Lcom/android/launcher2/ShadowBuilder;

.field private mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mTargetFolderId:J

.field private mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

.field private mTmpAddItemCellCoordinates:[I

.field private mTmpAddItemSpans:[I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVoiceSearchView:Landroid/view/View;

.field mWaitingForResult:Z

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetsToAdvance:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private mWorkspaceLoading:Z

.field private removeHotseat:Z

.field private sIsHeadlinesHiddenForEditMode:Z

.field private screenIndexBeforeHelpAppPageAddition:I

.field private screenIndexFestivalHelpAppPageAddition:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    .line 129
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    .line 134
    sput-boolean v2, Lcom/android/launcher2/HomeView;->mIsAllAppsButtonDisable:Z

    .line 160
    const-string v0, "content://sstream.app.provider.StoryProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/HomeView;->MAGAZINE_CONTENT_URI:Landroid/net/Uri;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    .line 258
    new-instance v0, Lcom/android/launcher2/PanelDrawer;

    invoke-direct {v0}, Lcom/android/launcher2/PanelDrawer;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    .line 1447
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/launcher2/HomeView;->mDestinationNewFolderId:J

    .line 5136
    sput v2, Lcom/android/launcher2/HomeView;->sCurrentRotationAngle:I

    .line 5212
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeView;->sTouchPt:Landroid/graphics/PointF;

    .line 5351
    sput-boolean v2, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 299
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 302
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->removeHotseat:Z

    .line 166
    new-instance v1, Lcom/android/launcher2/HomeView$AppWidgetResetObserver;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$AppWidgetResetObserver;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 179
    new-instance v1, Lcom/android/launcher2/HomeItem;

    invoke-direct {v1}, Lcom/android/launcher2/HomeItem;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    .line 180
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    .line 181
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mTmpAddItemSpans:[I

    .line 197
    iput-object v5, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    .line 198
    iput-object v5, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    .line 205
    new-instance v1, Lcom/android/launcher2/HomeView$HomeEditTabClickListener;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$HomeEditTabClickListener;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeEditButtonListener:Lcom/android/launcher2/HomeView$HomeEditTabClickListener;

    .line 206
    iput-object v5, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    .line 211
    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceRunning:Z

    .line 213
    iput-boolean v6, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    .line 227
    iput v6, p0, Lcom/android/launcher2/HomeView;->ADVANCE_MSG:I

    .line 228
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/android/launcher2/HomeView;->mAdvanceInterval:I

    .line 229
    const/16 v1, 0xfa

    iput v1, p0, Lcom/android/launcher2/HomeView;->mAdvanceStagger:I

    .line 230
    iput v2, p0, Lcom/android/launcher2/HomeView;->SHOW_MARKETSAMPLE:I

    .line 231
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/launcher2/HomeView;->REMOVE_MARKETSAMPLE:I

    .line 233
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceTimeLeft:J

    .line 234
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    .line 241
    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    .line 255
    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->mIsDeletePopup:Z

    .line 274
    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    .line 277
    iput-object v5, p0, Lcom/android/launcher2/HomeView;->mCurrentResizeWidgetItem:Lcom/android/launcher2/BaseItem;

    .line 280
    iput-object v5, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    .line 286
    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->sIsHeadlinesHiddenForEditMode:Z

    .line 1149
    new-instance v1, Lcom/android/launcher2/HomeView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$2;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->VoiceSearchButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1166
    new-instance v1, Lcom/android/launcher2/HomeView$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$3;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->SearchButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1184
    new-instance v1, Lcom/android/launcher2/HomeView$4;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$4;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->MyFilesButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1224
    new-instance v1, Lcom/android/launcher2/HomeView$5;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$5;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    .line 1235
    new-instance v1, Lcom/android/launcher2/HomeView$6;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$6;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mAllAppsIconTouchListener:Landroid/view/View$OnTouchListener;

    .line 1531
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/launcher2/HomeView;->mTargetFolderId:J

    .line 1934
    new-instance v1, Lcom/android/launcher2/HomeView$15;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$15;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    .line 1970
    new-instance v1, Lcom/android/launcher2/HomeView$16;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$16;-><init>(Lcom/android/launcher2/HomeView;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;

    .line 3199
    new-instance v1, Lcom/android/launcher2/HomeView$21;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/HomeView$21;-><init>(Lcom/android/launcher2/HomeView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mHelphubObserver:Landroid/database/ContentObserver;

    .line 3207
    new-instance v1, Lcom/android/launcher2/HomeView$22;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/HomeView$22;-><init>(Lcom/android/launcher2/HomeView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mChangeTphoneModeObserver:Landroid/database/ContentObserver;

    .line 4037
    iput-object v5, p0, Lcom/android/launcher2/HomeView;->mHomeEditItem:Landroid/view/MenuItem;

    .line 4381
    iput-boolean v6, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageDeleted:Z

    .line 4382
    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageAdded:Z

    .line 4383
    iput v7, p0, Lcom/android/launcher2/HomeView;->screenIndexBeforeHelpAppPageAddition:I

    .line 4384
    iput v7, p0, Lcom/android/launcher2/HomeView;->screenIndexFestivalHelpAppPageAddition:I

    .line 4692
    iput v4, p0, Lcom/android/launcher2/HomeView;->mCreateFolderColor:I

    .line 4966
    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->mIsHelpItemAdded:Z

    .line 5369
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/launcher2/HomeView;->mPanelBackgroundAlpha:F

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 304
    .local v0, "app":Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 305
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 306
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 307
    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    .line 309
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/HomeView;->removeHotseat:Z

    .line 310
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->registerContentObservers()V

    .line 315
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/HomeView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeView;->performOnHomePressed(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher2/HomeView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mMarketSample:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/HomeView;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mMarketSampleTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/HomeView;ILcom/android/launcher2/HomePendingWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/launcher2/HomePendingWidget;

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/HomeView;->addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/launcher2/HomeView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/launcher2/HomeView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Hotseat;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/QuickLaunch;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/HomeView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher2/HomeView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/HomeView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->removeHotseat:Z

    return v0
.end method

.method static synthetic access$300()Landroid/os/DVFSHelper;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/HomeView;)Landroid/appwidget/AppWidgetManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/HomeView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/WorkspaceSpanCalculator;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/HomeView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/HomeView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeView;
    .param p1, "x1"    # J

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/HomeView;->sendAdvanceMessage(J)V

    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5547
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 5548
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5550
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5551
    return-void
.end method

.method private addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;)V
    .locals 20
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Lcom/android/launcher2/HomePendingWidget;

    .prologue
    .line 2097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 2098
    .local v4, "appWidget":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz p2, :cond_0

    if-nez v4, :cond_1

    .line 2154
    :cond_0
    :goto_0
    return-void

    .line 2101
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/HomePendingWidget;->getDefSpans()[I

    move-result-object v7

    .line 2102
    .local v7, "defaultSpan":[I
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/HomePendingWidget;->getResizeSpans()[I

    move-result-object v15

    .line 2104
    .local v15, "resizeSpan":[I
    iget v0, v4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v7, v15}, Lcom/android/launcher2/HomeView;->calcFinalSpan(Lcom/android/launcher2/HomeItem;I[I[I)V

    .line 2106
    iget-object v0, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 2108
    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.appwidget.action.APPWIDGET_CONFIGURE"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2109
    .local v9, "intent":Landroid/content/Intent;
    iget-object v0, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2110
    const-string v18, "appWidgetId"

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2111
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    .line 2112
    const-string v18, "com.android.launcher.extra.widget.CONFIGURATION_DATA_MIME_TYPE"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2116
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    .line 2117
    .local v13, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/launcher2/HomePendingWidget;->configurationData:Landroid/os/Parcelable;

    check-cast v5, Landroid/content/ClipData;

    .line 2118
    .local v5, "clipData":Landroid/content/ClipData;
    invoke-virtual {v5}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v6

    .line 2119
    .local v6, "clipDesc":Landroid/content/ClipDescription;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v6}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_2

    .line 2120
    invoke-virtual {v6, v8}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 2121
    invoke-virtual {v5, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v11

    .line 2122
    .local v11, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    .line 2123
    .local v16, "stringData":Ljava/lang/CharSequence;
    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v17

    .line 2124
    .local v17, "uriData":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 2125
    .local v10, "intentData":Landroid/content/Intent;
    const-string v12, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    .line 2127
    .local v12, "key":Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 2128
    const-string v18, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2139
    .end local v5    # "clipData":Landroid/content/ClipData;
    .end local v6    # "clipDesc":Landroid/content/ClipDescription;
    .end local v8    # "i":I
    .end local v10    # "intentData":Landroid/content/Intent;
    .end local v11    # "item":Landroid/content/ClipData$Item;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "mimeType":Ljava/lang/String;
    .end local v16    # "stringData":Ljava/lang/CharSequence;
    .end local v17    # "uriData":Landroid/net/Uri;
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    .line 2140
    .local v3, "app":Lcom/android/launcher2/LauncherApplication;
    const-string v18, "com.sec.android.app.launcher.prefs"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 2141
    .local v14, "prefs":Landroid/content/SharedPreferences$Editor;
    const-string v18, "tempScreen"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->mScreen:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2142
    const-string v18, "tempCellX"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->cellX:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2143
    const-string v18, "tempCellY"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->cellY:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2144
    const-string v18, "tempSpanX"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->spanX:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2145
    const-string v18, "tempSpanY"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/HomePendingWidget;->spanY:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2146
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2148
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomeView;->copyToPendingAddInfo(Lcom/android/launcher2/HomePendingWidget;)V

    .line 2150
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/android/launcher2/HomeView;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2129
    .end local v3    # "app":Lcom/android/launcher2/LauncherApplication;
    .end local v14    # "prefs":Landroid/content/SharedPreferences$Editor;
    .restart local v5    # "clipData":Landroid/content/ClipData;
    .restart local v6    # "clipDesc":Landroid/content/ClipDescription;
    .restart local v8    # "i":I
    .restart local v10    # "intentData":Landroid/content/Intent;
    .restart local v11    # "item":Landroid/content/ClipData$Item;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v13    # "mimeType":Ljava/lang/String;
    .restart local v16    # "stringData":Ljava/lang/CharSequence;
    .restart local v17    # "uriData":Landroid/net/Uri;
    :cond_3
    if-eqz v10, :cond_4

    .line 2130
    const-string v18, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 2131
    :cond_4
    if-eqz v16, :cond_2

    .line 2132
    const-string v18, "com.android.launcher.extra.widget.CONFIGURATION_DATA"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 2119
    .end local v10    # "intentData":Landroid/content/Intent;
    .end local v11    # "item":Landroid/content/ClipData$Item;
    .end local v12    # "key":Ljava/lang/String;
    .end local v16    # "stringData":Ljava/lang/CharSequence;
    .end local v17    # "uriData":Landroid/net/Uri;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 2152
    .end local v5    # "clipData":Landroid/content/ClipData;
    .end local v6    # "clipDesc":Landroid/content/ClipDescription;
    .end local v8    # "i":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v13    # "mimeType":Ljava/lang/String;
    :cond_6
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher2/HomeView;->completeAddAppWidget(ILcom/android/launcher2/HomeItem;)V

    goto/16 :goto_0
.end method

.method private addMovementVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5555
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 5556
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5558
    :cond_0
    return-void
.end method

.method private addSamsungWidget(Lcom/android/launcher2/HomePendingSamsungWidget;)Z
    .locals 35
    .param p1, "pending"    # Lcom/android/launcher2/HomePendingSamsungWidget;

    .prologue
    .line 2250
    sget-object v29, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    .line 2251
    .local v29, "packageManager":Lcom/android/launcher2/SamsungWidgetPackageManager;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    move-object/from16 v26, v0

    .line 2252
    .local v26, "info":Lcom/android/launcher2/SamsungWidgetProviderInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungWidgetProviderInfo;)Lcom/android/launcher2/SamsungWidgetItem;

    move-result-object v25

    .line 2253
    .local v25, "homeItem":Lcom/android/launcher2/SamsungWidgetItem;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->container:J

    move-wide/from16 v16, v0

    .line 2254
    .local v16, "container":J
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->mScreen:I

    .line 2256
    .local v10, "screen":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v28

    .line 2258
    .local v28, "layout":Lcom/android/launcher2/CellLayout;
    const/16 v27, 0x2

    .line 2259
    .local v27, "land":I
    const/16 v30, 0x1

    .line 2260
    .local v30, "port":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getWidth(I)I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getHeight(I)I

    move-result v6

    const/4 v7, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getWidth(I)I

    move-result v7

    const/4 v8, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getHeight(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForSamsungWidget(IIII[I)[I

    move-result-object v22

    .line 2262
    .local v22, "defaultSpan":[I
    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v31, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v22, v5

    aput v5, v31, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v22, v5

    aput v5, v31, v4

    const/4 v4, 0x2

    const/4 v5, -0x1

    aput v5, v31, v4

    const/4 v4, 0x3

    const/4 v5, -0x1

    aput v5, v31, v4

    .line 2263
    .local v31, "resizeSpan":[I
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/launcher2/HomeView;->calcFinalSpan(Lcom/android/launcher2/HomeItem;I[I[I)V

    .line 2265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemSpans:[I

    move-object/from16 v33, v0

    .line 2266
    .local v33, "spanXY":[I
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->spanX:I

    aput v5, v33, v4

    .line 2267
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->spanY:I

    aput v5, v33, v4

    .line 2272
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    .line 2273
    .local v9, "cellXY":[I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->dropPos:[I

    move-object/from16 v34, v0

    .line 2274
    .local v34, "touchXY":[I
    const/16 v23, 0x0

    .line 2275
    .local v23, "foundCellSpan":Z
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->cellX:I

    if-ltz v4, :cond_2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->cellY:I

    if-ltz v4, :cond_2

    .line 2276
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->cellX:I

    aput v5, v9, v4

    .line 2277
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomePendingSamsungWidget;->cellY:I

    aput v5, v9, v4

    .line 2278
    const/16 v23, 0x1

    .line 2289
    :cond_0
    :goto_0
    if-nez v23, :cond_4

    .line 2290
    new-instance v12, Lcom/android/launcher2/HomeView$DropPos;

    invoke-direct {v12}, Lcom/android/launcher2/HomeView$DropPos;-><init>()V

    .line 2291
    .local v12, "dropPos":Lcom/android/launcher2/HomeView$DropPos;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v4, 0x0

    aget v13, v33, v4

    const/4 v4, 0x1

    aget v14, v33, v4

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lcom/android/launcher2/HomeView;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z

    move-result v23

    .line 2292
    iget v10, v12, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    .line 2293
    const/4 v4, 0x0

    iget v5, v12, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    aput v5, v9, v4

    .line 2294
    const/4 v4, 0x1

    iget v5, v12, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    aput v5, v9, v4

    .line 2295
    iget-boolean v4, v12, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    if-nez v4, :cond_1

    .line 2296
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage()V

    .line 2298
    :cond_1
    if-nez v23, :cond_4

    .line 2299
    const/4 v4, 0x0

    .line 2332
    .end local v12    # "dropPos":Lcom/android/launcher2/HomeView$DropPos;
    :goto_1
    return v4

    .line 2279
    :cond_2
    if-eqz v34, :cond_0

    .line 2280
    if-eqz v28, :cond_0

    .line 2283
    const/4 v4, 0x0

    aget v5, v34, v4

    const/4 v4, 0x1

    aget v6, v34, v4

    const/4 v4, 0x0

    aget v7, v33, v4

    const/4 v4, 0x1

    aget v8, v33, v4

    move-object/from16 v4, v28

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v32

    .line 2285
    .local v32, "result":[I
    if-eqz v32, :cond_3

    const/16 v23, 0x1

    :goto_2
    goto :goto_0

    :cond_3
    const/16 v23, 0x0

    goto :goto_2

    .line 2302
    .end local v32    # "result":[I
    :cond_4
    const/4 v4, 0x0

    aget v4, v33, v4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/launcher2/SamsungWidgetItem;->spanX:I

    .line 2303
    const/4 v4, 0x1

    aget v4, v33, v4

    move-object/from16 v0, v25

    iput v4, v0, Lcom/android/launcher2/SamsungWidgetItem;->spanY:I

    .line 2305
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const/4 v4, 0x0

    aget v19, v9, v4

    const/4 v4, 0x1

    aget v20, v9, v4

    const/16 v21, 0x0

    move-object/from16 v15, v25

    move/from16 v18, v10

    invoke-static/range {v14 .. v21}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 2308
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/launcher2/SamsungWidgetItem;->mWidgetView:Lcom/android/launcher2/SamsungWidgetView;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/launcher2/SamsungWidgetView;->setTag(Ljava/lang/Object;)V

    .line 2310
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/launcher2/SamsungWidgetItem;->mWidgetView:Lcom/android/launcher2/SamsungWidgetView;

    const/high16 v5, 0x1000000

    invoke-virtual {v4, v5}, Lcom/android/launcher2/SamsungWidgetView;->setBackgroundColor(I)V

    .line 2311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    .line 2312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    if-ne v4, v10, :cond_6

    .line 2313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v10}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    .line 2317
    :goto_3
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_5

    .line 2318
    const-string v4, "add_widgets"

    sget-object v5, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2319
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 2320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1000ac

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2323
    new-instance v24, Landroid/os/Handler;

    invoke-direct/range {v24 .. v24}, Landroid/os/Handler;-><init>()V

    .line 2324
    .local v24, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/android/launcher2/HomeView$18;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/launcher2/HomeView$18;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v6, 0x7d0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2332
    .end local v24    # "handler":Landroid/os/Handler;
    :cond_5
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 2315
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v10}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_3
.end method

.method private addSurfaceWidget(Lcom/android/launcher2/HomePendingSurfaceWidget;)Z
    .locals 31
    .param p1, "info"    # Lcom/android/launcher2/HomePendingSurfaceWidget;

    .prologue
    .line 2362
    new-instance v25, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-direct/range {v25 .. v25}, Lcom/android/launcher2/SurfaceWidgetItem;-><init>()V

    .line 2363
    .local v25, "homeItem":Lcom/android/launcher2/SurfaceWidgetItem;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-object/from16 v28, v0

    .line 2364
    .local v28, "sInfo":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    const-string v5, "SurfaceWidgetFlow"

    const-string v6, "making surface widget on drop"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1, v6, v7}, Lcom/android/launcher2/SurfaceWidgetItem;->makeSurfaceWidget(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;Lcom/android/launcher2/SurfaceWidgetView;Z)V

    .line 2368
    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    .line 2467
    :goto_0
    return v5

    .line 2371
    :cond_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->container:J

    move-wide/from16 v16, v0

    .line 2372
    .local v16, "container":J
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->mScreen:I

    .line 2374
    .local v10, "screen":I
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 2376
    .local v4, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/SurfaceWidgetItem;->getDefSpans()[I

    move-result-object v22

    .line 2377
    .local v22, "defaultSpan":[I
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/SurfaceWidgetItem;->getResizeSpans()[I

    move-result-object v26

    .line 2378
    .local v26, "resizeSpan":[I
    move-object/from16 v0, v28

    iget v5, v0, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/launcher2/HomeView;->calcFinalSpan(Lcom/android/launcher2/HomeItem;I[I[I)V

    .line 2380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemSpans:[I

    move-object/from16 v29, v0

    .line 2381
    .local v29, "spanXY":[I
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->spanX:I

    aput v6, v29, v5

    .line 2382
    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->spanY:I

    aput v6, v29, v5

    .line 2384
    sget-boolean v5, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v5, :cond_1

    const-string v5, "Launcher.HomeView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adding surface width cells wide = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget v7, v29, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cells tall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget v7, v29, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    .line 2390
    .local v9, "cellXY":[I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->dropPos:[I

    move-object/from16 v30, v0

    .line 2391
    .local v30, "touchXY":[I
    const/16 v23, 0x0

    .line 2392
    .local v23, "foundCellSpan":Z
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->cellX:I

    if-ltz v5, :cond_4

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->cellY:I

    if-ltz v5, :cond_4

    .line 2393
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->cellX:I

    aput v6, v9, v5

    .line 2394
    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/HomePendingSurfaceWidget;->cellY:I

    aput v6, v9, v5

    .line 2395
    const/16 v23, 0x1

    .line 2406
    :cond_2
    :goto_1
    if-nez v23, :cond_6

    .line 2407
    new-instance v12, Lcom/android/launcher2/HomeView$DropPos;

    invoke-direct {v12}, Lcom/android/launcher2/HomeView$DropPos;-><init>()V

    .line 2408
    .local v12, "dropPos":Lcom/android/launcher2/HomeView$DropPos;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v5, 0x0

    aget v13, v29, v5

    const/4 v5, 0x1

    aget v14, v29, v5

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lcom/android/launcher2/HomeView;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z

    move-result v23

    .line 2409
    iget v10, v12, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    .line 2410
    const/4 v5, 0x0

    iget v6, v12, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    aput v6, v9, v5

    .line 2411
    const/4 v5, 0x1

    iget v6, v12, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    aput v6, v9, v5

    .line 2412
    iget-boolean v5, v12, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    if-nez v5, :cond_3

    .line 2413
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage()V

    .line 2415
    :cond_3
    if-nez v23, :cond_6

    .line 2416
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2396
    .end local v12    # "dropPos":Lcom/android/launcher2/HomeView$DropPos;
    :cond_4
    if-eqz v30, :cond_2

    .line 2397
    if-eqz v4, :cond_2

    .line 2400
    const/4 v5, 0x0

    aget v5, v30, v5

    const/4 v6, 0x1

    aget v6, v30, v6

    const/4 v7, 0x0

    aget v7, v29, v7

    const/4 v8, 0x1

    aget v8, v29, v8

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v27

    .line 2402
    .local v27, "result":[I
    if-eqz v27, :cond_5

    const/16 v23, 0x1

    :goto_2
    goto :goto_1

    :cond_5
    const/16 v23, 0x0

    goto :goto_2

    .line 2419
    .end local v27    # "result":[I
    :cond_6
    const/4 v5, 0x0

    aget v5, v29, v5

    move-object/from16 v0, v25

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->spanX:I

    .line 2420
    const/4 v5, 0x1

    aget v5, v29, v5

    move-object/from16 v0, v25

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->spanY:I

    .line 2422
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const/4 v5, 0x0

    aget v19, v9, v5

    const/4 v5, 0x1

    aget v20, v9, v5

    const/16 v21, 0x0

    move-object/from16 v15, v25

    move/from16 v18, v10

    invoke-static/range {v14 .. v21}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 2426
    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    new-instance v6, Lcom/android/launcher2/HomeView$19;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v6, v0, v1, v4}, Lcom/android/launcher2/HomeView$19;-><init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/SurfaceWidgetItem;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher2/SurfaceWidgetView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2446
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    .line 2447
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    if-ne v5, v10, :cond_8

    .line 2448
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v10}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    .line 2452
    :goto_3
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_7

    .line 2453
    const-string v5, "add_widgets"

    sget-object v6, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2454
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 2455
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1000ac

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2458
    new-instance v24, Landroid/os/Handler;

    invoke-direct/range {v24 .. v24}, Landroid/os/Handler;-><init>()V

    .line 2459
    .local v24, "handler":Landroid/os/Handler;
    new-instance v5, Lcom/android/launcher2/HomeView$20;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/launcher2/HomeView$20;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v6, 0x7d0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2467
    .end local v24    # "handler":Landroid/os/Handler;
    :cond_7
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2450
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v10}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_3
.end method

.method private calcFinalSpan(Lcom/android/launcher2/HomeItem;I[I[I)V
    .locals 6
    .param p1, "info"    # Lcom/android/launcher2/HomeItem;
    .param p2, "resizeFlags"    # I
    .param p3, "defaultSpan"    # [I
    .param p4, "resizeSpan"    # [I

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 2076
    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    if-ne v2, v0, :cond_0

    .line 2077
    aget v0, p3, v1

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 2079
    :cond_0
    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    if-ne v2, v0, :cond_1

    .line 2080
    aget v0, p3, v3

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 2082
    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v3, :cond_2

    .line 2083
    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    aget v1, p4, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 2084
    aget v0, p4, v4

    if-eq v2, v0, :cond_2

    .line 2085
    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    aget v1, p4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 2088
    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-ne v0, v4, :cond_3

    .line 2089
    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    aget v1, p4, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 2090
    aget v0, p4, v5

    if-eq v2, v0, :cond_3

    .line 2091
    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    aget v1, p4, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 2094
    :cond_3
    return-void
.end method

.method private closeQuickViewWorkspaceStartAnimation()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const-wide/16 v8, 0x168

    const/4 v6, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 3858
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 3859
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    .line 3861
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3862
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3864
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 3865
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3867
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v1

    .line 3875
    .local v1, "newWorkspace":I
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 3877
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 3880
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 3881
    .local v0, "l":Lcom/android/launcher2/AnimationLayer;
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 3882
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v2, :cond_3

    .line 3883
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3884
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 3885
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v3}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3886
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3895
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    if-eqz v2, :cond_4

    .line 3896
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3897
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 3898
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v3}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3899
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3902
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3903
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3904
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/QuickLaunch;->setVisibility(I)V

    .line 3905
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v3}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3906
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3912
    :cond_5
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 3913
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeSearchBtn:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 3915
    :cond_6
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 3916
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3917
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3918
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3919
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3923
    :cond_7
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/launcher2/HomeView;->removeHotseat:Z

    if-eqz v2, :cond_8

    .line 3924
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3925
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3926
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    sget-object v3, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3927
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3930
    :cond_8
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 3932
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v7}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    .line 3933
    return-void
.end method

.method private completeAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;)Z
    .locals 12
    .param p1, "args"    # Lcom/android/launcher2/HomeView$PendingAddArguments;

    .prologue
    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 439
    const/4 v11, 0x0

    .line 440
    .local v11, "result":Z
    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->requestCode:I

    packed-switch v0, :pswitch_data_0

    .line 469
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->resetAddInfo()V

    .line 470
    return v11

    .line 442
    :pswitch_1
    iget-object v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v7}, Lcom/android/launcher2/HomeView;->startActivityForResultSafely(Landroid/content/Intent;I)V

    goto :goto_0

    .line 445
    :pswitch_2
    iget-object v1, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    iget-wide v2, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->container:J

    iget v4, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->screen:I

    iget v5, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellX:I

    iget v6, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/HomeView;->completeAddShortcut(Landroid/content/Intent;JIII)V

    .line 447
    const/4 v11, 0x1

    .line 448
    goto :goto_0

    .line 450
    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    .line 451
    .local v1, "item":Lcom/android/launcher2/HomeShortcutItem;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x64

    const/4 v6, 0x0

    move v9, v8

    invoke-static/range {v0 .. v9}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V

    goto :goto_0

    .line 455
    .end local v1    # "item":Lcom/android/launcher2/HomeShortcutItem;
    :pswitch_4
    iget-object v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->addAppWidgetFromPick(Landroid/content/Intent;)V

    goto :goto_0

    .line 458
    :pswitch_5
    iget-object v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    const-string v2, "appWidgetId"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 459
    .local v10, "appWidgetId":I
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    invoke-static {v0, p1}, Lcom/android/launcher2/HomeView;->copyPendingAddToHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeView$PendingAddArguments;)V

    .line 460
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    invoke-direct {p0, v10, v0}, Lcom/android/launcher2/HomeView;->completeAddAppWidget(ILcom/android/launcher2/HomeItem;)V

    .line 461
    const/4 v11, 0x1

    .line 462
    goto :goto_0

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private completeAddAppWidget(ILcom/android/launcher2/HomeItem;)V
    .locals 36
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Lcom/android/launcher2/HomeItem;

    .prologue
    .line 1741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v26

    .line 1743
    .local v26, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v26, :cond_1

    .line 1747
    sget-boolean v4, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v4, "Launcher.HomeView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "App widget info is null. AppWidgetID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    :cond_0
    :goto_0
    return-void

    .line 1750
    :cond_1
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    .line 1751
    .local v6, "container":J
    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 1754
    .local v8, "screen":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    .local v5, "layoutForScreen":Lcom/android/launcher2/CellLayout;
    move-object/from16 v4, p0

    move-object/from16 v9, p2

    .line 1755
    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/HomeView;->reAddCreatedPageForDragIfNeeded(Lcom/android/launcher2/CellLayout;JILcom/android/launcher2/HomeItem;)Lcom/android/launcher2/CellLayout;

    move-result-object v9

    .line 1757
    .local v9, "layout":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemSpans:[I

    move-object/from16 v32, v0

    .line 1758
    .local v32, "spanXY":[I
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    aput v10, v32, v4

    .line 1759
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    aput v10, v32, v4

    .line 1763
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    .line 1764
    .local v14, "cellXY":[I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    move-object/from16 v34, v0

    .line 1765
    .local v34, "touchXY":[I
    const/16 v27, 0x0

    .line 1766
    .local v27, "foundCellSpan":Z
    if-eqz v9, :cond_6

    .line 1767
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    if-ltz v4, :cond_4

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    if-ltz v4, :cond_4

    .line 1768
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    aput v10, v14, v4

    .line 1769
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    aput v10, v14, v4

    .line 1770
    const/16 v27, 0x1

    .line 1781
    :cond_2
    :goto_1
    if-nez v27, :cond_7

    .line 1782
    new-instance v17, Lcom/android/launcher2/HomeView$DropPos;

    invoke-direct/range {v17 .. v17}, Lcom/android/launcher2/HomeView$DropPos;-><init>()V

    .line 1783
    .local v17, "dropPos":Lcom/android/launcher2/HomeView$DropPos;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const/4 v4, 0x0

    aget v18, v32, v4

    const/4 v4, 0x1

    aget v19, v32, v4

    const/16 v20, 0x0

    move v15, v8

    invoke-static/range {v14 .. v20}, Lcom/android/launcher2/HomeView;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z

    move-result v27

    .line 1784
    move-object/from16 v0, v17

    iget v8, v0, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    .line 1785
    const/4 v4, 0x0

    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    aput v10, v14, v4

    .line 1786
    const/4 v4, 0x1

    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    aput v10, v14, v4

    .line 1787
    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    if-nez v4, :cond_3

    .line 1788
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage()V

    .line 1790
    :cond_3
    if-nez v27, :cond_7

    .line 1791
    const/4 v4, -0x1

    move/from16 v0, p1

    if-eq v0, v4, :cond_0

    .line 1794
    new-instance v4, Lcom/android/launcher2/HomeView$11;

    const-string v10, "deleteAppWidgetId"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v4, v0, v10, v1}, Lcom/android/launcher2/HomeView$11;-><init>(Lcom/android/launcher2/HomeView;Ljava/lang/String;I)V

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView$11;->start()V

    goto/16 :goto_0

    .line 1771
    .end local v17    # "dropPos":Lcom/android/launcher2/HomeView$DropPos;
    :cond_4
    if-eqz v34, :cond_2

    .line 1774
    const/4 v4, 0x0

    aget v10, v34, v4

    const/4 v4, 0x1

    aget v11, v34, v4

    const/4 v4, 0x0

    aget v12, v32, v4

    const/4 v4, 0x1

    aget v13, v32, v4

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v31

    .line 1776
    .local v31, "result":[I
    if-eqz v31, :cond_5

    const/16 v27, 0x1

    .line 1777
    :goto_2
    goto :goto_1

    .line 1776
    :cond_5
    const/16 v27, 0x0

    goto :goto_2

    .line 1779
    .end local v31    # "result":[I
    :cond_6
    const/4 v8, -0x1

    goto :goto_1

    .line 1807
    :cond_7
    new-instance v19, Lcom/android/launcher2/HomeWidgetItem;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;IZ)V

    .line 1808
    .local v19, "launcherInfo":Lcom/android/launcher2/HomeWidgetItem;
    const/4 v4, 0x0

    aget v4, v32, v4

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    .line 1809
    const/4 v4, 0x1

    aget v4, v32, v4

    move-object/from16 v0, v19

    iput v4, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    .line 1813
    move-object/from16 v0, p2

    instance-of v4, v0, Lcom/android/launcher2/HomePendingWidget;

    if-eqz v4, :cond_b

    move-object/from16 v33, p2

    .line 1814
    check-cast v33, Lcom/android/launcher2/HomePendingWidget;

    .line 1815
    .local v33, "temp":Lcom/android/launcher2/HomePendingWidget;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/launcher2/HomeWidgetItem;->resizeSpans:[I

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/HomePendingWidget;->getResizeSpans()[I

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/android/launcher2/HomeView;->copySpans([I[I)V

    .line 1823
    .end local v33    # "temp":Lcom/android/launcher2/HomePendingWidget;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const/4 v4, 0x0

    aget v23, v14, v4

    const/4 v4, 0x1

    aget v24, v14, v4

    const/16 v25, 0x0

    move-wide/from16 v20, v6

    move/from16 v22, v8

    invoke-static/range {v18 .. v25}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 1826
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    if-nez v4, :cond_9

    .line 1828
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v10

    move/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v4, v10, v0, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    move-object/from16 v0, v19

    iput-object v4, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1830
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1831
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v0, v26

    iget-object v10, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v10}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v29

    .line 1833
    .local v29, "padding":Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v29

    iget v10, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    move-object/from16 v0, v29

    iget v11, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    move-object/from16 v0, v29

    iget v12, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    move-object/from16 v0, v29

    iget v13, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 1836
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    new-instance v10, Lcom/android/launcher2/HomeView$12;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1, v9}, Lcom/android/launcher2/HomeView$12;-><init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeWidgetItem;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v4, v10}, Landroid/appwidget/AppWidgetHostView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v19

    iget v12, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    move-object/from16 v0, v19

    iget v13, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    invoke-virtual {v10, v11, v4, v12, v13}, Lcom/android/launcher2/WorkspaceSpanCalculator;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    .line 1857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v8}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Lcom/android/launcher2/CellLayout;

    .line 1858
    .local v30, "page":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_d

    const/16 v35, 0x1

    .line 1860
    .local v35, "wasPageEmpty":Z
    :goto_4
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/high16 v10, 0x1000000

    invoke-virtual {v4, v10}, Landroid/appwidget/AppWidgetHostView;->setBackgroundColor(I)V

    .line 1861
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    .line 1864
    if-eqz v35, :cond_8

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_8

    .line 1865
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->turnOffEmptyPageMsg()V

    .line 1867
    :cond_8
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher2/HomeView;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 1871
    .end local v29    # "padding":Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .end local v30    # "page":Lcom/android/launcher2/CellLayout;
    .end local v35    # "wasPageEmpty":Z
    :cond_9
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_a

    .line 1872
    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v10, "add_widgets"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1873
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 1874
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    const v10, 0x7f1000ac

    const/4 v11, 0x1

    invoke-static {v4, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1875
    new-instance v28, Landroid/os/Handler;

    invoke-direct/range {v28 .. v28}, Landroid/os/Handler;-><init>()V

    .line 1876
    .local v28, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/android/launcher2/HomeView$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/launcher2/HomeView$13;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v10, 0x7d0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1888
    .end local v28    # "handler":Landroid/os/Handler;
    :cond_a
    :goto_5
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v10, Lcom/android/launcher2/HomeView$14;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/launcher2/HomeView$14;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v12, 0x1f4

    invoke-virtual {v4, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1816
    :cond_b
    move-object/from16 v0, p2

    instance-of v4, v0, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v4, :cond_c

    move-object/from16 v33, p2

    .line 1817
    check-cast v33, Lcom/android/launcher2/HomeWidgetItem;

    .line 1818
    .local v33, "temp":Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/launcher2/HomeWidgetItem;->resizeSpans:[I

    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/HomeWidgetItem;->getResizeSpans()[I

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/android/launcher2/HomeView;->copySpans([I[I)V

    goto/16 :goto_3

    .line 1820
    .end local v33    # "temp":Lcom/android/launcher2/HomeWidgetItem;
    :cond_c
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeWidgetItem;->calcResizeSpan(Landroid/appwidget/AppWidgetProviderInfo;)V

    goto/16 :goto_3

    .line 1858
    .restart local v29    # "padding":Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .restart local v30    # "page":Lcom/android/launcher2/CellLayout;
    :cond_d
    const/16 v35, 0x0

    goto/16 :goto_4

    .line 1883
    .end local v29    # "padding":Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .end local v30    # "page":Lcom/android/launcher2/CellLayout;
    :cond_e
    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v10, "resize_widgets"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    goto :goto_5
.end method

.method private completeAddShortcut(Landroid/content/Intent;JIII)V
    .locals 8
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I

    .prologue
    .line 1718
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1723
    :goto_0
    return-void

    .line 1720
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    .local v1, "info":Lcom/android/launcher2/HomeShortcutItem;
    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    .line 1722
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/HomeView;->completeAddShortcut(Lcom/android/launcher2/HomeShortcutItem;JIII)V

    goto :goto_0
.end method

.method private static copyHomeItemToPendingAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;Lcom/android/launcher2/HomeItem;)V
    .locals 2
    .param p0, "to"    # Lcom/android/launcher2/HomeView$PendingAddArguments;
    .param p1, "from"    # Lcom/android/launcher2/HomeItem;

    .prologue
    .line 424
    iget-wide v0, p1, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->container:J

    .line 425
    iget v0, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->screen:I

    .line 426
    iget v0, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellX:I

    .line 427
    iget v0, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellY:I

    .line 428
    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->spanX:I

    .line 429
    iget v0, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->spanY:I

    .line 430
    iget-object v0, p1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    iput-object v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->dropPos:[I

    .line 431
    iget-boolean v0, p1, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView$PendingAddArguments;->isSecretItem:Z

    .line 432
    return-void
.end method

.method private static copyPendingAddToHomeItem(Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeView$PendingAddArguments;)V
    .locals 2
    .param p0, "to"    # Lcom/android/launcher2/HomeItem;
    .param p1, "from"    # Lcom/android/launcher2/HomeView$PendingAddArguments;

    .prologue
    .line 412
    iget-wide v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->container:J

    iput-wide v0, p0, Lcom/android/launcher2/HomeItem;->container:J

    .line 413
    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->screen:I

    iput v0, p0, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 414
    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellX:I

    iput v0, p0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 415
    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->cellY:I

    iput v0, p0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 416
    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->spanX:I

    iput v0, p0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 417
    iget v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->spanY:I

    iput v0, p0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 418
    iget-object v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->dropPos:[I

    iput-object v0, p0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 419
    iget-boolean v0, p1, Lcom/android/launcher2/HomeView$PendingAddArguments;->isSecretItem:Z

    iput-boolean v0, p0, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    .line 421
    return-void
.end method

.method private copySpans([I[I)V
    .locals 3
    .param p1, "dst"    # [I
    .param p2, "src"    # [I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1726
    array-length v0, p2

    if-ne v0, v2, :cond_0

    array-length v0, p1

    if-eq v0, v2, :cond_1

    .line 1727
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad array passed to copySpans src "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") dst "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1730
    :cond_1
    array-length v0, p2

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1731
    return-void
.end method

.method private copyToPendingAddInfo(Lcom/android/launcher2/HomePendingWidget;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher2/HomePendingWidget;

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v2, p1, Lcom/android/launcher2/HomePendingWidget;->container:J

    iput-wide v2, v0, Lcom/android/launcher2/HomeItem;->container:J

    .line 2158
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->mScreen:I

    iput v1, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 2159
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->cellX:I

    iput v1, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 2160
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->cellY:I

    iput v1, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 2161
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->spanX:I

    iput v1, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 2162
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v1, p1, Lcom/android/launcher2/HomePendingWidget;->spanY:I

    iput v1, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 2163
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v1, p1, Lcom/android/launcher2/HomePendingWidget;->dropPos:[I

    iput-object v1, v0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 2164
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-boolean v1, p1, Lcom/android/launcher2/HomePendingWidget;->mSecretItem:Z

    iput-boolean v1, v0, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    .line 2165
    return-void
.end method

.method private createWorkspaceChildren()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 1202
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v4

    .line 1203
    .local v4, "screenCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 1204
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f030059

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v7, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 1207
    .local v0, "cell":Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1208
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 1209
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v3, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1212
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v0, v3}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1213
    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeView;->determineEmptyPageMsgVisibility(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setEmptyMessageVisibility(I)V

    .line 1203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1213
    :cond_1
    const/16 v5, 0x8

    goto :goto_1

    .line 1216
    .end local v0    # "cell":Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    .line 1217
    .local v1, "homeScreenIndex":I
    if-ltz v1, :cond_3

    if-lt v1, v4, :cond_4

    .line 1218
    :cond_3
    if-gez v1, :cond_5

    move v1, v6

    .line 1219
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    .line 1221
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 1222
    return-void

    .line 1218
    :cond_5
    add-int/lit8 v1, v4, -0x1

    goto :goto_2
.end method

.method public static findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z
    .locals 10
    .param p0, "pos"    # [I
    .param p1, "screen"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "dropPos"    # Lcom/android/launcher2/HomeView$DropPos;
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I
    .param p6, "showFullToast"    # Z

    .prologue
    .line 4729
    if-nez p3, :cond_1

    .line 4730
    const/4 v5, 0x0

    .line 4779
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v8, p2

    .line 4732
    check-cast v8, Lcom/android/launcher2/Launcher;

    iget-object v8, v8, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    .line 4734
    .local v7, "ws":Lcom/android/launcher2/Workspace;
    const/4 v8, -0x1

    if-ne p1, v8, :cond_2

    .line 4735
    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result p1

    .line 4737
    :cond_2
    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 4739
    .local v1, "count":I
    const/4 v5, 0x0

    .line 4741
    .local v5, "rc":Z
    const/4 v6, 0x0

    .line 4743
    .local v6, "reachedEnd":Z
    if-eqz p0, :cond_3

    array-length v8, p0

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    .line 4744
    :cond_3
    const/4 v8, 0x2

    new-array p0, v8, [I

    .line 4746
    :cond_4
    const/4 v8, 0x0

    iput-boolean v8, p3, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    .line 4747
    move v3, p1

    .line 4748
    .local v3, "i":I
    :goto_1
    if-lt v3, v1, :cond_5

    .line 4749
    const/4 v3, 0x0

    .line 4750
    const/4 v6, 0x1

    .line 4752
    :cond_5
    if-eqz v6, :cond_7

    if-lt v3, p1, :cond_7

    .line 4766
    :goto_2
    if-nez v5, :cond_6

    .line 4767
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Workspace;->newPage(Z)I

    move-result v4

    .line 4768
    .local v4, "newPage":I
    const/high16 v8, -0x80000000

    if-eq v4, v8, :cond_6

    .line 4769
    invoke-virtual {v7, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 4770
    .local v2, "currentPage":Lcom/android/launcher2/CellLayout;
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v2, p0, v8, v9}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4771
    const/4 v8, 0x0

    aget v8, p0, v8

    const/4 v9, 0x1

    aget v9, p0, v9

    invoke-virtual {p3, v2, v4, v8, v9}, Lcom/android/launcher2/HomeView$DropPos;->assign(Lcom/android/launcher2/CellLayout;III)V

    .line 4772
    const/4 v5, 0x1

    .line 4776
    .end local v2    # "currentPage":Lcom/android/launcher2/CellLayout;
    .end local v4    # "newPage":I
    :cond_6
    iget-boolean v8, p3, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    if-nez v8, :cond_0

    if-eqz p6, :cond_0

    .line 4777
    invoke-static {p2}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage(Landroid/content/Context;)V

    goto :goto_0

    .line 4755
    :cond_7
    invoke-virtual {v7, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4756
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_9

    instance-of v8, v0, Lcom/android/launcher2/CellLayout;

    if-eqz v8, :cond_9

    move-object v2, v0

    .line 4757
    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 4758
    .restart local v2    # "currentPage":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2, p0, p4, p5}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 4759
    const/4 v8, 0x0

    aget v8, p0, v8

    const/4 v9, 0x1

    aget v9, p0, v9

    invoke-virtual {p3, v2, v3, v8, v9}, Lcom/android/launcher2/HomeView$DropPos;->assign(Lcom/android/launcher2/CellLayout;III)V

    .line 4760
    const/4 v5, 0x1

    .line 4761
    if-ne v3, p1, :cond_8

    const/4 v8, 0x1

    :goto_3
    iput-boolean v8, p3, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 4747
    .end local v2    # "currentPage":Lcom/android/launcher2/CellLayout;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "activityName"    # Landroid/content/ComponentName;

    .prologue
    .line 3115
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3117
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 3119
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 3120
    const-string v6, "com.android.launcher.toolbar_icon"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3121
    .local v1, "iconResId":I
    if-eqz v1, :cond_0

    .line 3122
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v5

    .line 3123
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 3135
    .end local v1    # "iconResId":I
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v6

    .line 3126
    :catch_0
    move-exception v0

    .line 3128
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "Launcher.HomeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load toolbar icon; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3135
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 3130
    :catch_1
    move-exception v3

    .line 3132
    .local v3, "nfe":Landroid/content/res/Resources$NotFoundException;
    sget-boolean v6, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "Launcher.HomeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load toolbar icon from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getFolderById(J)Lcom/android/launcher2/HomeFolderItem;
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 4527
    sget-object v0, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    return-object v0
.end method

.method private onAppWidgetReset()V
    .locals 1

    .prologue
    .line 2530
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-eqz v0, :cond_0

    .line 2531
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 2533
    :cond_0
    return-void
.end method

.method private performOnHomePressed(Z)V
    .locals 13
    .param p1, "moveToDefaultScreen"    # Z

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f0f0090

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 776
    const-string v6, "Launcher.HomeView"

    const-string v8, "performOnHomePressed"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v6}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 778
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    .line 781
    .local v4, "launcher":Lcom/android/launcher2/Launcher;
    sget-boolean v6, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->isHomeScreenWallpaperDialogVisible:Z

    if-eqz v6, :cond_0

    .line 782
    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    .line 785
    :cond_0
    sget-boolean v6, Lcom/android/launcher2/HomeScreenDialogFragment;->isHomeScreenDialogVisible:Z

    if-eqz v6, :cond_2

    .line 786
    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher2/HomeScreenDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    .line 787
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v6}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    .line 851
    .end local v4    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_1
    :goto_0
    return-void

    .line 789
    .restart local v4    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/HomeScreenOptionMenu;->isActive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 790
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v6}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    goto :goto_0

    .line 792
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    goto :goto_0

    .line 796
    .end local v4    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_4
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v6, :cond_1

    .line 799
    sget-boolean v6, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v6, :cond_5

    .line 800
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getIsDragOccuring()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v6

    if-nez v6, :cond_1

    .line 805
    :cond_5
    sget-boolean v6, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v6, :cond_8

    .line 806
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 807
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 808
    invoke-static {v10}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 809
    invoke-static {v10}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 810
    invoke-virtual {p0, v7}, Lcom/android/launcher2/HomeView;->showWorkspace(Z)V

    .line 819
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 820
    iput-boolean v7, p0, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    .line 823
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 824
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v5

    .line 825
    .local v5, "openFolder":Lcom/android/launcher2/Folder;
    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 826
    invoke-virtual {v5, v7}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 832
    .end local v5    # "openFolder":Lcom/android/launcher2/Folder;
    :cond_6
    :goto_2
    sget-boolean v6, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v6, :cond_b

    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsMagazineHomeEnable:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->isFolderOpened()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v6

    if-nez v6, :cond_b

    .line 833
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v2

    .line 834
    .local v2, "homeScreenIndex":I
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v1

    .line 836
    .local v1, "currentPage":I
    if-ne v2, v1, :cond_b

    sget-boolean v6, Lcom/android/launcher2/Launcher;->mIsExpandStatusBar:Z

    if-nez v6, :cond_b

    .line 837
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Lcom/android/launcher2/HomeView;->MAGAZINE_CONTENT_URI:Landroid/net/Uri;

    const-string v9, "getUsingHomekeySetting()"

    invoke-virtual {v6, v8, v9, v12, v12}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 838
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_a

    move v3, v7

    .line 840
    .local v3, "isUsingHomekeyEnabled":Z
    :goto_3
    if-eqz v3, :cond_b

    .line 841
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/Launcher;->startMagazineApp(Z)V

    .line 842
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->closeFolder()V

    goto/16 :goto_0

    .line 813
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "currentPage":I
    .end local v2    # "homeScreenIndex":I
    .end local v3    # "isUsingHomekeyEnabled":Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 816
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_1

    .line 828
    .restart local v5    # "openFolder":Lcom/android/launcher2/Folder;
    :cond_9
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->closeFolder()V

    goto :goto_2

    .line 838
    .end local v5    # "openFolder":Lcom/android/launcher2/Folder;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "currentPage":I
    .restart local v2    # "homeScreenIndex":I
    :cond_a
    const-string v6, "return getUsingHomekeySetting()"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_3

    .line 847
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "currentPage":I
    .end local v2    # "homeScreenIndex":I
    :cond_b
    if-eqz p1, :cond_1

    .line 848
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    goto/16 :goto_0
.end method

.method private reAddCreatedPageForDragIfNeeded(Lcom/android/launcher2/CellLayout;JILcom/android/launcher2/HomeItem;)Lcom/android/launcher2/CellLayout;
    .locals 6
    .param p1, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "info"    # Lcom/android/launcher2/HomeItem;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1556
    if-nez p1, :cond_0

    const-wide/16 v2, -0x64

    cmp-long v1, p2, v2

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getChildCount()I

    move-result v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getPageCount()I

    move-result v1

    if-ne p4, v1, :cond_0

    .line 1559
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getPageCount()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 1560
    .local v0, "temp":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    .line 1561
    move-object p1, v0

    .line 1565
    .end local v0    # "temp":Lcom/android/launcher2/CellLayout;
    :cond_0
    iget-boolean v1, p5, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 1566
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p4, v4, v5}, Lcom/android/launcher2/Workspace;->insertWorkspaceSecretScreen(IZZ)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 1567
    .restart local v0    # "temp":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_1

    .line 1568
    move-object p1, v0

    .line 1572
    .end local v0    # "temp":Lcom/android/launcher2/CellLayout;
    :cond_1
    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v1, :cond_2

    .line 1573
    iget-boolean v1, p5, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1574
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p4, v4}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 1575
    .restart local v0    # "temp":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_2

    .line 1576
    move-object p1, v0

    .line 1581
    .end local v0    # "temp":Lcom/android/launcher2/CellLayout;
    :cond_2
    return-object p1
.end method

.method private registerContentObservers()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2513
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2514
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2517
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isHelpHubAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2518
    const-string v2, "content://com.samsung.helphub.provider/help_page_status/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2519
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHelphubObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2522
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const-string v2, "skt_phone20_settings"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mChangeTphoneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2524
    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 5562
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 5563
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 5564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5566
    :cond_0
    return-void
.end method

.method private resetAddInfo()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 2050
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/launcher2/HomeItem;->container:J

    .line 2051
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v4, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 2052
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v4, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 2053
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v4, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v4, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 2054
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 2055
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    .line 2056
    return-void
.end method

.method private restoreState(Lcom/android/launcher2/HomeView$SavedState;)V
    .locals 11
    .param p1, "ss"    # Lcom/android/launcher2/HomeView$SavedState;

    .prologue
    .line 674
    if-nez p1, :cond_0

    .line 721
    :goto_0
    return-void

    .line 678
    :cond_0
    iget v0, p1, Lcom/android/launcher2/HomeView$SavedState;->currentScreen:I

    .line 679
    .local v0, "currentScreen":I
    const/4 v8, -0x1

    if-le v0, v8, :cond_1

    .line 680
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 683
    :cond_1
    iget-wide v4, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddContainer:J

    .line 684
    .local v4, "pendingAddContainer":J
    iget v3, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddScreen:I

    .line 686
    .local v3, "pendingAddScreen":I
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_3

    const/4 v8, -0x1

    if-le v3, v8, :cond_3

    .line 687
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-wide v4, v8, Lcom/android/launcher2/HomeItem;->container:J

    .line 688
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput v3, v8, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 689
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v9, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellX:I

    iput v9, v8, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 690
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v9, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellY:I

    iput v9, v8, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 691
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v9, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanX:I

    iput v9, v8, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 692
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v9, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanY:I

    iput v9, v8, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 693
    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v8, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSecretItem:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_7

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v9, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    .line 694
    iget v1, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPosX:I

    .line 695
    .local v1, "dropPosX":I
    iget v2, p1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPoxY:I

    .line 696
    .local v2, "dropPosY":I
    const/4 v8, -0x1

    if-eq v8, v1, :cond_2

    const/4 v8, -0x1

    if-eq v8, v2, :cond_2

    .line 697
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v9, 0x2

    new-array v9, v9, [I

    iput-object v9, v8, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 698
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v8, v8, Lcom/android/launcher2/HomeItem;->dropPos:[I

    const/4 v9, 0x0

    aput v1, v8, v9

    .line 699
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v8, v8, Lcom/android/launcher2/HomeItem;->dropPos:[I

    const/4 v9, 0x1

    aput v2, v8, v9

    .line 701
    :cond_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    .line 703
    .end local v1    # "dropPosX":I
    .end local v2    # "dropPosY":I
    :cond_3
    iget-object v8, p1, Lcom/android/launcher2/HomeView$SavedState;->folderBundle:Landroid/os/Bundle;

    iput-object v8, p0, Lcom/android/launcher2/HomeView;->mFolderBundle:Landroid/os/Bundle;

    .line 704
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mFolderBundle:Landroid/os/Bundle;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 708
    iget v6, p1, Lcom/android/launcher2/HomeView$SavedState;->darkenLayerVisibility:I

    .line 709
    .local v6, "visibility":I
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 711
    .end local v6    # "visibility":I
    :cond_4
    iget-boolean v7, p1, Lcom/android/launcher2/HomeView$SavedState;->inQuickView:Z

    .line 713
    .local v7, "wasInQuickView":Z
    sget-boolean v8, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v8, :cond_5

    .line 714
    const/4 v7, 0x0

    .line 716
    :cond_5
    if-eqz v7, :cond_6

    .line 717
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v8, v8, Lcom/android/launcher2/Workspace;->mPagePreviewManager:Lcom/android/launcher2/PageIndicatorPreviewManager;

    invoke-virtual {v8}, Lcom/android/launcher2/PageIndicatorPreviewManager;->layoutPageIndicator()V

    .line 718
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    .line 720
    :cond_6
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    goto/16 :goto_0

    .line 693
    .end local v7    # "wasInQuickView":Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private sendAdvanceMessage(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/4 v2, 0x1

    .line 1910
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1911
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1912
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceSentTime:J

    .line 1914
    return-void
.end method

.method private setStartPosition(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5570
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/HomeView;->mDownMotionX:F

    .line 5571
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/HomeView;->mDownMotionY:F

    .line 5572
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 5573
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 5574
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mIsStartFlickUp:Z

    .line 5575
    return-void
.end method

.method private setupHomeViewAfterRotationForTB(I)V
    .locals 10
    .param p1, "rotationAngle"    # I

    .prologue
    const v9, 0x7f0e0262

    const v8, 0x7f0e0261

    const/4 v7, 0x2

    .line 5172
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 5173
    .local v0, "homeAppBtnLp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 5175
    .local v1, "homePhoneBtnLp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 5176
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 5177
    .local v4, "workspaceScreen":Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5178
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-ne p1, v7, :cond_0

    .line 5179
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00b0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 5182
    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5181
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00d8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_1

    .line 5185
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "workspaceScreen":Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    :cond_1
    if-ne p1, v7, :cond_2

    .line 5186
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 5188
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 5190
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicator()Lcom/android/launcher2/PageIndicator;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e00ad

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/PageIndicator;->setPageIndicatorPanelRightAdjust(I)V

    .line 5201
    :goto_2
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5202
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5204
    new-instance v5, Lcom/android/launcher2/HomeView$25;

    invoke-direct {v5, p0}, Lcom/android/launcher2/HomeView$25;-><init>(Lcom/android/launcher2/HomeView;)V

    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeView;->post(Ljava/lang/Runnable;)Z

    .line 5210
    return-void

    .line 5193
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 5195
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 5197
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicator()Lcom/android/launcher2/PageIndicator;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e00ac

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/PageIndicator;->setPageIndicatorPanelRightAdjust(I)V

    goto :goto_2
.end method

.method private setupViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 889
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 891
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0f0079

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Workspace;

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 892
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Workspace;->setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V

    .line 894
    const v1, 0x7f0f00d4

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/QuickViewWorkspace;

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    .line 895
    const v1, 0x7f0f00d5

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/QuickViewDragBar;

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mDeleteDropLayout:Lcom/android/launcher2/QuickViewDragBar;

    .line 896
    const v1, 0x7f0f00d6

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeScreenOptionMenu;

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

    .line 898
    const v1, 0x7f0f007c

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    .line 899
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 901
    const v1, 0x7f0f0078

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    .line 903
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getCpuBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    .line 906
    const v1, 0x7f0f007b

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Hotseat;

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    .line 907
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v1, :cond_0

    .line 908
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Hotseat;->setup(Lcom/android/launcher2/HomeView;)V

    .line 1046
    :cond_0
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->setup(Lcom/android/launcher2/HomeView;)V

    .line 1049
    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_1

    .line 1050
    const v1, 0x7f0f007a

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    .line 1051
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1052
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    const v2, 0x7f0f0076

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeEditButtonListener:Lcom/android/launcher2/HomeView$HomeEditTabClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1053
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    const v2, 0x7f0f004f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHomeEditButtonListener:Lcom/android/launcher2/HomeView$HomeEditTabClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1057
    :cond_1
    const v1, 0x7f0f0041

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeEditBar;

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    .line 1066
    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_4

    .line 1067
    const v1, 0x7f0f007f

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    .line 1068
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1069
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1070
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1071
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const v2, 0x7f100031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 1072
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x3035

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 1073
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const v2, 0x7f0e0018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 1074
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    .line 1076
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1077
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1080
    :cond_3
    const v1, 0x7f0f0084

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mEditIconDivider:Landroid/view/View;

    .line 1081
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mEditIconDivider:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 1082
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mEditIconDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1102
    :cond_4
    const v1, 0x7f0f007e

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    .line 1103
    iget-boolean v1, p0, Lcom/android/launcher2/HomeView;->removeHotseat:Z

    if-eqz v1, :cond_5

    .line 1104
    const v1, 0x7f0f0088

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    .line 1105
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 1106
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1108
    const v1, 0x7f0f008a

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mGoogleSearchView:Landroid/view/View;

    .line 1109
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mGoogleSearchView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->SearchButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mGoogleSearchView:Landroid/view/View;

    sget-object v2, Lcom/android/launcher2/FocusHelper;->GOOGLE_SEARCH_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1111
    const v1, 0x7f0f008b

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mVoiceSearchView:Landroid/view/View;

    .line 1112
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mVoiceSearchView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->VoiceSearchButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1113
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mVoiceSearchView:Landroid/view/View;

    sget-object v2, Lcom/android/launcher2/FocusHelper;->GOOGLE_SEARCH_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1115
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->setTabletHotseat()V

    .line 1120
    :cond_5
    const v1, 0x7f0f008c

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mMyFilesView:Landroid/view/View;

    .line 1121
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mMyFilesView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 1122
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mMyFilesView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->MyFilesButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1125
    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 1126
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1127
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/Workspace;->setup(Lcom/android/launcher2/HomeView;)V

    .line 1129
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->createWorkspaceChildren()V

    .line 1131
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v1, :cond_7

    .line 1132
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 1133
    :cond_7
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    if-eqz v1, :cond_8

    .line 1134
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 1135
    :cond_8
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    if-eqz v1, :cond_9

    .line 1136
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 1137
    :cond_9
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    if-eqz v1, :cond_a

    .line 1138
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 1148
    :cond_a
    return-void
.end method

.method public static showNoRoomAnyPageMessage(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2005
    const v0, 0x7f10001b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2006
    return-void
.end method

.method public static showOutOfSpaceMessage(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2009
    const v0, 0x7f10001a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2010
    return-void
.end method

.method private updateButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3
    .param p1, "buttonId"    # I
    .param p2, "activityName"    # Landroid/content/ComponentName;
    .param p3, "fallbackDrawableId"    # I

    .prologue
    .line 3167
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3168
    .local v0, "button":Landroid/widget/ImageView;
    invoke-direct {p0, p2}, Lcom/android/launcher2/HomeView;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3170
    .local v1, "toolbarIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 3173
    if-nez v1, :cond_1

    .line 3174
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3180
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    :goto_1
    return-object v2

    .line 3176
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3180
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateTextButtonWithIconFromExternalActivity(ILandroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 8
    .param p1, "buttonId"    # I
    .param p2, "activityName"    # Landroid/content/ComponentName;
    .param p3, "fallbackDrawableId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 3143
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3144
    .local v0, "button":Landroid/widget/TextView;
    invoke-direct {p0, p2}, Lcom/android/launcher2/HomeView;->getExternalPackageToolbarIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3145
    .local v3, "toolbarIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3146
    .local v2, "r":Landroid/content/res/Resources;
    const v6, 0x7f0e010f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 3147
    .local v4, "w":I
    const v6, 0x7f0e0110

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3150
    .local v1, "h":I
    if-nez v3, :cond_0

    .line 3151
    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3152
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3153
    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3158
    :goto_0
    return-object v5

    .line 3156
    :cond_0
    invoke-virtual {v3, v7, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3157
    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3158
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public ChangeTphoneMode()V
    .locals 3

    .prologue
    .line 3215
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3216
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3217
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher2/LauncherModel;->ChangeTphoneMode(Lcom/android/launcher2/HomeView;)V

    .line 3223
    :goto_0
    return-void

    .line 3219
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3220
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.cocktail.action.CHANGE_CALL_ITEM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3221
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public HelpAppAddwidget()Lcom/android/launcher2/HomeWidgetItem;
    .locals 24

    .prologue
    .line 4868
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    .line 4870
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v2

    add-int/lit8 v22, v2, -0x1

    .line 4874
    .local v22, "screen":I
    const/4 v2, 0x2

    new-array v12, v2, [I

    fill-array-data v12, :array_0

    .line 4876
    .local v12, "cellXY":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v23, v0

    .line 4877
    .local v23, "workspace":Lcom/android/launcher2/Workspace;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v10

    .line 4879
    .local v10, "appWidgetId":I
    const/16 v20, 0x0

    .line 4880
    .local v20, "pkgName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 4882
    .local v13, "className":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Launcher_DisableGoogleOption"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4884
    const-string v20, "com.sec.android.app.sbrowser"

    .line 4885
    const-string v13, "com.sec.android.app.sbrowser.BookmarkThumbnailWidgetProvider"

    .line 4892
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 4894
    .local v16, "mPkgMgr":Landroid/content/pm/PackageManager;
    const/16 v2, 0x207

    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 4900
    .local v19, "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_1

    .line 4901
    :cond_0
    const-string v20, "com.sec.android.widgetapp.SPlannerAppWidget"

    .line 4902
    const-string v13, "com.sec.android.widgetapp.SPlannerAppWidget.AgendaWidget.CalendarAppWidgetProvider"

    .line 4905
    :cond_1
    new-instance v21, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4906
    .local v21, "provider":Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v10, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    .line 4907
    sget-object v2, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    .line 4908
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 4910
    const/4 v2, -0x1

    if-ne v10, v2, :cond_3

    const/4 v3, 0x0

    .line 4963
    :goto_2
    return-object v3

    .line 4887
    .end local v16    # "mPkgMgr":Landroid/content/pm/PackageManager;
    .end local v19    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v21    # "provider":Landroid/content/ComponentName;
    :cond_2
    const-string v20, "com.android.chrome"

    .line 4888
    const-string v13, "com.google.android.apps.chrome.appwidget.bookmarks.BookmarkThumbnailWidgetProvider"

    goto :goto_0

    .line 4897
    .restart local v16    # "mPkgMgr":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v14

    .line 4898
    .local v14, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v19, 0x0

    .restart local v19    # "pkgInfo":Landroid/content/pm/PackageInfo;
    goto :goto_1

    .line 4912
    .end local v14    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v21    # "provider":Landroid/content/ComponentName;
    :cond_3
    new-instance v17, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v17 .. v17}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 4915
    .local v17, "newAppWidgetProviderInfo":Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4916
    .local v11, "appWidgetInfos":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v11

    .line 4918
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_4

    .line 4920
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4924
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "newAppWidgetProviderInfo":Landroid/appwidget/AppWidgetProviderInfo;
    check-cast v17, Landroid/appwidget/AppWidgetProviderInfo;

    .line 4928
    .restart local v17    # "newAppWidgetProviderInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_4
    new-instance v3, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, v17

    invoke-direct {v3, v0, v10}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;I)V

    .line 4930
    .local v3, "item":Lcom/android/launcher2/HomeWidgetItem;
    move/from16 v0, v22

    iput v0, v3, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    .line 4931
    const/4 v2, 0x0

    aget v2, v12, v2

    iput v2, v3, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    .line 4932
    const/4 v2, 0x1

    aget v2, v12, v2

    iput v2, v3, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    .line 4933
    const/4 v2, 0x3

    iput v2, v3, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    .line 4934
    const/4 v2, 0x3

    iput v2, v3, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    .line 4938
    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_5

    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 4943
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-nez v2, :cond_7

    .line 4945
    const/4 v3, 0x0

    goto :goto_2

    .line 4918
    .end local v3    # "item":Lcom/android/launcher2/HomeWidgetItem;
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 4947
    .restart local v3    # "item":Lcom/android/launcher2/HomeWidgetItem;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v2, v4, v10, v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    iput-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 4948
    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v10, v0}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 4949
    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 4951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v18

    .line 4952
    .local v18, "padding":Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 4956
    .end local v18    # "padding":Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    :cond_8
    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/high16 v4, 0x1000000

    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetHostView;->setBackgroundColor(I)V

    .line 4957
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-wide/16 v4, -0x64

    iget v6, v3, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    iget v7, v3, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    iget v8, v3, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 4960
    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v2, v2, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    const/4 v4, 0x0

    const/16 v5, 0xde

    aput v5, v2, v4

    .line 4961
    iget-object v2, v3, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v2, v2, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    const/4 v4, 0x0

    const/16 v5, 0x113

    aput v5, v2, v4

    .line 4962
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_2

    .line 4874
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher2/HomePendingWidget;

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    iget-object v1, p1, Lcom/android/launcher2/HomePendingWidget;->componentName:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/launcher2/HomeView$17;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/HomeView$17;-><init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomePendingWidget;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AppWidgetBinder;->allocateBindNew(Landroid/content/ComponentName;Lcom/android/launcher2/AppWidgetBinder$Callback;)V

    .line 2224
    return-void
.end method

.method addAppWidgetFromPick(Landroid/content/Intent;)V
    .locals 3
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 2060
    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2063
    .local v0, "appWidgetId":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/HomeView;->addAppWidgetImpl(ILcom/android/launcher2/HomePendingWidget;)V

    .line 2064
    return-void
.end method

.method public addHelpAppPage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4387
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageAdded:Z

    if-eqz v0, :cond_0

    .line 4405
    :goto_0
    return-void

    .line 4390
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/HomeView;->screenIndexBeforeHelpAppPageAddition:I

    .line 4391
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumFestivalPages()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/HomeView;->screenIndexFestivalHelpAppPageAddition:I

    .line 4393
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v0, :cond_1

    .line 4394
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v1, p0, Lcom/android/launcher2/HomeView;->screenIndexFestivalHelpAppPageAddition:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    .line 4397
    :goto_1
    iput-boolean v2, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageDeleted:Z

    .line 4398
    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageAdded:Z

    .line 4399
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->hidePageIndicator(Z)V

    .line 4400
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->disableRollNavigation()V

    .line 4401
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v0, :cond_2

    .line 4402
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v1, p0, Lcom/android/launcher2/HomeView;->screenIndexFestivalHelpAppPageAddition:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0

    .line 4396
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->addPage()V

    goto :goto_1

    .line 4404
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method public addItemToHomeScreen()V
    .locals 19

    .prologue
    .line 4968
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/HomeView;->mIsHelpItemAdded:Z

    if-eqz v2, :cond_1

    .line 5016
    :cond_0
    :goto_0
    return-void

    .line 4970
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v18, v0

    .line 4971
    .local v18, "workspace":Lcom/android/launcher2/Workspace;
    if-eqz v18, :cond_0

    .line 4973
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/HomeView;->mIsHelpItemAdded:Z

    .line 4974
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    .line 4975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->disableRollNavigation()V

    .line 4976
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .line 4977
    .local v16, "spanXY":[I
    new-instance v10, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.popupcalculator"

    const-string v4, "com.sec.android.app.popupcalculator.Calculator"

    invoke-direct {v10, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4980
    .local v10, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 4982
    .local v14, "mPkgMgr":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.sec.android.app.popupcalculator"

    const/16 v4, 0x207

    invoke-virtual {v14, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 4988
    .local v15, "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    if-eqz v15, :cond_2

    iget-object v2, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_3

    .line 4989
    :cond_2
    new-instance v10, Landroid/content/ComponentName;

    .end local v10    # "cn":Landroid/content/ComponentName;
    const-string v2, "com.samsung.helphub"

    const-string v4, "com.samsung.helphub.HelpHubActivity"

    invoke-direct {v10, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4992
    .restart local v10    # "cn":Landroid/content/ComponentName;
    :cond_3
    new-instance v13, Lcom/android/launcher2/AppItem;

    const/4 v2, 0x0

    invoke-direct {v13, v10, v2}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    .line 4993
    .local v13, "item1":Lcom/android/launcher2/AppItem;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 4994
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual {v12, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4995
    invoke-virtual {v13}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v3

    .line 4997
    .local v3, "info":Lcom/android/launcher2/HomeShortcutItem;
    new-instance v3, Lcom/android/launcher2/HomeShortcutItem;

    .end local v3    # "info":Lcom/android/launcher2/HomeShortcutItem;
    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v3, v2}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 4998
    .restart local v3    # "info":Lcom/android/launcher2/HomeShortcutItem;
    new-instance v17, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct/range {v17 .. v17}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 4999
    .local v17, "titleAndIcon":Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v12}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V

    .line 5000
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v2, v3, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 5001
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v2, v3, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 5003
    const/4 v2, 0x0

    iput v2, v3, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    .line 5004
    const/4 v2, 0x0

    iput v2, v3, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    .line 5005
    const-wide/16 v4, -0x64

    iput-wide v4, v3, Lcom/android/launcher2/HomeShortcutItem;->container:J

    .line 5006
    const/4 v2, 0x0

    aget v2, v16, v2

    iput v2, v3, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    .line 5007
    const/4 v2, 0x1

    aget v2, v16, v2

    iput v2, v3, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    .line 5008
    iput-object v12, v3, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 5009
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, v3, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    .line 5010
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-wide/16 v4, -0x64

    iget v6, v3, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    iget v7, v3, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    iget v8, v3, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 5012
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    .line 5013
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->setDataIsReady()V

    .line 5014
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->invalidatePageData()V

    .line 5015
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->hidePageIndicator(Z)V

    goto/16 :goto_0

    .line 4985
    .end local v3    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "item1":Lcom/android/launcher2/AppItem;
    .end local v15    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "titleAndIcon":Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    :catch_0
    move-exception v11

    .line 4986
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v15, 0x0

    .restart local v15    # "pkgInfo":Landroid/content/pm/PackageInfo;
    goto/16 :goto_1

    .line 4976
    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method public addPage()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 4424
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030059

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 4426
    .local v0, "cell":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4427
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 4428
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 4429
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4435
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4437
    .local v2, "visibility":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v3, :cond_1

    .line 4438
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4439
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 4440
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher2/WorkspacePages;->addPageAt(ILandroid/content/Context;)Z

    .line 4442
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    .line 4443
    return-void

    .line 4435
    .end local v2    # "visibility":I
    :cond_2
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public addSamsungWidgetFromDrop(Lcom/android/launcher2/HomePendingSamsungWidget;)Z
    .locals 5
    .param p1, "pending"    # Lcom/android/launcher2/HomePendingSamsungWidget;

    .prologue
    .line 2235
    const/4 v0, 0x0

    .line 2237
    .local v0, "addOk":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeView;->addSamsungWidget(Lcom/android/launcher2/HomePendingSamsungWidget;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2245
    :goto_0
    return v0

    .line 2238
    :catch_0
    move-exception v1

    .line 2239
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Launcher.HomeView"

    const-string v3, "Problem binding samsung widget. This should only happen when running in a separate process"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2241
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Widget is not running in the same process"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public addShortcutItemsIntoExistingFolder(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeShortcutItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeShortcutItem;>;"
    const/4 v5, 0x0

    .line 1537
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1538
    .local v0, "activity":Landroid/app/Activity;
    iget-wide v2, p0, Lcom/android/launcher2/HomeView;->mTargetFolderId:J

    invoke-static {v2, v3}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v9

    .line 1539
    .local v9, "existingFolder":Lcom/android/launcher2/HomeFolderItem;
    if-eqz v9, :cond_1

    .line 1540
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeShortcutItem;

    .line 1541
    .local v1, "folderItem":Lcom/android/launcher2/HomeShortcutItem;
    iget-wide v2, v9, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-virtual {v9}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v4

    iget v7, v1, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    iget v8, v1, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    move v6, v5

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    .line 1542
    invoke-virtual {v9, v1}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    .line 1545
    .end local v1    # "folderItem":Lcom/android/launcher2/HomeShortcutItem;
    :cond_0
    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/HomeView;->setDestinationNewFolderId(J)V

    .line 1547
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public addShortcutItemsIntoNewFolder(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeShortcutItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeShortcutItem;>;"
    const/4 v5, 0x0

    .line 1519
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1520
    .local v0, "activity":Landroid/app/Activity;
    sget-wide v2, Lcom/android/launcher2/HomeView;->mDestinationNewFolderId:J

    invoke-static {v2, v3}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v10

    .line 1521
    .local v10, "newFolder":Lcom/android/launcher2/HomeFolderItem;
    if-eqz v10, :cond_1

    .line 1522
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeShortcutItem;

    .line 1523
    .local v1, "folderItem":Lcom/android/launcher2/HomeShortcutItem;
    iget-wide v2, v10, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-virtual {v10}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v4

    iget v7, v1, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    iget v8, v1, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    move v6, v5

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    .line 1524
    invoke-virtual {v10, v1}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    .line 1526
    .end local v1    # "folderItem":Lcom/android/launcher2/HomeShortcutItem;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v3, v10, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1527
    const-wide/16 v2, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/HomeView;->setDestinationNewFolderId(J)V

    .line 1529
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public addSurfaceWidgetFromDrop(Lcom/android/launcher2/HomePendingSurfaceWidget;)Z
    .locals 5
    .param p1, "pending"    # Lcom/android/launcher2/HomePendingSurfaceWidget;

    .prologue
    .line 2344
    const/4 v0, 0x0

    .line 2346
    .local v0, "addOk":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeView;->addSurfaceWidget(Lcom/android/launcher2/HomePendingSurfaceWidget;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2355
    :goto_0
    return v0

    .line 2347
    :catch_0
    move-exception v1

    .line 2348
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "Launcher.HomeView"

    const-string v3, "Problem binding surface widget. This should only happen when running in a separate process"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2350
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Widget is not running in the same process"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2353
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addWidgetFromIntent(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/HomeWidgetItem;

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    invoke-virtual {p1}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/HomeView$10;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/HomeView$10;-><init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AppWidgetBinder;->allocateBindNew(Landroid/content/ComponentName;Lcom/android/launcher2/AppWidgetBinder$Callback;)V

    .line 1514
    return-void
.end method

.method addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .param p1, "hostView"    # Landroid/view/View;
    .param p2, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1979
    if-eqz p2, :cond_0

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1986
    :cond_0
    :goto_0
    return-void

    .line 1980
    :cond_1
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1981
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_0

    .line 1982
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    check-cast v0, Landroid/widget/Advanceable;

    .end local v0    # "v":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 1984
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    goto :goto_0
.end method

.method public bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 24
    .param p1, "item"    # Lcom/android/launcher2/HomeWidgetItem;

    .prologue
    .line 3424
    const-wide/16 v16, 0x0

    .line 3428
    .local v16, "start":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v18, v0

    .line 3430
    .local v18, "workspace":Lcom/android/launcher2/Workspace;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCellCountX:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCellCountY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 3431
    :cond_0
    const-string v19, "Launcher.HomeView"

    const-string v20, "Attempted to bind a widget larger than what will fit. Removing."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 3433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 3434
    .local v10, "now":J
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 3435
    .local v9, "date":Ljava/util/Date;
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v19, "yyyy/MM/dd HH:mm:ss"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3436
    .local v14, "sdfNow":Ljava/text/SimpleDateFormat;
    invoke-virtual {v14, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 3437
    .local v15, "strNow":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Landroid/app/Activity;

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/LauncherApplication;

    .line 3438
    .local v6, "app":Lcom/android/launcher2/LauncherApplication;
    const-string v19, "com.sec.android.app.launcher.prefs"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 3439
    .local v13, "prefs":Landroid/content/SharedPreferences$Editor;
    const-string v19, "delelteFrombindAppWidget"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/HomeWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", time : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3440
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3442
    .end local v6    # "app":Lcom/android/launcher2/LauncherApplication;
    .end local v9    # "date":Ljava/util/Date;
    .end local v10    # "now":J
    .end local v13    # "prefs":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "sdfNow":Ljava/text/SimpleDateFormat;
    .end local v15    # "strNow":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 3511
    :cond_2
    :goto_0
    return-void

    .line 3463
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 3465
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    .line 3466
    .local v7, "appWidgetId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    .line 3467
    .local v8, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v8, :cond_4

    .line 3471
    sget-boolean v19, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v19, :cond_2

    const-string v19, "Launcher.HomeView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "App widget info is null. AppWidgetID = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3480
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    if-eqz v19, :cond_8

    .line 3485
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    .line 3486
    const-string v19, "Launcher.HomeView"

    const-string v20, "mAppWidgetHost is null. Was HomeView.onDetachedFromWindow() called previously?"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3489
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/launcher2/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 3491
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 3492
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 3494
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v19

    sget-object v20, Lcom/android/launcher2/Workspace;->GOOGLE_SEARCH_WIDGET:Landroid/content/ComponentName;

    invoke-virtual/range {v19 .. v20}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    move/from16 v19, v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 3496
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/Launcher;->setEnableHotWord(Z)V

    .line 3499
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v19, v0

    iget-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v12

    .line 3500
    .local v12, "padding":Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v19, v0

    iget v0, v12, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    move/from16 v20, v0

    iget v0, v12, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    move/from16 v21, v0

    iget v0, v12, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    move/from16 v22, v0

    iget v0, v12, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 3501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/WorkspaceSpanCalculator;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    .line 3504
    .end local v12    # "padding":Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v19, v0

    const/high16 v20, 0x1000000

    invoke-virtual/range {v19 .. v20}, Landroid/appwidget/AppWidgetHostView;->setBackgroundColor(I)V

    .line 3505
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_0
.end method

.method public bindFolders(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3300
    .local p1, "folders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3301
    .local v0, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem;

    .line 3302
    .local v1, "folder":Lcom/android/launcher2/HomeFolderItem;
    invoke-virtual {v1, v0}, Lcom/android/launcher2/HomeFolderItem;->normalize(Ljava/util/List;)V

    goto :goto_0

    .line 3306
    .end local v1    # "folder":Lcom/android/launcher2/HomeFolderItem;
    :cond_0
    sget-object v3, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 3308
    sget-object v3, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3309
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3310
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 3312
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mFolderBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/HomeView;->restoreOpenFolder(Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3317
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 3318
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3321
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 3322
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 3326
    :cond_3
    return-void
.end method

.method public bindHomeDeleteFestivalPage()V
    .locals 6

    .prologue
    .line 4635
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    .line 4637
    .local v0, "currentPage":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 4638
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 4640
    .local v2, "v":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 4641
    const-string v3, "Launcher.HomeView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindHomeDeleteFestivalPage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4642
    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    .line 4643
    add-int/lit8 v1, v1, -0x1

    .line 4637
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4647
    .end local v2    # "v":Lcom/android/launcher2/CellLayout;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 4648
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 4649
    :cond_2
    return-void
.end method

.method public bindHomeDeleteSecretPage()V
    .locals 6

    .prologue
    .line 4569
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    .line 4571
    .local v0, "currentPage":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 4572
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 4574
    .local v3, "v":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 4575
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/Workspace;->removeView(Landroid/view/View;)V

    .line 4576
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/launcher2/WorkspacePages;->deletePageAt(ILandroid/content/Context;)Z

    .line 4577
    add-int/lit8 v2, v2, -0x1

    .line 4571
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4581
    .end local v3    # "v":Lcom/android/launcher2/CellLayout;
    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 4583
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    .line 4588
    .local v1, "homeIdx":I
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 4591
    .end local v1    # "homeIdx":I
    :goto_1
    return-void

    .line 4590
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_1
.end method

.method public bindHomeInsertFestivalPage()V
    .locals 12

    .prologue
    .line 4594
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getFestivalPageManager()Lcom/android/launcher2/FestivalPageManager;

    move-result-object v5

    .line 4595
    .local v5, "fpMgr":Lcom/android/launcher2/FestivalPageManager;
    invoke-static {}, Lcom/android/launcher2/FestivalPageManager;->getFestivalString()Ljava/lang/String;

    move-result-object v1

    .line 4597
    .local v1, "festivalDayList":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4631
    :cond_0
    :goto_0
    return-void

    .line 4600
    :cond_1
    const-string v9, ";"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4601
    .local v4, "festivalName":[Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v0

    .line 4602
    .local v0, "currentPageCount":I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxFestivalScreenCount()I

    move-result v3

    .line 4603
    .local v3, "festivalMaxCount":I
    array-length v8, v4

    .line 4604
    .local v8, "toBeCount":I
    const/4 v7, -0x1

    .line 4605
    .local v7, "index":I
    const/4 v2, -0x1

    .line 4610
    .local v2, "festivalKey":I
    sget-boolean v9, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v9, :cond_2

    .line 4611
    const-string v9, "Launcher.HomeView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bindHomeInsertFestivalPage toBeCount : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " festivalDayList : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4613
    :cond_2
    if-le v8, v3, :cond_3

    .line 4614
    move v8, v3

    .line 4616
    :cond_3
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_4

    .line 4617
    aget-object v9, v4, v6

    if-nez v9, :cond_5

    .line 4629
    :cond_4
    const-string v9, "Launcher.HomeView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bindHomeInsertFestivalPage currentPageCount [ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4630
    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0

    .line 4620
    :cond_5
    add-int v7, v0, v6

    .line 4621
    aget-object v9, v4, v6

    invoke-static {v9}, Lcom/android/launcher2/FestivalPageManager;->getFestivalType(Ljava/lang/String;)I

    move-result v2

    .line 4622
    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v2, v10}, Lcom/android/launcher2/Workspace;->insertWorkspaceFestivalScreen(IIZ)Lcom/android/launcher2/CellLayout;

    .line 4623
    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    const/4 v10, 0x1

    aget-object v11, v4, v6

    invoke-virtual {v5, v9, v7, v10, v11}, Lcom/android/launcher2/FestivalPageManager;->bindFestivalWidget(Lcom/android/launcher2/AppWidgetBinder;IILjava/lang/String;)V

    .line 4624
    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    const/4 v10, 0x2

    aget-object v11, v4, v6

    invoke-virtual {v5, v9, v7, v10, v11}, Lcom/android/launcher2/FestivalPageManager;->bindFestivalWidget(Lcom/android/launcher2/AppWidgetBinder;IILjava/lang/String;)V

    .line 4625
    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    const/4 v10, 0x3

    aget-object v11, v4, v6

    invoke-virtual {v5, v9, v7, v10, v11}, Lcom/android/launcher2/FestivalPageManager;->bindFestivalWidget(Lcom/android/launcher2/AppWidgetBinder;IILjava/lang/String;)V

    .line 4627
    const-string v9, "Launcher.HomeView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bindHomeInsertFestivalPage festivalName [ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ]  = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v4, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " fesivalKey : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4616
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public bindHomeInsertSecretPage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4559
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v1

    .line 4560
    .local v1, "toBeCount":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4561
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/launcher2/Workspace;->insertWorkspaceSecretScreen(IZZ)Lcom/android/launcher2/CellLayout;

    .line 4560
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4563
    :cond_0
    if-lez v1, :cond_1

    .line 4564
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 4565
    :cond_1
    return-void
.end method

.method public bindHomeItemsRemoved(Ljava/util/List;)V
    .locals 1
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
    .line 3666
    .local p1, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 3667
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/List;)V

    .line 3669
    :cond_0
    return-void
.end method

.method public bindHomeItemsUpdated(Ljava/util/List;Z)V
    .locals 1
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
    .line 3655
    .local p1, "updated":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 3656
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Workspace;->updateShortcutsAndSurfaceWidgets(Ljava/util/List;Z)V

    .line 3658
    :cond_0
    return-void
.end method

.method public bindHotseat(Ljava/util/List;)V
    .locals 5
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
    .line 3344
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-nez v2, :cond_0

    .line 3363
    :goto_0
    return-void

    .line 3349
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/launcher2/Hotseat;->normalizeContents(Landroid/content/Context;Ljava/util/List;)V

    .line 3350
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v2, v2, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutHotseat;->removeAllItems()V

    .line 3351
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v2, v2, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->beginBind(I)V

    .line 3352
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 3353
    .local v1, "item":Lcom/android/launcher2/HomeItem;
    iget v2, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-gez v2, :cond_1

    .line 3354
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget v3, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v4, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 3356
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget v3, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Hotseat;->getCellXFromOrder(I)I

    move-result v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 3357
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget v3, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Hotseat;->getCellYFromOrder(II)I

    move-result v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 3359
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Hotseat;->addItem(Lcom/android/launcher2/HomeItem;)Z

    goto :goto_1

    .line 3362
    .end local v1    # "item":Lcom/android/launcher2/HomeItem;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v2, v2, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutHotseat;->endBind()V

    goto :goto_0
.end method

.method public bindItems(Ljava/util/List;II)V
    .locals 8
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 3267
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3268
    .local v2, "workspace":Lcom/android/launcher2/Workspace;
    if-nez v2, :cond_0

    .line 3291
    :goto_0
    return-void

    .line 3270
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 3271
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 3276
    .local v1, "item":Lcom/android/launcher2/HomeItem;
    iget-wide v4, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 3270
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3280
    :cond_1
    sget-object v3, Lcom/android/launcher2/HomeView$28;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v4, v1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v4}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 3284
    :pswitch_0
    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto :goto_2

    .line 3289
    .end local v1    # "item":Lcom/android/launcher2/HomeItem;
    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->setDataIsReady()V

    .line 3290
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->invalidatePageData()V

    goto :goto_0

    .line 3280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bindSamsungWidget(Lcom/android/launcher2/SamsungWidgetItem;)V
    .locals 9
    .param p1, "item"    # Lcom/android/launcher2/SamsungWidgetItem;

    .prologue
    .line 3520
    const-wide/16 v4, 0x0

    .line 3524
    .local v4, "start":J
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3526
    .local v3, "workspace":Lcom/android/launcher2/Workspace;
    iget-object v6, p1, Lcom/android/launcher2/SamsungWidgetItem;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3527
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v2

    .line 3529
    .local v2, "packageManager":Lcom/android/launcher2/SamsungWidgetPackageManager;
    iget-object v6, p1, Lcom/android/launcher2/SamsungWidgetItem;->intent:Landroid/content/Intent;

    const-string v7, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Lcom/android/launcher2/SamsungWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/launcher2/SamsungWidgetProviderInfo;

    move-result-object v1

    .line 3531
    .local v1, "info":Lcom/android/launcher2/SamsungWidgetProviderInfo;
    if-nez v1, :cond_1

    .line 3532
    sget-boolean v6, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "Launcher.HomeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find Samsung widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    :cond_0
    :goto_0
    return-void

    .line 3536
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v2, v6, v1, p1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungWidgetProviderInfo;Lcom/android/launcher2/SamsungWidgetItem;)Lcom/android/launcher2/SamsungWidgetItem;

    .line 3538
    iget-object v6, p1, Lcom/android/launcher2/SamsungWidgetItem;->mWidgetView:Lcom/android/launcher2/SamsungWidgetView;

    invoke-virtual {v6, p1}, Lcom/android/launcher2/SamsungWidgetView;->setTag(Ljava/lang/Object;)V

    .line 3540
    iget-object v6, p1, Lcom/android/launcher2/SamsungWidgetItem;->mWidgetView:Lcom/android/launcher2/SamsungWidgetView;

    const/high16 v7, 0x1000000

    invoke-virtual {v6, v7}, Lcom/android/launcher2/SamsungWidgetView;->setBackgroundColor(I)V

    .line 3541
    invoke-virtual {v3, p1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    .line 3543
    iget v6, p1, Lcom/android/launcher2/SamsungWidgetItem;->mScreen:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 3544
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/launcher2/SamsungWidgetItem;->fireOnResume(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public bindSurfaceWidget(Lcom/android/launcher2/SurfaceWidgetItem;)V
    .locals 9
    .param p1, "item"    # Lcom/android/launcher2/SurfaceWidgetItem;

    .prologue
    .line 3559
    const-wide/16 v4, 0x0

    .line 3561
    .local v4, "start":J
    const-string v6, "Launcher.HomeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bindSurfaceWidget: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3565
    .local v3, "workspace":Lcom/android/launcher2/Workspace;
    invoke-virtual {p1}, Lcom/android/launcher2/SurfaceWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 3566
    .local v0, "cn":Landroid/content/ComponentName;
    sget-object v2, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    .line 3567
    .local v2, "packageManager":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    invoke-virtual {p1}, Lcom/android/launcher2/SurfaceWidgetItem;->getThemName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v1

    .line 3568
    .local v1, "info":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    if-nez v1, :cond_1

    .line 3569
    const-string v6, "Launcher.HomeView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find Surface widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    :cond_0
    :goto_0
    return-void

    .line 3573
    :cond_1
    const-string v6, "SurfaceWidgetFlow"

    const-string v7, "making surface widget for rebinding"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1, v6, v1, v7, v8}, Lcom/android/launcher2/SurfaceWidgetItem;->makeSurfaceWidget(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;Lcom/android/launcher2/SurfaceWidgetView;Z)V

    .line 3577
    iget-object v6, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v6, :cond_0

    .line 3579
    invoke-virtual {v3, p1}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    .line 3581
    iget v6, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mScreen:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 3582
    invoke-virtual {p1}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    goto :goto_0
.end method

.method public bindWidgetsAfterConfigChange()V
    .locals 1

    .prologue
    .line 3592
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 3593
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->changeOrientationExtras()V

    .line 3594
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->bindWidgetsAfterConfigChange()V

    .line 3596
    :cond_0
    return-void
.end method

.method public cancelClicksOnHome()V
    .locals 4

    .prologue
    .line 4827
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->cancelClicksOnChildrenForCurrentPage()V

    .line 4828
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v3, :cond_0

    .line 4829
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 4830
    .local v1, "clChildren":Lcom/android/launcher2/CellLayoutChildren;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4831
    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4832
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 4830
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4835
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "clChildren":Lcom/android/launcher2/CellLayoutChildren;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method cancelRemovePage()V
    .locals 1

    .prologue
    .line 4109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mIsDeletePopup:Z

    .line 4110
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    .line 4111
    return-void
.end method

.method public closeHomeScreenOptions()V
    .locals 1

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isVisibleHomeOptionMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->exitHomeOptionMenu()V

    .line 772
    :cond_0
    return-void
.end method

.method public closeQuickViewWorkspace(Z)V
    .locals 1
    .param p1, "immediate"    # Z

    .prologue
    .line 3949
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(ZZ)V

    .line 3950
    return-void
.end method

.method public closeQuickViewWorkspace(ZZ)V
    .locals 9
    .param p1, "immediate"    # Z
    .param p2, "bResetAlpha"    # Z

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 3953
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4031
    :cond_0
    return-void

    .line 3955
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v5, p2}, Lcom/android/launcher2/QuickViewWorkspace;->close(Z)V

    .line 3956
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v8}, Lcom/android/launcher2/Workspace;->setHideItems(Z)V

    .line 3957
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v6, Lcom/android/launcher2/HomeView$24;

    invoke-direct {v6, p0, p1}, Lcom/android/launcher2/HomeView$24;-><init>(Lcom/android/launcher2/HomeView;Z)V

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 4005
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v5, :cond_2

    .line 4006
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    sget-object v6, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8, v6}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4007
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    .line 4008
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v5}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4010
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v5, v8}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 4013
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v6

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher2/Workspace;->setPageVisibility(II)V

    .line 4014
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v8}, Lcom/android/launcher2/Workspace;->updateIndicatorWidth(Z)V

    .line 4015
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v8}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    .line 4016
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->updateVisiblePages()I

    .line 4017
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    .line 4019
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 4020
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v5

    if-ne v2, v5, :cond_4

    .line 4019
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4021
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 4022
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 4023
    .local v1, "clChildren":Lcom/android/launcher2/CellLayoutChildren;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 4024
    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4025
    .local v4, "v":Landroid/view/View;
    instance-of v5, v4, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v5, :cond_5

    move-object v5, v4

    .line 4026
    check-cast v5, Lcom/android/launcher2/SurfaceWidgetView;

    const/4 v6, 0x4

    invoke-virtual {v5, v4, v6}, Lcom/android/launcher2/SurfaceWidgetView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 4023
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method closeSystemDialogs(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "isHomeKeyPressed"    # Ljava/lang/Boolean;

    .prologue
    .line 2022
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 2023
    .local v0, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->closeAllPanels()V

    .line 2025
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 2030
    .local v1, "manager":Landroid/app/FragmentManager;
    invoke-static {v1}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    .line 2031
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2032
    invoke-static {v1}, Lcom/android/launcher2/HomeScreenDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    .line 2035
    :cond_0
    sget-boolean v2, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->isHomeScreenWallpaperDialogVisible:Z

    if-eqz v2, :cond_1

    .line 2036
    invoke-static {v1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    .line 2039
    :cond_1
    invoke-static {v1}, Lcom/android/launcher2/DeleteWorkscreenDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    .line 2042
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    .line 2043
    return-void
.end method

.method public collectExitAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4140
    .local p1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f050005

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 4141
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 4142
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4143
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4145
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->setPivotX(F)V

    .line 4146
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->setPivotY(F)V

    .line 4147
    return-void
.end method

.method public collectShowAllAppsAnimators(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4129
    .local p1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f050008

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 4130
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 4131
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4132
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4134
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->setPivotX(F)V

    .line 4135
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->setPivotY(F)V

    .line 4136
    return-void
.end method

.method completeAddFolderWithShortcutItem(Lcom/android/launcher2/HomeShortcutItem;Ljava/lang/String;JZZ)V
    .locals 29
    .param p1, "folderItem"    # Lcom/android/launcher2/HomeShortcutItem;
    .param p2, "folderTitle"    # Ljava/lang/String;
    .param p3, "destinationContainerId"    # J
    .param p5, "removeItem"    # Z
    .param p6, "findNewPosition"    # Z

    .prologue
    .line 1334
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 1335
    .local v4, "activity":Landroid/app/Activity;
    if-eqz p1, :cond_0

    if-nez p6, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    .line 1337
    :cond_0
    new-instance v5, Lcom/android/launcher2/HomeView$DropPos;

    invoke-direct {v5}, Lcom/android/launcher2/HomeView$DropPos;-><init>()V

    .line 1338
    .local v5, "dropPos":Lcom/android/launcher2/HomeView$DropPos;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/launcher2/HomeView;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1339
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/HomeView;->showNoRoomAnyPageMessage(Landroid/content/Context;)V

    .line 1445
    .end local v5    # "dropPos":Lcom/android/launcher2/HomeView$DropPos;
    :cond_1
    :goto_0
    return-void

    .line 1342
    .restart local v5    # "dropPos":Lcom/android/launcher2/HomeView$DropPos;
    :cond_2
    const-wide/16 p3, -0x64

    .line 1343
    iget v10, v5, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    .line 1344
    .local v10, "screen":I
    iget v11, v5, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    .line 1345
    .local v11, "cellX":I
    iget v12, v5, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    .line 1353
    .end local v5    # "dropPos":Lcom/android/launcher2/HomeView$DropPos;
    .local v12, "cellY":I
    :goto_1
    const-wide/16 v2, -0x65

    cmp-long v2, p3, v2

    if-nez v2, :cond_a

    .line 1354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v23

    .line 1360
    .local v23, "destinationPage":Lcom/android/launcher2/CellLayout;
    :goto_2
    const/16 v25, 0x0

    .line 1361
    .local v25, "rc":Z
    if-eqz v23, :cond_7

    .line 1363
    new-instance v7, Lcom/android/launcher2/HomeFolderItem;

    invoke-direct {v7}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    .line 1365
    .local v7, "newFolder":Lcom/android/launcher2/HomeFolderItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v7, Lcom/android/launcher2/HomeFolderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1366
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/launcher2/HomeFolderItem;->viewForThisHasSeenLightOfDayBefore:Z

    .line 1371
    const/4 v13, 0x0

    move-object v6, v4

    move-wide/from16 v8, p3

    invoke-static/range {v6 .. v13}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 1373
    move-object/from16 v0, p2

    invoke-virtual {v7, v4, v0}, Lcom/android/launcher2/HomeFolderItem;->setTitle(Landroid/content/Context;Ljava/lang/String;)V

    .line 1374
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/HomeView;->mCreateFolderColor:I

    invoke-virtual {v7, v2}, Lcom/android/launcher2/HomeFolderItem;->setFolderColor(I)V

    .line 1375
    if-eqz p1, :cond_5

    .line 1376
    if-eqz p5, :cond_4

    .line 1378
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v2, v2, v8

    if-nez v2, :cond_b

    .line 1379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v27

    .line 1393
    .local v27, "sourcePage":Lcom/android/launcher2/CellLayout;
    :cond_3
    :goto_3
    if-eqz v27, :cond_4

    .line 1394
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 1398
    .end local v27    # "sourcePage":Lcom/android/launcher2/CellLayout;
    :cond_4
    iget-wide v2, v7, Lcom/android/launcher2/HomeFolderItem;->mId:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/HomeView;->setDestinationNewFolderId(J)V

    .line 1400
    iget-wide v0, v7, Lcom/android/launcher2/HomeFolderItem;->mId:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    move/from16 v22, v0

    move-object v14, v4

    move-object/from16 v15, p1

    invoke-static/range {v14 .. v22}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    .line 1401
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 1404
    :cond_5
    const-wide/16 v2, -0x64

    cmp-long v2, p3, v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v10, v2, :cond_6

    .line 1405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v10}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1407
    :cond_6
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 1408
    const/16 v25, 0x1

    .line 1411
    const-wide/16 v2, -0x64

    cmp-long v2, p3, v2

    if-nez v2, :cond_7

    .line 1412
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mPositioner:Lcom/android/launcher2/CellPositioner;

    new-instance v3, Lcom/android/launcher2/PositionDelta;

    invoke-direct {v3, v7}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/BaseItem;)V

    invoke-interface {v2, v3}, Lcom/android/launcher2/CellPositioner;->addDelta(Lcom/android/launcher2/PositionDelta;)V

    .line 1415
    .end local v7    # "newFolder":Lcom/android/launcher2/HomeFolderItem;
    :cond_7
    if-nez v25, :cond_8

    .line 1416
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage()V

    .line 1420
    :cond_8
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_e

    .line 1421
    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "create_folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1422
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 1423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1000ac

    const/4 v6, 0x1

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1424
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/HomeView;->mIsAllAppsButtonDisable:Z

    .line 1425
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    .line 1426
    new-instance v24, Landroid/os/Handler;

    invoke-direct/range {v24 .. v24}, Landroid/os/Handler;-><init>()V

    .line 1427
    .local v24, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/launcher2/HomeView$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher2/HomeView$8;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v8, 0x384

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1347
    .end local v10    # "screen":I
    .end local v11    # "cellX":I
    .end local v12    # "cellY":I
    .end local v23    # "destinationPage":Lcom/android/launcher2/CellLayout;
    .end local v24    # "handler":Landroid/os/Handler;
    .end local v25    # "rc":Z
    :cond_9
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    move-wide/from16 p3, v0

    .line 1348
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    .line 1349
    .restart local v10    # "screen":I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    .line 1350
    .restart local v11    # "cellX":I
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    .restart local v12    # "cellY":I
    goto/16 :goto_1

    .line 1357
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v10}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/CellLayout;

    .restart local v23    # "destinationPage":Lcom/android/launcher2/CellLayout;
    goto/16 :goto_2

    .line 1380
    .restart local v7    # "newFolder":Lcom/android/launcher2/HomeFolderItem;
    .restart local v25    # "rc":Z
    :cond_b
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    const-wide/16 v8, -0x64

    cmp-long v2, v2, v8

    if-nez v2, :cond_c

    .line 1381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v10}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/android/launcher2/CellLayout;

    .restart local v27    # "sourcePage":Lcom/android/launcher2/CellLayout;
    goto/16 :goto_3

    .line 1385
    .end local v27    # "sourcePage":Lcom/android/launcher2/CellLayout;
    :cond_c
    const/16 v27, 0x0

    .line 1386
    .restart local v27    # "sourcePage":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    invoke-static {v2, v3}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v26

    .line 1387
    .local v26, "sourceFolder":Lcom/android/launcher2/HomeFolderItem;
    if-eqz v26, :cond_d

    .line 1388
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    goto/16 :goto_3

    .line 1390
    :cond_d
    sget-boolean v2, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v2, :cond_3

    const-string v2, "Launcher.HomeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "completeAddFolderWithShortcutItem. removeItem is true but container "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is unknown"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1437
    .end local v7    # "newFolder":Lcom/android/launcher2/HomeFolderItem;
    .end local v26    # "sourceFolder":Lcom/android/launcher2/HomeFolderItem;
    .end local v27    # "sourcePage":Lcom/android/launcher2/CellLayout;
    :cond_e
    new-instance v24, Landroid/os/Handler;

    invoke-direct/range {v24 .. v24}, Landroid/os/Handler;-><init>()V

    .line 1438
    .restart local v24    # "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/launcher2/HomeView$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher2/HomeView$9;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v8, 0x12c

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public completeAddShortcut(Lcom/android/launcher2/HomeShortcutItem;JIII)V
    .locals 38
    .param p1, "info"    # Lcom/android/launcher2/HomeShortcutItem;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I

    .prologue
    .line 1588
    const-wide/16 v6, 0x0

    cmp-long v4, p2, v6

    if-gez v4, :cond_12

    .line 1589
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HomeView;->mTmpAddItemCellCoordinates:[I

    .line 1590
    .local v14, "cellXY":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v0, v4, Lcom/android/launcher2/HomeItem;->dropPos:[I

    move-object/from16 v36, v0

    .line 1595
    .local v36, "touchXY":[I
    move/from16 v8, p4

    .line 1596
    .local v8, "realScreen":I
    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/launcher2/HomeShortcutItem;->mSecretItem:Z

    if-nez v4, :cond_0

    .line 1597
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v4

    add-int/2addr v8, v4

    .line 1599
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    .local v5, "layout":Lcom/android/launcher2/CellLayout;
    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    move-object/from16 v9, p1

    .line 1600
    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/HomeView;->reAddCreatedPageForDragIfNeeded(Lcom/android/launcher2/CellLayout;JILcom/android/launcher2/HomeItem;)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    .line 1602
    const/16 v29, 0x0

    .line 1604
    .local v29, "foundCellSpan":Z
    if-eqz v5, :cond_5

    .line 1606
    if-ltz p5, :cond_3

    if-ltz p6, :cond_3

    .line 1607
    const/4 v4, 0x0

    aput p5, v14, v4

    .line 1608
    const/4 v4, 0x1

    aput p6, v14, v4

    .line 1609
    const/16 v29, 0x1

    .line 1620
    :cond_1
    :goto_0
    if-nez v29, :cond_8

    .line 1621
    const-wide/16 v6, -0x64

    cmp-long v4, p2, v6

    if-eqz v4, :cond_6

    .line 1705
    .end local v5    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v8    # "realScreen":I
    .end local v14    # "cellXY":[I
    .end local v29    # "foundCellSpan":Z
    .end local v36    # "touchXY":[I
    :cond_2
    :goto_1
    return-void

    .line 1610
    .restart local v5    # "layout":Lcom/android/launcher2/CellLayout;
    .restart local v8    # "realScreen":I
    .restart local v14    # "cellXY":[I
    .restart local v29    # "foundCellSpan":Z
    .restart local v36    # "touchXY":[I
    :cond_3
    if-eqz v36, :cond_1

    .line 1614
    const/4 v4, 0x0

    aget v10, v36, v4

    const/4 v4, 0x1

    aget v11, v36, v4

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v9, v5

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v33

    .line 1615
    .local v33, "result":[I
    if-eqz v33, :cond_4

    const/16 v29, 0x1

    .line 1616
    :goto_2
    goto :goto_0

    .line 1615
    :cond_4
    const/16 v29, 0x0

    goto :goto_2

    .line 1618
    .end local v33    # "result":[I
    :cond_5
    const/16 p4, -0x1

    goto :goto_0

    .line 1624
    :cond_6
    new-instance v17, Lcom/android/launcher2/HomeView$DropPos;

    invoke-direct/range {v17 .. v17}, Lcom/android/launcher2/HomeView$DropPos;-><init>()V

    .line 1625
    .local v17, "dropPos":Lcom/android/launcher2/HomeView$DropPos;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v15, p4

    invoke-static/range {v14 .. v20}, Lcom/android/launcher2/HomeView;->findEmptySpanOnHomeScreen([IILandroid/content/Context;Lcom/android/launcher2/HomeView$DropPos;IIZ)Z

    move-result v29

    .line 1626
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    move/from16 p4, v0

    .line 1627
    const/4 v4, 0x0

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    aput v6, v14, v4

    .line 1628
    const/4 v4, 0x1

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    aput v6, v14, v4

    .line 1629
    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    if-nez v4, :cond_7

    .line 1630
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/HomeView;->showNoRoomAnyPageMessage(Landroid/content/Context;)V

    .line 1632
    :cond_7
    if-eqz v29, :cond_2

    .line 1636
    .end local v17    # "dropPos":Lcom/android/launcher2/HomeView$DropPos;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const/4 v4, 0x0

    aget v23, v14, v4

    const/4 v4, 0x1

    aget v24, v14, v4

    const/16 v25, 0x0

    move-object/from16 v19, p1

    move-wide/from16 v20, p2

    move/from16 v22, p4

    invoke-static/range {v18 .. v25}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 1637
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    if-nez v4, :cond_9

    .line 1638
    const-wide/16 v6, -0x65

    cmp-long v4, p2, v6

    if-nez v4, :cond_a

    .line 1639
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v0, v4, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    move-object/from16 v19, v0

    const/4 v4, 0x0

    aget v21, v14, v4

    const/4 v4, 0x1

    aget v22, v14, v4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    move/from16 v24, v0

    move-object/from16 v20, p1

    move/from16 v25, p4

    move-wide/from16 v26, p2

    invoke-virtual/range {v19 .. v27}, Lcom/android/launcher2/CellLayoutHotseat;->setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V

    .line 1640
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Hotseat;->addItem(Lcom/android/launcher2/HomeItem;)Z

    .line 1691
    :cond_9
    :goto_3
    if-eqz v5, :cond_2

    .line 1692
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->commitDeltas()V

    goto/16 :goto_1

    .line 1642
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Lcom/android/launcher2/CellLayout;

    .line 1644
    .local v32, "page":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    move/from16 v0, p4

    if-eq v0, v4, :cond_10

    .line 1646
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v4, v4, Lcom/android/launcher2/Workspace;->mDefaultTransitionEffect:Lcom/android/launcher2/PagedView$TransitionEffect;

    sget-object v6, Lcom/android/launcher2/PagedView$TransitionEffect;->CARD:Lcom/android/launcher2/PagedView$TransitionEffect;

    if-ne v4, v6, :cond_f

    .line 1647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/launcher2/Workspace;->setContentIsRefreshable(Z)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1649
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    .line 1658
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x0

    move/from16 v0, p4

    invoke-virtual {v4, v0, v6}, Lcom/android/launcher2/Workspace;->invalidatePageData(IZ)V

    .line 1659
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v35

    .line 1661
    .local v35, "totalpagecount":I
    const/4 v4, 0x3

    move/from16 v0, v35

    if-le v0, v4, :cond_e

    .line 1662
    const/16 v34, 0x0

    .line 1663
    .local v34, "startindex":I
    move/from16 v28, v35

    .line 1664
    .local v28, "endindex":I
    add-int/lit8 v4, v35, -0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_b

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-nez v4, :cond_b

    .line 1665
    const/16 v34, 0x1

    .line 1667
    :cond_b
    move/from16 v30, v34

    .local v30, "i":I
    :goto_4
    add-int/lit8 v4, p4, -0x1

    move/from16 v0, v30

    if-ge v0, v4, :cond_c

    .line 1668
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x0

    move/from16 v0, v30

    invoke-virtual {v4, v0, v6}, Lcom/android/launcher2/Workspace;->syncPageItems(IZ)V

    .line 1667
    add-int/lit8 v30, v30, 0x1

    goto :goto_4

    .line 1670
    :cond_c
    if-nez p4, :cond_d

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-nez v4, :cond_d

    .line 1671
    add-int/lit8 v28, v35, -0x1

    .line 1673
    :cond_d
    add-int/lit8 v30, p4, 0x2

    :goto_5
    move/from16 v0, v30

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    .line 1674
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x0

    move/from16 v0, v30

    invoke-virtual {v4, v0, v6}, Lcom/android/launcher2/Workspace;->syncPageItems(IZ)V

    .line 1673
    add-int/lit8 v30, v30, 0x1

    goto :goto_5

    .line 1677
    .end local v28    # "endindex":I
    .end local v30    # "i":I
    .end local v34    # "startindex":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/launcher2/Workspace;->setContentIsRefreshable(Z)V

    .line 1685
    .end local v35    # "totalpagecount":I
    :goto_6
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_11

    const/16 v37, 0x1

    .line 1686
    .local v37, "wasPageEmpty":Z
    :goto_7
    if-eqz v37, :cond_9

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_9

    .line 1687
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->turnOffEmptyPageMsg()V

    goto/16 :goto_3

    .line 1679
    .end local v37    # "wasPageEmpty":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1680
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto :goto_6

    .line 1683
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->addItem(Lcom/android/launcher2/HomeItem;)V

    goto :goto_6

    .line 1685
    :cond_11
    const/16 v37, 0x0

    goto :goto_7

    .line 1697
    .end local v5    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v8    # "realScreen":I
    .end local v14    # "cellXY":[I
    .end local v29    # "foundCellSpan":Z
    .end local v32    # "page":Lcom/android/launcher2/CellLayout;
    .end local v36    # "touchXY":[I
    :cond_12
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v31

    .line 1698
    .local v31, "item":Lcom/android/launcher2/BaseItem;
    if-eqz v31, :cond_2

    move-object/from16 v0, v31

    instance-of v4, v0, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v4, :cond_2

    .line 1699
    check-cast v31, Lcom/android/launcher2/HomeFolderItem;

    .end local v31    # "item":Lcom/android/launcher2/BaseItem;
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 1700
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const/16 v25, 0x0

    move-object/from16 v19, p1

    move-wide/from16 v20, p2

    move/from16 v22, p4

    move/from16 v23, p5

    move/from16 v24, p5

    invoke-static/range {v18 .. v25}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    goto/16 :goto_1
.end method

.method createFolder(Lcom/android/launcher2/HomeFolderItem;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/HomeFolderItem;
    .param p2, "layoutResId"    # I
    .param p3, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 1262
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v1}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher2/HomeFolderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1263
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .line 1264
    .local v0, "folder":Lcom/android/launcher2/FolderIconView;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    .line 1265
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1266
    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 1267
    return-object v0
.end method

.method createShortcut(Lcom/android/launcher2/HomeShortcutItem;I)Landroid/view/View;
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/HomeShortcutItem;
    .param p2, "layoutResId"    # I

    .prologue
    .line 1278
    invoke-static {p1}, Lcom/android/launcher2/AppIconView;->getHomeIconLayout(Lcom/android/launcher2/BaseItem;)I

    move-result v0

    .line 1279
    .local v0, "layout":I
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/HomeView;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method createShortcut(Lcom/android/launcher2/HomeShortcutItem;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "info"    # Lcom/android/launcher2/HomeShortcutItem;
    .param p2, "layoutResId"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1293
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, p2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppIconView;

    .line 1294
    .local v0, "favorite":Lcom/android/launcher2/AppIconView;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    .line 1295
    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1296
    iget v3, p1, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    if-lez v3, :cond_0

    .line 1297
    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->showBadge()V

    .line 1299
    :cond_0
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-boolean v3, v3, Lcom/android/launcher2/Workspace;->mIsHelpOrientationChanged:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    if-nez v3, :cond_2

    .line 1300
    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "addapps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1301
    sput-boolean v6, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 1302
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1000ac

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1303
    sput-boolean v6, Lcom/android/launcher2/HomeView;->mIsAllAppsButtonDisable:Z

    .line 1304
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1305
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/android/launcher2/HomeView$7;

    invoke-direct {v3, p0}, Lcom/android/launcher2/HomeView$7;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1315
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_1
    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "add_widgets"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1316
    const/4 v2, 0x0

    .line 1317
    .local v2, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v2, Lcom/android/launcher2/guide/AddWidgetsGuider;

    .end local v2    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    .line 1318
    .restart local v2    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v2, Lcom/android/launcher2/guide/AddWidgetsGuider;

    .end local v2    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v2}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissShowHelpDialog_step3()V

    .line 1323
    :cond_2
    return-object v0
.end method

.method public deletePage(I)V
    .locals 19
    .param p1, "page"    # I

    .prologue
    .line 4447
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 4448
    .local v2, "cell":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v9

    .line 4449
    .local v9, "layout":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    const/4 v6, 0x1

    .line 4450
    .local v6, "isSecret":Z
    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    const/4 v5, 0x1

    .line 4455
    .local v5, "isFestival":Z
    :goto_1
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v15

    add-int/lit8 v4, v15, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_5

    .line 4456
    invoke-virtual {v9, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 4458
    .local v12, "view":Landroid/view/View;
    instance-of v15, v12, Lcom/android/launcher2/Folder;

    if-eqz v15, :cond_2

    .line 4455
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 4449
    .end local v4    # "i":I
    .end local v5    # "isFestival":Z
    .end local v6    # "isSecret":Z
    .end local v12    # "view":Landroid/view/View;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 4450
    .restart local v6    # "isSecret":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 4466
    .restart local v4    # "i":I
    .restart local v5    # "isFestival":Z
    .restart local v12    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/HomeItem;

    .line 4468
    .local v7, "item":Lcom/android/launcher2/HomeItem;
    instance-of v15, v7, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v15, :cond_4

    move-object v13, v7

    .line 4469
    check-cast v13, Lcom/android/launcher2/HomeWidgetItem;

    .line 4470
    .local v13, "widgetItem":Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 4471
    .local v1, "appWidgetHost":Lcom/android/launcher2/LauncherAppWidgetHost;
    if-eqz v1, :cond_3

    .line 4472
    iget v15, v13, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v1, v15}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 4479
    .end local v1    # "appWidgetHost":Lcom/android/launcher2/LauncherAppWidgetHost;
    .end local v13    # "widgetItem":Lcom/android/launcher2/HomeWidgetItem;
    :cond_3
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15, v7}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_3

    .line 4474
    :cond_4
    instance-of v15, v7, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v15, :cond_3

    .line 4475
    const-string v15, "SurfaceWidgetFlow"

    const-string v16, "destroying surface widget with delete page"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v7

    .line 4476
    check-cast v15, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v16

    sget-object v17, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    const/16 v18, 0x1

    invoke-virtual/range {v15 .. v18}, Lcom/android/launcher2/SurfaceWidgetItem;->destroyWidget(Landroid/content/Context;Lcom/android/launcher2/SurfaceWidgetPackageManager;Z)V

    goto :goto_4

    .line 4483
    .end local v7    # "item":Lcom/android/launcher2/HomeItem;
    .end local v12    # "view":Landroid/view/View;
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 4484
    .local v10, "toSave":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v15}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v3

    .line 4486
    .local v3, "count":I
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_7

    .line 4487
    move/from16 v0, p1

    if-gt v4, v0, :cond_6

    .line 4486
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 4491
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v15, v4}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    .line 4492
    .local v8, "l":Lcom/android/launcher2/CellLayoutChildren;
    add-int/lit8 v15, v4, -0x1

    invoke-virtual {v8, v15, v10}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    goto :goto_6

    .line 4494
    .end local v8    # "l":Lcom/android/launcher2/CellLayoutChildren;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15, v10}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 4496
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 4497
    .local v11, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v15, v11}, Lcom/android/launcher2/Workspace;->removeView(Landroid/view/View;)V

    .line 4498
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v15}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v15

    move/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/launcher2/WorkspacePages;->deletePageAt(ILandroid/content/Context;)Z

    .line 4500
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v15}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v14

    .line 4501
    .local v14, "workScreenCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v15}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v15

    if-gt v14, v15, :cond_8

    .line 4502
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    add-int/lit8 v16, v14, -0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 4505
    :cond_8
    if-eqz v6, :cond_9

    .line 4506
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->saveSecretScreenInfo()V

    .line 4511
    :goto_7
    return-void

    .line 4507
    :cond_9
    if-eqz v5, :cond_a

    .line 4508
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->saveFestivalScreenInfo()V

    goto :goto_7

    .line 4510
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    goto :goto_7
.end method

.method public deleteWidgetFestivalPage(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4652
    .local p1, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeWidgetItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeWidgetItem;

    .line 4653
    .local v1, "widgetItem":Lcom/android/launcher2/HomeWidgetItem;
    iget v2, v1, Lcom/android/launcher2/HomeWidgetItem;->mFestivalType:I

    if-lez v2, :cond_0

    .line 4654
    const-string v2, "Launcher.HomeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteWidgetIFestivalPage appWidgetId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4655
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    if-eqz v2, :cond_0

    .line 4656
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    iget v3, v1, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 4657
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_0

    .line 4661
    .end local v1    # "widgetItem":Lcom/android/launcher2/HomeWidgetItem;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->saveFestivalScreenInfo()V

    .line 4662
    return-void
.end method

.method public determineEmptyPageMsgVisibility(I)Z
    .locals 3
    .param p1, "pageIndex"    # I

    .prologue
    .line 4814
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v0

    .line 4817
    .local v0, "allowEmptyMessage":Z
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/launcher2/WorkspacePages;->pageHasAlwaysBeenEmpty(ILandroid/content/Context;)Z

    move-result v1

    .line 4819
    .local v1, "isPageEmpty":Z
    and-int/2addr v0, v1

    .line 4820
    return v0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5354
    invoke-static {p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 5365
    :goto_0
    return v1

    .line 5355
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    move-object v0, v1

    .line 5358
    .local v0, "dragState":Lcom/android/launcher2/DragState;
    :goto_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 5359
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    .line 5360
    sput-boolean v3, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    .line 5365
    :cond_1
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    goto :goto_0

    .line 5355
    .end local v0    # "dragState":Lcom/android/launcher2/DragState;
    :cond_2
    sget-object v0, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    .line 5361
    .restart local v0    # "dragState":Lcom/android/launcher2/DragState;
    :cond_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 5362
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    .line 5363
    sput-boolean v2, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    goto :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5216
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 4190
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4191
    const-string v1, "Debug logs: "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4195
    :cond_0
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 4175
    sget-boolean v0, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 4176
    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BEGIN launcher2 dump state for launcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4177
    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSavedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mSavedState:Lcom/android/launcher2/HomeView$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4179
    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRestoring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4180
    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4181
    const-string v0, "Launcher.HomeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sFolders.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4182
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->dumpState()V

    .line 4184
    const-string v0, "Launcher.HomeView"

    const-string v1, "END launcher2 dump state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4186
    :cond_0
    return-void
.end method

.method public exitHomeOptionMenu()V
    .locals 1

    .prologue
    .line 5500
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->setVisibilityHomeOptionMenu(I)V

    .line 5501
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->setVisibilityHotseat(I)V

    .line 5502
    return-void
.end method

.method public findItemById(J)Lcom/android/launcher2/HomeItem;
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 4787
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 4788
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 4789
    .local v2, "page":Lcom/android/launcher2/CellLayoutChildren;
    iget-object v4, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    .line 4790
    .local v3, "pageItem":Lcom/android/launcher2/BaseItem;
    iget-wide v4, v3, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 4791
    check-cast v3, Lcom/android/launcher2/HomeItem;

    .line 4801
    .end local v2    # "page":Lcom/android/launcher2/CellLayoutChildren;
    .end local v3    # "pageItem":Lcom/android/launcher2/BaseItem;
    :goto_1
    return-object v3

    .line 4787
    .restart local v2    # "page":Lcom/android/launcher2/CellLayoutChildren;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4796
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "page":Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    .line 4797
    .restart local v3    # "pageItem":Lcom/android/launcher2/BaseItem;
    iget-wide v4, v3, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    .line 4798
    check-cast v3, Lcom/android/launcher2/HomeItem;

    goto :goto_1

    .line 4801
    .end local v3    # "pageItem":Lcom/android/launcher2/BaseItem;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public finishBindingItems()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3605
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v6, :cond_1

    .line 3647
    :cond_0
    :goto_0
    return-void

    .line 3609
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mSavedState:Lcom/android/launcher2/HomeView$SavedState;

    if-eqz v6, :cond_3

    .line 3610
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->isShown()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v6

    if-nez v6, :cond_2

    .line 3611
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3612
    .local v1, "currentPage":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 3613
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 3616
    .end local v1    # "currentPage":Landroid/view/View;
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/HomeView;->mSavedState:Lcom/android/launcher2/HomeView$SavedState;

    .line 3619
    :cond_3
    iput-boolean v8, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    .line 3623
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget-object v6, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 3624
    sget-object v6, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/HomeView$PendingAddArguments;

    invoke-direct {p0, v6}, Lcom/android/launcher2/HomeView;->completeAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;)Z

    .line 3623
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3626
    :cond_4
    sget-object v6, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3628
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v6}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3629
    iget-object v6, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v6}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 3631
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->addAnyPendingWidgetsToWorkspace()V

    .line 3634
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "skt_phone20_settings"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 3635
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 3636
    .local v0, "app":Lcom/android/launcher2/LauncherApplication;
    const-string v6, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v0, v6, v8}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3637
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "PrefsIsCSCLoad"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 3639
    .local v4, "isCscLoad":Z
    if-eqz v4, :cond_0

    .line 3640
    const-string v6, "ChangeTphoneMode"

    const-string v7, "T phone and isCscLoad = true"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->ChangeTphoneMode()V

    .line 3642
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3643
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "PrefsIsCSCLoad"

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3644
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 5076
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method getAllAppsIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 3000
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    return-object v0
.end method

.method getCellLayout(JI)Lcom/android/launcher2/CellLayout;
    .locals 3
    .param p1, "container"    # J
    .param p3, "screen"    # I

    .prologue
    .line 3022
    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 3023
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 3024
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 3029
    :goto_0
    return-object v0

    .line 3026
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3029
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    goto :goto_0
.end method

.method public getCreateFolderColor(I)V
    .locals 0
    .param p1, "createFolderColor"    # I

    .prologue
    .line 4694
    iput p1, p0, Lcom/android/launcher2/HomeView;->mCreateFolderColor:I

    .line 4695
    return-void
.end method

.method public getCurrentDragItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    .prologue
    .line 4682
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 4228
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 4229
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    .line 4231
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentResizeWidgetItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    .prologue
    .line 4674
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mCurrentResizeWidgetItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method public getDarkenView()Landroid/view/View;
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f0090

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    return-object v0
.end method

.method public getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;
    .locals 1

    .prologue
    .line 4349
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDeleteDropLayout:Lcom/android/launcher2/QuickViewDragBar;

    return-object v0
.end method

.method getEditBar()Lcom/android/launcher2/HomeEditBar;
    .locals 1

    .prologue
    .line 2949
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    return-object v0
.end method

.method public getGoogleSearchView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2953
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mGoogleSearchView:Landroid/view/View;

    return-object v0
.end method

.method getHomeAppsBtn()Landroid/view/View;
    .locals 1

    .prologue
    .line 2973
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    return-object v0
.end method

.method public getHomeBottomBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 5505
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    return-object v0
.end method

.method getHomeContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 3011
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    return-object v0
.end method

.method getHomeDarkenLayer()Landroid/view/View;
    .locals 1

    .prologue
    .line 3008
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    return-object v0
.end method

.method getHomeEditBtn()Landroid/view/View;
    .locals 1

    .prologue
    .line 2965
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    return-object v0
.end method

.method getHomeEditTitleBar()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeEditTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method getHomePhoneBtn()Landroid/view/View;
    .locals 1

    .prologue
    .line 2969
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    return-object v0
.end method

.method public getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;
    .locals 1

    .prologue
    .line 4353
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

    if-nez v0, :cond_0

    .line 4354
    const v0, 0x7f0f00d6

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeScreenOptionMenu;

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

    .line 4355
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeScreenOptionMenu:Lcom/android/launcher2/HomeScreenOptionMenu;

    return-object v0
.end method

.method getHotseat()Lcom/android/launcher2/Hotseat;
    .locals 1

    .prologue
    .line 2960
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    return-object v0
.end method

.method public getHotseatItemcount()I
    .locals 1

    .prologue
    .line 5019
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 5020
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    iget-object v0, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 5021
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLauncherModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 4666
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public getModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public getNumFestivalPages()I
    .locals 1

    .prologue
    .line 4261
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v0

    return v0
.end method

.method public getNumPages()I
    .locals 1

    .prologue
    .line 4251
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getNumSecretPages()I
    .locals 1

    .prologue
    .line 4256
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPage(I)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getPage(I)Lcom/android/launcher2/CellLayout;
    .locals 1
    .param p1, "pageNum"    # I

    .prologue
    .line 4246
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 4373
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v0, :cond_0

    .line 4374
    const/4 v0, 0x0

    .line 4377
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPageHorizontalOffset()I
    .locals 4

    .prologue
    .line 4312
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v1

    .line 4313
    .local v1, "w":I
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 4314
    .local v0, "s":I
    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getPageSpacing()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method public getPagesLocationOnScreen([I)V
    .locals 1
    .param p1, "location"    # [I

    .prologue
    .line 4307
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    .line 4308
    return-void
.end method

.method public getPagesTop()I
    .locals 2

    .prologue
    .line 4319
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getPanelBackgroundAlpha()F
    .locals 1

    .prologue
    .line 5375
    iget v0, p0, Lcom/android/launcher2/HomeView;->mPanelBackgroundAlpha:F

    return v0
.end method

.method public getPkgResCache()Lcom/android/launcher2/PkgResCache;
    .locals 1

    .prologue
    .line 4783
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    return-object v0
.end method

.method getQuickLaunch()Lcom/android/launcher2/QuickLaunch;
    .locals 1

    .prologue
    .line 2977
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    return-object v0
.end method

.method getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;
    .locals 1

    .prologue
    .line 2981
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    return-object v0
.end method

.method getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;
    .locals 1

    .prologue
    .line 4034
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    return-object v0
.end method

.method getTopBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 3004
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    return-object v0
.end method

.method getWorkspace()Lcom/android/launcher2/Workspace;
    .locals 1

    .prologue
    .line 3034
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method public getWorkspaceLoading()Z
    .locals 1

    .prologue
    .line 4555
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    return v0
.end method

.method public goHomeOptionMenu()V
    .locals 1

    .prologue
    .line 5494
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->showWorkspaceEditmode(Z)V

    .line 5495
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->setVisibilityHomeOptionMenu(I)V

    .line 5496
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->setVisibilityHotseat(I)V

    .line 5497
    return-void
.end method

.method public handleResizeWidget()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 5435
    const/4 v1, 0x0

    .line 5436
    .local v1, "isHandled":Z
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    .line 5437
    .local v2, "workspace":Lcom/android/launcher2/Workspace;
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v4, :cond_1

    sget v3, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    sget-boolean v3, Lcom/android/launcher2/Workspace;->widgetSizeChanged:Z

    if-eqz v3, :cond_1

    .line 5439
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 5440
    const-string v3, "resize_widgets"

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5441
    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 5442
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1000c2

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 5443
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 5444
    .local v0, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/android/launcher2/HomeView$27;

    invoke-direct {v3, p0}, Lcom/android/launcher2/HomeView$27;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5458
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    const/4 v1, 0x1

    .line 5460
    :cond_1
    return v1
.end method

.method public helpHubSnapToLastPage()V
    .locals 2

    .prologue
    .line 5427
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 5428
    return-void
.end method

.method public hideHomeBottomBar()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 5517
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5518
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5519
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5520
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 5521
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 5522
    :cond_1
    return-void
.end method

.method hideHotseat(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3100
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 3101
    if-eqz p1, :cond_1

    .line 3102
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xaf

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 3107
    :cond_0
    :goto_0
    return-void

    .line 3104
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    goto :goto_0
.end method

.method public isDeleteWorkScreenPopup()Z
    .locals 1

    .prologue
    .line 4124
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mIsDeletePopup:Z

    return v0
.end method

.method public isFolderPage(I)Z
    .locals 1
    .param p1, "pageNum"    # I

    .prologue
    .line 4236
    const/4 v0, 0x0

    return v0
.end method

.method isHotseatLayout(Landroid/view/View;)Z
    .locals 1
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    .line 2944
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncludeItem(I)Z
    .locals 3
    .param p1, "page"    # I

    .prologue
    const/4 v2, 0x0

    .line 4367
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    .line 4368
    .local v0, "layout":Lcom/android/launcher2/CellLayoutChildren;
    if-nez v0, :cond_0

    .line 4369
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 5085
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisibleHomeOptionMenu()Z
    .locals 2

    .prologue
    .line 5486
    const v1, 0x7f0f00d6

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5487
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5488
    const/4 v1, 0x0

    .line 5490
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 2046
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public movePage(II)V
    .locals 8
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 4266
    if-ne p1, p2, :cond_0

    .line 4303
    :goto_0
    return-void

    .line 4268
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {p1, p2, v7}, Lcom/android/launcher2/WorkspacePages;->movePage(IILandroid/content/Context;)Z

    .line 4269
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    .line 4271
    .local v1, "homeIndex":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4272
    .local v6, "toSave":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 4274
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 4275
    if-ne v2, p1, :cond_2

    move v5, p2

    .line 4280
    .local v5, "newi":I
    :goto_2
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->removeChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 4282
    .local v3, "l":Lcom/android/launcher2/CellLayoutChildren;
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v5}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 4283
    .local v4, "layout":Lcom/android/launcher2/CellLayout;
    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Lcom/android/launcher2/CellLayout;->addChildrenLayout(Lcom/android/launcher2/CellLayoutChildren;I)V

    .line 4285
    invoke-virtual {v3, v5, v6}, Lcom/android/launcher2/CellLayoutChildren;->updateChildrenToNewPage(ILjava/util/List;)V

    .line 4287
    if-ltz v1, :cond_1

    if-ne v2, v1, :cond_1

    .line 4291
    invoke-virtual {p0, v5}, Lcom/android/launcher2/HomeView;->setHomeScreenAt(I)V

    .line 4292
    const/4 v1, -0x1

    .line 4274
    .end local v3    # "l":Lcom/android/launcher2/CellLayoutChildren;
    .end local v4    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v5    # "newi":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4276
    :cond_2
    if-le v2, p1, :cond_3

    if-gt v2, p2, :cond_3

    add-int/lit8 v5, v2, -0x1

    .restart local v5    # "newi":I
    goto :goto_2

    .line 4277
    .end local v5    # "newi":I
    :cond_3
    if-ge v2, p1, :cond_1

    if-lt v2, p2, :cond_1

    add-int/lit8 v5, v2, 0x1

    .restart local v5    # "newi":I
    goto :goto_2

    .line 4298
    .end local v5    # "newi":I
    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_5

    .line 4299
    iget-object v7, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->reset()V

    .line 4298
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4302
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 5026
    iput-boolean v9, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    .line 5034
    if-ne p2, v8, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v4, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 5035
    new-instance v2, Lcom/android/launcher2/HomeView$PendingAddArguments;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/launcher2/HomeView$PendingAddArguments;-><init>(Lcom/android/launcher2/HomeView$1;)V

    .line 5036
    .local v2, "args":Lcom/android/launcher2/HomeView$PendingAddArguments;
    iput p1, v2, Lcom/android/launcher2/HomeView$PendingAddArguments;->requestCode:I

    .line 5037
    iput-object p3, v2, Lcom/android/launcher2/HomeView$PendingAddArguments;->intent:Landroid/content/Intent;

    .line 5038
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    invoke-static {v2, v4}, Lcom/android/launcher2/HomeView;->copyHomeItemToPendingAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;Lcom/android/launcher2/HomeItem;)V

    .line 5040
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5041
    sget-object v4, Lcom/android/launcher2/HomeView;->sPendingAddList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5062
    .end local v2    # "args":Lcom/android/launcher2/HomeView$PendingAddArguments;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 5063
    .local v0, "app":Lcom/android/launcher2/LauncherApplication;
    const-string v4, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v0, v4, v9}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 5064
    .local v3, "prefs":Landroid/content/SharedPreferences$Editor;
    const-string v4, "tempScreen"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5065
    const-string v4, "tempCellX"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5066
    const-string v4, "tempCellY"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5067
    const-string v4, "tempSpanX"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5068
    const-string v4, "tempSpanY"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5069
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5071
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->addAnyPendingWidgetsToWorkspace()V

    .line 5072
    return-void

    .line 5043
    .end local v0    # "app":Lcom/android/launcher2/LauncherApplication;
    .end local v3    # "prefs":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "args":Lcom/android/launcher2/HomeView$PendingAddArguments;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/launcher2/HomeView;->completeAdd(Lcom/android/launcher2/HomeView$PendingAddArguments;)Z

    goto :goto_0

    .line 5045
    .end local v2    # "args":Lcom/android/launcher2/HomeView$PendingAddArguments;
    :cond_2
    const/16 v4, 0x9

    if-eq p1, v4, :cond_3

    const/4 v4, 0x5

    if-ne p1, v4, :cond_4

    :cond_3
    if-nez p2, :cond_4

    .line 5047
    if-eqz p3, :cond_0

    .line 5049
    const-string v4, "appWidgetId"

    invoke-virtual {p3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 5050
    .local v1, "appWidgetId":I
    if-eq v1, v8, :cond_0

    .line 5051
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v4, v1}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 5054
    .end local v1    # "appWidgetId":I
    :cond_4
    const/16 v4, 0xa

    if-ne p1, v4, :cond_0

    .line 5055
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 5056
    if-ne p2, v8, :cond_0

    .line 5057
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 4163
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 4155
    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/HomeView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4156
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 4157
    .local v0, "ws":Lcom/android/launcher2/Workspace;
    if-eqz v0, :cond_0

    .line 4158
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->onFadeEnd()V

    .line 4159
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 4167
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 4151
    const/4 v0, 0x2

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4152
    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 725
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    .line 735
    .local v1, "workspace":Lcom/android/launcher2/Workspace;
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    .line 738
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 739
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 741
    .local v0, "openFolder":Lcom/android/launcher2/Folder;
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 742
    invoke-virtual {v0, v3}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 759
    .end local v0    # "openFolder":Lcom/android/launcher2/Folder;
    :cond_0
    :goto_0
    return v3

    .line 744
    .restart local v0    # "openFolder":Lcom/android/launcher2/Folder;
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->closeFolder()V

    goto :goto_0

    .line 747
    .end local v0    # "openFolder":Lcom/android/launcher2/Folder;
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 750
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_0

    .line 751
    invoke-static {v4}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 752
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 753
    invoke-static {v4}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 754
    invoke-virtual {p0, v3}, Lcom/android/launcher2/HomeView;->showWorkspace(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 2543
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_2

    .line 2544
    instance-of v5, p1, Lcom/android/launcher2/CellLayout;

    if-nez v5, :cond_0

    .line 2545
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "v":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .line 2548
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    instance-of v5, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v5, :cond_2

    move-object v0, p1

    .line 2550
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2551
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_2

    .line 2553
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v2

    .line 2554
    .local v2, "parent":Lcom/android/launcher2/CellLayoutContainer;
    instance-of v5, v2, Lcom/android/launcher2/Hotseat;

    if-eqz v5, :cond_2

    .line 2603
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v2    # "parent":Lcom/android/launcher2/CellLayoutContainer;
    :cond_1
    :goto_0
    return-void

    .line 2564
    :cond_2
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_3

    .line 2565
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2571
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2575
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2579
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->cancelClicksOnHome()V

    .line 2580
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2581
    .local v4, "tag":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v5, :cond_4

    move-object v5, v4

    .line 2589
    check-cast v5, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v1, v5, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 2591
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 2592
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 2593
    .local v3, "pos":[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2594
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v3, v8

    aget v7, v3, v10

    aget v8, v3, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v9, v3, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2596
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5, p1, v1, v4}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2600
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "pos":[I
    :cond_4
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mEditIcon:Landroid/view/View;

    if-ne p1, v5, :cond_1

    .line 2601
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->onClickEditButton(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClickAllAppsButton(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2621
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_5

    .line 2622
    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "addapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "create_folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-boolean v2, Lcom/android/launcher2/HomeView;->mIsAllAppsButtonDisable:Z

    if-eqz v2, :cond_2

    .line 2652
    :cond_1
    :goto_0
    return-void

    .line 2624
    :cond_2
    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "addapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/launcher2/guide/GuideFragment;->isViewApps:Z

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "create_folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2625
    :cond_3
    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "addapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "create_folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2626
    :cond_4
    const/4 v1, 0x0

    .line 2627
    .local v1, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v1, Lcom/android/launcher2/guide/AddAppsGuider;

    .end local v1    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    .restart local v1    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    move-object v2, v1

    .line 2628
    check-cast v2, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-virtual {v2}, Lcom/android/launcher2/guide/AddAppsGuider;->isStep1DialogVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2630
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->showAllApps()V

    move-object v2, v1

    .line 2631
    check-cast v2, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-virtual {v2}, Lcom/android/launcher2/guide/AddAppsGuider;->dismissShowHelpDialog_step1()V

    .line 2632
    check-cast v1, Lcom/android/launcher2/guide/AddAppsGuider;

    .end local v1    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v1}, Lcom/android/launcher2/guide/AddAppsGuider;->showHelpDialog_step2()V

    goto :goto_0

    .line 2646
    :cond_5
    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 2647
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2648
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.launcher.action.USE_EXPAND_MODE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2649
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2650
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->showAllApps()V

    goto :goto_0
.end method

.method public onClickAlwaysButton(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2655
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2656
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2657
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2658
    const-string v1, "com.samsung.android.app.always"

    const-string v2, "com.samsung.android.app.always.ui.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2659
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2660
    return-void
.end method

.method public onClickEditButton(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 2664
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_0

    .line 2665
    invoke-static {v1}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 2666
    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->showWorkspaceEditmode(Z)V

    .line 2668
    :cond_0
    return-void
.end method

.method public onClickSearchButton(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4203
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 4204
    .local v0, "launcher":Lcom/android/launcher2/Launcher;
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_0

    .line 4205
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    .line 4206
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 551
    const-string v0, "Launcher.HomeView"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Launcher;->removeStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V

    .line 562
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 571
    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 573
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 575
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 578
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->unbindAllHomeItems()V

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 583
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHelphubObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 585
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mChangeTphoneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 587
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 588
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->removeAllViews()V

    .line 589
    iput-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 590
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 594
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-virtual {v0}, Lcom/sec/dtl/launcher/WallpaperScroller;->shutdown()V

    .line 597
    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .prologue
    .line 319
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 320
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mInflater:Landroid/view/LayoutInflater;

    .line 322
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 323
    new-instance v0, Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    .line 324
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHost;->startListening()V

    .line 325
    new-instance v1, Lcom/android/launcher2/AppWidgetBinder;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mAppWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/launcher2/AppWidgetBinder;-><init>(Lcom/android/launcher2/Launcher;Landroid/appwidget/AppWidgetManager;Lcom/android/launcher2/LauncherAppWidgetHost;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeView;->mAppWidgetBinder:Lcom/android/launcher2/AppWidgetBinder;

    .line 332
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->setupViews()V

    .line 334
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateGlobalSearchIcon()Z

    .line 336
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Launcher;->addStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V

    .line 337
    const-string v0, "Launcher.HomeView"

    const-string v1, "OnFinishInflate() completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void
.end method

.method public onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZII)V
    .locals 9
    .param p1, "folderChildItem"    # Lcom/android/launcher2/BaseItem;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "destinationContainerId"    # J
    .param p5, "removeItem"    # Z
    .param p6, "findNewPosition"    # Z
    .param p7, "originalContainerScreen"    # I
    .param p8, "originalContainerCell"    # I

    .prologue
    .line 4688
    move-object v2, p1

    check-cast v2, Lcom/android/launcher2/HomeShortcutItem;

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher2/HomeView;->completeAddFolderWithShortcutItem(Lcom/android/launcher2/HomeShortcutItem;Ljava/lang/String;JZZ)V

    .line 4690
    return-void
.end method

.method public onHomePressed(Z)Z
    .locals 3
    .param p1, "moveToDefaultScreen"    # Z

    .prologue
    const/4 v0, 0x1

    .line 855
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    .line 856
    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mHomeKeyPress:Z

    .line 857
    const/4 v0, 0x0

    .line 880
    :goto_0
    return v0

    .line 860
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_1

    .line 862
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v2, Lcom/android/launcher2/HomeView$1;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/HomeView$1;-><init>(Lcom/android/launcher2/HomeView;Z)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    .line 878
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeView;->performOnHomePressed(Z)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5221
    const/16 v16, 0x0

    .line 5228
    .local v16, "result":Z
    sget-boolean v22, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v22, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 5230
    invoke-static {}, Lcom/android/launcher2/guide/HelpAnimatedDialog;->setAlpha()V

    .line 5233
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v22

    if-nez v22, :cond_4

    .line 5235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v22

    sget-object v23, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 5240
    const/4 v9, 0x1

    .line 5241
    .local v9, "exitResizeMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v7

    .line 5242
    .local v7, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v8

    .line 5243
    .local v8, "current":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-le v8, v0, :cond_1

    if-ge v8, v7, :cond_1

    .line 5244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 5246
    .local v5, "cellLayout":Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v15

    .line 5247
    .local v15, "resizeFrame":Lcom/android/launcher2/AppWidgetResizeFrame;
    if-eqz v15, :cond_1

    .line 5248
    sget-object v22, Lcom/android/launcher2/HomeView;->sTouchPt:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/PointF;->set(FF)V

    .line 5249
    sget-object v22, Lcom/android/launcher2/HomeView;->sTouchPt:Landroid/graphics/PointF;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    sget-object v23, Lcom/android/launcher2/HomeView;->sTouchPt:Landroid/graphics/PointF;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lcom/android/launcher2/AppWidgetResizeFrame;->isPointInFrame(FF)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 5250
    const/4 v9, 0x0

    .line 5254
    .end local v5    # "cellLayout":Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    .end local v15    # "resizeFrame":Lcom/android/launcher2/AppWidgetResizeFrame;
    :cond_1
    sget-boolean v22, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v22, :cond_2

    sget-boolean v22, Lcom/android/launcher2/Workspace;->widgetSizeChanged:Z

    if-nez v22, :cond_2

    .line 5255
    const/4 v9, 0x0

    .line 5257
    :cond_2
    if-eqz v9, :cond_4

    .line 5258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 5259
    sget-boolean v22, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v22, :cond_3

    const-string v22, "resize_widgets"

    sget-object v23, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 5260
    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 5261
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v22

    const v23, 0x7f1000c2

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 5262
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    .line 5263
    .local v12, "handler":Landroid/os/Handler;
    new-instance v22, Lcom/android/launcher2/HomeView$26;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomeView$26;-><init>(Lcom/android/launcher2/HomeView;)V

    const-wide/16 v24, 0x7d0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v12, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5270
    .end local v12    # "handler":Landroid/os/Handler;
    :cond_3
    const/16 v16, 0x1

    .line 5274
    .end local v7    # "count":I
    .end local v8    # "current":I
    .end local v9    # "exitResizeMode":Z
    :cond_4
    sget-boolean v22, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v22, :cond_6

    sget-boolean v22, Lcom/android/launcher2/Launcher;->sIsMagazineHomeEnable:Z

    if-eqz v22, :cond_6

    .line 5275
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 5276
    .local v4, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    .line 5277
    .local v18, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    .line 5279
    .local v20, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v22

    if-nez v22, :cond_5

    sget-boolean v22, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v22, :cond_5

    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v22

    if-nez v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 5281
    :cond_5
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/HomeView;->mIsStartFlickUp:Z

    .line 5282
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->releaseVelocityTracker()V

    .line 5345
    .end local v4    # "action":I
    .end local v16    # "result":Z
    .end local v18    # "x":F
    .end local v20    # "y":F
    :cond_6
    :goto_0
    return v16

    .line 5286
    .restart local v4    # "action":I
    .restart local v16    # "result":Z
    .restart local v18    # "x":F
    .restart local v20    # "y":F
    :cond_7
    and-int/lit16 v0, v4, 0xff

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    goto :goto_0

    .line 5288
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/HomeView;->setStartPosition(Landroid/view/MotionEvent;)V

    .line 5289
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/HomeView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 5293
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0e029a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 5295
    .local v10, "flickUpStartPosition":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/HomeView;->mIsStartFlickUp:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    .line 5296
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->releaseVelocityTracker()V

    goto :goto_0

    .line 5300
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/HomeView;->addMovementVelocityTracker(Landroid/view/MotionEvent;)V

    .line 5303
    int-to-float v0, v10

    move/from16 v22, v0

    cmpg-float v22, v20, v22

    if-gtz v22, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeView;->mDownMotionY:F

    move/from16 v22, v0

    int-to-float v0, v10

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_6

    .line 5304
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 5305
    .local v6, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v14

    .line 5306
    .local v14, "maximumVelocity":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0e029b

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 5308
    .local v11, "flickUpVelocity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x3e8

    int-to-float v0, v14

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v17, v0

    .line 5310
    .local v17, "velocityY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeView;->mDownMotionX:F

    move/from16 v22, v0

    sub-float v22, v18, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v19

    .line 5311
    .local v19, "xDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/HomeView;->mDownMotionY:F

    move/from16 v22, v0

    sub-float v22, v20, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 5312
    .local v21, "yDiff":F
    div-float v22, v19, v21

    const-wide/high16 v24, 0x4034000000000000L    # 20.0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->tan(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gtz v22, :cond_a

    const/4 v13, 0x1

    .line 5314
    .local v13, "isFlickUpDegree":Z
    :goto_1
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/HomeView;->mIsStartFlickUp:Z

    .line 5315
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->releaseVelocityTracker()V

    .line 5318
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move/from16 v0, v22

    if-le v0, v11, :cond_6

    if-eqz v13, :cond_6

    .line 5319
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v22

    if-nez v22, :cond_9

    .line 5330
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/Launcher;

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/launcher2/Launcher;->startMagazineApp(Z)V

    .line 5333
    :cond_9
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 5312
    .end local v13    # "isFlickUpDegree":Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_1

    .line 5340
    .end local v6    # "configuration":Landroid/view/ViewConfiguration;
    .end local v10    # "flickUpStartPosition":I
    .end local v11    # "flickUpVelocity":I
    .end local v14    # "maximumVelocity":I
    .end local v17    # "velocityY":I
    .end local v19    # "xDiff":F
    .end local v21    # "yDiff":F
    :pswitch_2
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/HomeView;->mIsStartFlickUp:Z

    .line 5341
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/HomeView;->releaseVelocityTracker()V

    goto/16 :goto_0

    .line 5286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 5140
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 5143
    sget-boolean v7, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v7, :cond_0

    .line 5144
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher2/Utilities;->getDeviceRotation(Landroid/content/Context;)I

    move-result v6

    .line 5145
    .local v6, "rotationAngle":I
    sget v7, Lcom/android/launcher2/HomeView;->sCurrentRotationAngle:I

    if-eq v7, v6, :cond_0

    .line 5146
    sput v6, Lcom/android/launcher2/HomeView;->sCurrentRotationAngle:I

    .line 5147
    invoke-direct {p0, v6}, Lcom/android/launcher2/HomeView;->setupHomeViewAfterRotationForTB(I)V

    .line 5151
    .end local v6    # "rotationAngle":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getChildCount()I

    move-result v1

    .line 5152
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 5153
    invoke-virtual {p0, v3}, Lcom/android/launcher2/HomeView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5154
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 5155
    .local v2, "flp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v7, v2, Lcom/android/launcher2/HomeView$LayoutParams;

    if-eqz v7, :cond_1

    move-object v4, v2

    .line 5156
    check-cast v4, Lcom/android/launcher2/HomeView$LayoutParams;

    .line 5157
    .local v4, "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    iget-boolean v7, v4, Lcom/android/launcher2/HomeView$LayoutParams;->customPosition:Z

    if-eqz v7, :cond_1

    .line 5158
    iget v7, v4, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    iget v8, v4, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    iget v9, v4, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    iget v10, v4, Lcom/android/launcher2/HomeView$LayoutParams;->width:I

    add-int/2addr v9, v10

    iget v10, v4, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    iget v11, v4, Lcom/android/launcher2/HomeView$LayoutParams;->height:I

    add-int/2addr v10, v11

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 5152
    .end local v4    # "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5163
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    if-eqz p1, :cond_3

    .line 5164
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 5165
    .local v5, "rootView":Landroid/view/View;
    sget-object v7, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 5167
    .end local v5    # "rootView":Landroid/view/View;
    :cond_3
    sget-object v7, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v7}, Lcom/android/launcher2/PanelDrawer;->hasLoadedResources()Z

    move-result v7

    if-nez v7, :cond_4

    .line 5168
    sget-object v7, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/PanelDrawer;->loadResources(Landroid/content/res/Resources;)V

    .line 5169
    :cond_4
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2730
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    .line 2731
    .local v6, "launcher":Lcom/android/launcher2/Launcher;
    iget-boolean v11, v6, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-eqz v11, :cond_0

    .line 2732
    const/4 v11, 0x0

    .line 2940
    :goto_0
    return v11

    .line 2735
    :cond_0
    sget-boolean v11, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v11, :cond_4

    .line 2736
    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "change_wallpaper"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "add_widgets"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 2738
    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "resize_widgets"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "remove_items"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "move_app"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2740
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v11

    if-nez v11, :cond_2

    .line 2741
    const/4 v11, 0x0

    goto :goto_0

    .line 2743
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .line 2744
    .local v10, "tag":Ljava/lang/Object;
    instance-of v11, v10, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v11, :cond_6

    move-object v11, v10

    .line 2745
    check-cast v11, Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.google.android.apps.chrome.appwidget.bookmarks.BookmarkThumbnailWidgetProvider"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    check-cast v10, Lcom/android/launcher2/HomeWidgetItem;

    .end local v10    # "tag":Ljava/lang/Object;
    invoke-virtual {v10}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.sec.android.app.sbrowser.BookmarkThumbnailWidgetProvider"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2747
    :cond_3
    const/4 v8, 0x0

    .line 2748
    .local v8, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v8, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    .end local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    .line 2749
    .restart local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v8, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    .end local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v8}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->dismissHelpDialog()V

    .line 2778
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->isWorkspaceLocked()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 2779
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2751
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2753
    .restart local v10    # "tag":Ljava/lang/Object;
    :cond_6
    instance-of v11, v10, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v11, :cond_4

    move-object v11, v10

    .line 2754
    check-cast v11, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeShortcutItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_4

    move-object v11, v10

    .line 2755
    check-cast v11, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v11}, Lcom/android/launcher2/HomeShortcutItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.sec.android.app.popupcalculator.Calculator"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    check-cast v10, Lcom/android/launcher2/HomeShortcutItem;

    .end local v10    # "tag":Ljava/lang/Object;
    invoke-virtual {v10}, Lcom/android/launcher2/HomeShortcutItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.samsung.helphub.HelpHubActivity"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 2757
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2758
    :cond_7
    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "remove_items"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2759
    const/4 v8, 0x0

    .line 2760
    .restart local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v8, Lcom/android/launcher2/guide/RemoveItemsGuider;

    .end local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    .restart local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    move-object v11, v8

    .line 2761
    check-cast v11, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-virtual {v11}, Lcom/android/launcher2/guide/RemoveItemsGuider;->dismissHelpDialog()V

    .line 2762
    check-cast v8, Lcom/android/launcher2/guide/RemoveItemsGuider;

    .end local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v8}, Lcom/android/launcher2/guide/RemoveItemsGuider;->showHelpDialog2()V

    goto :goto_1

    .line 2764
    :cond_8
    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "move_app"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2765
    const/4 v8, 0x0

    .line 2766
    .restart local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v8, Lcom/android/launcher2/guide/MoveAppsGuider;

    .end local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    .restart local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    move-object v11, v8

    .line 2767
    check-cast v11, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-virtual {v11}, Lcom/android/launcher2/guide/MoveAppsGuider;->dismissHelpDialog()V

    .line 2768
    check-cast v8, Lcom/android/launcher2/guide/MoveAppsGuider;

    .end local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v8}, Lcom/android/launcher2/guide/MoveAppsGuider;->showHelpDialog_step2()V

    goto :goto_1

    .line 2773
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2782
    :cond_a
    instance-of v11, p1, Lcom/android/launcher2/CellLayout;

    if-nez v11, :cond_b

    .line 2783
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1    # "v":Landroid/view/View;
    check-cast p1, Landroid/view/View;

    .line 2787
    .restart local p1    # "v":Landroid/view/View;
    :cond_b
    sget-boolean v11, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v11, :cond_c

    instance-of v11, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v11, :cond_c

    move-object v2, p1

    .line 2788
    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 2789
    .local v2, "cl":Lcom/android/launcher2/CellLayout;
    if-eqz v2, :cond_c

    .line 2790
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v9

    .line 2791
    .local v9, "parent":Lcom/android/launcher2/CellLayoutContainer;
    instance-of v11, v9, Lcom/android/launcher2/Hotseat;

    if-eqz v11, :cond_c

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v11

    if-nez v11, :cond_c

    .line 2792
    const-string v11, "Launcher.HomeView"

    const-string v12, "Hotseat item long click but we do nothing in normal mode"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2799
    .end local v2    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v9    # "parent":Lcom/android/launcher2/CellLayoutContainer;
    :cond_c
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->resetAddInfo()V

    .line 2800
    const/4 v7, 0x0

    .line 2801
    .local v7, "longClickCellInfo":Lcom/android/launcher2/CellLayout$CellInfo;
    const/4 v4, 0x0

    .line 2802
    .local v4, "itemUnderLongClick":Landroid/view/View;
    instance-of v11, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v11, :cond_e

    move-object v5, p1

    .line 2803
    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 2804
    .local v5, "l":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getTag()Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v10

    .local v10, "tag":Lcom/android/launcher2/CellLayout$CellInfo;
    move-object v7, v10

    .line 2806
    check-cast v7, Lcom/android/launcher2/CellLayout$CellInfo;

    .line 2808
    if-nez v7, :cond_d

    .line 2809
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2811
    :cond_d
    iget-object v4, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2813
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    .line 2820
    .end local v5    # "l":Lcom/android/launcher2/CellLayout;
    .end local v10    # "tag":Lcom/android/launcher2/CellLayout$CellInfo;
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->isHotseatLayout(Landroid/view/View;)Z

    move-result v11

    if-nez v11, :cond_f

    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->allowLongPress()Z

    move-result v11

    if-eqz v11, :cond_10

    :cond_f
    const/4 v0, 0x1

    .line 2822
    .local v0, "allowLongPress":Z
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->isHotseatLayout(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_11

    sget-boolean v11, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v11, :cond_11

    .line 2823
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2820
    .end local v0    # "allowLongPress":Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_2

    .line 2827
    .restart local v0    # "allowLongPress":Z
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeView;->isHotseatLayout(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_12

    if-nez v4, :cond_12

    .line 2828
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2831
    :cond_12
    sget-boolean v11, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v11, :cond_14

    sget-boolean v11, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v11, :cond_14

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v11

    if-nez v11, :cond_14

    .line 2832
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v3

    .line 2833
    .local v3, "currentPage":I
    invoke-virtual {p0, v3}, Lcom/android/launcher2/HomeView;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    .line 2834
    .local v1, "cell":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_14

    .line 2835
    sget-boolean v11, Lcom/android/launcher2/HomeView;->DEBUGGABLE:Z

    if-eqz v11, :cond_13

    const-string v11, "Launcher.HomeView"

    const-string v12, "-----Skip long click on festival page "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    :cond_13
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2840
    .end local v1    # "cell":Lcom/android/launcher2/CellLayout;
    .end local v3    # "currentPage":I
    :cond_14
    if-eqz v0, :cond_19

    .line 2844
    sget-object v11, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v12, "Launcher_touch"

    invoke-virtual {v11, v12}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2845
    sget-object v11, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v12, "Launcher_touch"

    invoke-virtual {v11, v12}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    .line 2847
    if-nez v4, :cond_1b

    iget-boolean v11, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    if-nez v11, :cond_1b

    .line 2849
    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher2/Workspace;->performHapticFeedback(II)Z

    .line 2852
    sget-boolean v11, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v11, :cond_15

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v11

    if-nez v11, :cond_18

    .line 2854
    :cond_15
    sget-boolean v11, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v11, :cond_1a

    .line 2855
    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "change_wallpaper"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 2856
    const/4 v8, 0x0

    .line 2857
    .restart local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v8, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    .end local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;-><init>(Landroid/app/Activity;)V

    .restart local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    move-object v11, v8

    .line 2858
    check-cast v11, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    invoke-virtual {v11}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->dismissHelpDialog()V

    .line 2859
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    .line 2860
    check-cast v8, Lcom/android/launcher2/guide/ChangeWallpaperGuider;

    .end local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v8}, Lcom/android/launcher2/guide/ChangeWallpaperGuider;->showHelpDialog_step1()V

    .line 2864
    :cond_16
    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "remove_items"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "create_folder"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "move_app"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "resize_widgets"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "add_widgets"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "change_wallpaper"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    .line 2870
    sget v11, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_17

    .line 2872
    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v11

    invoke-static {v11}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    .line 2873
    const/4 v11, 0x2

    sput v11, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    .line 2877
    :cond_17
    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v12, "add_widgets"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 2878
    const-string v11, "DaliLogs"

    const-string v12, "addwidgets"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    const/4 v8, 0x0

    .line 2880
    .restart local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v8, Lcom/android/launcher2/guide/AddWidgetsGuider;

    .end local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/android/launcher2/guide/AddWidgetsGuider;-><init>(Landroid/app/Activity;)V

    .restart local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    move-object v11, v8

    .line 2881
    check-cast v11, Lcom/android/launcher2/guide/AddWidgetsGuider;

    invoke-virtual {v11}, Lcom/android/launcher2/guide/AddWidgetsGuider;->dismissHelpDialog()V

    .line 2882
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    .line 2883
    check-cast v8, Lcom/android/launcher2/guide/AddWidgetsGuider;

    .end local v8    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v8}, Lcom/android/launcher2/guide/AddWidgetsGuider;->showHelpDialog_step1()V

    .line 2895
    :cond_18
    :goto_3
    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->requestDisallowInterceptTouchEvent(Z)V

    .line 2938
    :goto_4
    sget-object v11, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v11}, Landroid/os/DVFSHelper;->release()V

    .line 2940
    :cond_19
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2888
    :cond_1a
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/android/launcher2/HomeView;->openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V

    goto :goto_3

    .line 2902
    :cond_1b
    sget-boolean v11, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v11, :cond_1c

    sget-boolean v11, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v11, :cond_1c

    .line 2903
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v11

    if-nez v11, :cond_1c

    .line 2904
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 2931
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f100092

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 2935
    :cond_1c
    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v11, v4}, Lcom/android/launcher2/Workspace;->startDrag(Landroid/view/View;)Z

    goto :goto_4
.end method

.method public onPageSwitch(Landroid/view/View;I)V
    .locals 1
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 4044
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_0

    .line 4055
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 4057
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 601
    const-string v0, "Launcher.HomeView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-virtual {v0}, Lcom/sec/dtl/launcher/WallpaperScroller;->pause()V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->removeHoverScrollHandler()V

    .line 609
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 610
    sget-object v0, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v0}, Lcom/android/launcher2/PanelDrawer;->pause()V

    .line 611
    return-void
.end method

.method public onQuickViewCloseAnimationCompleted()V
    .locals 1

    .prologue
    .line 4329
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    .line 4330
    return-void
.end method

.method public onQuickViewCloseAnimationStarted()V
    .locals 0

    .prologue
    .line 4334
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspaceStartAnimation()V

    .line 4335
    return-void
.end method

.method public onQuickViewDragEnd()V
    .locals 3

    .prologue
    .line 4344
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4345
    return-void
.end method

.method public onQuickViewDragStart()V
    .locals 3

    .prologue
    .line 4339
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x2

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4340
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 657
    instance-of v1, p1, Lcom/android/launcher2/HomeView$SavedState;

    if-nez v1, :cond_0

    .line 658
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 667
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 663
    check-cast v0, Lcom/android/launcher2/HomeView$SavedState;

    .line 664
    .local v0, "ss":Lcom/android/launcher2/HomeView$SavedState;
    invoke-virtual {v0}, Lcom/android/launcher2/HomeView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 665
    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeView;->restoreState(Lcom/android/launcher2/HomeView$SavedState;)V

    .line 666
    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mSavedState:Lcom/android/launcher2/HomeView$SavedState;

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 495
    const-string v0, "Launcher.HomeView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    if-eqz v0, :cond_0

    .line 497
    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    .line 498
    iput-boolean v2, p0, Lcom/android/launcher2/HomeView;->mRestoring:Z

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_7

    .line 502
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    .line 503
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->resumeMagazineCling()V

    .line 506
    :cond_1
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_5

    .line 507
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 512
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 527
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateWallpaperOffsets()V

    .line 529
    iput-boolean v2, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    .line 531
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    if-eqz v0, :cond_4

    .line 532
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mTiltWallpaperScroller:Lcom/sec/dtl/launcher/WallpaperScroller;

    invoke-virtual {v0}, Lcom/sec/dtl/launcher/WallpaperScroller;->resume()V

    .line 534
    :cond_4
    sget-object v0, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v0}, Lcom/android/launcher2/PanelDrawer;->resume()V

    .line 535
    return-void

    .line 515
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 516
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 518
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 519
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 522
    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 523
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 524
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->setMakeActive(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 616
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 617
    .local v2, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/launcher2/HomeView$SavedState;

    invoke-direct {v1, v2}, Lcom/android/launcher2/HomeView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 619
    .local v1, "ss":Lcom/android/launcher2/HomeView$SavedState;
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v3

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->currentScreen:I

    .line 623
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 624
    .local v0, "folderBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->saveOpenFolderState(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 625
    iput-object v0, v1, Lcom/android/launcher2/HomeView$SavedState;->folderBundle:Landroid/os/Bundle;

    .line 629
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v6, v3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    const/4 v6, -0x1

    if-le v3, v6, :cond_1

    iget-boolean v3, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    if-eqz v3, :cond_1

    .line 631
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-wide v6, v3, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v6, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddContainer:J

    .line 632
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddScreen:I

    .line 633
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellX:I

    .line 634
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddCellY:I

    .line 635
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->spanX:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanX:I

    .line 636
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->spanY:I

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSpanY:I

    .line 637
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-boolean v3, v3, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddSecretItem:I

    .line 638
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v3, v3, Lcom/android/launcher2/HomeItem;->dropPos:[I

    if-eqz v3, :cond_1

    .line 639
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v3, v3, Lcom/android/launcher2/HomeItem;->dropPos:[I

    aget v3, v3, v5

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPosX:I

    .line 640
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iget-object v3, v3, Lcom/android/launcher2/HomeItem;->dropPos:[I

    aget v3, v3, v4

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->pendingAddDropPoxY:I

    .line 644
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 645
    iput-boolean v4, v1, Lcom/android/launcher2/HomeView$SavedState;->inQuickView:Z

    .line 646
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->getDeletePageIndex()I

    move-result v3

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->quickViewDeleteIndex:I

    .line 648
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 649
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mHomeDarkenLayer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    iput v3, v1, Lcom/android/launcher2/HomeView$SavedState;->darkenLayerVisibility:I

    .line 651
    :cond_3
    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->mAfterSavedInstanceState:Z

    .line 652
    return-object v1

    :cond_4
    move v3, v5

    .line 637
    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 475
    const-string v0, "Launcher.HomeView"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->setWallpaperDimension()V

    .line 491
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 539
    const-string v0, "Launcher.HomeView"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 541
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->onStop()V

    .line 542
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    .line 544
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->setMakeActive(Z)V

    .line 547
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2609
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->showWorkspace(Z)V

    .line 2610
    const/4 v0, 0x0

    return v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v2, 0x0

    .line 4856
    if-ne p1, p0, :cond_1

    .line 4857
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 4858
    .local v0, "hidden":Z
    :goto_0
    if-nez v0, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    .line 4859
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iput-boolean v2, v1, Lcom/android/launcher2/Workspace;->mIsHelpOrientationChanged:Z

    .line 4860
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getTransitionToAllApps()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 4861
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->setTransitionToAllApps(Z)V

    .line 4864
    .end local v0    # "hidden":Z
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 4857
    goto :goto_0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1898
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    .line 1899
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    if-nez v0, :cond_0

    .line 1907
    :goto_0
    return-void

    .line 1901
    :cond_0
    if-nez p1, :cond_1

    .line 1902
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/ShadowBuilder;->draw()V

    goto :goto_0

    .line 1904
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/ShadowBuilder;->clear()V

    goto :goto_0
.end method

.method openQuickViewWorkspace(Lcom/android/launcher2/HomeView$SavedState;Z)V
    .locals 12
    .param p1, "ss"    # Lcom/android/launcher2/HomeView$SavedState;
    .param p2, "drawOpenAnimation"    # Z

    .prologue
    .line 3673
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v8

    if-nez v8, :cond_0

    sget-boolean v8, Lcom/android/launcher2/LauncherAppWidgetHostView;->sIsDrag:Z

    if-eqz v8, :cond_2

    .line 3674
    :cond_0
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/launcher2/LauncherAppWidgetHostView;->sIsDrag:Z

    .line 3854
    :cond_1
    :goto_0
    return-void

    .line 3677
    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicator()Lcom/android/launcher2/PageIndicator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/launcher2/PageIndicator;->setPageIndicatorPanelRightAdjust(I)V

    .line 3679
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    if-eqz v8, :cond_3

    .line 3680
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomePhoneBtn:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3682
    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    if-eqz v8, :cond_4

    .line 3683
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeAppsBtn:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3685
    :cond_4
    sget-boolean v8, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v8, :cond_7

    .line 3686
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    .line 3691
    .local v5, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->isTransitioningToShowAllApps()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->isAnimating()Z

    move-result v8

    if-nez v8, :cond_1

    .line 3695
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->isInResizeMode()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3696
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 3710
    :cond_5
    sget-boolean v8, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v8, :cond_6

    .line 3711
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    .line 3712
    :cond_6
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/launcher2/QuickViewWorkspace;->setSecretQuickViewMode(Z)V

    .line 3717
    .end local v5    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_7
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    if-eqz v8, :cond_8

    iget-boolean v8, p0, Lcom/android/launcher2/HomeView;->removeHotseat:Z

    if-eqz v8, :cond_8

    .line 3718
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3720
    :cond_8
    if-eqz p2, :cond_9

    .line 3721
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8}, Lcom/android/launcher2/QuickViewWorkspace;->drawOpenAnimation()V

    .line 3724
    :cond_9
    sget-object v8, Lcom/android/launcher2/HomeView;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v9, "Launcher_touch"

    invoke-virtual {v8, v9}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 3725
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v4

    .line 3726
    .local v4, "l":Lcom/android/launcher2/AnimationLayer;
    new-instance v6, Lcom/android/launcher2/HomeView$23;

    invoke-direct {v6, p0, v4}, Lcom/android/launcher2/HomeView$23;-><init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/AnimationLayer;)V

    .line 3762
    .local v6, "listener":Landroid/animation/AnimatorListenerAdapter;
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v8, :cond_a

    .line 3763
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    const/4 v9, 0x2

    sget-object v10, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3764
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 3765
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v8}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v10, 0x190

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3772
    :cond_a
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    if-eqz v8, :cond_b

    .line 3773
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    const/4 v9, 0x2

    sget-object v10, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3774
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v8}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v10, 0x190

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3776
    :cond_b
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v8}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 3777
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    const/4 v9, 0x2

    sget-object v10, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher2/QuickLaunch;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3778
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v8}, Lcom/android/launcher2/QuickLaunch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v10, 0x190

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3781
    :cond_c
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    if-eqz v8, :cond_d

    .line 3782
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    const/4 v9, 0x2

    sget-object v10, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 3783
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3784
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mHomeTopBar:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v10, 0x190

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3787
    :cond_d
    sget-boolean v8, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 3788
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 3793
    :cond_e
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/launcher2/Workspace;->setHideItems(Z)V

    .line 3795
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    .line 3797
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 3799
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/16 v9, 0x80

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher2/Workspace;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 3801
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8}, Lcom/android/launcher2/QuickViewWorkspace;->bringToFront()V

    .line 3802
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8, p0}, Lcom/android/launcher2/QuickViewWorkspace;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 3803
    if-eqz p1, :cond_f

    .line 3804
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    iget v9, p1, Lcom/android/launcher2/HomeView$SavedState;->quickViewDeleteIndex:I

    invoke-virtual {v8, v9}, Lcom/android/launcher2/QuickViewWorkspace;->setDeletePageIndex(I)V

    .line 3806
    :cond_f
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 3808
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/launcher2/Workspace;->setAllPagesVisibility(I)V

    .line 3819
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_12

    .line 3820
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3821
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 3822
    .local v1, "clChildren":Lcom/android/launcher2/CellLayoutChildren;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v8

    if-ge v3, v8, :cond_11

    .line 3823
    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3824
    .local v7, "v":Landroid/view/View;
    instance-of v8, v7, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v8, :cond_10

    move-object v8, v7

    .line 3825
    check-cast v8, Lcom/android/launcher2/SurfaceWidgetView;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Lcom/android/launcher2/SurfaceWidgetView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 3826
    check-cast v7, Lcom/android/launcher2/SurfaceWidgetView;

    .end local v7    # "v":Landroid/view/View;
    const v8, 0x3f7d70a4    # 0.99f

    invoke-virtual {v7, v8}, Lcom/android/launcher2/SurfaceWidgetView;->setAlpha(F)V

    .line 3822
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3819
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3831
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v1    # "clChildren":Lcom/android/launcher2/CellLayoutChildren;
    .end local v3    # "j":I
    :cond_12
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8}, Lcom/android/launcher2/QuickViewWorkspace;->open()V

    .line 3845
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->NORMAL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/PageIndicatorManager;->setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V

    .line 3846
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/launcher2/QuickViewWorkspace;->setSecretQuickViewMode(Z)V

    .line 3849
    sget-boolean v8, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v8, :cond_13

    if-nez p2, :cond_13

    .line 3850
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8}, Lcom/android/launcher2/QuickViewWorkspace;->drawOpenNonAnimation()V

    .line 3853
    :cond_13
    iget-object v8, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v9, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    goto/16 :goto_0
.end method

.method processItemDropToNewFolder(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 2195
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->resetAddInfo()V

    .line 2196
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const-wide/16 v2, -0x64

    iput-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    .line 2197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2198
    .local v0, "createItemIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2199
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeView;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 2200
    return-void
.end method

.method processShortcutFromDrop(Landroid/content/ComponentName;JI[I[IZ)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cell"    # [I
    .param p6, "loc"    # [I
    .param p7, "isSecretItem"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2177
    invoke-direct {p0}, Lcom/android/launcher2/HomeView;->resetAddInfo()V

    .line 2178
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-wide p2, v1, Lcom/android/launcher2/HomeItem;->container:J

    .line 2179
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput p4, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 2180
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    iput-object p6, v1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 2184
    if-eqz p5, :cond_0

    .line 2185
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    const/4 v2, 0x0

    aget v2, p5, v2

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 2186
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mPendingAddInfo:Lcom/android/launcher2/HomeItem;

    aget v2, p5, v3

    iput v2, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 2189
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2190
    .local v0, "createShortcutIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2191
    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/HomeView;->startActivityForResultSafely(Landroid/content/Intent;I)V

    .line 2192
    return-void
.end method

.method public refreshQuickViewWorkspace(Z)V
    .locals 2
    .param p1, "isSecret"    # Z

    .prologue
    .line 3936
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3946
    :goto_0
    return-void

    .line 3939
    :cond_0
    if-eqz p1, :cond_1

    .line 3940
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setSecretQuickViewMode(Z)V

    .line 3945
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickViewWorkspace;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    goto :goto_0

    .line 3942
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setSecretQuickViewMode(Z)V

    goto :goto_1
.end method

.method public removeAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 1
    .param p1, "launcherInfo"    # Lcom/android/launcher2/HomeWidgetItem;

    .prologue
    .line 1996
    iget-object v0, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->removeWidgetToAutoAdvance(Landroid/view/View;)V

    .line 1997
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1998
    return-void
.end method

.method removeFolder(Lcom/android/launcher2/HomeFolderItem;)V
    .locals 4
    .param p1, "folder"    # Lcom/android/launcher2/HomeFolderItem;

    .prologue
    .line 2471
    sget-object v0, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2472
    return-void
.end method

.method removePage()V
    .locals 1

    .prologue
    .line 4104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mIsDeletePopup:Z

    .line 4105
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickViewWorkspace:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->removeScreen()V

    .line 4106
    return-void
.end method

.method removeWidgetToAutoAdvance(Landroid/view/View;)V
    .locals 1
    .param p1, "hostView"    # Landroid/view/View;

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1991
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    .line 1993
    :cond_0
    return-void
.end method

.method public removehelpAppPage()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 4407
    iget-boolean v0, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageDeleted:Z

    if-eqz v0, :cond_0

    .line 4419
    :goto_0
    return-void

    .line 4410
    :cond_0
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v0, :cond_1

    .line 4411
    iget v0, p0, Lcom/android/launcher2/HomeView;->screenIndexFestivalHelpAppPageAddition:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    .line 4414
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageDeleted:Z

    .line 4415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->isHelpAppPageAdded:Z

    .line 4416
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v1, p0, Lcom/android/launcher2/HomeView;->screenIndexBeforeHelpAppPageAddition:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 4417
    iput v2, p0, Lcom/android/launcher2/HomeView;->screenIndexBeforeHelpAppPageAddition:I

    .line 4418
    iput v2, p0, Lcom/android/launcher2/HomeView;->screenIndexFestivalHelpAppPageAddition:I

    goto :goto_0

    .line 4413
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getNumPages()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    goto :goto_1
.end method

.method public resetPanelViewport()V
    .locals 3

    .prologue
    .line 3329
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3330
    sget-object v0, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 3332
    :cond_0
    return-void
.end method

.method public restoreOpenFolder(Landroid/os/Bundle;)Z
    .locals 12
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 3389
    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v9, :cond_1

    .line 3413
    :cond_0
    :goto_0
    return v8

    .line 3392
    :cond_1
    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3393
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 3396
    const-string v9, "launcher.workspace_open_folder_id"

    const-wide/16 v10, -0x1

    invoke-virtual {p1, v9, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3397
    .local v4, "openFolderId":J
    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v9, v10, v11, v4, v5}, Lcom/android/launcher2/LauncherModel;->getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v2

    .line 3398
    .local v2, "openFolder":Lcom/android/launcher2/HomeFolderItem;
    if-eqz v2, :cond_0

    .line 3401
    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9, v2}, Lcom/android/launcher2/Workspace;->restoreOpenFolder(Lcom/android/launcher2/HomeFolderItem;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3402
    iget-object v9, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 3403
    .local v1, "folder":Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_0

    .line 3404
    const-string v8, "launcher.workspace_pending_folder_edit_text"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3405
    .local v0, "editText":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 3406
    const-string v8, "launcher.workspace_pending_folder_edit_text_selection_start"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 3407
    .local v6, "selStart":I
    const-string v8, "launcher.workspace_pending_folder_edit_text_selection_end"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 3408
    .local v3, "selEnd":I
    invoke-virtual {v1, v0, v6, v3}, Lcom/android/launcher2/Folder;->restoreText(Ljava/lang/String;II)Z

    .line 3410
    .end local v3    # "selEnd":I
    .end local v6    # "selStart":I
    :cond_2
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public saveCurrentPageOrder()V
    .locals 0

    .prologue
    .line 4324
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->saveScreenInfo()V

    .line 4325
    return-void
.end method

.method public saveFestivalScreenInfo()V
    .locals 3

    .prologue
    .line 4088
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 4096
    :goto_0
    return-void

    .line 4090
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getFestivalPageManager()Lcom/android/launcher2/FestivalPageManager;

    move-result-object v1

    .line 4091
    .local v1, "fpMgr":Lcom/android/launcher2/FestivalPageManager;
    invoke-virtual {v1}, Lcom/android/launcher2/FestivalPageManager;->getFestivalPageCount()I

    move-result v0

    .line 4095
    .local v0, "festivalChildCount":I
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher2/LauncherApplication;->setFestivalScreenCount(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public saveOpenFolderState(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 3371
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v3, :cond_1

    .line 3385
    :cond_0
    :goto_0
    return v2

    .line 3374
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 3375
    .local v0, "openFolder":Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 3378
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3379
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/widget/EditText;

    move-result-object v1

    .line 3380
    .local v1, "text":Landroid/widget/EditText;
    const-string v2, "launcher.workspace_pending_folder_edit_text"

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3381
    const-string v2, "launcher.workspace_pending_folder_edit_text_selection_start"

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3382
    const-string v2, "launcher.workspace_pending_folder_edit_text_selection_end"

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3384
    .end local v1    # "text":Landroid/widget/EditText;
    :cond_2
    const-string v2, "launcher.workspace_open_folder_id"

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3385
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public saveScreenInfo()V
    .locals 6

    .prologue
    .line 4060
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 4074
    :goto_0
    return-void

    .line 4061
    :cond_0
    const/4 v2, 0x0

    .line 4062
    .local v2, "secretChildCount":I
    const/4 v0, 0x0

    .line 4063
    .local v0, "festivalChildCount":I
    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v4, :cond_1

    .line 4064
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getSecretPageManager()Lcom/android/launcher2/SecretPageManager;

    move-result-object v3

    .line 4065
    .local v3, "spMgr":Lcom/android/launcher2/SecretPageManager;
    invoke-virtual {v3}, Lcom/android/launcher2/SecretPageManager;->getSecretPageCount()I

    move-result v2

    .line 4066
    invoke-virtual {v3}, Lcom/android/launcher2/SecretPageManager;->printWorkspaceInfo()V

    .line 4068
    .end local v3    # "spMgr":Lcom/android/launcher2/SecretPageManager;
    :cond_1
    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v4, :cond_2

    .line 4069
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getFestivalPageManager()Lcom/android/launcher2/FestivalPageManager;

    move-result-object v1

    .line 4070
    .local v1, "fpMgr":Lcom/android/launcher2/FestivalPageManager;
    invoke-virtual {v1}, Lcom/android/launcher2/FestivalPageManager;->getFestivalPageCount()I

    move-result v0

    .line 4071
    invoke-virtual {v1}, Lcom/android/launcher2/FestivalPageManager;->printWorkspaceInfo()V

    .line 4073
    .end local v1    # "fpMgr":Lcom/android/launcher2/FestivalPageManager;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    sub-int/2addr v5, v0

    invoke-static {v4, v5}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public saveSecretScreenInfo()V
    .locals 3

    .prologue
    .line 4077
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 4085
    :goto_0
    return-void

    .line 4079
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getSecretPageManager()Lcom/android/launcher2/SecretPageManager;

    move-result-object v1

    .line 4080
    .local v1, "spMgr":Lcom/android/launcher2/SecretPageManager;
    invoke-virtual {v1}, Lcom/android/launcher2/SecretPageManager;->getSecretPageCount()I

    move-result v0

    .line 4084
    .local v0, "secretChildCount":I
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/launcher2/LauncherApplication;->setSecretScreenCount(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public setCurrentDragItem(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 4678
    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mCurrentDragItem:Lcom/android/launcher2/BaseItem;

    .line 4679
    return-void
.end method

.method public setCurrentResizeWidgetItem(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 4670
    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mCurrentResizeWidgetItem:Lcom/android/launcher2/BaseItem;

    .line 4671
    return-void
.end method

.method public setDarkenViewAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 4515
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 4516
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f0090

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    .line 4518
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mDarkenView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4519
    return-void
.end method

.method setDestinationNewFolderId(J)V
    .locals 1
    .param p1, "mId"    # J

    .prologue
    .line 1450
    sput-wide p1, Lcom/android/launcher2/HomeView;->mDestinationNewFolderId:J

    .line 1451
    return-void
.end method

.method public setDummyPanelProperties()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 5379
    iget v7, p0, Lcom/android/launcher2/HomeView;->mPanelBackgroundAlpha:F

    .line 5380
    .local v7, "v":F
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    .line 5382
    .local v8, "w":Lcom/android/launcher2/Workspace;
    if-eqz v8, :cond_1

    .line 5383
    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getBackgroundDarken()F

    move-result v1

    .line 5385
    .local v1, "d":F
    sget v9, Lcom/android/launcher2/Workspace;->sPanelBaseEditDarkenAmount:F

    sub-float v10, v11, v7

    invoke-static {v9, v1, v10}, Lcom/android/launcher2/PagedView;->mix(FFF)F

    move-result v0

    .line 5386
    .local v0, "baseDarken":F
    invoke-virtual {v8, v0, v12}, Lcom/android/launcher2/Workspace;->setDummyPanelProperties(FI)V

    .line 5388
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    .line 5389
    .local v6, "m":Lcom/android/launcher2/MenuAppsGrid;
    if-eqz v6, :cond_0

    .line 5390
    sub-float v9, v11, v7

    mul-float/2addr v9, v1

    invoke-virtual {v6, v9, v12}, Lcom/android/launcher2/MenuAppsGrid;->setDummyPanelProperties(FI)V

    .line 5404
    .end local v0    # "baseDarken":F
    .end local v1    # "d":F
    .end local v6    # "m":Lcom/android/launcher2/MenuAppsGrid;
    :cond_0
    :goto_0
    return-void

    .line 5396
    :cond_1
    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v11, :cond_2

    move v5, v9

    .line 5397
    .local v5, "isWorkspaceNull":Z
    :goto_1
    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-nez v11, :cond_3

    move v4, v9

    .line 5398
    .local v4, "isHotseatNull":Z
    :goto_2
    const/4 v2, 0x1

    .line 5399
    .local v2, "isAllAppsIconNull":Z
    iget-object v11, p0, Lcom/android/launcher2/HomeView;->mHomeContainer:Landroid/view/View;

    if-nez v11, :cond_4

    move v3, v9

    .line 5400
    .local v3, "isHomeContainerNull":Z
    :goto_3
    const-string v9, "Launcher.HomeView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CRR: isWorkspaceNull = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isHotseatNull = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isAllAppsIconNull = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isHomeContainerNull = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5402
    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0

    .end local v2    # "isAllAppsIconNull":Z
    .end local v3    # "isHomeContainerNull":Z
    .end local v4    # "isHotseatNull":Z
    .end local v5    # "isWorkspaceNull":Z
    :cond_2
    move v5, v10

    .line 5396
    goto :goto_1

    .restart local v5    # "isWorkspaceNull":Z
    :cond_3
    move v4, v10

    .line 5397
    goto :goto_2

    .restart local v2    # "isAllAppsIconNull":Z
    .restart local v4    # "isHotseatNull":Z
    :cond_4
    move v3, v10

    .line 5399
    goto :goto_3
.end method

.method public setEditBar(Lcom/android/launcher2/HomeEditBar;)V
    .locals 0
    .param p1, "editBar"    # Lcom/android/launcher2/HomeEditBar;

    .prologue
    .line 2956
    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mEditBar:Lcom/android/launcher2/HomeEditBar;

    .line 2957
    return-void
.end method

.method public setHomeEditItem(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "homeEditItem"    # Landroid/view/MenuItem;

    .prologue
    .line 4039
    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mHomeEditItem:Landroid/view/MenuItem;

    .line 4040
    return-void
.end method

.method public setHomeScreenAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 4100
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    .line 4101
    return-void
.end method

.method public setHotseat(Lcom/android/launcher2/Hotseat;)V
    .locals 1
    .param p1, "hotSeat"    # Lcom/android/launcher2/Hotseat;

    .prologue
    .line 2995
    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    .line 2996
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Hotseat;->setup(Lcom/android/launcher2/HomeView;)V

    .line 2997
    return-void
.end method

.method public setPage(I)V
    .locals 1
    .param p1, "pageNum"    # I

    .prologue
    .line 4241
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 4242
    return-void
.end method

.method public setPanelBackgroundAlpha(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 5371
    iput p1, p0, Lcom/android/launcher2/HomeView;->mPanelBackgroundAlpha:F

    .line 5372
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->setDummyPanelProperties()V

    .line 5373
    return-void
.end method

.method public setPanelViewport(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3335
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3336
    sget-object v0, Lcom/android/launcher2/HomeView;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 3338
    :cond_0
    return-void
.end method

.method public setQuickLaunch(Lcom/android/launcher2/QuickLaunch;)V
    .locals 1
    .param p1, "quickLaunch"    # Lcom/android/launcher2/QuickLaunch;

    .prologue
    .line 2985
    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    .line 2986
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickLaunch;->setup(Lcom/android/launcher2/HomeView;)V

    .line 2987
    return-void
.end method

.method public setQuickLaunchCamera(Lcom/android/launcher2/QuickLaunch;)V
    .locals 1
    .param p1, "quickLaunch"    # Lcom/android/launcher2/QuickLaunch;

    .prologue
    .line 2990
    iput-object p1, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    .line 2991
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickLaunch;->setup(Lcom/android/launcher2/HomeView;)V

    .line 2992
    return-void
.end method

.method public setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V
    .locals 2
    .param p1, "folder"    # Lcom/android/launcher2/FolderItem;

    .prologue
    .line 1533
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/HomeView;->mTargetFolderId:J

    .line 1534
    return-void
.end method

.method public setTabletHotseat()V
    .locals 3

    .prologue
    .line 5525
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v1, :cond_0

    .line 5526
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 5527
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 5528
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 5529
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 5530
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0107

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 5531
    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 5532
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Hotseat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5534
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setVisibilityHomeOptionMenu(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 5464
    const v1, 0x7f0f00d6

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5465
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5466
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5469
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5470
    if-nez p1, :cond_2

    .line 5471
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->setMakeActive(Z)V

    .line 5477
    :cond_1
    :goto_0
    return-void

    .line 5473
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/HomeScreenOptionMenu;->setMakeActive(Z)V

    goto :goto_0
.end method

.method public setVisibilityHotseat(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 5480
    const v1, 0x7f0f007b

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5481
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5482
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5484
    :cond_0
    return-void
.end method

.method public setWorkspaceLoading()V
    .locals 1

    .prologue
    .line 4551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    .line 4552
    return-void
.end method

.method public setupCameraCut(I)V
    .locals 2
    .param p1, "currentOrientation"    # I

    .prologue
    .line 5407
    const v0, 0x7f0f0087

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/HomeView;->mCameraCut:Landroid/widget/ImageView;

    .line 5408
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 5409
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mCameraCut:Landroid/widget/ImageView;

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5413
    :goto_0
    return-void

    .line 5411
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mCameraCut:Landroid/widget/ImageView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method showAllApps()V
    .locals 1

    .prologue
    .line 3110
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    .line 3111
    :cond_0
    return-void
.end method

.method public showCameraCut(ZZ)V
    .locals 3
    .param p1, "isShow"    # Z
    .param p2, "withTransition"    # Z

    .prologue
    .line 5416
    if-eqz p2, :cond_1

    .line 5417
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_0

    const/high16 v1, 0x7f040000

    :goto_0
    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 5419
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mCameraCut:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5423
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/HomeView;->mCameraCut:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5424
    return-void

    .line 5417
    :cond_0
    const v1, 0x7f040001

    goto :goto_0

    .line 5421
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mCameraCut:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_1

    .line 5423
    :cond_2
    const/4 v1, 0x4

    goto :goto_2
.end method

.method public showDeleteWorkScreen()V
    .locals 1

    .prologue
    .line 4115
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4120
    :goto_0
    return-void

    .line 4118
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mIsDeletePopup:Z

    .line 4119
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/DeleteWorkscreenDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method public showHomeBottomBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5509
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5510
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHomeBottomBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5511
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5512
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 5513
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 5514
    :cond_1
    return-void
.end method

.method showHotseat(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3087
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    .line 3088
    if-eqz p1, :cond_1

    .line 3089
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 3094
    :cond_0
    :goto_0
    return-void

    .line 3091
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    goto :goto_0
.end method

.method showOutOfSpaceMessage()V
    .locals 1

    .prologue
    .line 2001
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/HomeView;->showOutOfSpaceMessage(Landroid/content/Context;)V

    .line 2002
    return-void
.end method

.method showWorkspace(Z)V
    .locals 7
    .param p1, "animated"    # Z

    .prologue
    const/4 v6, 0x1

    .line 3047
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3048
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f0c0005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 3050
    .local v2, "stagger":I
    iget-boolean v3, p0, Lcom/android/launcher2/HomeView;->sIsHeadlinesHiddenForEditMode:Z

    if-eqz v3, :cond_0

    .line 3051
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 3052
    .local v0, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v0, v6}, Lcom/android/launcher2/Launcher;->setEnableHeadlines(Z)V

    .line 3053
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/HomeView;->sIsHeadlinesHiddenForEditMode:Z

    .line 3056
    .end local v0    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v2, v5}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    .line 3059
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->updateRunning()V

    .line 3062
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3064
    invoke-virtual {p0, v6}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    .line 3065
    return-void
.end method

.method showWorkspaceEditmode(Z)V
    .locals 6
    .param p1, "animated"    # Z

    .prologue
    const/4 v4, 0x1

    .line 3069
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3070
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f0c0005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 3072
    .local v2, "stagger":I
    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsHeadlinesAppEnable:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/HomeView;->sIsHeadlinesHiddenForEditMode:Z

    if-nez v3, :cond_0

    .line 3073
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 3074
    .local v0, "launcher":Lcom/android/launcher2/Launcher;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->setEnableHeadlines(Z)V

    .line 3075
    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->sIsHeadlinesHiddenForEditMode:Z

    .line 3077
    .end local v0    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 3079
    invoke-static {v4}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 3080
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v2, v5}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    .line 3081
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 5080
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mWaitingForResult:Z

    .line 5081
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/launcher2/Launcher;->startActivityForResult(Landroid/content/Intent;ILcom/android/launcher2/Launcher$ActivityResultCallback;)V

    .line 5082
    return-void
.end method

.method startActivityForResultSafely(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    const v3, 0x7f100002

    const/4 v2, 0x0

    .line 2717
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/HomeView;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2726
    :goto_0
    return-void

    .line 2718
    :catch_0
    move-exception v0

    .line 2719
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2720
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 2721
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2722
    const-string v1, "Launcher.HomeView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startApplicationDetailsActivity(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 2671
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2672
    .local v1, "packageName":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2674
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2675
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2676
    return-void
.end method

.method startApplicationUninstallActivity(Lcom/android/launcher2/AppItem;)V
    .locals 6
    .param p1, "app"    # Lcom/android/launcher2/AppItem;

    .prologue
    .line 2679
    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 2680
    iget-boolean v4, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-eqz v4, :cond_1

    .line 2683
    const v2, 0x7f100068

    .line 2684
    .local v2, "messageId":I
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2695
    .end local v2    # "messageId":I
    :cond_0
    :goto_0
    return-void

    .line 2686
    :cond_1
    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2687
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2688
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    const-string v5, "package"

    invoke-static {v5, v3, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2690
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10800000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2692
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startBinding()V
    .locals 5

    .prologue
    .line 3231
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 3233
    .local v3, "workspace":Lcom/android/launcher2/Workspace;
    if-nez v3, :cond_1

    .line 3257
    :cond_0
    :goto_0
    return-void

    .line 3238
    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->abortConfigChanges()V

    .line 3239
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/launcher2/HomeView;->mWorkspaceLoading:Z

    .line 3241
    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 3242
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 3244
    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 3245
    .local v2, "layoutParent":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 3242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3248
    .end local v2    # "layoutParent":Lcom/android/launcher2/CellLayout;
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    if-eqz v4, :cond_3

    .line 3249
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    .line 3251
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    if-eqz v4, :cond_4

    .line 3252
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mQuickLaunch:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v4}, Lcom/android/launcher2/QuickLaunch;->resetLayout()V

    .line 3254
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    if-eqz v4, :cond_0

    .line 3255
    iget-object v4, p0, Lcom/android/launcher2/HomeView;->mQuickLaunchCamera:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v4}, Lcom/android/launcher2/QuickLaunch;->resetLayout()V

    goto :goto_0
.end method

.method startWallpaper(I)V
    .locals 8
    .param p1, "mode"    # I

    .prologue
    const v7, 0x7f100002

    const/4 v6, 0x0

    const/16 v5, 0xa

    .line 2475
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 2479
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.wallpapers.WallpaperPickerActivity"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2480
    .local v0, "chooser":Landroid/content/Intent;
    const-string v3, "type"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2482
    if-nez p1, :cond_1

    .line 2483
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2484
    .local v2, "pickWallpaper":Landroid/content/Intent;
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2486
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_0

    .line 2487
    const-string v3, "mode"

    const-string v4, "Guide_Mode"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2488
    invoke-virtual {p0, v0, v5}, Lcom/android/launcher2/HomeView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2506
    .end local v2    # "pickWallpaper":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2493
    .restart local v2    # "pickWallpaper":Landroid/content/Intent;
    :cond_0
    :try_start_0
    const-string v3, "mode"

    const-string v4, "null"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2494
    const/16 v3, 0xa

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/HomeView;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2495
    :catch_0
    move-exception v1

    .line 2496
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2501
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "pickWallpaper":Landroid/content/Intent;
    :cond_1
    const/16 v3, 0xa

    :try_start_1
    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/HomeView;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2502
    :catch_1
    move-exception v1

    .line 2503
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public updateGlobalSearchIcon()Z
    .locals 1

    .prologue
    .line 4223
    const/4 v0, 0x0

    return v0
.end method

.method protected updateRunning()V
    .locals 12

    .prologue
    const-wide/16 v2, 0x4e20

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1917
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v1

    .line 1918
    .local v0, "autoAdvanceRunning":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceRunning:Z

    if-eq v0, v5, :cond_0

    .line 1919
    iput-boolean v0, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceRunning:Z

    .line 1920
    if-eqz v0, :cond_3

    .line 1921
    iget-wide v4, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceTimeLeft:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 1922
    .local v2, "delay":J
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/HomeView;->sendAdvanceMessage(J)V

    .line 1932
    .end local v2    # "delay":J
    :cond_0
    :goto_2
    return-void

    .end local v0    # "autoAdvanceRunning":Z
    :cond_1
    move v0, v4

    .line 1917
    goto :goto_0

    .line 1921
    .restart local v0    # "autoAdvanceRunning":Z
    :cond_2
    iget-wide v2, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceTimeLeft:J

    goto :goto_1

    .line 1924
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mWidgetsToAdvance:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1925
    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceSentTime:J

    sub-long/2addr v8, v10

    sub-long v8, v2, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher2/HomeView;->mAutoAdvanceTimeLeft:J

    .line 1928
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1929
    iget-object v1, p0, Lcom/android/launcher2/HomeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2
.end method

.method public updateWallpaperOffsets()V
    .locals 1

    .prologue
    .line 4523
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    .line 4524
    return-void
.end method

.method updateWallpaperVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/high16 v2, 0x100000

    .line 3038
    if-eqz p1, :cond_1

    move v1, v2

    .line 3039
    .local v1, "wpflags":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v3, v2

    .line 3041
    .local v0, "curflags":I
    if-eq v1, v0, :cond_0

    .line 3042
    invoke-virtual {p0}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 3044
    :cond_0
    return-void

    .line 3038
    .end local v0    # "curflags":I
    .end local v1    # "wpflags":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wallpaperHack()V
    .locals 2

    .prologue
    .line 4362
    iget-object v0, p0, Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setVisibility(I)V

    .line 4363
    return-void
.end method
