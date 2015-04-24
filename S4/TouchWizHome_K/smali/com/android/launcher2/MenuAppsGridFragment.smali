.class public final Lcom/android/launcher2/MenuAppsGridFragment;
.super Landroid/app/Fragment;
.source "MenuAppsGridFragment.java"

# interfaces
.implements Lcom/android/launcher2/Launcher$HardwareKeys;
.implements Lcom/android/launcher2/MenuView$AppModelNotifications;
.implements Lcom/android/launcher2/MenuView$NeedsTabHost;
.implements Lcom/android/launcher2/PagedView$PageSwitchListener;
.implements Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppsGridFragment$2;
    }
.end annotation


# static fields
.field private static final APP_GRID_SAVED_STATE:Ljava/lang/String; = "MENU_APP_GRID_SAVED_STATE"

.field public static DL_APPS_FROM_LISTVIEW_MODE:Ljava/lang/String; = null

.field public static DL_APPS_FROM_WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String; = null

.field public static DL_APPS_FROM_WIDGET_WITH_GRIDVIEW_MODE:Ljava/lang/String; = null

.field public static DL_UNINSTALL_MODE:Ljava/lang/String; = null

.field public static final DONT_CHG_STATE_ON_PREDRAW:Ljava/lang/String; = "DONT_CHG_STATE_ON_PREDRAW"

.field private static final FOLDER_STATE_BUNDLE:Ljava/lang/String; = "folderStateBundle"

.field public static SHARE_SELECT_MODE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MenuAppsGridFragment"

.field public static WIDGET_TAB_WITH_GRIDVIEW_MODE:Ljava/lang/String;

.field public static WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;


# instance fields
.field private mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

.field private mFolderBundle:Landroid/os/Bundle;

.field private mIsPaused:Z

.field public mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mPendingModelUpdate:Z

.field private mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

.field private mState:Lcom/android/launcher2/MenuAppsGrid$State;

.field private mTabHost:Lcom/android/launcher2/MenuView;

.field private mViewType:Lcom/android/launcher2/MenuView$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "FromDownloadedAppsReturnToWidgetsTabMenuIsInListViewMode"

    sput-object v0, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;

    .line 77
    const-string v0, "FromDownloadedAppsReturntoWidgetsTabMenuIsInGridViewMode"

    sput-object v0, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_WIDGET_WITH_GRIDVIEW_MODE:Ljava/lang/String;

    .line 82
    const-string v0, "FromDownloadedAppsReturnToListViewMode"

    sput-object v0, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_LISTVIEW_MODE:Ljava/lang/String;

    .line 85
    const-string v0, "WeAreCurrentlyInWidgetTabWithMenuInListViewMode"

    sput-object v0, Lcom/android/launcher2/MenuAppsGridFragment;->WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;

    .line 87
    const-string v0, "WeAreCurrentlyInWidgetTabWithMenuInGridViewMode"

    sput-object v0, Lcom/android/launcher2/MenuAppsGridFragment;->WIDGET_TAB_WITH_GRIDVIEW_MODE:Ljava/lang/String;

    .line 89
    const-string v0, "WeAreCurrentlyInShareSelectMode"

    sput-object v0, Lcom/android/launcher2/MenuAppsGridFragment;->SHARE_SELECT_MODE:Ljava/lang/String;

    .line 90
    const-string v0, "WeAreCurrentlyInDownloadedUninstallMode"

    sput-object v0, Lcom/android/launcher2/MenuAppsGridFragment;->DL_UNINSTALL_MODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsPaused:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGridFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGridFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuView$ViewType;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGridFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/MenuAppsGridFragment;Lcom/android/launcher2/MenuView$ViewType;)Lcom/android/launcher2/MenuView$ViewType;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGridFragment;
    .param p1, "x1"    # Lcom/android/launcher2/MenuView$ViewType;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGridFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/MenuAppsGridFragment;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGridFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/MenuAppsGridFragment;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MenuAppsGridFragment;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    return-object p1
.end method

.method private cancelAppFolderRemoveDialog()V
    .locals 2

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 427
    .local v1, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 429
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-static {v0, v1}, Lcom/android/launcher2/AppFolderRemoveDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 430
    return-void
.end method

