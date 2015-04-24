.class public final Lcom/android/launcher2/MenuAppsGrid;
.super Lcom/android/launcher2/SmoothPagedView;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
.implements Lcom/android/launcher2/Folder$FolderNameChangeListener;
.implements Lcom/android/launcher2/MenuView$AppModelNotifications;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;,
        Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;,
        Lcom/android/launcher2/MenuAppsGrid$StateRemoveFolder;,
        Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;,
        Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;,
        Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;,
        Lcom/android/launcher2/MenuAppsGrid$StateDownloadedUninstall;,
        Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;,
        Lcom/android/launcher2/MenuAppsGrid$StateUninstall;,
        Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;,
        Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;,
        Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;,
        Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;,
        Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;,
        Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;,
        Lcom/android/launcher2/MenuAppsGrid$StateEdit;,
        Lcom/android/launcher2/MenuAppsGrid$StateNormal;,
        Lcom/android/launcher2/MenuAppsGrid$StateObj;,
        Lcom/android/launcher2/MenuAppsGrid$State;,
        Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;
    }
.end annotation


# static fields
.field static final ADD_MOVETOSECRET_POPUP_DISMISSED_KEY:Ljava/lang/String; = "add.movetosecret.popup.dismissed.key"

.field private static final DEBUGGABLE:Z

.field private static final DL_APPS_SAVED_INDEX_KEY:Ljava/lang/String; = "DLAppsSavedIndexKey"

.field private static final OPEN_FOLDER_ID:Ljava/lang/String; = "openFolderId"

.field private static final PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder;

.field private static final PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;

.field private static final PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;

.field private static final PAGE_ZOOM_OUT:Landroid/animation/PropertyValuesHolder;

.field private static final PENDING_FOLDER_EDIT_TEXT:Ljava/lang/String; = "pendingFolderEditText"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_END:Ljava/lang/String; = "pending_folder_edit_text_selection_end"

.field private static final PENDING_FOLDER_EDIT_TEXT_SELECTION_START:Ljava/lang/String; = "pending_folder_edit_text_selection_start"

.field private static final SUPER_STATE_KEY:Ljava/lang/String; = "SuperStateKey"

.field private static final TAG:Ljava/lang/String; = "Launcher.MenuAppsGrid"

.field private static final TRANSITION_PIVOT:F = 0.5f

.field private static mAlphabeticalMenuSecretPageCnt:I

.field public static mChangeMenuModeForSecretBox:Z

.field public static mCreateFoldertoAddButton:Z

.field private static mEmptyFoldertoAddButton:Z

.field public static mExitingSelectableState:Z

.field private static mFolderColorToAddButton:I

.field private static mFolderTitletoAddButton:Ljava/lang/String;

.field public static mSnapping:Z

.field private static mStartEditNormalPage:Z

.field private static mStartNormalPage:Z

.field private static mViewTypeChanged:Z

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field static final sPanelDrawer:Lcom/android/launcher2/PanelDrawer;


# instance fields
.field private mAppPackageNameGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCreateFolderColor:I

.field private mCurrentOrientation:I

.field private mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

.field private mDragInProgress:Z

.field private mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

.field private final mEditModeShrinkFactor:F

.field private mEnterEditModeAnimator:Landroid/animation/Animator;

.field private mExitEditModeAnimator:Landroid/animation/Animator;

.field private mFading:Z

.field private mFolder:Lcom/android/launcher2/Folder;