.method private closeDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 432
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v4, v5, :cond_0

    .line 433
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 437
    .local v2, "manager":Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 440
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-static {v1, v2}, Lcom/android/launcher2/AppFolderRemoveDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 442
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "editCancelDialog"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 443
    .local v0, "cancelDialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_1

    .line 444
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 445
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "AddAppsWidgetToastPopUp"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Landroid/app/DialogFragment;

    .line 450
    .local v3, "toastDialog":Landroid/app/DialogFragment;
    if-eqz v3, :cond_2

    .line 451
    invoke-virtual {v3}, Landroid/app/DialogFragment;->dismiss()V

    .line 452
    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 455
    :cond_2
    invoke-virtual {v1, v6}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 456
    return-void
.end method

.method private updatePinchListener(Lcom/android/launcher2/MenuView$ViewType;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .param p1, "viewType"    # Lcom/android/launcher2/MenuView$ViewType;
    .param p2, "state"    # Lcom/android/launcher2/MenuAppsGrid$State;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    if-eqz v0, :cond_1

    .line 192
    sget-object v0, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne p1, v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p2, v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/mainmenu/PinchLayerView;->setOnPinchListener(Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;)V

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/mainmenu/PinchLayerView;->setOnPinchListener(Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;)V

    goto :goto_0
.end method


# virtual methods
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
    .line 275
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->appBadgeUpdated(Ljava/util/List;)V

    .line 278
    :cond_0
    return-void
.end method

.method public appModelLoaded()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->appModelUpdated()V

    .line 294
    :cond_0
    return-void
.end method

.method public appModelUpdated()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    .line 300
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    goto :goto_0
.end method

.method public changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 1
    .param p1, "newState"    # Lcom/android/launcher2/MenuAppsGrid$State;

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    .line 247
    return-void
.end method

.method public changeState(Lcom/android/launcher2/MenuAppsGrid$State;Z)V
    .locals 2
    .param p1, "newState"    # Lcom/android/launcher2/MenuAppsGrid$State;
    .param p2, "force"    # Z

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 251
    .local v0, "oldState":Lcom/android/launcher2/MenuAppsGrid$State;
    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    .line 254
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 255
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/MenuAppsGridFragment;->updatePinchListener(Lcom/android/launcher2/MenuView$ViewType;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 259
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher2/MenuAppsGrid;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 263
    :cond_1
    return-void
.end method

.method public closeFolders()V
    .locals 3

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    .line 619
    :cond_0
    return-void
.end method

.method public getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    return-object v0
.end method

.method public getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    return-object v0
.end method

.method public handleDownloadedAppsStateChange()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 625
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 626
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    const-string v3, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 628
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 629
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_WIDGET_WITH_GRIDVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 630
    sget-object v2, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_WIDGET_WITH_GRIDVIEW_MODE:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 631
    sget-object v2, Lcom/android/launcher2/MenuAppsGridFragment;->WIDGET_TAB_WITH_GRIDVIEW_MODE:Ljava/lang/String;

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 632
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 633
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->selectWidgetsTab()V

    .line 649
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 634
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    sget-object v2, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 635
    sget-object v2, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 636
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 637
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    .line 638
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuView;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    goto :goto_0

    .line 639
    :cond_2
    sget-object v2, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 640
    sget-object v2, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 641
    sget-object v2, Lcom/android/launcher2/MenuAppsGridFragment;->WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 642
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 643
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuView;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    .line 644
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->selectWidgetsTab()V

    goto :goto_0

    .line 646
    :cond_3
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 312
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 355
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    const/4 v0, 0x1

    .line 316
    .local v0, "rc":Z
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    :cond_2
    sget-object v1, Lcom/android/launcher2/MenuAppsGridFragment$2;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 352
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 319
    :pswitch_0
    const/4 v0, 0x0

    .line 320
    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StateShareAppSelect;->returnToPreviousState()V

    goto :goto_0

    .line 327
    :pswitch_2
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 330
    :pswitch_3
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->backState()V

    goto :goto_0

    .line 335
    :pswitch_4
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->exitWithAnimaton()V

    goto :goto_0

    .line 340
    :pswitch_5
    sget-boolean v1, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    if-nez v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_3

    .line 344
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->saveEditChanges()V

    .line 348
    :cond_3
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->handleDownloadedAppsStateChange()V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 96
    const-string v3, "MenuAppsGridFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateView. savedInstanceState: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_5

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const v2, 0x7f030039

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/mainmenu/PinchLayerView;

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    .line 100
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    const v3, 0x7f0f00a6

    invoke-virtual {v2, v3}, Lcom/android/launcher2/mainmenu/PinchLayerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/MenuAppsGrid;

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    .line 101
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/MenuAppsGrid;->setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V

    .line 102
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/MenuAppsGrid;->setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V

    .line 103
    invoke-static {p0}, Lcom/android/launcher2/FolderIconView;->setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V

    .line 105
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 106
    if-eqz p3, :cond_1

    .line 107
    const-string v2, "MENU_APP_GRID_SAVED_STATE"

    invoke-virtual {p3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, "appGridSavedState":I
    if-eq v5, v0, :cond_0

    .line 109
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid$State;->values()[Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->restore(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 113
    const-string v2, "folderStateBundle"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    .line 119
    .end local v0    # "appGridSavedState":I
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    if-eqz v2, :cond_2

    .line 120
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->setTabHost(Lcom/android/launcher2/MenuView;)V

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    if-nez v2, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v2, v3, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 125
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "MenuView.ViewType"

    sget-object v3, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView$ViewType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/MenuView$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    .line 128
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    .line 130
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v2, :cond_4

    .line 131
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    .line 133
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->updatePinchListener(Lcom/android/launcher2/MenuView$ViewType;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 134
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V

    .line 135
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->cancelAppFolderRemoveDialog()V

    .line 137
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    return-object v2

    .line 96
    :cond_5
    const-string v2, "not null"

    goto/16 :goto_0

    .line 115
    .restart local v0    # "appGridSavedState":I
    :cond_6
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    const-string v0, "MenuAppsGridFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 213
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGridFragment;->onHideTab(Lcom/android/launcher2/MenuView;)V

    .line 215
    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    .line 216
    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    .line 217
    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    .line 218
    return-void
.end method

.method public onExitAllApps()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    .line 464
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->onExitAllApps()V

    .line 467
    :cond_1
    return-void
.end method

.method public onHideTab(Lcom/android/launcher2/MenuView;)V
    .locals 2
    .param p1, "tabHost"    # Lcom/android/launcher2/MenuView;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    .line 607
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    .line 608
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->saveOpenFolderState(Landroid/os/Bundle;)V

    .line 611
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getComingPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->setCurrentPage(I)V

    .line 612
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->leaveCurrentState()V

    .line 614
    :cond_0
    return-void
.end method

.method public onHomePressed(Z)Z
    .locals 9
    .param p1, "moveToDefaultScreen"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 364
    .local v1, "launcher":Landroid/app/Activity;
    if-nez v1, :cond_1

    move v5, v6

    .line 422
    :cond_0
    :goto_0
    return v5

    .line 368
    :cond_1
    const-string v7, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v1, v7, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 370
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 371
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    .line 372
    .local v3, "state":Lcom/android/launcher2/MenuAppsGrid$State;
    sget-object v7, Lcom/android/launcher2/MenuAppsGridFragment$2;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :cond_2
    :goto_1
    move v5, v6

    .line 422
    goto :goto_0

    .line 374
    :pswitch_0
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v5, :cond_2

    .line 375
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5, v3}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj(Lcom/android/launcher2/MenuAppsGrid$State;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;

    .line 376
    .local v4, "stateObj":Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;
    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;->exitWithoutAnimation()V

    goto :goto_1

    .line 380
    .end local v4    # "stateObj":Lcom/android/launcher2/MenuAppsGrid$StatePageEdit;
    :pswitch_1
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v5, :cond_3

    .line 381
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid$StateFolderSelect;->backState()V

    .line 386
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeDialog()V

    goto :goto_1

    .line 383
    :cond_3
    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 384
    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    goto :goto_2

    .line 390
    :pswitch_2
    sget-object v7, Lcom/android/launcher2/MenuAppsGridFragment;->SHARE_SELECT_MODE:Ljava/lang/String;

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 391
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 392
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeDialog()V

    goto :goto_1

    .line 395
    :pswitch_3
    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid;->isDragInProgress()Z

    move-result v7

    if-nez v7, :cond_0

    .line 398
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeDialog()V

    .line 399
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v5, :cond_2

    .line 400
    iget-object v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    goto :goto_1

    .line 403
    :pswitch_4
    sget-object v7, Lcom/android/launcher2/MenuAppsGridFragment;->DL_UNINSTALL_MODE:Ljava/lang/String;

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 404
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 408
    :pswitch_5
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeDialog()V

    goto :goto_1

    .line 418
    :pswitch_6
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeDialog()V

    goto :goto_1

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public onPageSwitch(Landroid/view/View;I)V
    .locals 2
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    const/4 v1, 0x1

    .line 481
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    .line 483
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 142
    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsPaused:Z

    .line 143
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    .line 145
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->onPause()V

    .line 148
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 149
    return-void
.end method

.method public onPinch()Z
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->isFastScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getCurrentFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_1

    .line 473
    :cond_0
    const/4 v0, 0x0

    .line 475
    :goto_0
    return v0

    .line 474
    :cond_1
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 475
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 153
    const-string v3, "MenuAppsGridFragment"

    const-string v4, "onResume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsPaused:Z

    .line 156
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 160
    .local v1, "prefs":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v3, :cond_2

    .line 162
    sget-object v3, Lcom/android/launcher2/MenuAppsGridFragment;->SHARE_SELECT_MODE:Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 164
    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 173
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v2

    .line 174
    .local v2, "stateObj":Lcom/android/launcher2/MenuAppsGrid$StateObj;
    if-eqz v2, :cond_1

    .line 175
    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onResume()V

    .line 177
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->onResume()V

    .line 182
    .end local v2    # "stateObj":Lcom/android/launcher2/MenuAppsGrid$StateObj;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    if-eqz v3, :cond_3

    .line 183
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    .line 184
    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    .line 188
    :cond_3
    return-void

    .line 165
    :cond_4
    sget-object v3, Lcom/android/launcher2/MenuAppsGridFragment;->DL_UNINSTALL_MODE:Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 166
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lcom/android/launcher2/MenuAppsGridFragment;->DL_UNINSTALL_MODE:Ljava/lang/String;

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 170
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    sget-object v3, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/android/launcher2/MenuAppsGridFragment;->DL_APPS_FROM_WIDGET_TAB_WITH_LISTVIEW_MODE:Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    :cond_6
    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 487
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 491
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eqz v1, :cond_0

    .line 492
    const-string v1, "MENU_APP_GRID_SAVED_STATE"

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 493
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->save(Landroid/os/Bundle;)V

    .line 495
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 496
    .local v0, "folderBundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuAppsGrid;->saveOpenFolderState(Landroid/os/Bundle;)V

    .line 497
    const-string v1, "folderStateBundle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 500
    .end local v0    # "folderBundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onShowTab(Lcom/android/launcher2/MenuView;)V
    .locals 2
    .param p1, "tabHost"    # Lcom/android/launcher2/MenuView;

    .prologue
    .line 506
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->isCurrentTabAppGrid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    invoke-static {}, Lcom/android/launcher2/Launcher;->isOptionMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_1

    .line 515
    new-instance v0, Lcom/android/launcher2/MenuAppsGridFragment$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuAppsGridFragment$1;-><init>(Lcom/android/launcher2/MenuAppsGridFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 599
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 602
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 205
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeFolders()V

    .line 206
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->onStop()V

    .line 207
    :cond_0
    return-void
.end method

.method public setTabHost(Lcom/android/launcher2/MenuView;)V
    .locals 1
    .param p1, "tabHost"    # Lcom/android/launcher2/MenuView;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    .line 223
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setTabHost(Lcom/android/launcher2/MenuView;)V

    .line 226
    :cond_0
    return-void
.end method

.method public setViewType(Lcom/android/launcher2/MenuView$ViewType;)V
    .locals 1
    .param p1, "viewType"    # Lcom/android/launcher2/MenuView$ViewType;

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGridFragment;->updatePinchListener(Lcom/android/launcher2/MenuView$ViewType;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 230
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setViewType(Lcom/android/launcher2/MenuView$ViewType;)V

    .line 233
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mViewType:Lcom/android/launcher2/MenuView$ViewType;

    .line 234
    return-void
.end method