.field private mFolderLocation:[I

.field mIsFromHomeView:Z

.field private mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

.field private mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

.field private mPendingAppModelUpdated:Z

.field private mPendingFolderBundle:Landroid/os/Bundle;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrevFolderOnCreateFolder:Lcom/android/launcher2/Folder;

.field private mRecycledViews:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestedOrientation:I

.field private mSecretMasking:Landroid/graphics/drawable/Drawable;

.field private mShrinkTranslateY:F

.field private mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

.field private mStateDownloadedApps:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateDownloadedUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

.field private mStateMoveToSecretBox:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

.field private mStateNormal:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateRemoveFolder:Lcom/android/launcher2/MenuAppsGrid$StateRemoveFolder;

.field private mStateRemoveFromSecretBox:Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;

.field private mStateSelAppsToEnable:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;

.field private mStateSelAppsToHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

.field private mStateSelAppsToUnHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

.field private mStateUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

.field private mStateshareSelect:Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

.field private mTabHost:Lcom/android/launcher2/MenuView;

.field private mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

.field private mViewType:Lcom/android/launcher2/MenuView$ViewType;

.field private preCheckedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->DEBUGGABLE:Z

    .line 117
    new-instance v0, Lcom/android/launcher2/PanelDrawer;

    invoke-direct {v0}, Lcom/android/launcher2/PanelDrawer;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    .line 140
    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mSnapping:Z

    .line 141
    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mExitingSelectableState:Z

    .line 145
    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    .line 146
    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mChangeMenuModeForSecretBox:Z

    .line 147
    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mStartNormalPage:Z

    .line 148
    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mStartEditNormalPage:Z

    .line 149
    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mViewTypeChanged:Z

    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->mFolderTitletoAddButton:Ljava/lang/String;

    .line 152
    sput v3, Lcom/android/launcher2/MenuAppsGrid;->mFolderColorToAddButton:I

    .line 153
    sput-boolean v3, Lcom/android/launcher2/MenuAppsGrid;->mEmptyFoldertoAddButton:Z

    .line 156
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "menu_app_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->sHandlerThread:Landroid/os/HandlerThread;

    .line 158
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 160
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->sHandler:Landroid/os/Handler;

    .line 161
    sput v3, Lcom/android/launcher2/MenuAppsGrid;->mAlphabeticalMenuSecretPageCnt:I

    .line 1330
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM:Landroid/util/Property;

    new-array v1, v4, [F

    aput v5, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;

    .line 1331
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM:Landroid/util/Property;

    new-array v1, v4, [F

    const v2, 0x3f666666    # 0.9f

    aput v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_OUT:Landroid/animation/PropertyValuesHolder;

    .line 1332
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA:Landroid/util/Property;

    new-array v1, v4, [F

    aput v5, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder;

    .line 1333
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA:Landroid/util/Property;

    new-array v1, v4, [F

    const/4 v2, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;

    .line 1334
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/MenuAppsGrid;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    .line 130
    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    .line 134
    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;

    .line 155
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mShrinkTranslateY:F

    .line 297
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolderLocation:[I

    .line 486
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$2;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$2;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    .line 648
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    .line 925
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$3;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$3;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    .line 1414
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateNormal;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateNormal;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateNormal:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 1416
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateEdit;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateEdit;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 1418
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 1420
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedApps:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 1422
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedUninstall;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedUninstall;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 1424
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    .line 1426
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

    .line 1428
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToUnHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

    .line 1430
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToEnable:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;

    .line 1433
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFolder;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFolder;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateRemoveFolder:Lcom/android/launcher2/MenuAppsGrid$StateRemoveFolder;

    .line 1435
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateRemoveFromSecretBox:Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;

    .line 1436
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    .line 1437
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateshareSelect:Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    .line 3600
    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    .line 3884
    iput-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mPrevFolderOnCreateFolder:Lcom/android/launcher2/Folder;

    .line 3968
    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    .line 4300
    iput v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mCreateFolderColor:I

    .line 174
    const-string v2, "Launcher.MenuAppsGrid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p1

    .line 175
    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mPm:Landroid/content/pm/PackageManager;

    .line 177
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 179
    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->MenuAppsGrid:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 183
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->setSaveEnabled(Z)V

    .line 186
    const v2, 0x7f050010

    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mEnterEditModeAnimator:Landroid/animation/Animator;

    .line 187
    const v2, 0x7f050011

    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mExitEditModeAnimator:Landroid/animation/Animator;

    .line 189
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mRequestedOrientation:I

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 191
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0c0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditModeShrinkFactor:F

    .line 193
    const v2, 0x7f0e0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mShrinkTranslateY:F

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/Folder;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;
    .param p1, "x1"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedApps:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateDownloadedUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateshareSelect:Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToHide;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToUnHide:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToUnHide;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateMoveToSecretBox:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateRemoveFromSecretBox:Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateSelAppsToEnable:Lcom/android/launcher2/MenuAppsGrid$StateSelAppsToEnable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuAppsGrid;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setMenuAppsGridAccessibilityEnabled(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateRemoveFolder;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateRemoveFolder:Lcom/android/launcher2/MenuAppsGrid$StateRemoveFolder;

    return-object v0
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    return-object v0
.end method

.method static synthetic access$3300()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->mEmptyFoldertoAddButton:Z

    return v0
.end method

.method static synthetic access$3302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 97
    sput-boolean p0, Lcom/android/launcher2/MenuAppsGrid;->mEmptyFoldertoAddButton:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuTitleBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/launcher2/MenuAppsGrid;ZLcom/android/launcher2/AppIconView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/launcher2/AppIconView;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/launcher2/MenuAppsGrid;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mEnterEditModeAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->animatePageZoomOut(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/launcher2/MenuAppsGrid;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mExitEditModeAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$3900()Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_NONE:Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$4000()Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_NONE:Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->getConstructedViews()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/launcher2/MenuAppsGrid;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/ItemViewBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    return-object v0
.end method

.method static synthetic access$4500()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getRealatedApps(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/MenuAppsGrid;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuStateAnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView$ViewType;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/launcher2/MenuAppsGrid;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/launcher2/MenuAppsGrid;ZLjava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/Iterable;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItems(ZLjava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/launcher2/MenuAppsGrid;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/launcher2/MenuAppsGrid;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->isConfirmDialogOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateNormal:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGrid;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateUninstall:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    return-object v0
.end method

.method private addAppItem(Lcom/android/launcher2/AppItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/AppItem;

    .prologue
    .line 868
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getOrCreatePageForItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v0

    .line 869
    .local v0, "page":Lcom/android/launcher2/CellLayoutMenu;
    if-nez v0, :cond_1

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    iget-boolean v1, p1, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    if-eqz v1, :cond_2

    .line 873
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutMenu;->setPageType(I)V

    .line 877
    :goto_1
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getFolderToDelete()Lcom/android/launcher2/AppFolderItem;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 878
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutMenu;->addItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0

    .line 875
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutMenu;->setPageType(I)V

    goto :goto_1
.end method

.method private animatePageZoomOut(Ljava/util/List;Z)V
    .locals 3
    .param p2, "immediately"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3590
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz p2, :cond_0

    .line 3591
    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->setPageZoom(F)V

    .line 3592
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->setPageBackgroundAlpha(F)V

    .line 3598
    :goto_0
    return-void

    .line 3594
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_ZOOM_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->PAGE_BG_ALPHA_FULL:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private changeOrientationIfRequired(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 4263
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuView;->getQuickView(Z)Lcom/android/launcher2/QuickViewMainMenu;

    move-result-object v4

    .line 4264
    .local v4, "qv":Lcom/android/launcher2/QuickViewMainMenu;
    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    iget v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mRequestedOrientation:I

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mRequestedOrientation:I

    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->isShown()Z

    move-result v6

    if-nez v6, :cond_2

    if-nez v4, :cond_1

    .line 4298
    :cond_0
    :goto_0
    return-void

    .line 4264
    :cond_1
    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewMainMenu;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4269
    :cond_2
    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mRequestedOrientation:I

    iput v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    .line 4270
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4274
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->handleScrollOnOrientationChange()V

    .line 4275
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 4279
    .local v5, "r":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->clear()V

    .line 4281
    const v6, 0x7f0e0125

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 4282
    .local v2, "marginTop":I
    const v6, 0x7f0e0126

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4283
    .local v1, "cellWidth":I
    const v6, 0x7f0e0127

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4285
    .local v0, "cellHeight":I
    iget v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountX:I

    .line 4286
    .local v3, "oldCountX":I
    const v6, 0x7f0c0027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountX:I

    .line 4287
    const v6, 0x7f0c0028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountY:I

    .line 4288
    const v6, 0x7f0e0128

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellGapX:I

    .line 4289
    const v6, 0x7f0e0129

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellGapY:I

    .line 4290
    const v6, 0x7f0e00d9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mPageSpacingHint:I

    .line 4292
    const v6, 0x7f0e012b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f0e012a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher2/MenuAppsGrid;->updateIndicator(II)V

    .line 4294
    invoke-direct {p0, v2, v1, v0}, Lcom/android/launcher2/MenuAppsGrid;->updateGridSize(III)V

    .line 4295
    invoke-direct {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->updatePageLayout(I)V

    .line 4297
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->requestLayout()V

    goto :goto_0
.end method

.method private checkPageType(Lcom/android/launcher2/AppItem;I)Z
    .locals 3
    .param p1, "newFolder"    # Lcom/android/launcher2/AppItem;
    .param p2, "screen"    # I

    .prologue
    const/4 v1, 0x1

    .line 4375
    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 4377
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_2

    .line 4378
    iget-boolean v2, p1, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    iget-boolean v2, p1, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    if-nez v2, :cond_2

    .line 4385
    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createPage()Lcom/android/launcher2/CellLayoutMenu;
    .locals 5

    .prologue
    .line 914
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03003e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    .line 916
    .local v0, "cell":Lcom/android/launcher2/CellLayoutMenu;
    iget v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountX:I

    iget v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountY:I

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/CellLayoutMenu;->setGridSize(II)V

    .line 917
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->addView(Landroid/view/View;)V

    .line 918
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayoutMenu;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    .line 920
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v2}, Lcom/android/launcher2/PanelDrawer;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 921
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutMenu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 922
    return-object v0
.end method

.method private findNewFolderPosition(Lcom/android/launcher2/AppItem;II)V
    .locals 6
    .param p1, "newFolder"    # Lcom/android/launcher2/AppItem;
    .param p2, "screen"    # I
    .param p3, "cell"    # I

    .prologue
    const/4 v5, -0x1

    .line 4391
    const/4 v3, -0x1

    .line 4392
    .local v3, "space":I
    const/4 v0, -0x1

    .line 4394
    .local v0, "folderScreen":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 4395
    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/MenuAppsGrid;->checkPageType(Lcom/android/launcher2/AppItem;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4394
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4400
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutNoGap;

    .line 4401
    .local v2, "page":Lcom/android/launcher2/CellLayoutNoGap;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v3

    .line 4402
    if-eq v3, v5, :cond_0

    .line 4403
    move p3, v3

    .line 4404
    move v0, v1

    .line 4410
    .end local v2    # "page":Lcom/android/launcher2/CellLayoutNoGap;
    :cond_2
    if-eq p3, v5, :cond_3

    if-ne v0, v5, :cond_6

    .line 4411
    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 4412
    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/MenuAppsGrid;->checkPageType(Lcom/android/launcher2/AppItem;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 4411
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4417
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutNoGap;

    .line 4418
    .restart local v2    # "page":Lcom/android/launcher2/CellLayoutNoGap;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v3

    .line 4419
    if-eq v3, v5, :cond_4

    .line 4420
    move p3, v3

    .line 4421
    move v0, v1

    .line 4427
    .end local v2    # "page":Lcom/android/launcher2/CellLayoutNoGap;
    :cond_6
    iput p3, p1, Lcom/android/launcher2/AppItem;->mCell:I

    .line 4428
    iput v0, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    .line 4429
    return-void
.end method

.method private getConstructedViews()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 844
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .local v6, "views":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppIconView;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v1

    .line 847
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 848
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 849
    .local v5, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    .line 850
    .local v4, "l":Lcom/android/launcher2/CellLayoutChildren;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 851
    invoke-virtual {v4, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 852
    .local v0, "child":Landroid/view/View;
    instance-of v7, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v7, :cond_0

    .line 853
    check-cast v0, Lcom/android/launcher2/AppIconView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 847
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 857
    .end local v2    # "i":I
    .end local v4    # "l":Lcom/android/launcher2/CellLayoutChildren;
    .end local v5    # "layout":Lcom/android/launcher2/CellLayout;
    :cond_2
    return-object v6
.end method

.method private getOrCreatePageForItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/CellLayoutMenu;
    .locals 5
    .param p1, "item"    # Lcom/android/launcher2/AppItem;

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v2

    .line 884
    .local v2, "pageCount":I
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 885
    iget v3, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    .line 886
    .local v3, "targetPage":I
    move v0, v2

    .local v0, "i":I
    :goto_0
    if-gt v0, v3, :cond_0

    .line 887
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    .line 886
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 889
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayoutMenu;

    .line 898
    .end local v0    # "i":I
    .end local v3    # "targetPage":I
    :goto_1
    return-object v4

    .line 891
    :cond_1
    sget-boolean v4, Lcom/android/launcher2/MenuAppsGrid;->mStartNormalPage:Z

    if-eqz v4, :cond_2

    .line 892
    sput v2, Lcom/android/launcher2/MenuAppsGrid;->mAlphabeticalMenuSecretPageCnt:I

    .line 893
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/MenuAppsGrid;->mStartNormalPage:Z

    .line 894
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v4

    goto :goto_1

    .line 897
    :cond_2
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutMenu;

    .line 898
    .local v1, "lastPage":Lcom/android/launcher2/CellLayoutMenu;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCell()Z

    move-result v4

    if-eqz v4, :cond_3

    .end local v1    # "lastPage":Lcom/android/launcher2/CellLayoutMenu;
    :goto_2
    move-object v4, v1

    goto :goto_1

    .restart local v1    # "lastPage":Lcom/android/launcher2/CellLayoutMenu;
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v1

    goto :goto_2
.end method

.method private getRealatedApps(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4622
    .local p1, "selectedApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4625
    .local v5, "needtoModifyAppItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    sget-object v8, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppModel;->getAppItems()Ljava/util/Map;

    move-result-object v4

    .line 4627
    .local v4, "mAppItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 4628
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->parseAppPackageGroup()V

    .line 4630
    const/4 v6, 0x0

    .local v6, "position":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 4631
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AppItem;

    invoke-virtual {v8}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4632
    .local v0, "groupPkgName":Ljava/lang/String;
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4633
    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mAppPackageNameGroup:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 4635
    .local v7, "relatedAppId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 4636
    const/4 v3, 0x0

    .line 4637
    .local v3, "item":Lcom/android/launcher2/AppItem;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 4638
    .local v2, "id":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AppItem;

    iget-wide v8, v8, Lcom/android/launcher2/AppItem;->mId:J

    cmp-long v8, v10, v8

    if-eqz v8, :cond_0

    .line 4639
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "item":Lcom/android/launcher2/AppItem;
    check-cast v3, Lcom/android/launcher2/AppItem;

    .line 4640
    .restart local v3    # "item":Lcom/android/launcher2/AppItem;
    if-eqz v3, :cond_0

    .line 4642
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4630
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/Long;
    .end local v3    # "item":Lcom/android/launcher2/AppItem;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4650
    .end local v0    # "groupPkgName":Ljava/lang/String;
    .end local v6    # "position":I
    .end local v7    # "relatedAppId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    return-object v5
.end method

.method private isConfirmDialogOpen()Z
    .locals 2

    .prologue
    .line 4023
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 4024
    .local v0, "fragManager":Landroid/app/FragmentManager;
    invoke-static {v0}, Lcom/android/launcher2/AppFolderRemoveDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isKnoxDefaultShortcutApp(Lcom/android/launcher2/BaseItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 631
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->KNOX_DEFAULT_APP:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    const-string v0, "Launcher.MenuAppsGrid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item.getPackageName() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v0, 0x1

    .line 635
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToCurrentPage(I)V
    .locals 2
    .param p1, "currentPage"    # I

    .prologue
    const/4 v1, 0x0

    .line 803
    sput-boolean v1, Lcom/android/launcher2/MenuAppsGrid;->mChangeMenuModeForSecretBox:Z

    .line 804
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 806
    sput-boolean v1, Lcom/android/launcher2/MenuAppsGrid;->mChangeMenuModeForSecretBox:Z

    .line 807
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setCurrentPageIfNotSnapping(I)V

    .line 808
    return-void
.end method

.method private openFolderKeyboardIfNeeded(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 3801
    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v6, :cond_1

    .line 3816
    :cond_0
    :goto_0
    return-void

    .line 3805
    :cond_1
    const-string v6, "openFolderId"

    const-wide/16 v8, -0x1

    invoke-virtual {p1, v6, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3806
    .local v2, "openFolderId":J
    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6, v2, v3}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    .line 3807
    .local v1, "item":Lcom/android/launcher2/AppItem;
    if-eqz v1, :cond_0

    instance-of v6, v1, Lcom/android/launcher2/FolderItem;

    if-eqz v6, :cond_0

    .line 3808
    const-string v6, "pendingFolderEditText"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3809
    .local v0, "editText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3810
    const-string v6, "pending_folder_edit_text_selection_start"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 3811
    .local v5, "selStart":I
    const-string v6, "pending_folder_edit_text_selection_end"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 3813
    .local v4, "selEnd":I
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v6, v0, v5, v4}, Lcom/android/launcher2/Folder;->restoreText(Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private parseAppPackageGroup()V
    .locals 8

    .prologue
    .line 4551
    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppModel;->getAppItems()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 4552
    .local v0, "appItems":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/launcher2/AppItem;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mAppPackageNameGroup:Ljava/util/HashMap;

    .line 4554
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppItem;

    .line 4556
    .local v4, "item":Lcom/android/launcher2/AppItem;
    invoke-virtual {v4}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4557
    .local v1, "groupPkgName":Ljava/lang/String;
    iget-wide v6, v4, Lcom/android/launcher2/AppItem;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4558
    .local v3, "id":Ljava/lang/Long;
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mAppPackageNameGroup:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 4560
    .local v5, "pkgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v5, :cond_1

    .line 4561
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "pkgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4562
    .restart local v5    # "pkgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4569
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mAppPackageNameGroup:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4564
    :cond_1
    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4565
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4571
    .end local v1    # "groupPkgName":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/Long;
    .end local v4    # "item":Lcom/android/launcher2/AppItem;
    .end local v5    # "pkgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    return-void
.end method

.method private setDragInProgress(Z)V
    .locals 1
    .param p1, "dragInProgress"    # Z

    .prologue
    .line 4144
    iput-boolean p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    .line 4145
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    if-eqz v0, :cond_0

    .line 4146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    .line 4147
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    .line 4149
    :cond_0
    return-void
.end method

.method private setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V
    .locals 1
    .param p1, "isVisible"    # Z
    .param p2, "item"    # Lcom/android/launcher2/AppIconView;

    .prologue
    .line 4493
    invoke-virtual {p2, p1}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    .line 4494
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/launcher2/AppIconView;->setDrawShadow(Z)V

    .line 4495
    return-void
.end method

.method private setIconTextAndShadowVisibilityOnItems(ZLjava/lang/Iterable;)V
    .locals 3
    .param p1, "isVisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4498
    .local p2, "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    if-nez p2, :cond_0

    .line 4499
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->getConstructedViews()Ljava/util/List;

    move-result-object p2

    .line 4500
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 4501
    .local v1, "item":Lcom/android/launcher2/AppIconView;
    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V

    goto :goto_0

    .line 4503
    .end local v1    # "item":Lcom/android/launcher2/AppIconView;
    :cond_1
    return-void
.end method

.method private setMenuAppsGridAccessibilityEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 4578
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4579
    .local v1, "talkbackString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

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

    .line 4581
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher2/MenuView;->setAccessibilityEnabled(Z)V

    .line 4582
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getComingPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 4583
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    .line 4584
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setAccessibilityEnabled(Z)V

    .line 4586
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method private updateGridSize(III)V
    .locals 16
    .param p1, "marginTop"    # I
    .param p2, "cellWidth"    # I
    .param p3, "cellHeight"    # I

    .prologue
    .line 4192
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 4193
    .local v7, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v6

    .line 4195
    .local v6, "childCount":I
    const v14, 0x7f11001c

    sget-object v15, Lcom/android/launcher2/ShadowStyleable;->TextView:[I

    invoke-virtual {v7, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 4197
    .local v2, "aivTextView":Landroid/content/res/TypedArray;
    const v14, 0x7f11001c

    sget-object v15, Lcom/android/launcher2/ShadowStyleable;->View:[I

    invoke-virtual {v7, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 4200
    .local v3, "aivView":Landroid/content/res/TypedArray;
    const v14, 0x7f11001d

    sget-object v15, Lcom/android/launcher2/ShadowStyleable;->TextView:[I

    invoke-virtual {v7, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 4202
    .local v8, "fivTextView":Landroid/content/res/TypedArray;
    const v14, 0x7f11001d

    sget-object v15, Lcom/android/launcher2/ShadowStyleable;->View:[I

    invoke-virtual {v7, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 4206
    .local v9, "fivView":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v6, :cond_3

    .line 4207
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4208
    .local v5, "child":Landroid/view/View;
    instance-of v14, v5, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v14, :cond_2

    move-object v4, v5

    .line 4209
    check-cast v4, Lcom/android/launcher2/CellLayoutMenu;

    .line 4210
    .local v4, "cellMenu":Lcom/android/launcher2/CellLayoutMenu;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountY:I

    invoke-virtual {v4, v14, v15}, Lcom/android/launcher2/CellLayoutMenu;->setGridSize(II)V

    .line 4211
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher2/CellLayoutMenu;->setCellSize(II)V

    .line 4212
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/MenuAppsGrid;->mCellGapX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/MenuAppsGrid;->mCellGapY:I

    invoke-virtual {v4, v14, v15}, Lcom/android/launcher2/CellLayoutMenu;->setGaps(II)V

    .line 4213
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutMenu;->refreshCellDimension()V

    .line 4215
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutMenu;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 4216
    .local v13, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move/from16 v0, p1

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 4217
    invoke-virtual {v4, v13}, Lcom/android/launcher2/CellLayoutMenu;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4219
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutMenu;->getPageChildCount()I

    move-result v14

    if-ge v12, v14, :cond_2

    .line 4220
    invoke-virtual {v4, v12}, Lcom/android/launcher2/CellLayoutMenu;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v10

    .line 4221
    .local v10, "grandChild":Landroid/view/View;
    instance-of v14, v10, Lcom/android/launcher2/FolderIconView;

    if-eqz v14, :cond_1

    .line 4222
    invoke-static {v9, v10}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    move-object v14, v10

    .line 4223
    check-cast v14, Landroid/widget/TextView;

    invoke-static {v8, v14}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    .line 4224
    check-cast v10, Lcom/android/launcher2/FolderIconView;

    .end local v10    # "grandChild":Landroid/view/View;
    invoke-virtual {v10}, Lcom/android/launcher2/FolderIconView;->refresh()V

    .line 4219
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 4225
    .restart local v10    # "grandChild":Landroid/view/View;
    :cond_1
    instance-of v14, v10, Lcom/android/launcher2/AppIconView;

    if-eqz v14, :cond_0

    .line 4226
    invoke-static {v3, v10}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    move-object v14, v10

    .line 4227
    check-cast v14, Landroid/widget/TextView;

    invoke-static {v2, v14}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    .line 4228
    check-cast v10, Lcom/android/launcher2/AppIconView;

    .end local v10    # "grandChild":Landroid/view/View;
    invoke-virtual {v10}, Lcom/android/launcher2/AppIconView;->initBadgeValue()V

    goto :goto_2

    .line 4206
    .end local v4    # "cellMenu":Lcom/android/launcher2/CellLayoutMenu;
    .end local v12    # "j":I
    .end local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 4233
    .end local v5    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 4234
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 4236
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 4237
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 4238
    return-void
.end method

.method private updatePageLayout(I)V
    .locals 3
    .param p1, "oldCountX"    # I

    .prologue
    .line 4173
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v1

    .line 4174
    .local v1, "pageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4175
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/CellLayoutMenu;->updateViewToCellLayout(I)V

    .line 4174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4178
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->updateQuickViewMainMenu()V

    .line 4179
    return-void
.end method


# virtual methods
.method protected allowCustomOrdering()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3730
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3731
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v2, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->allowCustomizeGrid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 3734
    :cond_0
    return v0
.end method

.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3699
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3700
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->appBadgeUpdated(Ljava/util/List;)V

    .line 3702
    :cond_0
    return-void
.end method

.method public appModelLoaded()V
    .locals 1

    .prologue
    .line 3626
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3627
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    .line 3629
    :cond_0
    return-void
.end method

.method public appModelUpdated()V
    .locals 3

    .prologue
    .line 3633
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3634
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->setDataIsReady()V

    .line 3638
    iget-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    if-eqz v1, :cond_1

    .line 3639
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingAppModelUpdated:Z

    .line 3661
    :cond_0
    :goto_0
    return-void

    .line 3642
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    .line 3643
    .local v0, "state":Lcom/android/launcher2/MenuAppsGrid$State;
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_3

    :cond_2
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->canUninstallApps()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3645
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 3646
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGridFragment;->handleDownloadedAppsStateChange()V

    .line 3650
    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onAppModelUpdated()V

    .line 3654
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    .line 3655
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    .line 3656
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3657
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 3648
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    goto :goto_1
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 556
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_HIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_UNHIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_ENABLE:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->MOVE_TO_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->REMOVE_FROM_SECRET_BOX:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->REMOVE_FOLDER:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v2, :cond_1

    .line 625
    :cond_0
    :goto_0
    return v13

    .line 568
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    .line 569
    .local v9, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->isAirMoveOninSettings()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v2, :cond_2

    .line 570
    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->registerForAirMotionGestureListner()V

    .line 575
    :cond_2
    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->isMenuExiting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    iget-object v0, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_3

    move v13, v12

    .line 581
    goto :goto_0

    .line 585
    :cond_3
    iget v10, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditModeShrinkFactor:F

    .line 586
    .local v10, "shrinkfactor":F
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v2, :cond_4

    .line 587
    iget-object v0, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getEditModeShrinkFactor()F

    move-result v10

    .line 589
    :cond_4
    invoke-static {p1, v10}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;F)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 591
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v2, :cond_5

    .line 596
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher2/Launcher;->exitAllApps(ZZ)V

    .line 617
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v2, 0x23

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 620
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v11

    .line 621
    .local v11, "ws":Lcom/android/launcher2/Workspace;
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f10006e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2, v12}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    move v13, v12

    .line 622
    goto/16 :goto_0

    .line 598
    .end local v11    # "ws":Lcom/android/launcher2/Workspace;
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->enableRollNavigation()V

    .line 599
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AppItem;

    .line 601
    .local v7, "i":Lcom/android/launcher2/AppItem;
    const/4 v6, 0x0

    .line 602
    .local v6, "itemCanBeDisabled":Z
    instance-of v0, v7, Lcom/android/launcher2/FolderItem;

    if-eqz v0, :cond_8

    .line 603
    const/4 v6, 0x0

    .line 608
    :goto_2
    iget-object v0, v7, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v2, :cond_9

    move v1, v12

    .line 609
    .local v1, "bCreateFolder":Z
    :goto_3
    const/4 v8, 0x0

    .line 610
    .local v8, "isLastItemInPage":Z
    iget v0, v7, Lcom/android/launcher2/AppItem;->mScreen:I

    if-ltz v0, :cond_6

    iget v0, v7, Lcom/android/launcher2/AppItem;->mScreen:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget v0, v7, Lcom/android/launcher2/AppItem;->mScreen:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v0

    if-ne v0, v12, :cond_6

    .line 612
    const/4 v8, 0x1

    .line 614
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    iget-boolean v2, v7, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v2, :cond_7

    invoke-direct {p0, v7}, Lcom/android/launcher2/MenuAppsGrid;->isKnoxDefaultShortcutApp(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_7
    move v2, v12

    :goto_4
    if-nez v8, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v12

    :goto_5
    iget-object v4, v7, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_c

    move v4, v12

    :goto_6
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/MenuTitleBarManager;->showEditBar(ZZZZLcom/android/launcher2/MenuStateAnimatorSet;Z)V

    goto/16 :goto_1

    .line 605
    .end local v1    # "bCreateFolder":Z
    .end local v8    # "isLastItemInPage":Z
    :cond_8
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0, v7}, Lcom/android/launcher2/MenuAppModel;->canDisableable(Lcom/android/launcher2/AppItem;)Z

    move-result v6

    goto :goto_2

    :cond_9
    move v1, v13

    .line 608
    goto :goto_3

    .restart local v1    # "bCreateFolder":Z
    .restart local v8    # "isLastItemInPage":Z
    :cond_a
    move v2, v13

    .line 614
    goto :goto_4

    :cond_b
    move v3, v13

    goto :goto_5

    :cond_c
    move v4, v13

    goto :goto_6

    .line 624
    .end local v1    # "bCreateFolder":Z
    .end local v6    # "itemCanBeDisabled":Z
    .end local v7    # "i":Lcom/android/launcher2/AppItem;
    .end local v8    # "isLastItemInPage":Z
    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->disableRollNavigation()V

    goto/16 :goto_0
.end method

.method public clearLayout(Lcom/android/launcher2/Page;)V
    .locals 6
    .param p1, "layout"    # Lcom/android/launcher2/Page;

    .prologue
    .line 818
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AppIconView;>;"
    move-object v5, p1

    .line 820
    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 821
    .local v2, "l":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getHiddenItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 822
    .local v0, "dragItem":Lcom/android/launcher2/BaseItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 823
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppIconView;

    .line 824
    .local v3, "v":Lcom/android/launcher2/AppIconView;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    instance-of v5, v3, Lcom/android/launcher2/FolderIconView;

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_1

    .line 822
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 827
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/launcher2/AppIconView;->setVisibility(I)V

    .line 828
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    invoke-virtual {v5, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 830
    .end local v3    # "v":Lcom/android/launcher2/AppIconView;
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 832
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    .line 839
    :cond_3
    :goto_2
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    .line 840
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->clearLayout(Lcom/android/launcher2/Page;)V

    .line 841
    return-void

    .line 835
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 836
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    goto :goto_2
.end method

.method public closeFolder(ZZ)Z
    .locals 3
    .param p1, "commitEdit"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v0, 0x1

    .line 496
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    .line 498
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setEnableReOrdering(Z)V

    .line 502
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/Folder;->close(ZZ)V

    .line 505
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public completeMoveSecretItem()V
    .locals 1

    .prologue
    .line 4654
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateMoveToSecretBox:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->moveToSecretBox()V

    .line 4655
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x1

    .line 4116
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 4117
    .local v0, "action":I
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    .line 4128
    .local v1, "result":Z
    if-ne v0, v2, :cond_1

    .line 4129
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V

    .line 4134
    :cond_0
    :goto_0
    return v1

    .line 4130
    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 4131
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->setDragInProgress(Z)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 4139
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4140
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->onDrawComplete(Landroid/graphics/Canvas;)V

    .line 4141
    return-void
.end method

.method protected endDragging()V
    .locals 0

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->disableRollNavigation()V

    .line 639
    return-void
.end method

.method protected findGrandchildByTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 6
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 3743
    const/4 v4, 0x0

    .local v4, "pageIndex":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 3744
    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutMenu;

    .line 3745
    .local v3, "page":Lcom/android/launcher2/CellLayoutMenu;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 3746
    .local v2, "layout":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 3747
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3748
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 3753
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "layout":Landroid/view/ViewGroup;
    .end local v3    # "page":Lcom/android/launcher2/CellLayoutMenu;
    :goto_2
    return-object v0

    .line 3746
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "i":I
    .restart local v2    # "layout":Landroid/view/ViewGroup;
    .restart local v3    # "page":Lcom/android/launcher2/CellLayoutMenu;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3743
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3753
    .end local v1    # "i":I
    .end local v2    # "layout":Landroid/view/ViewGroup;
    .end local v3    # "page":Lcom/android/launcher2/CellLayoutMenu;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getActiveTitleBarForState()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 3468
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getAppsQuickViewState()Z
    .locals 1

    .prologue
    .line 4489
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->isQuickViewOpen()Z

    move-result v0

    return v0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 4012
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4013
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->getAssociatedLowerPageBound(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 4018
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v0

    .line 4019
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->getAssociatedUpperPageBound(I)I

    move-result v0

    goto :goto_0
.end method

.method public getCreateFolderColor(I)V
    .locals 0
    .param p1, "createFolderColor"    # I

    .prologue
    .line 4302
    iput p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mCreateFolderColor:I

    .line 4303
    return-void
.end method

.method public getFolderColorToAddButton()I
    .locals 1

    .prologue
    .line 3880
    sget v0, Lcom/android/launcher2/MenuAppsGrid;->mFolderColorToAddButton:I

    return v0
.end method

.method public getFolderTitletoAddButton()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3870
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->mFolderTitletoAddButton:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxItemsPerScreen()I
    .locals 2

    .prologue
    .line 4574
    iget v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountX:I

    iget v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mCellCountY:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getMenuAppsGridFragment()Lcom/android/launcher2/MenuAppsGridFragment;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    return-object v0
.end method

.method public getMenuSecretPageCnt()I
    .locals 3

    .prologue
    .line 4537
    const/4 v0, 0x0

    .line 4539
    .local v0, "menuSecretPagecnt":I
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v2, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v1, v2, :cond_0

    .line 4540
    sget v0, Lcom/android/launcher2/MenuAppsGrid;->mAlphabeticalMenuSecretPageCnt:I

    .line 4546
    :goto_0
    return v0

    .line 4543
    :cond_0
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getCustomMenuSecretPageCnt()I

    move-result v0

    goto :goto_0
.end method

.method public getOpenFolder()Lcom/android/launcher2/Folder;
    .locals 1

    .prologue
    .line 3819
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method public getOpenFolderId()J
    .locals 3

    .prologue
    .line 3823
    const-wide/16 v0, -0x1

    .line 3824
    .local v0, "folderId":J
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_0

    .line 3825
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    .line 3828
    :cond_0
    return-wide v0
.end method

.method getOrCreatePageAt(I)Lcom/android/launcher2/CellLayoutMenu;
    .locals 4
    .param p1, "screen"    # I

    .prologue
    .line 902
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v2

    .line 903
    .local v2, "pageCount":I
    if-ge p1, v2, :cond_0

    .line 904
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutMenu;

    .line 910
    :goto_0
    return-object v3

    .line 906
    :cond_0
    const/4 v1, 0x0

    .line 907
    .local v1, "page":Lcom/android/launcher2/CellLayoutMenu;
    move v0, v2

    .local v0, "i":I
    :goto_1
    if-gt v0, p1, :cond_1

    .line 908
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->createPage()Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v1

    .line 907
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 910
    goto :goto_0
.end method

.method public getPageCacheSize()I
    .locals 2

    .prologue
    .line 4433
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    .line 4434
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v0

    .line 4436
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->getPageCacheSize()I

    move-result v0

    goto :goto_0
.end method

.method protected getScrollZoneLeftWidth()I
    .locals 2

    .prologue
    .line 4106
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getScrollZoneRightWidth()I
    .locals 2

    .prologue
    .line 4111
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e019f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getStartEditNormalPage()Z
    .locals 1

    .prologue
    .line 810
    sget-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->mStartEditNormalPage:Z

    return v0
.end method

.method public getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1

    .prologue
    .line 3472
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3473
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    goto :goto_0
.end method

.method getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1

    .prologue
    .line 3477
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3478
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    goto :goto_0
.end method

.method getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;
    .locals 1
    .param p1, "state"    # Lcom/android/launcher2/MenuAppsGrid$State;

    .prologue
    .line 3481
    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    return-object v0
.end method

.method public getTitleBarHight()I
    .locals 1

    .prologue
    .line 3463
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuTitleBarManager;->getTitleBarHeight()I

    move-result v0

    return v0
.end method

.method protected getUnEncumberedPagedViewBounds(Landroid/graphics/Rect;)Z
    .locals 9
    .param p1, "aRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    .line 3665
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v4, v5, :cond_1

    .line 3666
    const/4 v3, 0x0

    .line 3691
    :cond_0
    :goto_0
    return v3

    .line 3668
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3670
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuTitleBarManager;->getMenuEditBar()Lcom/android/launcher2/MenuEditBar;

    move-result-object v2

    .line 3671
    .local v2, "menuEditBar":Lcom/android/launcher2/MenuEditBar;
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuTitleBarManager;->getEditTitleBar()Landroid/view/View;

    move-result-object v1

    .line 3672
    .local v1, "editTitleBar":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuEditBar;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3673
    invoke-virtual {v2}, Lcom/android/launcher2/MenuEditBar;->getBarPosition()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 3685
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 3686
    const v4, 0x7f0f00aa

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3687
    .local v0, "bb":Landroid/view/View;
    if-eqz v0, :cond_0

    goto :goto_0

    .line 3675
    .end local v0    # "bb":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v2}, Lcom/android/launcher2/MenuEditBar;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 3676
    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPaddingTop()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPaddingTop()I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 3673
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getViewType()Lcom/android/launcher2/MenuView$ViewType;
    .locals 1

    .prologue
    .line 3739
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    return-object v0
.end method

.method public getWorkerHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 4589
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 8
    .param p1, "newState"    # Lcom/android/launcher2/MenuAppsGrid$State;
    .param p2, "oldState"    # Lcom/android/launcher2/MenuAppsGrid$State;

    .prologue
    const/4 v7, 0x1

    .line 3515
    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 3517
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_1

    .line 3518
    :cond_0
    invoke-virtual {p0, v7, v7}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    .line 3519
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    .line 3520
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3524
    .local v2, "stateChangeAnimators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v3

    .line 3525
    .local v3, "stateObj":Lcom/android/launcher2/MenuAppsGrid$StateObj;
    if-eqz v3, :cond_2

    .line 3526
    invoke-virtual {v3, v2, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 3528
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v3

    .line 3529
    if-eqz v3, :cond_3

    .line 3530
    invoke-virtual {v3, v2, p2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 3542
    :cond_3
    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v5, :cond_5

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v5, :cond_5

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v5, :cond_5

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p1, v5, :cond_5

    .line 3544
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    .line 3550
    :cond_4
    :goto_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 3552
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v0

    .line 3553
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 3554
    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v5, p1, p2}, Lcom/android/launcher2/CellLayoutMenu;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 3553
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3545
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_5
    if-eq p2, p1, :cond_4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq p2, v5, :cond_4

    .line 3546
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid;->getConstructedViews()Ljava/util/List;

    move-result-object v4

    .line 3547
    .local v4, "views":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppIconView;>;"
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mOldState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exitItemViews(Ljava/lang/Iterable;)V

    .line 3548
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 3556
    .end local v4    # "views":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppIconView;>;"
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    .line 3557
    return-void
.end method

.method public hideEditBar(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 4485
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/MenuTitleBarManager;->hideEditBar(Landroid/animation/Animator;Lcom/android/launcher2/MenuStateAnimatorSet;)V

    .line 4486
    return-void
.end method

.method protected invalidatePageData()V
    .locals 3

    .prologue
    .line 673
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->invalidatePageData()V

    .line 674
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->setDirtyFlags()V

    .line 676
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->updatePageTransforms()V

    .line 677
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    .line 678
    .local v1, "info":Lcom/android/launcher2/FolderItem;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->findGrandchildByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .line 679
    .local v0, "icon":Lcom/android/launcher2/FolderIconView;
    if-eqz v0, :cond_0

    .line 680
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Folder;->updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V

    .line 683
    .end local v0    # "icon":Lcom/android/launcher2/FolderIconView;
    .end local v1    # "info":Lcom/android/launcher2/FolderItem;
    :cond_0
    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 1
    .param p1, "currentPage"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    .line 660
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->invalidatePageData(IZ)V

    .line 665
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->restoreOpenFolderState(Landroid/os/Bundle;)V

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    .line 669
    :cond_0
    return-void
.end method

.method public isDragInProgress()Z
    .locals 1

    .prologue
    .line 4152
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mDragInProgress:Z

    return v0
.end method

.method public isFolderPage(I)Z
    .locals 1
    .param p1, "pageNum"    # I

    .prologue
    .line 4617
    const/4 v0, 0x0

    return v0
.end method

.method public isReminderChecked()Z
    .locals 4

    .prologue
    .line 4676
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4678
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "add.movetosecret.popup.dismissed.key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isScrollingState()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4682
    iget v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mTouchState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecretPage(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    .line 4531
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    .line 4532
    .local v0, "page":Lcom/android/launcher2/CellLayoutMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutMenu;->getPageType()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public leaveCurrentState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3485
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    .line 3487
    .local v0, "oldState":Lcom/android/launcher2/MenuAppsGrid$State;
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v2, :cond_1

    .line 3488
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v4, v2}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    .line 3490
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    .line 3491
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3493
    .local v1, "stateChangeAnimators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz v0, :cond_2

    .line 3494
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 3502
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    .line 3503
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    .line 3504
    return-void
.end method

.method protected onAddItem(Lcom/android/launcher2/AppIconView;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/launcher2/AppIconView;

    .prologue
    .line 642
    invoke-virtual {p1, p0}, Lcom/android/launcher2/AppIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    invoke-virtual {p1, p0}, Lcom/android/launcher2/AppIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 644
    sget-object v0, Lcom/android/launcher2/FocusHelper;->MENUAPPGRID_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/AppIconView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 645
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 233
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_1

    instance-of v2, p1, Lcom/android/launcher2/FolderIconView;

    if-nez v2, :cond_1

    .line 260
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 238
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 239
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 240
    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 242
    .local v0, "item":Lcom/android/launcher2/AppItem;
    const-string v2, "USA"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_2

    .line 245
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->cancelClicksOnChildrenForCurrentPage()V

    .line 246
    check-cast v0, Lcom/android/launcher2/FolderItem;

    .end local v0    # "item":Lcom/android/launcher2/AppItem;
    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    goto :goto_0

    .line 248
    .restart local v0    # "item":Lcom/android/launcher2/AppItem;
    :cond_2
    iget-object v2, v0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->REMOVE_FOLDER:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_0

    check-cast p1, Lcom/android/launcher2/AppIconView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->isDimmed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    check-cast v0, Lcom/android/launcher2/FolderItem;

    .end local v0    # "item":Lcom/android/launcher2/AppItem;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/launcher2/FolderClickDialogFragment;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 253
    .restart local v0    # "item":Lcom/android/launcher2/AppItem;
    .restart local p1    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_5

    :cond_4
    iget-object v2, v0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->REMOVE_FOLDER:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->cancelClicksOnChildrenForCurrentPage()V

    .line 256
    check-cast v0, Lcom/android/launcher2/FolderItem;

    .end local v0    # "item":Lcom/android/launcher2/AppItem;
    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 4258
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mRequestedOrientation:I

    .line 4259
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    .line 4260
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mRecycledViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 652
    return-void
.end method

.method public onExitAllApps()V
    .locals 2

    .prologue
    .line 516
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    .line 517
    return-void
.end method

.method onFadeEnd()V
    .locals 4

    .prologue
    .line 4462
    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    if-nez v3, :cond_1

    .line 4469
    :cond_0
    return-void

    .line 4463
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    .line 4464
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v1

    .line 4465
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4466
    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 4467
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->destroyDummyPanel()V

    .line 4465
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method onFadeStart()V
    .locals 7

    .prologue
    .line 4441
    iget-boolean v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    if-eqz v6, :cond_1

    .line 4459
    :cond_0
    return-void

    .line 4442
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    .line 4443
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v0

    .line 4444
    .local v0, "c":I
    add-int/lit8 v4, v0, -0x1

    .line 4445
    .local v4, "l":I
    add-int/lit8 v5, v0, 0x1

    .line 4446
    .local v5, "r":I
    if-gez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 4447
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v6

    if-lt v5, v6, :cond_3

    const/4 v5, 0x0

    .line 4449
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v2

    .line 4450
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 4451
    if-eq v3, v0, :cond_4

    if-eq v3, v4, :cond_4

    if-ne v3, v5, :cond_6

    .line 4452
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 4453
    .local v1, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->setupDummyPanel()V

    .line 4454
    if-eq v3, v0, :cond_6

    if-eq v3, v4, :cond_5

    if-ne v3, v5, :cond_6

    .line 4455
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    .line 4450
    .end local v1    # "cl":Lcom/android/launcher2/CellLayout;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZII)V
    .locals 12
    .param p1, "childItem"    # Lcom/android/launcher2/BaseItem;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "destinationContainerId"    # J
    .param p5, "removeItem"    # Z
    .param p6, "findNewPosition"    # Z
    .param p7, "destinationContainerScreen"    # I
    .param p8, "destinationContainerCell"    # I

    .prologue
    .line 4313
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v8, v9, :cond_5

    const/4 v3, 0x1

    .line 4314
    .local v3, "inEditMode":Z
    :goto_0
    if-nez v3, :cond_0

    .line 4315
    sget-object v8, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 4317
    :cond_0
    sget-object v8, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppModel;->editAddFolder()Lcom/android/launcher2/AppFolderItem;

    move-result-object v5

    .line 4318
    .local v5, "newFolder":Lcom/android/launcher2/AppFolderItem;
    iput-object p2, v5, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    .line 4319
    iget v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mCreateFolderColor:I

    invoke-virtual {v5, v8}, Lcom/android/launcher2/AppFolderItem;->setFolderColor(I)V

    .line 4328
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v7

    .line 4329
    .local v7, "screen":I
    const/4 v0, -0x1

    .line 4331
    .local v0, "cell":I
    if-eqz p1, :cond_2

    move-object v4, p1

    .line 4332
    check-cast v4, Lcom/android/launcher2/AppItem;

    .line 4335
    .local v4, "item":Lcom/android/launcher2/AppItem;
    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v9, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v8, v9, :cond_1

    .line 4336
    move/from16 v7, p7

    .line 4337
    move/from16 v0, p8

    .line 4341
    :cond_1
    const/4 v8, -0x1

    iput v8, v4, Lcom/android/launcher2/AppItem;->mCell:I

    .line 4342
    invoke-virtual {v5, p1}, Lcom/android/launcher2/AppFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 4346
    .end local v4    # "item":Lcom/android/launcher2/AppItem;
    :cond_2
    invoke-direct {p0, v5, v7, v0}, Lcom/android/launcher2/MenuAppsGrid;->findNewFolderPosition(Lcom/android/launcher2/AppItem;II)V

    .line 4348
    if-nez v3, :cond_3

    .line 4349
    sget-object v8, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 4351
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v1

    .line 4352
    .local v1, "currentScreen":I
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    .line 4354
    iget-object v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v9, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v8, v9, :cond_6

    .line 4356
    iget-wide v8, v5, Lcom/android/launcher2/AppFolderItem;->mId:J

    invoke-virtual {p0, v8, v9}, Lcom/android/launcher2/MenuAppsGrid;->getPageIndexForItemId(J)I

    move-result v6

    .line 4357
    .local v6, "pageIndex":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v8

    if-eq v6, v8, :cond_4

    .line 4358
    invoke-virtual {p0, v6}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    .line 4365
    .end local v6    # "pageIndex":I
    :cond_4
    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 4366
    .local v2, "handler":Landroid/os/Handler;
    new-instance v8, Lcom/android/launcher2/MenuAppsGrid$6;

    invoke-direct {v8, p0}, Lcom/android/launcher2/MenuAppsGrid$6;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v2, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4372
    return-void

    .line 4313
    .end local v0    # "cell":I
    .end local v1    # "currentScreen":I
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "inEditMode":Z
    .end local v5    # "newFolder":Lcom/android/launcher2/AppFolderItem;
    .end local v7    # "screen":I
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 4360
    .restart local v0    # "cell":I
    .restart local v1    # "currentScreen":I
    .restart local v3    # "inEditMode":Z
    .restart local v5    # "newFolder":Lcom/android/launcher2/AppFolderItem;
    .restart local v7    # "screen":I
    :cond_6
    iget v8, v5, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    if-eq v8, v1, :cond_4

    .line 4361
    iget v8, v5, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    invoke-virtual {p0, v8}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    goto :goto_1
.end method

.method public onFolderNameChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 4030
    sget-object v0, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v0, v1, :cond_0

    .line 4036
    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$5;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$5;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->post(Ljava/lang/Runnable;)Z

    .line 4045
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 993
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/SmoothPagedView;->onLayout(ZIIII)V

    .line 994
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v0}, Lcom/android/launcher2/PanelDrawer;->hasLoadedResources()Z

    move-result v0

    if-nez v0, :cond_0

    .line 995
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PanelDrawer;->loadResources(Landroid/content/res/Resources;)V

    .line 996
    :cond_0
    if-eqz p1, :cond_1

    .line 997
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->resetPanelViewport()V

    .line 1040
    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 551
    :cond_0
    :goto_0
    return v2

    .line 526
    :cond_1
    iget v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mNextPage:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v3, v4, :cond_0

    .line 534
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_4

    .line 535
    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "add_widgets"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 538
    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "addapps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v4, "create_folder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 539
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 540
    .local v1, "tag":Ljava/lang/Object;
    instance-of v3, v1, Lcom/android/launcher2/AppItem;

    if-eqz v3, :cond_3

    move-object v0, v1

    .line 541
    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 542
    .local v0, "item":Lcom/android/launcher2/AppItem;
    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v4, :cond_0

    .line 547
    .end local v0    # "item":Lcom/android/launcher2/AppItem;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    .line 551
    .end local v1    # "tag":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->beginDragging(Landroid/view/View;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v0}, Lcom/android/launcher2/PanelDrawer;->pause()V

    .line 211
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPause()V

    .line 213
    const-string v0, "USA"

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/FolderClickDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/FolderClickDialogFragment;->dismiss(Landroid/app/FragmentManager;)V

    .line 219
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 4522
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 4523
    check-cast v0, Landroid/os/Bundle;

    .line 4524
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    const-string v2, "DLAppsSavedIndexKey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->setLastPageIndex(I)V

    .line 4525
    const-string v1, "SuperStateKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/launcher2/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4529
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 4527
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onResume()V

    .line 227
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v0}, Lcom/android/launcher2/PanelDrawer;->resume()V

    .line 228
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 4514
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4515
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "SuperStateKey"

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4516
    const-string v2, "DLAppsSavedIndexKey"

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StateDownloadedApps;->getLastPageIndex()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4517
    return-object v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 4249
    if-nez p2, :cond_0

    .line 4250
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4251
    .local v0, "newConfig":Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuAppsGrid;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    .line 4253
    .end local v0    # "newConfig":Landroid/content/res/Configuration;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 4254
    return-void
.end method

.method public openFolder(Lcom/android/launcher2/FolderItem;Z)V
    .locals 8
    .param p1, "folderItem"    # Lcom/android/launcher2/FolderItem;
    .param p2, "animateOpen"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 421
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v4

    if-nez v4, :cond_0

    .line 425
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->findGrandchildByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    .line 426
    .local v1, "icon":Lcom/android/launcher2/FolderIconView;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 428
    .local v3, "parentView":Landroid/view/ViewGroup;
    const/16 v4, 0x80

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v7}, Lcom/android/launcher2/MenuAppsGrid;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 430
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v4, v7, :cond_2

    if-eqz v1, :cond_2

    .line 431
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolderLocation:[I

    invoke-virtual {v1, v4}, Lcom/android/launcher2/FolderIconView;->getLocationOnScreen([I)V

    .line 437
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 439
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 440
    invoke-virtual {p0, v5, v5}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    .line 443
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    .line 444
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iput-object p0, v4, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    .line 445
    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-object v4, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v7, v4}, Lcom/android/launcher2/Folder;->setHomeView(Lcom/android/launcher2/HomeView;)V

    .line 446
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p0}, Lcom/android/launcher2/Folder;->setItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p0}, Lcom/android/launcher2/Folder;->addFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V

    .line 449
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v7, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v4, v7, :cond_a

    move v2, v5

    .line 451
    .local v2, "isAlphaGrid":Z
    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v4, v4, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-nez v2, :cond_5

    move v6, v5

    :cond_5
    invoke-virtual {v4, v6}, Lcom/android/launcher2/CellLayoutNoGap;->setEnableReOrdering(Z)V

    .line 452
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    new-instance v6, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;

    invoke-direct {v6, p0, v1, p2}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/FolderIconView;Z)V

    invoke-virtual {v4, v6}, Lcom/android/launcher2/Folder;->setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V

    .line 454
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 455
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p1, v6}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V

    .line 462
    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    .line 463
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v4

    invoke-virtual {v6, v4, v3, p2}, Lcom/android/launcher2/Folder;->open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V

    .line 466
    new-instance v4, Lcom/android/launcher2/MenuAppsGrid$1;

    invoke-direct {v4, p0, v1}, Lcom/android/launcher2/MenuAppsGrid$1;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/FolderIconView;)V

    const-wide/16 v6, 0x32

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/launcher2/MenuAppsGrid;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 473
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 474
    .local v0, "config":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v4, v5, :cond_7

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->isFocused()Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 478
    :cond_8
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Folder;->startEditingFolderName(Z)V

    .line 481
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getItemViews()Ljava/lang/Iterable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->enterItemViews(Ljava/lang/Iterable;)V

    goto/16 :goto_0

    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v2    # "isAlphaGrid":Z
    :cond_a
    move v2, v6

    .line 449
    goto :goto_1
.end method

.method public preCreateFolder(Ljava/lang/String;Lcom/android/launcher2/MenuAppsGrid$State;I)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "oldState"    # Lcom/android/launcher2/MenuAppsGrid$State;
    .param p3, "color"    # I

    .prologue
    .line 3832
    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v4, :cond_3

    const/4 v1, 0x1

    .line 3833
    .local v1, "inEditMode":Z
    :goto_0
    if-nez v1, :cond_0

    .line 3834
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 3837
    :cond_0
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editAddFolder()Lcom/android/launcher2/AppFolderItem;

    move-result-object v2

    .line 3838
    .local v2, "newFolder":Lcom/android/launcher2/AppFolderItem;
    iput-object p1, v2, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    .line 3839
    iput p3, v2, Lcom/android/launcher2/AppFolderItem;->mColor:I

    .line 3848
    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v5, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v4, v5, :cond_1

    .line 3849
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v4, v5, :cond_4

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v4, p0}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    iget v3, v4, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mEnterPage:I

    .line 3850
    .local v3, "screen":I
    :goto_1
    const/4 v0, -0x1

    .line 3851
    .local v0, "cell":I
    invoke-direct {p0, v2, v3, v0}, Lcom/android/launcher2/MenuAppsGrid;->findNewFolderPosition(Lcom/android/launcher2/AppItem;II)V

    .line 3854
    .end local v0    # "cell":I
    .end local v3    # "screen":I
    :cond_1
    if-nez v1, :cond_2

    .line 3855
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 3857
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGrid;->setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V

    .line 3859
    return-void

    .line 3832
    .end local v1    # "inEditMode":Z
    .end local v2    # "newFolder":Lcom/android/launcher2/AppFolderItem;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 3849
    .restart local v1    # "inEditMode":Z
    .restart local v2    # "newFolder":Lcom/android/launcher2/AppFolderItem;
    :cond_4
    const/4 v3, -0x1

    goto :goto_1
.end method

.method refreshQuickViewMenuGrid(Z)V
    .locals 2
    .param p1, "isSecret"    # Z

    .prologue
    .line 4187
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    if-eqz v0, :cond_0

    .line 4188
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->refreshQuickView(Z)V

    .line 4190
    :cond_0
    return-void
.end method

.method public releaseShadows()V
    .locals 8

    .prologue
    .line 4157
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v2

    .line 4158
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 4159
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 4160
    .local v1, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 4162
    .local v5, "l":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 4163
    .local v0, "ccout":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 4164
    invoke-virtual {v5, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4165
    .local v6, "v":Landroid/view/View;
    instance-of v7, v6, Lcom/android/launcher2/AppIconView;

    if-eqz v7, :cond_0

    .line 4166
    check-cast v6, Lcom/android/launcher2/AppIconView;

    .end local v6    # "v":Landroid/view/View;
    const/4 v7, 0x0

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/drawable/Drawable;)V

    .line 4163
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4158
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4170
    .end local v0    # "ccout":I
    .end local v1    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v4    # "j":I
    .end local v5    # "l":Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    return-void
.end method

.method protected repositionOpenFolder()V
    .locals 1

    .prologue
    .line 4242
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 4243
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->repositionOpenFolder()V

    .line 4245
    :cond_0
    return-void
.end method

.method public resetPanelViewport()V
    .locals 4

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 975
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 978
    :cond_0
    return-void
.end method

.method public resetPreCheckedItems()V
    .locals 1

    .prologue
    .line 3861
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3862
    return-void
.end method

.method public restoreOpenFolderState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 3778
    if-nez p1, :cond_1

    .line 3798
    :cond_0
    :goto_0
    return-void

    .line 3780
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3787
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->isDataReady()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3788
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mPendingFolderBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 3792
    :cond_2
    const-string v1, "openFolderId"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3793
    .local v2, "openFolderId":J
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 3794
    .local v0, "item":Lcom/android/launcher2/AppItem;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/FolderItem;

    if-eqz v1, :cond_0

    .line 3795
    check-cast v0, Lcom/android/launcher2/FolderItem;

    .end local v0    # "item":Lcom/android/launcher2/AppItem;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    .line 3796
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->openFolderKeyboardIfNeeded(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public revertEditChanges()V
    .locals 1

    .prologue
    .line 3615
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->editRevert()V

    .line 3616
    return-void
.end method

.method public saveEditChanges()V
    .locals 5

    .prologue
    .line 3603
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    sget-object v4, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v3, v4, :cond_0

    .line 3604
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v2

    .line 3605
    .local v2, "topLevelItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v2, :cond_0

    .line 3606
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 3607
    .local v0, "i":Lcom/android/launcher2/AppItem;
    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->editRevertCell()V

    goto :goto_0

    .line 3611
    .end local v0    # "i":Lcom/android/launcher2/AppItem;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "topLevelItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_0
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 3612
    return-void
.end method

.method public saveOpenFolderState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 3764
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v1, :cond_1

    .line 3775
    :cond_0
    :goto_0
    return-void

    .line 3765
    :cond_1
    const-string v1, "openFolderId"

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolderId()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3767
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3768
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/widget/EditText;

    move-result-object v0

    .line 3769
    .local v0, "text":Landroid/widget/EditText;
    const-string v1, "pendingFolderEditText"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3771
    const-string v1, "pending_folder_edit_text_selection_start"

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3772
    const-string v1, "pending_folder_edit_text_selection_end"

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public saveSecretNoti(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "mIsRepeat"    # Ljava/lang/Boolean;

    .prologue
    .line 4662
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4664
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4665
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "add.movetosecret.popup.dismissed.key"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4666
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4667
    return-void
.end method

.method protected setAccessibilityFocusChange(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 4687
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setMenuAppsGridAccessibilityEnabled(Z)V

    .line 4688
    return-void
.end method

.method public setCreateFolderAddButtonFromHomeView(Z)V
    .locals 0
    .param p1, "bIsFromHomeView"    # Z

    .prologue
    .line 3971
    iput-boolean p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mIsFromHomeView:Z

    .line 3972
    return-void
.end method

.method public setCreateFolderAddButtonState(Lcom/android/launcher2/BaseItem;)V
    .locals 13
    .param p1, "childItem"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 3893
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    sget-object v11, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v10, v11}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v10

    if-nez v10, :cond_0

    .line 3894
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    sget-object v11, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v10, v11}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3897
    :cond_0
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/launcher2/MenuAppsGrid;->mCreateFoldertoAddButton:Z

    .line 3898
    if-eqz p1, :cond_b

    .line 3901
    const/4 v6, 0x0

    .line 3902
    .local v6, "item":Lcom/android/launcher2/AppItem;
    const/4 v9, 0x0

    .line 3905
    .local v9, "view":Lcom/android/launcher2/AppIconView;
    const/4 v4, 0x1

    .line 3907
    .local v4, "isAlreadyAdded":Z
    instance-of v10, p1, Lcom/android/launcher2/AppItem;

    if-eqz v10, :cond_3

    move-object v6, p1

    .line 3908
    check-cast v6, Lcom/android/launcher2/AppItem;

    .line 3909
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3910
    const/4 v4, 0x0

    .line 3958
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    sget-object v11, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v10, v11}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 3959
    if-nez v4, :cond_2

    .line 3960
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    invoke-virtual {v10, v6, v9}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->preCheckAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)V

    .line 3966
    .end local v4    # "isAlreadyAdded":Z
    .end local v6    # "item":Lcom/android/launcher2/AppItem;
    .end local v9    # "view":Lcom/android/launcher2/AppIconView;
    :cond_2
    :goto_1
    return-void

    .line 3911
    .restart local v4    # "isAlreadyAdded":Z
    .restart local v6    # "item":Lcom/android/launcher2/AppItem;
    .restart local v9    # "view":Lcom/android/launcher2/AppIconView;
    :cond_3
    instance-of v10, p1, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v10, :cond_1

    .line 3912
    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    .line 3913
    .local v1, "appItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 3914
    .local v0, "appItem":Lcom/android/launcher2/AppItem;
    invoke-static {v0}, Lcom/android/launcher2/AppItem;->isFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 3915
    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .end local v0    # "appItem":Lcom/android/launcher2/AppItem;
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v8

    .line 3916
    .local v8, "itemsInFolder":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    const/4 v5, 0x0

    .line 3917
    .local v5, "isFound":Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AppItem;

    .line 3918
    .local v7, "itemInFolder":Lcom/android/launcher2/AppItem;
    iget-object v10, v7, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v11, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v10, v11, :cond_5

    .line 3919
    sget-boolean v10, Lcom/android/launcher2/MenuAppsGrid;->DEBUGGABLE:Z

    if-eqz v10, :cond_6

    const-string v10, "Launcher.MenuAppsGrid"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MenuAppsGrid:setCreateFolderAddButtonState item = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3920
    :cond_6
    move-object v6, v7

    .line 3921
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 3922
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3923
    const/4 v4, 0x0

    .line 3925
    :cond_7
    const/4 v5, 0x1

    .line 3929
    .end local v7    # "itemInFolder":Lcom/android/launcher2/AppItem;
    :cond_8
    if-eqz v5, :cond_4

    goto/16 :goto_0

    .line 3930
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "isFound":Z
    .end local v8    # "itemsInFolder":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .restart local v0    # "appItem":Lcom/android/launcher2/AppItem;
    :cond_9
    iget-object v10, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v10, :cond_4

    .line 3931
    iget-object v10, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v11, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v10, v11, :cond_4

    .line 3932
    move-object v6, v0

    .line 3933
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 3934
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid;->preCheckedItems:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3935
    const/4 v4, 0x0

    .line 3937
    :cond_a
    sget-boolean v10, Lcom/android/launcher2/MenuAppsGrid;->DEBUGGABLE:Z

    if-eqz v10, :cond_1

    const-string v10, "Launcher.MenuAppsGrid"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MenuAppsGrid:setCreateFolderAddButtonState item = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3964
    .end local v0    # "appItem":Lcom/android/launcher2/AppItem;
    .end local v1    # "appItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v4    # "isAlreadyAdded":Z
    .end local v6    # "item":Lcom/android/launcher2/AppItem;
    .end local v9    # "view":Lcom/android/launcher2/AppIconView;
    :cond_b
    iget-object v10, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    sget-object v11, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v10, v11}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto/16 :goto_1
.end method

.method protected setDataIsReady()V
    .locals 0

    .prologue
    .line 3620
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->setDataIsReady()V

    .line 3621
    return-void
.end method

.method setDummyPanelProperties(FI)V
    .locals 6
    .param p1, "baseDarken"    # F
    .param p2, "alpha"    # I

    .prologue
    .line 4474
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-object v4, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getBackgroundDarken()F

    move-result v2

    .line 4476
    .local v2, "darkenAmount":F
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v1

    .line 4477
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 4478
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 4479
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    sget v4, Lcom/android/launcher2/Launcher;->sMenuBgDarkenAmountNormal:F

    invoke-virtual {v0, v4, p2}, Lcom/android/launcher2/CellLayout;->setDummyPanelProperties(FI)V

    .line 4480
    iget v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mPageBackgroundAlpha:F

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v5}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    .line 4477
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4482
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public setFolderColorToAddButton(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 3875
    sput p1, Lcom/android/launcher2/MenuAppsGrid;->mFolderColorToAddButton:I

    .line 3876
    return-void
.end method

.method public setFolderTitletoAddButton(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderTitle"    # Ljava/lang/String;

    .prologue
    .line 3865
    sput-object p1, Lcom/android/launcher2/MenuAppsGrid;->mFolderTitletoAddButton:Ljava/lang/String;

    .line 3866
    return-void
.end method

.method public setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/android/launcher2/MenuAppsGridFragment;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    .line 198
    return-void
.end method

.method public setPanelViewport(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 981
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 984
    :cond_0
    return-void
.end method

.method public setPrevFolderOnCreateFolder(Lcom/android/launcher2/Folder;)V
    .locals 0
    .param p1, "p"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 3887
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mPrevFolderOnCreateFolder:Lcom/android/launcher2/Folder;

    .line 3889
    return-void
.end method

.method public setStartEditNormalPage(Z)V
    .locals 0
    .param p1, "startEditNormalPage"    # Z

    .prologue
    .line 814
    sput-boolean p1, Lcom/android/launcher2/MenuAppsGrid;->mStartEditNormalPage:Z

    .line 815
    return-void
.end method

.method public setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V
    .locals 4
    .param p1, "folder"    # Lcom/android/launcher2/FolderItem;

    .prologue
    .line 3726
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateFolderSelect:Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v2

    # setter for: Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->mTargetFolderId:J
    invoke-static {v0, v2, v3}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->access$5602(Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;J)J

    .line 3727
    return-void
.end method

.method public setTabHost(Lcom/android/launcher2/MenuView;)V
    .locals 2
    .param p1, "tabHost"    # Lcom/android/launcher2/MenuView;

    .prologue
    .line 3565
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;

    .line 3566
    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->getTitleBarManager()Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    .line 3567
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid;->mEditButtonListener:Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->setEditBarClickListener(Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;)V

    .line 3568
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    if-nez v0, :cond_0

    .line 3569
    new-instance v0, Lcom/android/launcher2/MenuStateAnimatorSet;

    invoke-direct {v0}, Lcom/android/launcher2/MenuStateAnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    .line 3570
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStateAnimatorSet:Lcom/android/launcher2/MenuStateAnimatorSet;

    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$4;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuAppsGrid$4;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuStateAnimatorSet;->setListenerAdapter(Landroid/animation/AnimatorListenerAdapter;)V

    .line 3582
    :cond_0
    return-void
.end method

.method public setViewType(Lcom/android/launcher2/MenuView$ViewType;)V
    .locals 4
    .param p1, "viewType"    # Lcom/android/launcher2/MenuView$ViewType;

    .prologue
    const/4 v0, 0x1

    .line 3705
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-eq v2, p1, :cond_1

    .line 3706
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    .line 3707
    sput-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->mViewTypeChanged:Z

    .line 3709
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_0

    .line 3710
    sget-object v2, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-eq v2, v3, :cond_2

    .line 3711
    .local v0, "enableReOrdering":Z
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setEnabled(Z)V

    .line 3714
    .end local v0    # "enableReOrdering":Z
    :cond_0
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    .line 3715
    .local v1, "topApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3716
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->setDataIsReady()V

    .line 3717
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->invalidatePageData()V

    .line 3720
    .end local v1    # "topApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_1
    return-void

    .line 3710
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldSecretNotiRepeat()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4670
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    const-string v3, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4672
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "add.movetosecret.popup.dismissed.key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public syncPageItems(IZ)V
    .locals 2
    .param p1, "page"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 862
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    .line 863
    .local v0, "l":Lcom/android/launcher2/CellLayoutMenu;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutMenu;->setAlpha(F)V

    .line 864
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->buildViews()V

    .line 865
    return-void
.end method

.method public syncPages()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 687
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v6, v6, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v6, v6, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v6, v7, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    .line 691
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 692
    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Page;

    invoke-virtual {p0, v6}, Lcom/android/launcher2/MenuAppsGrid;->clearLayout(Lcom/android/launcher2/Page;)V

    .line 691
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 695
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    .line 696
    .local v2, "fading":Z
    iget-boolean v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mFading:Z

    if-eqz v6, :cond_2

    .line 697
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->onFadeEnd()V

    .line 699
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->removeAllViews()V

    .line 706
    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-eq v6, v7, :cond_3

    .line 708
    iput v8, p0, Lcom/android/launcher2/MenuAppsGrid;->mCurrentOrientation:I

    .line 710
    :cond_3
    const/4 v0, 0x0

    .line 711
    .local v0, "appsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 712
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->getAppsList()Ljava/util/List;

    move-result-object v0

    .line 714
    :cond_4
    if-nez v0, :cond_6

    .line 751
    :cond_5
    :goto_1
    return-void

    .line 739
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppItem;

    .line 740
    .local v5, "item":Lcom/android/launcher2/AppItem;
    invoke-direct {p0, v5}, Lcom/android/launcher2/MenuAppsGrid;->addAppItem(Lcom/android/launcher2/AppItem;)V

    .line 741
    instance-of v6, v5, Lcom/android/launcher2/AppFolderItem;

    if-eqz v6, :cond_7

    sget-boolean v6, Lcom/android/launcher2/MenuAppsGrid;->mViewTypeChanged:Z

    if-eqz v6, :cond_7

    .line 742
    check-cast v5, Lcom/android/launcher2/AppFolderItem;

    .end local v5    # "item":Lcom/android/launcher2/AppItem;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/AppFolderItem;->setToRedrawIcons(Z)V

    goto :goto_2

    .line 746
    :cond_8
    sput-boolean v8, Lcom/android/launcher2/MenuAppsGrid;->mViewTypeChanged:Z

    .line 748
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v1

    .line 749
    .local v1, "currentPage":I
    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuAppsGrid;->moveToCurrentPage(I)V

    .line 750
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->onFadeStart()V

    goto :goto_1
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scrollProgress"    # F

    .prologue
    .line 1046
    if-nez p1, :cond_0

    .line 1117
    :goto_0
    return-void

    .line 1050
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    .line 1052
    const/4 v13, 0x0

    .line 1053
    .local v13, "translationX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c001d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    int-to-float v14, v15

    .line 1054
    .local v14, "vtransition_rotation_max":F
    const/4 v5, 0x0

    .line 1055
    .local v5, "fixedPosition":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->isLoopingEnabled()Z

    move-result v15

    if-nez v15, :cond_6

    .line 1057
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuAppsGrid;->indexOfChild(Landroid/view/View;)I

    move-result v15

    if-nez v15, :cond_3

    const/4 v15, 0x0

    cmpg-float v15, p2, v15

    if-gez v15, :cond_3

    const/4 v8, 0x1

    .line 1058
    .local v8, "isOverScrollToLeft":Z
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuAppsGrid;->indexOfChild(Landroid/view/View;)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v15, 0x0

    cmpl-float v15, p2, v15

    if-lez v15, :cond_4

    const/4 v9, 0x1

    .local v9, "isOverScrollToRight":Z
    :goto_2
    move-object/from16 v3, p1

    .line 1059
    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 1060
    .local v3, "cl":Lcom/android/launcher2/CellLayout;
    if-eqz v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v15

    if-eqz v15, :cond_2

    :cond_1
    if-eqz v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 1061
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher2/MenuAppsGrid;->updatePageTransformZoomEffect(Lcom/android/launcher2/CellLayout;F)V

    goto :goto_0

    .line 1057
    .end local v3    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v8    # "isOverScrollToLeft":Z
    .end local v9    # "isOverScrollToRight":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 1058
    .restart local v8    # "isOverScrollToLeft":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 1065
    .restart local v3    # "cl":Lcom/android/launcher2/CellLayout;
    .restart local v9    # "isOverScrollToRight":Z
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuAppsGrid;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 1066
    .local v6, "i":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1067
    .local v11, "pageWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1072
    .local v10, "pageHeight":I
    const/high16 v15, 0x3f000000    # 0.5f

    int-to-float v0, v11

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x3f000000    # 0.5f

    int-to-float v0, v11

    move/from16 v17, v0

    mul-float v16, v16, v17

    int-to-float v0, v6

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    invoke-static/range {v15 .. v17}, Lcom/android/launcher2/MenuAppsGrid;->mix(FFF)F

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setPivotX(F)V

    .line 1075
    int-to-float v15, v10

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setPivotY(F)V

    .line 1077
    if-nez v6, :cond_8

    const/4 v15, 0x0

    cmpg-float v15, p2, v15

    if-gez v15, :cond_8

    .line 1079
    neg-float v15, v14

    mul-float v15, v15, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->maxOverScroll()F

    move-result v16

    div-float v15, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setRotationY(F)V

    .line 1081
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getScrollX()I

    move-result v15

    int-to-float v13, v15

    .line 1082
    const/4 v5, 0x1

    .line 1094
    .end local v3    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v6    # "i":I
    .end local v8    # "isOverScrollToLeft":Z
    .end local v9    # "isOverScrollToRight":Z
    .end local v10    # "pageHeight":I
    .end local v11    # "pageWidth":I
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/MenuAppsGrid;->mPageZoom:F

    .line 1095
    .local v12, "pageZoom":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1096
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1097
    if-nez v5, :cond_7

    .line 1098
    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v12

    mul-float v15, v15, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x40200000    # 2.5f

    div-float v15, v15, v16

    add-float/2addr v13, v15

    .line 1100
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 1106
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/MenuAppsGrid;->mPageBackgroundAlpha:F

    const/16 v16, 0x0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_a

    const/4 v2, 0x1

    .line 1108
    .local v2, "blend":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/Launcher;

    iget-object v15, v15, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v15}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/launcher2/Workspace;->getBackgroundDarken()F

    move-result v4

    .local v4, "darkenAmount":F
    move-object/from16 v15, p1

    .line 1109
    check-cast v15, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mPageBackgroundAlpha:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v4, v2}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    .line 1111
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b000c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 1112
    .local v7, "isMenuScrollAlpha":Z
    if-eqz v7, :cond_b

    .line 1113
    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v17

    sub-float v16, v16, v17

    const v17, 0x3e4ccccd    # 0.2f

    add-float v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(FF)F

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 1083
    .end local v2    # "blend":Z
    .end local v4    # "darkenAmount":F
    .end local v7    # "isMenuScrollAlpha":Z
    .end local v12    # "pageZoom":F
    .restart local v3    # "cl":Lcom/android/launcher2/CellLayout;
    .restart local v6    # "i":I
    .restart local v8    # "isOverScrollToLeft":Z
    .restart local v9    # "isOverScrollToRight":Z
    .restart local v10    # "pageHeight":I
    .restart local v11    # "pageWidth":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getPageCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v6, v15, :cond_9

    const/4 v15, 0x0

    cmpl-float v15, p2, v15

    if-lez v15, :cond_9

    .line 1085
    neg-float v15, v14

    mul-float v15, v15, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->maxOverScroll()F

    move-result v16

    div-float v15, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setRotationY(F)V

    .line 1087
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid;->getScrollX()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuAppsGrid;->mMaxScrollX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v13, v15

    .line 1088
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 1090
    :cond_9
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_3

    .line 1106
    .end local v3    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v6    # "i":I
    .end local v8    # "isOverScrollToLeft":Z
    .end local v9    # "isOverScrollToRight":Z
    .end local v10    # "pageHeight":I
    .end local v11    # "pageWidth":I
    .restart local v12    # "pageZoom":F
    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    .line 1115
    .restart local v2    # "blend":Z
    .restart local v4    # "darkenAmount":F
    .restart local v7    # "isMenuScrollAlpha":Z
    :cond_b
    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method protected updatePageTransformZoomEffect(Lcom/android/launcher2/CellLayout;F)V
    .locals 8
    .param p1, "v"    # Lcom/android/launcher2/CellLayout;
    .param p2, "scrollProgress"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1120
    if-nez p1, :cond_1

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1121
    :cond_1
    cmpl-float v4, p2, v6

    if-gtz v4, :cond_0

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, p2, v4

    if-ltz v4, :cond_0

    .line 1123
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v1

    .line 1124
    .local v1, "factor":F
    iget v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mPageZoom:F

    invoke-static {v4, v5, v1}, Lcom/android/launcher2/MenuAppsGrid;->mix(FFF)F

    move-result v3

    .line 1126
    .local v3, "zoom":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v6, v5, v4}, Lcom/android/launcher2/MenuAppsGrid;->mix(FFF)F

    move-result v4

    mul-float/2addr v3, v4

    .line 1128
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v2, p2, v4

    .line 1130
    .local v2, "translationX":F
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {p1, v4}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1131
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {p1, v4}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1132
    invoke-virtual {p1, v3}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 1133
    invoke-virtual {p1, v3}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 1135
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v6, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1136
    .local v0, "alpha":F
    cmpg-float v4, v3, v6

    if-gez v4, :cond_2

    .line 1140
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->isFastScrolling()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/launcher2/MenuAppsGrid;->mShrinkTranslateY:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 1141
    invoke-virtual {p1, v2}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 1142
    sub-float v4, v6, v3

    iget v5, p0, Lcom/android/launcher2/MenuAppsGrid;->mShrinkTranslateY:F

    mul-float/2addr v4, v5

    invoke-virtual {p1, v4}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 1145
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    goto :goto_0
.end method

.method updateQuickViewMainMenu()V
    .locals 2

    .prologue
    .line 4182
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    if-eqz v0, :cond_0

    .line 4183
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid;->mStatePageEdit:Lcom/android/launcher2/MenuAppsGrid$StateObj;

    check-cast v0, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->updateQuickView()V

    .line 4185
    :cond_0
    return-void
.end method
