.class public Lcom/android/launcher2/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# static fields
.field public static final APPS_CUSTOMIZE_TABKEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final CREATE_FOLDER_COLOR_VIEW_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final CREATE_FOLDER_OPTIONS_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final DOWNLOADED_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final FOLDERNAME_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final FOLDER_ADDITEM_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final FOLDER_COLOR_VIEW_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final FOLDER_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final FOLDER_OPTIONS_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final GOOGLE_SEARCH_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final HOME_MAGAZINE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final HOME_SOFTKEY_ALLAPPS_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final HOME_SOFTKEY_PHONE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final MENUAPPGRID_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final MENU_WIDGETS_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final QUICK_ALLAPPS_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final QUICK_CAMERA_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final TITLEBAR_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final WIDGET_FOLDER_WIDGET_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

.field public static final WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field private static sHomeView:Lcom/android/launcher2/HomeView;

.field private static sIsLoopingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Launcher_DisablePageRotation"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    .line 54
    new-instance v0, Lcom/android/launcher2/FocusHelper$1;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->DOWNLOADED_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 61
    new-instance v0, Lcom/android/launcher2/FocusHelper$2;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$2;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->TITLEBAR_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 71
    new-instance v0, Lcom/android/launcher2/FocusHelper$3;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$3;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 89
    new-instance v0, Lcom/android/launcher2/FocusHelper$4;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$4;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->GOOGLE_SEARCH_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 100
    new-instance v0, Lcom/android/launcher2/FocusHelper$5;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$5;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->QUICK_ALLAPPS_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 112
    new-instance v0, Lcom/android/launcher2/FocusHelper$6;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$6;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->QUICK_CAMERA_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 124
    new-instance v0, Lcom/android/launcher2/FocusHelper$7;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$7;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->HOME_SOFTKEY_PHONE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 136
    new-instance v0, Lcom/android/launcher2/FocusHelper$8;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$8;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->HOME_SOFTKEY_ALLAPPS_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 147
    new-instance v0, Lcom/android/launcher2/FocusHelper$9;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$9;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->FOLDER_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 154
    new-instance v0, Lcom/android/launcher2/FocusHelper$10;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$10;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->FOLDERNAME_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 162
    new-instance v0, Lcom/android/launcher2/FocusHelper$11;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$11;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->FOLDER_ADDITEM_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 172
    new-instance v0, Lcom/android/launcher2/FocusHelper$12;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$12;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->FOLDER_OPTIONS_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 182
    new-instance v0, Lcom/android/launcher2/FocusHelper$13;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$13;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->CREATE_FOLDER_OPTIONS_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 192
    new-instance v0, Lcom/android/launcher2/FocusHelper$14;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$14;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 200
    new-instance v0, Lcom/android/launcher2/FocusHelper$15;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$15;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->HOME_OPTION_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 207
    new-instance v0, Lcom/android/launcher2/FocusHelper$16;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$16;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->MENUAPPGRID_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 218
    new-instance v0, Lcom/android/launcher2/FocusHelper$17;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$17;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->APPS_CUSTOMIZE_TABKEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 228
    new-instance v0, Lcom/android/launcher2/FocusHelper$18;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$18;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->WIDGET_FOLDER_WIDGET_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    .line 240
    new-instance v0, Lcom/android/launcher2/FocusHelper$19;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$19;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->MENU_WIDGETS_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    .line 250
    new-instance v0, Lcom/android/launcher2/FocusHelper$20;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$20;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->FOLDER_COLOR_VIEW_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    .line 260
    new-instance v0, Lcom/android/launcher2/FocusHelper$21;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$21;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->CREATE_FOLDER_COLOR_VIEW_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    .line 1339
    new-instance v0, Lcom/android/launcher2/FocusHelper$22;

    invoke-direct {v0}, Lcom/android/launcher2/FocusHelper$22;-><init>()V

    sput-object v0, Lcom/android/launcher2/FocusHelper;->HOME_MAGAZINE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleDownloadedIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleTitleBarKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleFolderAddItemKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleFolderOptionsButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleCreateFolderOptionsButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;
    .param p3, "x3"    # I

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleHomeOptionMenuonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleMenuAppGridIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700()Lcom/android/launcher2/HomeView;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleFolderColorViewItemsKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleCreateFolderColorViewItemsKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;
    .param p3, "x3"    # I

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleWorkspaceIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleHomeMagazineButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleWorkspaceGoogleSearchKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;
    .param p3, "x3"    # I

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleQuickAllappsIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;
    .param p3, "x3"    # I

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleQuickCameraIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;
    .param p3, "x3"    # I

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleHomeSoftkeyPhoneIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;
    .param p3, "x3"    # I

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleHomeSoftkeyAllappsIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FocusHelper;->handleFolderNameKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private static findFolderParent(Landroid/view/View;)Lcom/android/launcher2/Folder;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 283
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/Folder;

    if-nez v1, :cond_0

    .line 284
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_0
    check-cast v0, Lcom/android/launcher2/Folder;

    .end local v0    # "p":Landroid/view/ViewParent;
    return-object v0
.end method

.method private static findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;
    .locals 4
    .param p1, "i"    # I
    .param p2, "delta"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 1707
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1708
    .local v0, "count":I
    add-int v1, p1, p2

    .line 1709
    .local v1, "newI":I
    :goto_0
    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 1710
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1711
    .local v2, "newV":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_0

    .line 1716
    .end local v2    # "newV":Landroid/view/View;
    :goto_1
    return-object v2

    .line 1714
    .restart local v2    # "newV":Landroid/view/View;
    :cond_0
    add-int/2addr v1, p2

    .line 1715
    goto :goto_0

    .line 1716
    .end local v2    # "newV":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 273
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TabHost;

    if-nez v1, :cond_0

    .line 274
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 276
    :cond_0
    if-nez v0, :cond_1

    move-object v0, p0

    .line 277
    check-cast v0, Landroid/view/ViewParent;

    .line 278
    :cond_1
    check-cast v0, Landroid/widget/TabHost;

    .end local v0    # "p":Landroid/view/ViewParent;
    return-object v0
.end method

.method private static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;
    .locals 2
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "i"    # I

    .prologue
    .line 1670
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1671
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    return-object v1
.end method

.method private static getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/CellLayout;",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1681
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    .line 1682
    .local v0, "cellCountX":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1683
    .local v1, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1684
    .local v3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1685
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1684
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1687
    :cond_0
    new-instance v4, Lcom/android/launcher2/FocusHelper$23;

    invoke-direct {v4, v0}, Lcom/android/launcher2/FocusHelper$23;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1697
    return-object v3
.end method

.method private static getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 22
    .param p0, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "lineDelta"    # I

    .prologue
    .line 1747
    invoke-static/range {p0 .. p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v14

    .line 1748
    .local v14, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1749
    .local v7, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v2

    .line 1750
    .local v2, "cellCountY":I
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1751
    .local v10, "row":I
    add-int v8, v10, p3

    .line 1752
    .local v8, "newRow":I
    if-ltz v8, :cond_7

    if-ge v8, v2, :cond_7

    .line 1753
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 1754
    .local v3, "closestDistance":F
    const/4 v4, -0x1

    .line 1755
    .local v4, "closestIndex":I
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1756
    .local v6, "index":I
    if-gez p3, :cond_1

    const/4 v5, -0x1

    .line 1757
    .local v5, "endIndex":I
    :goto_0
    if-eq v6, v5, :cond_6

    .line 1758
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1759
    .local v9, "newV":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1760
    .local v13, "tmpLp":Lcom/android/launcher2/CellLayout$LayoutParams;
    if-gez p3, :cond_3

    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ge v15, v10, :cond_2

    const/4 v11, 0x1

    .line 1761
    .local v11, "satisfiesRow":Z
    :goto_1
    if-eqz v11, :cond_0

    instance-of v15, v9, Lcom/android/launcher2/AppIconView;

    if-eqz v15, :cond_0

    .line 1763
    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v18, v0

    sub-int v15, v15, v18

    int-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v12, v0

    .line 1765
    .local v12, "tmpDistance":F
    cmpg-float v15, v12, v3

    if-gez v15, :cond_0

    .line 1766
    move v4, v6

    .line 1767
    move v3, v12

    .line 1770
    .end local v12    # "tmpDistance":F
    :cond_0
    if-gt v6, v5, :cond_5

    .line 1771
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1756
    .end local v5    # "endIndex":I
    .end local v9    # "newV":Landroid/view/View;
    .end local v11    # "satisfiesRow":Z
    .end local v13    # "tmpLp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_0

    .line 1760
    .restart local v5    # "endIndex":I
    .restart local v9    # "newV":Landroid/view/View;
    .restart local v13    # "tmpLp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    :cond_3
    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-le v15, v10, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 1773
    .restart local v11    # "satisfiesRow":Z
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1776
    .end local v9    # "newV":Landroid/view/View;
    .end local v11    # "satisfiesRow":Z
    .end local v13    # "tmpLp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_6
    const/4 v15, -0x1

    if-le v4, v15, :cond_7

    .line 1777
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 1780
    .end local v3    # "closestDistance":F
    .end local v4    # "closestIndex":I
    .end local v5    # "endIndex":I
    .end local v6    # "index":I
    :goto_2
    return-object v15

    :cond_7
    const/4 v15, 0x0

    goto :goto_2
.end method

.method private static getFolderColorViewKey(Landroid/view/View;)Lcom/android/launcher2/Folder$FolderColor;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 2431
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 2432
    .local v0, "viewId":I
    packed-switch v0, :pswitch_data_0

    .line 2442
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    :goto_0
    return-object v1

    .line 2434
    :pswitch_0
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GRAY:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0

    .line 2436
    :pswitch_1
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0

    .line 2438
    :pswitch_2
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_RED:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0

    .line 2440
    :pswitch_3
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_YELLOW:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_0

    .line 2432
    :pswitch_data_0
    .packed-switch 0x7f0f0038
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private static getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;
    .locals 3
    .param p0, "layout"    # Lcom/android/launcher2/CellLayoutChildren;
    .param p1, "position"    # I
    .param p2, "itemsPerRow"    # I

    .prologue
    .line 1734
    div-int v1, p1, p2

    .line 1735
    .local v1, "y":I
    rem-int v0, p1, p2

    .line 1736
    .local v0, "x":I
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 2
    .param p0, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I
    .param p3, "delta"    # I

    .prologue
    .line 1720
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1721
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, p2, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p0, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "delta"    # I

    .prologue
    .line 1725
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1726
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private static getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;
    .locals 2
    .param p0, "container"    # Lcom/android/launcher2/PagedView;
    .param p1, "index"    # I

    .prologue
    .line 661
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 662
    .local v0, "page":Landroid/view/ViewGroup;
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v1, :cond_0

    .line 664
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "page":Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 666
    .restart local v0    # "page":Landroid/view/ViewGroup;
    :cond_0
    return-object v0
.end method

.method private static handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 23
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 505
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/FocusOnlyTabWidget;

    .line 506
    .local v16, "parent":Lcom/android/launcher2/FocusOnlyTabWidget;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v17

    .line 507
    .local v17, "tabHost":Landroid/widget/TabHost;
    const v21, 0x1020011

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .local v6, "contents":Landroid/view/ViewGroup;
    move-object/from16 v21, v17

    .line 509
    check-cast v21, Lcom/android/launcher2/MenuView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuView;->getMenuOrMarketButton()Landroid/view/View;

    move-result-object v12

    .local v12, "menuOrMarket":Landroid/view/View;
    move-object/from16 v21, v17

    .line 510
    check-cast v21, Lcom/android/launcher2/MenuView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuView;->getDownButton()Landroid/view/View;

    move-result-object v2

    .line 511
    .local v2, "DownButton":Landroid/view/View;
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 512
    .local v18, "tabs_apps":Landroid/view/View;
    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 514
    .local v19, "tabs_widgets":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    .line 517
    .local v3, "MenuView":Lcom/android/launcher2/MenuView;
    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v11

    .line 518
    .local v11, "menuGrid":Lcom/android/launcher2/MenuAppsGrid;
    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v13

    .line 519
    .local v13, "menuWidgets":Lcom/android/launcher2/PagedView;
    const/4 v14, 0x0

    .line 520
    .local v14, "newParent":Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .line 521
    .local v5, "child":Landroid/view/View;
    const/4 v7, 0x0

    .line 522
    .local v7, "grandparent":Lcom/android/launcher2/CellLayoutMenu;
    const/4 v9, 0x0

    .line 523
    .local v9, "mChildCount":I
    const/4 v10, 0x0

    .line 524
    .local v10, "mCountX":I
    const/4 v15, 0x0

    .line 527
    .local v15, "pageIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    .line 528
    .local v4, "action":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v4, v0, :cond_1

    const/4 v8, 0x1

    .line 529
    .local v8, "handleKeyEvent":Z
    :goto_0
    const/16 v20, 0x0

    .line 530
    .local v20, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    .line 654
    :cond_0
    :goto_1
    return v20

    .line 528
    .end local v8    # "handleKeyEvent":Z
    .end local v20    # "wasHandled":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 532
    .restart local v8    # "handleKeyEvent":Z
    .restart local v20    # "wasHandled":Z
    :sswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 534
    if-eqz v8, :cond_2

    .line 535
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 536
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    .line 537
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 568
    :cond_2
    :goto_2
    const/16 v20, 0x1

    goto :goto_1

    .line 538
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 540
    invoke-virtual {v11}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v15

    .line 541
    invoke-static {v11, v15}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v14

    .line 543
    if-eqz v14, :cond_4

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v21

    const-string v22, "WIDGETS"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 544
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 545
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .end local v7    # "grandparent":Lcom/android/launcher2/CellLayoutMenu;
    check-cast v7, Lcom/android/launcher2/CellLayoutMenu;

    .line 546
    .restart local v7    # "grandparent":Lcom/android/launcher2/CellLayoutMenu;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v10

    move-object/from16 v21, v14

    .line 547
    check-cast v21, Lcom/android/launcher2/CellLayoutChildren;

    add-int/lit8 v22, v9, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v10}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v5

    .line 548
    if-eqz v5, :cond_2

    .line 550
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 551
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 555
    :cond_4
    invoke-virtual {v13}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v15

    .line 556
    invoke-static {v13, v15}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v14

    .line 557
    if-eqz v14, :cond_2

    .line 558
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 559
    if-eqz v5, :cond_2

    .line 561
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 562
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 571
    :cond_5
    if-eqz v8, :cond_6

    .line 573
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 574
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    .line 575
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 589
    :cond_6
    :goto_3
    const/16 v20, 0x1

    .line 591
    goto/16 :goto_1

    .line 576
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9

    if-eqz v2, :cond_9

    .line 577
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 578
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 579
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 581
    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 582
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 584
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    if-nez v2, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 585
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 586
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 593
    :sswitch_1
    if-eqz v8, :cond_a

    .line 594
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 595
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    .line 596
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 599
    :cond_a
    const/16 v20, 0x1

    .line 600
    goto/16 :goto_1

    .line 602
    :sswitch_2
    if-eqz v8, :cond_b

    .line 604
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 605
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    .line 606
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 620
    :cond_b
    :goto_4
    const/16 v20, 0x1

    .line 621
    goto/16 :goto_1

    .line 607
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_e

    if-eqz v2, :cond_e

    .line 608
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 609
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 610
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    .line 612
    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 613
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    .line 615
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_b

    if-nez v2, :cond_b

    invoke-virtual {v12}, Landroid/view/View;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 616
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 617
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    .line 623
    :sswitch_3
    if-eqz v8, :cond_0

    .line 625
    move-object/from16 v0, p0

    if-ne v0, v12, :cond_0

    .line 626
    invoke-virtual {v6}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 627
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 634
    :sswitch_4
    if-eqz v8, :cond_11

    .line 635
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 636
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 650
    :cond_f
    :goto_5
    const/16 v20, 0x1

    .line 651
    goto/16 :goto_1

    .line 637
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 638
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_5

    .line 640
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 641
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 642
    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    .line 643
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    .line 644
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 645
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 646
    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->selectWidgetsTab()V

    .line 647
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    .line 530
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_4
        0x3d -> :sswitch_0
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method private static handleCreateFolderColorViewItemsKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 2380
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 2381
    .local v4, "frameLayout":Landroid/widget/FrameLayout;
    const v9, 0x7f0f0028

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2382
    .local v3, "folderOptionBtn":Landroid/view/View;
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->getFolderColorViewKey(Landroid/view/View;)Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v1

    .line 2383
    .local v1, "folderColorId":Lcom/android/launcher2/Folder$FolderColor;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2384
    .local v0, "action":I
    if-eq v0, v5, :cond_0

    .line 2385
    .local v5, "handleKeyEvent":Z
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2386
    .local v2, "folderColorViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher2/Folder$FolderColor;Landroid/widget/ImageView;>;"
    sget-object v11, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    const v9, 0x7f0f0037

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v2, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2388
    sget-object v11, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GRAY:Lcom/android/launcher2/Folder$FolderColor;

    const v9, 0x7f0f0038

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v2, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2390
    sget-object v11, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_RED:Lcom/android/launcher2/Folder$FolderColor;

    const v9, 0x7f0f0039

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v2, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2392
    sget-object v11, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_YELLOW:Lcom/android/launcher2/Folder$FolderColor;

    const v9, 0x7f0f003a

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v2, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2394
    sget-object v11, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    const v9, 0x7f0f003b

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v2, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2397
    const/4 v8, 0x0

    .line 2398
    .local v8, "wasHandled":Z
    packed-switch p1, :pswitch_data_0

    .line 2427
    :goto_1
    return v8

    .end local v2    # "folderColorViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher2/Folder$FolderColor;Landroid/widget/ImageView;>;"
    .end local v5    # "handleKeyEvent":Z
    .end local v8    # "wasHandled":Z
    :cond_0
    move v5, v10

    .line 2384
    goto :goto_0

    .line 2400
    .restart local v2    # "folderColorViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher2/Folder$FolderColor;Landroid/widget/ImageView;>;"
    .restart local v5    # "handleKeyEvent":Z
    .restart local v8    # "wasHandled":Z
    :pswitch_0
    if-eqz v5, :cond_1

    .line 2401
    sget-object v9, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    if-ne v1, v9, :cond_2

    .line 2402
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 2403
    invoke-virtual {v3, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 2410
    :cond_1
    :goto_2
    const/4 v8, 0x1

    .line 2411
    goto :goto_1

    .line 2405
    :cond_2
    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    aget-object v6, v9, v11

    .line 2406
    .local v6, "nextFolderColorId":Lcom/android/launcher2/Folder$FolderColor;
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->requestFocus()Z

    .line 2407
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->playSoundEffect(I)V

    goto :goto_2

    .line 2413
    .end local v6    # "nextFolderColorId":Lcom/android/launcher2/Folder$FolderColor;
    :pswitch_1
    if-eqz v5, :cond_3

    .line 2414
    sget-object v9, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    if-ne v1, v9, :cond_4

    .line 2415
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 2416
    invoke-virtual {v3, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 2423
    :cond_3
    :goto_3
    const/4 v8, 0x1

    .line 2424
    goto :goto_1

    .line 2418
    :cond_4
    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    aget-object v7, v9, v11

    .line 2419
    .local v7, "previousFolderColorId":Lcom/android/launcher2/Folder$FolderColor;
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->requestFocus()Z

    .line 2420
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->playSoundEffect(I)V

    goto :goto_3

    .line 2398
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static handleCreateFolderOptionsButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 2284
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 2285
    .local v4, "parentLayout":Landroid/widget/LinearLayout;
    const v8, 0x7f0f0023

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 2286
    .local v5, "title":Landroid/widget/EditText;
    const v8, 0x7f0f0029

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2287
    .local v2, "folderOptionView":Landroid/widget/LinearLayout;
    const v8, 0x7f0f0026

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2288
    .local v1, "folderAddButton":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2289
    .local v0, "action":I
    if-eq v0, v3, :cond_0

    .line 2290
    .local v3, "handleKeyEvent":Z
    :goto_0
    const/4 v6, 0x0

    .line 2291
    .local v6, "wasHandled":Z
    packed-switch p1, :pswitch_data_0

    .line 2313
    :goto_1
    :pswitch_0
    return v6

    .end local v3    # "handleKeyEvent":Z
    .end local v6    # "wasHandled":Z
    :cond_0
    move v3, v7

    .line 2289
    goto :goto_0

    .line 2294
    .restart local v3    # "handleKeyEvent":Z
    .restart local v6    # "wasHandled":Z
    :pswitch_1
    if-eqz v3, :cond_1

    .line 2296
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 2297
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 2298
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->playSoundEffect(I)V

    .line 2309
    :cond_1
    :goto_2
    const/4 v6, 0x1

    .line 2310
    goto :goto_1

    .line 2300
    :cond_2
    if-eqz v1, :cond_3

    .line 2301
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2302
    invoke-virtual {v1, v7}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 2304
    :cond_3
    if-eqz v5, :cond_1

    .line 2305
    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 2306
    invoke-virtual {v5, v7}, Landroid/widget/EditText;->playSoundEffect(I)V

    goto :goto_2

    .line 2291
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static handleDownloadedIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 294
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v6

    .line 295
    .local v6, "tabHost":Landroid/widget/TabHost;
    const v9, 0x1020011

    invoke-virtual {v6, v9}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 297
    .local v2, "contents":Landroid/view/ViewGroup;
    const v9, 0x1020013

    invoke-virtual {v6, v9}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FocusOnlyTabWidget;

    .line 298
    .local v3, "focusOnlyTab":Lcom/android/launcher2/FocusOnlyTabWidget;
    invoke-virtual {v3, v4}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .local v7, "tabs_widgets":Landroid/view/View;
    move-object v9, v6

    .line 299
    check-cast v9, Lcom/android/launcher2/MenuView;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuView;->getMenuOrMarketButton()Landroid/view/View;

    move-result-object v5

    .local v5, "menuOrMarket":Landroid/view/View;
    move-object v9, v6

    .line 300
    check-cast v9, Lcom/android/launcher2/MenuView;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuView;->getDownButton()Landroid/view/View;

    move-result-object v0

    .line 302
    .local v0, "DownButton":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 303
    .local v1, "action":I
    if-eq v1, v4, :cond_1

    .line 304
    .local v4, "handleKeyEvent":Z
    :goto_0
    const/4 v8, 0x0

    .line 305
    .local v8, "wasHandled":Z
    packed-switch p1, :pswitch_data_0

    .line 348
    :cond_0
    :goto_1
    return v8

    .end local v4    # "handleKeyEvent":Z
    .end local v8    # "wasHandled":Z
    :cond_1
    move v4, v10

    .line 303
    goto :goto_0

    .line 307
    .restart local v4    # "handleKeyEvent":Z
    .restart local v8    # "wasHandled":Z
    :pswitch_0
    if-eqz v4, :cond_2

    .line 309
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v9

    if-nez v9, :cond_6

    .line 310
    if-ne p0, v5, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 311
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 312
    invoke-virtual {v0, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 325
    :cond_2
    :goto_2
    const/4 v8, 0x1

    .line 326
    goto :goto_1

    .line 313
    :cond_3
    if-ne p0, v5, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    if-ne p0, v0, :cond_2

    .line 315
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 316
    invoke-virtual {v7, v10}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 319
    :cond_6
    if-eq p0, v6, :cond_2

    .line 320
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 321
    invoke-virtual {v7, v10}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 328
    :pswitch_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v9

    if-nez v9, :cond_7

    .line 329
    if-eqz v4, :cond_7

    .line 330
    if-ne p0, v0, :cond_7

    .line 331
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 332
    invoke-virtual {v5, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 336
    :cond_7
    const/4 v8, 0x1

    .line 337
    goto :goto_1

    .line 339
    :pswitch_2
    if-eqz v4, :cond_0

    .line 340
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 341
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    .line 342
    const/4 v8, 0x1

    goto :goto_1

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static handleFolderAddItemKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2174
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findFolderParent(Landroid/view/View;)Lcom/android/launcher2/Folder;

    move-result-object v2

    .line 2175
    .local v2, "folder":Lcom/android/launcher2/Folder;
    const v11, 0x7f0f00dd

    invoke-virtual {v2, v11}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 2176
    .local v5, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v5, v10}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    .line 2177
    .local v1, "child":Lcom/android/launcher2/CellLayoutChildren;
    iget-object v7, v2, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 2178
    .local v7, "title":Lcom/android/launcher2/FolderEditText;
    const v11, 0x7f0f0028

    invoke-virtual {v2, v11}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2180
    .local v3, "folderOptionsButton":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2181
    .local v0, "action":I
    if-eq v0, v9, :cond_0

    move v4, v9

    .line 2183
    .local v4, "handleKeyEvent":Z
    :goto_0
    const/4 v8, 0x0

    .line 2184
    .local v8, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    .line 2225
    :goto_1
    return v8

    .end local v4    # "handleKeyEvent":Z
    .end local v8    # "wasHandled":Z
    :cond_0
    move v4, v10

    .line 2181
    goto :goto_0

    .line 2187
    .restart local v4    # "handleKeyEvent":Z
    .restart local v8    # "wasHandled":Z
    :sswitch_0
    if-eqz v4, :cond_1

    .line 2188
    if-eqz v3, :cond_1

    .line 2189
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 2190
    invoke-virtual {v3, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 2193
    :cond_1
    const/4 v8, 0x1

    .line 2194
    goto :goto_1

    .line 2197
    :sswitch_1
    if-eqz v4, :cond_2

    .line 2198
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v11

    if-eqz v11, :cond_3

    .line 2199
    const/4 v11, -0x1

    invoke-static {v5, v1, v11, v9}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v6

    .line 2200
    .local v6, "newIcon":Landroid/view/View;
    if-eqz v6, :cond_2

    .line 2201
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 2202
    invoke-virtual {v6, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 2209
    .end local v6    # "newIcon":Landroid/view/View;
    :cond_2
    :goto_2
    const/4 v8, 0x1

    .line 2210
    goto :goto_1

    .line 2204
    :cond_3
    if-eqz v3, :cond_2

    .line 2205
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 2206
    invoke-virtual {v3, v10}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 2214
    :sswitch_2
    if-eqz v4, :cond_4

    .line 2215
    if-eqz v7, :cond_4

    .line 2216
    invoke-virtual {v7}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    .line 2217
    invoke-virtual {v7, v10}, Lcom/android/launcher2/FolderEditText;->playSoundEffect(I)V

    .line 2220
    :cond_4
    const/4 v8, 0x1

    .line 2221
    goto :goto_1

    .line 2184
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method private static handleFolderColorViewItemsKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 15
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 2317
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findFolderParent(Landroid/view/View;)Lcom/android/launcher2/Folder;

    move-result-object v2

    .line 2318
    .local v2, "folder":Lcom/android/launcher2/Folder;
    if-nez v2, :cond_0

    .line 2319
    const/4 v12, 0x0

    .line 2376
    :goto_0
    return v12

    .line 2320
    :cond_0
    const v13, 0x7f0f00dd

    invoke-virtual {v2, v13}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 2321
    .local v8, "layout":Lcom/android/launcher2/CellLayout;
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    .line 2322
    .local v1, "child":Lcom/android/launcher2/CellLayoutChildren;
    const v13, 0x7f0f0034

    invoke-virtual {v2, v13}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2324
    .local v3, "folderAddButton":Landroid/view/View;
    iget-object v6, v2, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    .line 2325
    .local v6, "folderOptionBtn":Landroid/view/View;
    iget-object v5, v2, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    .line 2326
    .local v5, "folderColorViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/launcher2/Folder$FolderColor;Landroid/widget/ImageView;>;"
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->getFolderColorViewKey(Landroid/view/View;)Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v4

    .line 2328
    .local v4, "folderColorId":Lcom/android/launcher2/Folder$FolderColor;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2329
    .local v0, "action":I
    const/4 v13, 0x1

    if-eq v0, v13, :cond_2

    const/4 v7, 0x1

    .line 2331
    .local v7, "handleKeyEvent":Z
    :goto_1
    const/4 v12, 0x0

    .line 2332
    .local v12, "wasHandled":Z
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2334
    :pswitch_0
    if-eqz v7, :cond_1

    .line 2335
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v13

    if-eqz v13, :cond_3

    .line 2336
    const/4 v13, -0x1

    const/4 v14, 0x1

    invoke-static {v8, v1, v13, v14}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v9

    .line 2337
    .local v9, "newIcon":Landroid/view/View;
    if-eqz v9, :cond_1

    .line 2338
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 2339
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/view/View;->playSoundEffect(I)V

    .line 2346
    .end local v9    # "newIcon":Landroid/view/View;
    :cond_1
    :goto_2
    const/4 v12, 0x1

    .line 2347
    goto :goto_0

    .line 2329
    .end local v7    # "handleKeyEvent":Z
    .end local v12    # "wasHandled":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 2341
    .restart local v7    # "handleKeyEvent":Z
    .restart local v12    # "wasHandled":Z
    :cond_3
    if-eqz v3, :cond_1

    .line 2342
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 2343
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 2349
    :pswitch_1
    if-eqz v7, :cond_4

    .line 2350
    sget-object v13, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    if-ne v4, v13, :cond_5

    .line 2351
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 2352
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/view/View;->playSoundEffect(I)V

    .line 2359
    :cond_4
    :goto_3
    const/4 v12, 0x1

    .line 2360
    goto :goto_0

    .line 2354
    :cond_5
    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v13

    invoke-virtual {v4}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    aget-object v10, v13, v14

    .line 2355
    .local v10, "nextFolderColorId":Lcom/android/launcher2/Folder$FolderColor;
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->requestFocus()Z

    .line 2356
    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->playSoundEffect(I)V

    goto :goto_3

    .line 2362
    .end local v10    # "nextFolderColorId":Lcom/android/launcher2/Folder$FolderColor;
    :pswitch_2
    if-eqz v7, :cond_6

    .line 2363
    sget-object v13, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    if-ne v4, v13, :cond_7

    .line 2364
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 2365
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/view/View;->playSoundEffect(I)V

    .line 2372
    :cond_6
    :goto_4
    const/4 v12, 0x1

    .line 2373
    goto/16 :goto_0

    .line 2367
    :cond_7
    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v13

    invoke-virtual {v4}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    aget-object v11, v13, v14

    .line 2368
    .local v11, "previousFolderColorId":Lcom/android/launcher2/Folder$FolderColor;
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->requestFocus()Z

    .line 2369
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->playSoundEffect(I)V

    goto :goto_4

    .line 2332
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 14
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 2005
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayoutChildren;

    .line 2006
    .local v8, "parent":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 2007
    .local v6, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/widget/ScrollView;

    .line 2008
    .local v9, "scrollView":Landroid/widget/ScrollView;
    invoke-virtual {v9}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder;

    .line 2009
    .local v1, "folder":Lcom/android/launcher2/Folder;
    iget-object v10, v1, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 2010
    .local v10, "title":Landroid/view/View;
    iget-object v3, v1, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    .line 2011
    .local v3, "folderOptionView":Landroid/widget/LinearLayout;
    const v12, 0x7f0f0034

    invoke-virtual {v1, v12}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2012
    .local v2, "folderAddButton":Landroid/view/View;
    const v12, 0x7f0f0028

    invoke-virtual {v1, v12}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2014
    .local v4, "folderOptionsButton":Landroid/view/View;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2015
    .local v0, "action":I
    const/4 v12, 0x1

    if-eq v0, v12, :cond_0

    const/4 v5, 0x1

    .line 2016
    .local v5, "handleKeyEvent":Z
    :goto_0
    const/4 v11, 0x0

    .line 2017
    .local v11, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    .line 2106
    :goto_1
    return v11

    .line 2015
    .end local v5    # "handleKeyEvent":Z
    .end local v11    # "wasHandled":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 2019
    .restart local v5    # "handleKeyEvent":Z
    .restart local v11    # "wasHandled":Z
    :sswitch_0
    if-eqz v5, :cond_1

    .line 2021
    const/4 v12, -0x1

    invoke-static {v6, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2022
    .local v7, "newIcon":Landroid/view/View;
    if-eqz v7, :cond_2

    .line 2023
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 2024
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->playSoundEffect(I)V

    .line 2033
    .end local v7    # "newIcon":Landroid/view/View;
    :cond_1
    :goto_2
    const/4 v11, 0x1

    .line 2034
    goto :goto_1

    .line 2025
    .restart local v7    # "newIcon":Landroid/view/View;
    :cond_2
    if-eqz v4, :cond_3

    .line 2026
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 2027
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 2029
    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    .line 2030
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 2037
    .end local v7    # "newIcon":Landroid/view/View;
    :sswitch_1
    if-eqz v5, :cond_4

    .line 2040
    const/4 v12, 0x1

    invoke-static {v6, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2041
    .restart local v7    # "newIcon":Landroid/view/View;
    if-eqz v7, :cond_5

    .line 2042
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 2043
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->playSoundEffect(I)V

    .line 2051
    .end local v7    # "newIcon":Landroid/view/View;
    :cond_4
    :goto_3
    const/4 v11, 0x1

    .line 2052
    goto :goto_1

    .line 2045
    .restart local v7    # "newIcon":Landroid/view/View;
    :cond_5
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v12

    if-nez v12, :cond_4

    .line 2046
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2047
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 2054
    .end local v7    # "newIcon":Landroid/view/View;
    :sswitch_2
    if-eqz v5, :cond_6

    .line 2056
    const/4 v12, -0x1

    invoke-static {v6, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2057
    .restart local v7    # "newIcon":Landroid/view/View;
    if-eqz v7, :cond_7

    .line 2058
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 2059
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->playSoundEffect(I)V

    .line 2068
    .end local v7    # "newIcon":Landroid/view/View;
    :cond_6
    :goto_4
    const/4 v11, 0x1

    .line 2069
    goto :goto_1

    .line 2060
    .restart local v7    # "newIcon":Landroid/view/View;
    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v12

    if-nez v12, :cond_8

    .line 2061
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 2062
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    .line 2063
    :cond_8
    if-eqz v10, :cond_6

    .line 2064
    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    .line 2065
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    .line 2071
    .end local v7    # "newIcon":Landroid/view/View;
    :sswitch_3
    if-eqz v5, :cond_9

    .line 2073
    const/4 v12, 0x1

    invoke-static {v6, v8, p0, v12}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 2074
    .restart local v7    # "newIcon":Landroid/view/View;
    if-eqz v7, :cond_9

    .line 2075
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 2076
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->playSoundEffect(I)V

    .line 2079
    .end local v7    # "newIcon":Landroid/view/View;
    :cond_9
    const/4 v11, 0x1

    .line 2080
    goto/16 :goto_1

    .line 2082
    :sswitch_4
    if-eqz v5, :cond_a

    .line 2084
    const/4 v12, -0x1

    const/4 v13, 0x1

    invoke-static {v6, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 2085
    .restart local v7    # "newIcon":Landroid/view/View;
    if-eqz v7, :cond_a

    .line 2086
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 2087
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->playSoundEffect(I)V

    .line 2090
    .end local v7    # "newIcon":Landroid/view/View;
    :cond_a
    const/4 v11, 0x1

    .line 2091
    goto/16 :goto_1

    .line 2093
    :sswitch_5
    if-eqz v5, :cond_b

    .line 2095
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v12

    const/4 v13, -0x1

    invoke-static {v6, v8, v12, v13}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 2097
    .restart local v7    # "newIcon":Landroid/view/View;
    if-eqz v7, :cond_b

    .line 2098
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 2099
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->playSoundEffect(I)V

    .line 2102
    .end local v7    # "newIcon":Landroid/view/View;
    :cond_b
    const/4 v11, 0x1

    .line 2103
    goto/16 :goto_1

    .line 2017
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_1
        0x7a -> :sswitch_4
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method private static handleFolderNameKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 2110
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findFolderParent(Landroid/view/View;)Lcom/android/launcher2/Folder;

    move-result-object v2

    .local v2, "folder":Lcom/android/launcher2/Folder;
    move-object v8, p0

    .line 2111
    check-cast v8, Lcom/android/launcher2/FolderEditText;

    .line 2112
    .local v8, "title":Lcom/android/launcher2/FolderEditText;
    const v10, 0x7f0f00dd

    invoke-virtual {v2, v10}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 2113
    .local v5, "layout":Lcom/android/launcher2/CellLayout;
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    .line 2115
    .local v1, "child":Lcom/android/launcher2/CellLayoutChildren;
    const v10, 0x7f0f0028

    invoke-virtual {v2, v10}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2117
    .local v3, "folderOptionsButton":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2118
    .local v0, "action":I
    const/4 v10, 0x1

    if-eq v0, v10, :cond_1

    const/4 v4, 0x1

    .line 2119
    .local v4, "handleKeyEvent":Z
    :goto_0
    const/4 v9, 0x0

    .line 2120
    .local v9, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    .line 2169
    :cond_0
    :goto_1
    return v9

    .line 2118
    .end local v4    # "handleKeyEvent":Z
    .end local v9    # "wasHandled":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2122
    .restart local v4    # "handleKeyEvent":Z
    .restart local v9    # "wasHandled":Z
    :sswitch_0
    if-eqz v4, :cond_0

    .line 2123
    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->getSelectionStart()I

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->getSelectionEnd()I

    move-result v10

    if-nez v10, :cond_0

    .line 2124
    const/4 v9, 0x1

    goto :goto_1

    .line 2129
    :sswitch_1
    if-eqz v4, :cond_0

    .line 2130
    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->length()I

    move-result v6

    .line 2131
    .local v6, "length":I
    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->getSelectionStart()I

    move-result v10

    if-ne v10, v6, :cond_0

    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->getSelectionEnd()I

    move-result v10

    if-ne v10, v6, :cond_0

    .line 2132
    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-static {v5, v1, v10, v11}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 2133
    .local v7, "newIcon":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 2134
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 2135
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 2140
    :cond_2
    :goto_2
    const/4 v9, 0x1

    goto :goto_1

    .line 2136
    :cond_3
    if-eqz v7, :cond_2

    .line 2137
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 2138
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 2146
    .end local v6    # "length":I
    .end local v7    # "newIcon":Landroid/view/View;
    :sswitch_2
    const/4 v9, 0x1

    .line 2147
    goto :goto_1

    .line 2149
    :sswitch_3
    if-eqz v4, :cond_4

    .line 2150
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v10

    if-eqz v10, :cond_4

    .line 2151
    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-static {v5, v1, v10, v11}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 2152
    .restart local v7    # "newIcon":Landroid/view/View;
    if-eqz v7, :cond_4

    .line 2153
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 2154
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->playSoundEffect(I)V

    .line 2158
    .end local v7    # "newIcon":Landroid/view/View;
    :cond_4
    const/4 v9, 0x1

    .line 2159
    goto :goto_1

    .line 2162
    :sswitch_4
    if-eqz v4, :cond_5

    .line 2163
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Lcom/android/launcher2/Folder;->close(ZZ)V

    .line 2165
    :cond_5
    const/4 v9, 0x1

    .line 2166
    goto :goto_1

    .line 2120
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_1
        0x42 -> :sswitch_4
        0x6f -> :sswitch_4
    .end sparse-switch
.end method

.method private static handleFolderOptionsButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2232
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findFolderParent(Landroid/view/View;)Lcom/android/launcher2/Folder;

    move-result-object v2

    .line 2233
    .local v2, "folder":Lcom/android/launcher2/Folder;
    const v12, 0x7f0f00dd

    invoke-virtual {v2, v12}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 2234
    .local v5, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v5, v11}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    .line 2235
    .local v1, "child":Lcom/android/launcher2/CellLayoutChildren;
    iget-object v8, v2, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 2236
    .local v8, "title":Lcom/android/launcher2/FolderEditText;
    iget-object v3, v2, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    .line 2239
    .local v3, "folderOptionView":Landroid/widget/LinearLayout;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2240
    .local v0, "action":I
    if-eq v0, v10, :cond_0

    move v4, v10

    .line 2242
    .local v4, "handleKeyEvent":Z
    :goto_0
    const/4 v9, 0x0

    .line 2243
    .local v9, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    .line 2277
    :goto_1
    return v9

    .end local v4    # "handleKeyEvent":Z
    .end local v9    # "wasHandled":Z
    :cond_0
    move v4, v11

    .line 2240
    goto :goto_0

    .line 2247
    .restart local v4    # "handleKeyEvent":Z
    .restart local v9    # "wasHandled":Z
    :sswitch_0
    if-eqz v4, :cond_1

    .line 2248
    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->length()I

    move-result v6

    .line 2249
    .local v6, "length":I
    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->getSelectionStart()I

    move-result v12

    if-ne v12, v6, :cond_1

    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->getSelectionEnd()I

    move-result v12

    if-ne v12, v6, :cond_1

    .line 2250
    const/4 v12, -0x1

    invoke-static {v5, v1, v12, v10}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 2251
    .local v7, "newIcon":Landroid/view/View;
    if-eqz v7, :cond_1

    .line 2252
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 2253
    invoke-virtual {v7, v11}, Landroid/view/View;->playSoundEffect(I)V

    .line 2257
    .end local v6    # "length":I
    .end local v7    # "newIcon":Landroid/view/View;
    :cond_1
    const/4 v9, 0x1

    .line 2258
    goto :goto_1

    .line 2261
    :sswitch_1
    if-eqz v4, :cond_2

    .line 2263
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_3

    .line 2264
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    .line 2265
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/view/View;->playSoundEffect(I)V

    .line 2272
    :cond_2
    :goto_2
    const/4 v9, 0x1

    .line 2273
    goto :goto_1

    .line 2267
    :cond_3
    if-eqz v8, :cond_2

    .line 2268
    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    .line 2269
    invoke-virtual {v8, v11}, Lcom/android/launcher2/FolderEditText;->playSoundEffect(I)V

    goto :goto_2

    .line 2243
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method private static handleHomeMagazineButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 16
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 1347
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 1348
    .local v9, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1349
    .local v4, "launcher":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v14

    const v15, 0x7f0f0079

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Workspace;

    .line 1350
    .local v13, "workspace":Lcom/android/launcher2/Workspace;
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v8

    .line 1351
    .local v8, "pageIndex":I
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v7

    .line 1354
    .local v7, "pageCount":I
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 1355
    .local v2, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 1357
    .local v1, "cc":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1358
    .local v0, "action":I
    const/4 v14, 0x1

    if-eq v0, v14, :cond_1

    const/4 v3, 0x1

    .line 1359
    .local v3, "handleKeyEvent":Z
    :goto_0
    const/4 v11, 0x0

    .line 1360
    .local v11, "wasHandled":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1363
    .local v12, "whichButton":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1433
    :cond_0
    :goto_1
    return v11

    .line 1358
    .end local v3    # "handleKeyEvent":Z
    .end local v11    # "wasHandled":Z
    .end local v12    # "whichButton":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1365
    .restart local v3    # "handleKeyEvent":Z
    .restart local v11    # "wasHandled":Z
    .restart local v12    # "whichButton":Ljava/lang/String;
    :pswitch_0
    if-eqz v3, :cond_0

    .line 1366
    iget-object v14, v13, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_2

    .line 1367
    iget-object v14, v13, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1368
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1369
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v8

    .line 1372
    :cond_2
    if-lez v8, :cond_5

    .line 1373
    add-int/lit8 v10, v8, -0x1

    .line 1379
    .local v10, "prevPage":I
    :goto_2
    if-eq v10, v8, :cond_4

    .line 1380
    sget-boolean v14, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v14, :cond_3

    .line 1381
    invoke-virtual {v13, v10}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1383
    :cond_3
    invoke-static {v13, v10}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 1384
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "cl":Lcom/android/launcher2/CellLayout;
    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 1385
    .restart local v2    # "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v14

    const/4 v15, -0x1

    invoke-static {v2, v1, v14, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 1386
    .local v5, "newIcon":Landroid/view/View;
    if-eqz v5, :cond_4

    .line 1387
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1388
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/view/View;->playSoundEffect(I)V

    .line 1391
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_4
    const/4 v11, 0x1

    goto :goto_1

    .line 1374
    .end local v10    # "prevPage":I
    :cond_5
    sget-boolean v14, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v14, :cond_6

    .line 1375
    add-int/lit8 v10, v7, -0x1

    .restart local v10    # "prevPage":I
    goto :goto_2

    .line 1377
    .end local v10    # "prevPage":I
    :cond_6
    move v10, v8

    .restart local v10    # "prevPage":I
    goto :goto_2

    .line 1396
    .end local v10    # "prevPage":I
    :pswitch_1
    if-eqz v3, :cond_0

    .line 1397
    iget-object v14, v13, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_7

    .line 1398
    iget-object v14, v13, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1399
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1400
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v8

    .line 1403
    :cond_7
    add-int/lit8 v14, v7, -0x1

    if-ge v8, v14, :cond_a

    .line 1404
    add-int/lit8 v6, v8, 0x1

    .line 1409
    .local v6, "nextPage":I
    :goto_3
    if-eq v6, v8, :cond_9

    .line 1410
    sget-boolean v14, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v14, :cond_8

    .line 1411
    invoke-virtual {v13, v6}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1413
    :cond_8
    invoke-static {v13, v6}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 1414
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "cl":Lcom/android/launcher2/CellLayout;
    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 1415
    .restart local v2    # "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v2, v1, v14, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1416
    .restart local v5    # "newIcon":Landroid/view/View;
    if-eqz v5, :cond_9

    .line 1417
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1418
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/view/View;->playSoundEffect(I)V

    .line 1421
    .end local v5    # "newIcon":Landroid/view/View;
    :cond_9
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 1405
    .end local v6    # "nextPage":I
    :cond_a
    sget-boolean v14, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v14, :cond_b

    .line 1406
    const/4 v6, 0x0

    .restart local v6    # "nextPage":I
    goto :goto_3

    .line 1408
    .end local v6    # "nextPage":I
    :cond_b
    move v6, v8

    .restart local v6    # "nextPage":I
    goto :goto_3

    .line 1426
    .end local v6    # "nextPage":I
    :pswitch_2
    const/4 v11, 0x1

    .line 1427
    goto/16 :goto_1

    .line 1363
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static handleHomeOptionMenuonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 424
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0f00d6

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeScreenOptionMenu;

    .line 427
    .local v3, "homeOptionMenu":Lcom/android/launcher2/HomeScreenOptionMenu;
    sget-boolean v9, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-nez v9, :cond_0

    .line 428
    const v9, 0x7f0f005b

    invoke-virtual {v3, v9}, Lcom/android/launcher2/HomeScreenOptionMenu;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/launcher2/HomeScreenOptionMenu;->removeView(Landroid/view/View;)V

    .line 431
    :cond_0
    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->getFocusedChild()Landroid/view/View;

    move-result-object v5

    .line 432
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v3, v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 434
    .local v4, "index":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 435
    .local v0, "action":I
    if-eq v0, v7, :cond_1

    move v2, v7

    .line 436
    .local v2, "handleKeyEvent":Z
    :goto_0
    const/4 v6, 0x0

    .line 437
    .local v6, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    .line 496
    :goto_1
    return v6

    .end local v2    # "handleKeyEvent":Z
    .end local v6    # "wasHandled":Z
    :cond_1
    move v2, v8

    .line 435
    goto :goto_0

    .line 439
    .restart local v2    # "handleKeyEvent":Z
    .restart local v6    # "wasHandled":Z
    :sswitch_0
    if-eqz v2, :cond_3

    .line 440
    if-gtz v4, :cond_2

    .line 441
    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->getChildCount()I

    move-result v4

    .line 443
    :cond_2
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v3, v7}, Lcom/android/launcher2/HomeScreenOptionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 444
    .local v1, "childView":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 445
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 446
    invoke-virtual {v1, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 449
    .end local v1    # "childView":Landroid/view/View;
    :cond_3
    const/4 v6, 0x1

    .line 450
    goto :goto_1

    .line 452
    :sswitch_1
    if-eqz v2, :cond_5

    .line 453
    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt v4, v7, :cond_4

    .line 454
    const/4 v4, -0x1

    .line 456
    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v7}, Lcom/android/launcher2/HomeScreenOptionMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 457
    .restart local v1    # "childView":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 458
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 459
    invoke-virtual {v1, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 462
    .end local v1    # "childView":Landroid/view/View;
    :cond_5
    const/4 v6, 0x1

    .line 463
    goto :goto_1

    .line 466
    :sswitch_2
    const/4 v6, 0x1

    .line 467
    goto :goto_1

    .line 469
    :sswitch_3
    if-eqz v2, :cond_7

    .line 470
    sget-boolean v9, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v9, :cond_b

    .line 472
    if-nez v4, :cond_8

    .line 473
    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->launchOptionWallpaper()V

    .line 489
    :cond_6
    :goto_2
    if-eqz v5, :cond_7

    .line 490
    invoke-virtual {v5, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 492
    :cond_7
    const/4 v6, 0x1

    .line 493
    goto :goto_1

    .line 474
    :cond_8
    if-ne v4, v7, :cond_9

    .line 475
    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->launchOptionWidgets()V

    goto :goto_2

    .line 476
    :cond_9
    if-ne v4, v11, :cond_a

    .line 477
    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->launchOptionSettings()V

    goto :goto_2

    .line 478
    :cond_a
    const/4 v7, 0x3

    if-ne v4, v7, :cond_6

    .line 479
    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->launchOptionThemes()V

    goto :goto_2

    .line 482
    :cond_b
    if-nez v4, :cond_c

    .line 483
    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->launchOptionWallpaper()V

    goto :goto_2

    .line 484
    :cond_c
    if-ne v4, v7, :cond_d

    .line 485
    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->launchOptionWidgets()V

    goto :goto_2

    .line 486
    :cond_d
    if-ne v4, v11, :cond_6

    .line 487
    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenOptionMenu;->launchOptionSettings()V

    goto :goto_2

    .line 437
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x42 -> :sswitch_3
    .end sparse-switch
.end method

.method private static handleHomeSoftkeyAllappsIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 16
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;
    .param p3, "orientation"    # I

    .prologue
    .line 3018
    if-nez p0, :cond_0

    .line 3019
    const/4 v12, 0x1

    .line 3116
    :goto_0
    return v12

    .line 3021
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 3022
    .local v10, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 3023
    .local v4, "launcher":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v14

    const v15, 0x7f0f0079

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Workspace;

    .line 3024
    .local v13, "workspace":Lcom/android/launcher2/Workspace;
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 3025
    .local v9, "pageIndex":I
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v8

    .line 3028
    .local v8, "pageCount":I
    invoke-virtual {v13, v9}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 3030
    .local v5, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 3031
    .local v0, "action":I
    const/4 v14, 0x1

    if-eq v0, v14, :cond_3

    const/4 v2, 0x1

    .line 3032
    .local v2, "handleKeyEvent":Z
    :goto_1
    const/4 v12, 0x0

    .line 3034
    .local v12, "wasHandled":Z
    sget-object v14, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    const v15, 0x7f0f0081

    invoke-virtual {v14, v15}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3036
    .local v3, "homeSoftPhoneBtn":Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3094
    :pswitch_1
    if-eqz v2, :cond_2

    .line 3095
    iget-object v14, v13, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_1

    .line 3096
    iget-object v14, v13, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3097
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 3098
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 3101
    :cond_1
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 3102
    .local v1, "children":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v14

    const/4 v15, -0x1

    invoke-static {v5, v1, v14, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v6

    .line 3103
    .local v6, "newIcon":Landroid/view/View;
    if-eqz v6, :cond_e

    .line 3104
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 3105
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/view/View;->playSoundEffect(I)V

    .line 3110
    .end local v1    # "children":Lcom/android/launcher2/CellLayoutChildren;
    .end local v6    # "newIcon":Landroid/view/View;
    :cond_2
    :goto_2
    const/4 v12, 0x1

    .line 3111
    goto :goto_0

    .line 3031
    .end local v2    # "handleKeyEvent":Z
    .end local v3    # "homeSoftPhoneBtn":Landroid/view/View;
    .end local v12    # "wasHandled":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 3039
    .restart local v2    # "handleKeyEvent":Z
    .restart local v3    # "homeSoftPhoneBtn":Landroid/view/View;
    .restart local v12    # "wasHandled":Z
    :pswitch_2
    if-eqz v2, :cond_5

    .line 3040
    iget-object v14, v13, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_4

    .line 3041
    iget-object v14, v13, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3042
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 3043
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 3046
    :cond_4
    add-int/lit8 v14, v8, -0x1

    if-ge v9, v14, :cond_6

    .line 3047
    add-int/lit8 v7, v9, 0x1

    .line 3053
    .local v7, "nextPage":I
    :goto_3
    if-eq v7, v9, :cond_5

    .line 3055
    invoke-virtual {v13, v7}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 3056
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 3059
    .end local v7    # "nextPage":I
    :cond_5
    const/4 v12, 0x1

    .line 3060
    goto/16 :goto_0

    .line 3048
    :cond_6
    sget-boolean v14, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v14, :cond_7

    .line 3049
    const/4 v7, 0x0

    .restart local v7    # "nextPage":I
    goto :goto_3

    .line 3051
    .end local v7    # "nextPage":I
    :cond_7
    move v7, v9

    .restart local v7    # "nextPage":I
    goto :goto_3

    .line 3062
    .end local v7    # "nextPage":I
    :pswitch_3
    if-eqz v2, :cond_8

    .line 3064
    sget-boolean v14, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v14, :cond_9

    if-eqz v3, :cond_9

    .line 3065
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 3066
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/view/View;->playSoundEffect(I)V

    .line 3091
    :cond_8
    :goto_4
    const/4 v12, 0x1

    .line 3092
    goto/16 :goto_0

    .line 3068
    :cond_9
    iget-object v14, v13, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_a

    .line 3069
    iget-object v14, v13, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3070
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 3071
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 3074
    :cond_a
    if-lez v9, :cond_c

    .line 3075
    add-int/lit8 v11, v9, -0x1

    .line 3081
    .local v11, "prevPage":I
    :goto_5
    if-eq v11, v9, :cond_b

    .line 3082
    invoke-virtual {v13, v11}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 3083
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 3086
    :cond_b
    if-eqz p0, :cond_8

    .line 3087
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 3076
    .end local v11    # "prevPage":I
    :cond_c
    sget-boolean v14, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v14, :cond_d

    .line 3077
    add-int/lit8 v11, v8, -0x1

    .restart local v11    # "prevPage":I
    goto :goto_5

    .line 3079
    .end local v11    # "prevPage":I
    :cond_d
    move v11, v9

    .restart local v11    # "prevPage":I
    goto :goto_5

    .line 3107
    .end local v11    # "prevPage":I
    .restart local v1    # "children":Lcom/android/launcher2/CellLayoutChildren;
    .restart local v6    # "newIcon":Landroid/view/View;
    :cond_e
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->requestFocus()Z

    goto :goto_2

    .line 3036
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static handleHomeSoftkeyPhoneIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 16
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;
    .param p3, "orientation"    # I

    .prologue
    .line 2910
    if-nez p0, :cond_0

    .line 2911
    const/4 v12, 0x1

    .line 3008
    :goto_0
    return v12

    .line 2913
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 2914
    .local v10, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 2915
    .local v4, "launcher":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v14

    const v15, 0x7f0f0079

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Workspace;

    .line 2916
    .local v13, "workspace":Lcom/android/launcher2/Workspace;
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 2917
    .local v9, "pageIndex":I
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v8

    .line 2920
    .local v8, "pageCount":I
    invoke-virtual {v13, v9}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 2922
    .local v5, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2923
    .local v0, "action":I
    const/4 v14, 0x1

    if-eq v0, v14, :cond_3

    const/4 v2, 0x1

    .line 2924
    .local v2, "handleKeyEvent":Z
    :goto_1
    const/4 v12, 0x0

    .line 2926
    .local v12, "wasHandled":Z
    sget-object v14, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    const v15, 0x7f0f0082

    invoke-virtual {v14, v15}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2928
    .local v3, "homeSoftAppsBtn":Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2986
    :pswitch_1
    if-eqz v2, :cond_2

    .line 2987
    iget-object v14, v13, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_1

    .line 2988
    iget-object v14, v13, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2989
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 2990
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 2993
    :cond_1
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 2994
    .local v1, "children":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v14

    const/4 v15, -0x1

    invoke-static {v5, v1, v14, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v6

    .line 2995
    .local v6, "newIcon":Landroid/view/View;
    if-eqz v6, :cond_e

    .line 2996
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 2997
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Landroid/view/View;->playSoundEffect(I)V

    .line 3002
    .end local v1    # "children":Lcom/android/launcher2/CellLayoutChildren;
    .end local v6    # "newIcon":Landroid/view/View;
    :cond_2
    :goto_2
    const/4 v12, 0x1

    .line 3003
    goto :goto_0

    .line 2923
    .end local v2    # "handleKeyEvent":Z
    .end local v3    # "homeSoftAppsBtn":Landroid/view/View;
    .end local v12    # "wasHandled":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 2931
    .restart local v2    # "handleKeyEvent":Z
    .restart local v3    # "homeSoftAppsBtn":Landroid/view/View;
    .restart local v12    # "wasHandled":Z
    :pswitch_2
    if-eqz v2, :cond_4

    .line 2932
    sget-boolean v14, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v14, :cond_5

    if-eqz v3, :cond_5

    .line 2933
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 2934
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/view/View;->playSoundEffect(I)V

    .line 2956
    :cond_4
    :goto_3
    const/4 v12, 0x1

    .line 2957
    goto :goto_0

    .line 2936
    :cond_5
    iget-object v14, v13, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_6

    .line 2937
    iget-object v14, v13, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2938
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 2939
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 2942
    :cond_6
    add-int/lit8 v14, v8, -0x1

    if-ge v9, v14, :cond_7

    .line 2943
    add-int/lit8 v7, v9, 0x1

    .line 2949
    .local v7, "nextPage":I
    :goto_4
    if-eq v7, v9, :cond_4

    .line 2951
    invoke-virtual {v13, v7}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2952
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 2944
    .end local v7    # "nextPage":I
    :cond_7
    sget-boolean v14, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v14, :cond_8

    .line 2945
    const/4 v7, 0x0

    .restart local v7    # "nextPage":I
    goto :goto_4

    .line 2947
    .end local v7    # "nextPage":I
    :cond_8
    move v7, v9

    .restart local v7    # "nextPage":I
    goto :goto_4

    .line 2959
    .end local v7    # "nextPage":I
    :pswitch_3
    if-eqz v2, :cond_b

    .line 2961
    iget-object v14, v13, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_9

    .line 2962
    iget-object v14, v13, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2963
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 2964
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 2967
    :cond_9
    if-lez v9, :cond_c

    .line 2968
    add-int/lit8 v11, v9, -0x1

    .line 2974
    .local v11, "prevPage":I
    :goto_5
    if-eq v11, v9, :cond_a

    .line 2975
    invoke-virtual {v13, v11}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2976
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 2979
    :cond_a
    if-eqz p0, :cond_b

    .line 2980
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 2983
    .end local v11    # "prevPage":I
    :cond_b
    const/4 v12, 0x1

    .line 2984
    goto/16 :goto_0

    .line 2969
    :cond_c
    sget-boolean v14, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v14, :cond_d

    .line 2970
    add-int/lit8 v11, v8, -0x1

    .restart local v11    # "prevPage":I
    goto :goto_5

    .line 2972
    .end local v11    # "prevPage":I
    :cond_d
    move v11, v9

    .restart local v11    # "prevPage":I
    goto :goto_5

    .line 2999
    .end local v11    # "prevPage":I
    .restart local v1    # "children":Lcom/android/launcher2/CellLayoutChildren;
    .restart local v6    # "newIcon":Landroid/view/View;
    :cond_e
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->requestFocus()Z

    goto :goto_2

    .line 2928
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 29
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;
    .param p3, "orientation"    # I

    .prologue
    .line 1441
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    .line 1442
    .local v23, "parent":Landroid/view/ViewGroup;
    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 1443
    .local v13, "launcher":Landroid/view/ViewGroup;
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v27

    const v28, 0x7f0f0079

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/Workspace;

    .line 1444
    .local v26, "workspace":Lcom/android/launcher2/Workspace;
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 1445
    .local v22, "pageIndex":I
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v21

    .line 1448
    .local v21, "pageCount":I
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 1449
    .local v7, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 1450
    .local v3, "cc":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v7, v3, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v17

    .line 1456
    .local v17, "newIcon_left":Landroid/view/View;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 1457
    .local v2, "action":I
    const/16 v27, 0x1

    move/from16 v0, v27

    if-eq v2, v0, :cond_1

    const/4 v12, 0x1

    .line 1458
    .local v12, "handleKeyEvent":Z
    :goto_0
    const/16 v25, 0x0

    .line 1459
    .local v25, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    move/from16 v27, v25

    .line 1663
    :goto_2
    return v27

    .line 1457
    .end local v12    # "handleKeyEvent":Z
    .end local v25    # "wasHandled":Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 1461
    .restart local v12    # "handleKeyEvent":Z
    .restart local v25    # "wasHandled":Z
    :sswitch_0
    if-eqz v12, :cond_3

    .line 1462
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_2

    .line 1463
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->timePassed()I

    move-result v27

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Scroller;->getDuration()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_4

    .line 1464
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1465
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1466
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 1468
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "cl":Lcom/android/launcher2/CellLayout;
    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 1469
    .restart local v7    # "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 1470
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v7, v3, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v17

    .line 1475
    :cond_2
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isLargeTabletLayout()Z

    move-result v27

    if-nez v27, :cond_9

    .line 1476
    if-eqz v17, :cond_5

    .line 1477
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->requestFocus()Z

    .line 1478
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 1533
    :cond_3
    :goto_3
    const/16 v25, 0x1

    .line 1534
    goto :goto_1

    .line 1472
    :cond_4
    const/16 v27, 0x1

    goto :goto_2

    .line 1480
    :cond_5
    if-lez v22, :cond_7

    .line 1481
    add-int/lit8 v24, v22, -0x1

    .line 1487
    .local v24, "prevPage":I
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1488
    sget-boolean v27, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v27, :cond_6

    .line 1489
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1490
    :cond_6
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    .line 1491
    .local v9, "cl_left":Lcom/android/launcher2/CellLayout;
    if-eqz v9, :cond_3

    .line 1492
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    .line 1493
    .local v4, "cc_left":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v27

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v9, v4, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v19

    .line 1494
    .local v19, "newIcon_prevpage":Landroid/view/View;
    if-eqz v19, :cond_3

    .line 1495
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    .line 1496
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 1482
    .end local v4    # "cc_left":Lcom/android/launcher2/CellLayoutChildren;
    .end local v9    # "cl_left":Lcom/android/launcher2/CellLayout;
    .end local v19    # "newIcon_prevpage":Landroid/view/View;
    .end local v24    # "prevPage":I
    :cond_7
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_8

    .line 1483
    add-int/lit8 v24, v21, -0x1

    .restart local v24    # "prevPage":I
    goto :goto_4

    .line 1485
    .end local v24    # "prevPage":I
    :cond_8
    move/from16 v24, v22

    .restart local v24    # "prevPage":I
    goto :goto_4

    .line 1502
    .end local v24    # "prevPage":I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 1503
    .local v11, "clc_hot":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 1504
    .local v8, "cl_hot":Lcom/android/launcher2/CellLayout;
    const/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    .line 1506
    .local v16, "newIcon_hot":Landroid/view/View;
    if-eqz v16, :cond_a

    .line 1507
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    .line 1508
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 1510
    :cond_a
    if-lez v22, :cond_c

    .line 1511
    add-int/lit8 v24, v22, -0x1

    .line 1517
    .restart local v24    # "prevPage":I
    :goto_5
    move/from16 v0, v24

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    .line 1518
    sget-boolean v27, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v27, :cond_b

    .line 1519
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1520
    :cond_b
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    .line 1521
    .restart local v9    # "cl_left":Lcom/android/launcher2/CellLayout;
    if-eqz v9, :cond_3

    .line 1522
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    .line 1523
    .restart local v4    # "cc_left":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v27

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v9, v4, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v19

    .line 1524
    .restart local v19    # "newIcon_prevpage":Landroid/view/View;
    if-eqz v19, :cond_3

    .line 1525
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    .line 1526
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_3

    .line 1512
    .end local v4    # "cc_left":Lcom/android/launcher2/CellLayoutChildren;
    .end local v9    # "cl_left":Lcom/android/launcher2/CellLayout;
    .end local v19    # "newIcon_prevpage":Landroid/view/View;
    .end local v24    # "prevPage":I
    :cond_c
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_d

    .line 1513
    add-int/lit8 v24, v21, -0x1

    .restart local v24    # "prevPage":I
    goto :goto_5

    .line 1515
    .end local v24    # "prevPage":I
    :cond_d
    move/from16 v24, v22

    .restart local v24    # "prevPage":I
    goto :goto_5

    .line 1536
    .end local v8    # "cl_hot":Lcom/android/launcher2/CellLayout;
    .end local v11    # "clc_hot":Lcom/android/launcher2/CellLayoutChildren;
    .end local v16    # "newIcon_hot":Landroid/view/View;
    .end local v24    # "prevPage":I
    :sswitch_1
    if-eqz v12, :cond_10

    .line 1537
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_e

    .line 1538
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->timePassed()I

    move-result v27

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Scroller;->getDuration()I

    move-result v28

    div-int/lit8 v28, v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_11

    .line 1539
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1540
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1541
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 1546
    :cond_e
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isLargeTabletLayout()Z

    move-result v27

    if-nez v27, :cond_14

    .line 1547
    add-int/lit8 v27, v21, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_12

    .line 1548
    add-int/lit8 v20, v22, 0x1

    .line 1554
    .local v20, "nextPage":I
    :goto_6
    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 1555
    sget-boolean v27, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v27, :cond_f

    .line 1556
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1557
    :cond_f
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    .line 1558
    .local v10, "cl_right":Lcom/android/launcher2/CellLayout;
    if-eqz v10, :cond_10

    .line 1559
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 1560
    .local v5, "cc_right":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v10, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    .line 1561
    .local v18, "newIcon_nextpage":Landroid/view/View;
    if-eqz v18, :cond_10

    .line 1562
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    .line 1563
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 1599
    .end local v5    # "cc_right":Lcom/android/launcher2/CellLayoutChildren;
    .end local v10    # "cl_right":Lcom/android/launcher2/CellLayout;
    .end local v18    # "newIcon_nextpage":Landroid/view/View;
    .end local v20    # "nextPage":I
    :cond_10
    :goto_7
    const/16 v25, 0x1

    .line 1600
    goto/16 :goto_1

    .line 1543
    :cond_11
    const/16 v27, 0x1

    goto/16 :goto_2

    .line 1549
    :cond_12
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_13

    .line 1550
    const/16 v20, 0x0

    .restart local v20    # "nextPage":I
    goto :goto_6

    .line 1552
    .end local v20    # "nextPage":I
    :cond_13
    move/from16 v20, v22

    .restart local v20    # "nextPage":I
    goto :goto_6

    .line 1568
    .end local v20    # "nextPage":I
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 1569
    .restart local v11    # "clc_hot":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 1570
    .restart local v8    # "cl_hot":Lcom/android/launcher2/CellLayout;
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    .line 1572
    .restart local v16    # "newIcon_hot":Landroid/view/View;
    if-eqz v16, :cond_15

    .line 1573
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    .line 1574
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_7

    .line 1576
    :cond_15
    add-int/lit8 v27, v21, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_17

    .line 1577
    add-int/lit8 v20, v22, 0x1

    .line 1583
    .restart local v20    # "nextPage":I
    :goto_8
    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 1584
    sget-boolean v27, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v27, :cond_16

    .line 1585
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1586
    :cond_16
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    .line 1587
    .restart local v10    # "cl_right":Lcom/android/launcher2/CellLayout;
    if-eqz v10, :cond_10

    .line 1588
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 1589
    .restart local v5    # "cc_right":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v10, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    .line 1590
    .restart local v18    # "newIcon_nextpage":Landroid/view/View;
    if-eqz v18, :cond_10

    .line 1591
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    .line 1592
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_7

    .line 1578
    .end local v5    # "cc_right":Lcom/android/launcher2/CellLayoutChildren;
    .end local v10    # "cl_right":Lcom/android/launcher2/CellLayout;
    .end local v18    # "newIcon_nextpage":Landroid/view/View;
    .end local v20    # "nextPage":I
    :cond_17
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_18

    .line 1579
    const/16 v20, 0x0

    .restart local v20    # "nextPage":I
    goto :goto_8

    .line 1581
    .end local v20    # "nextPage":I
    :cond_18
    move/from16 v20, v22

    .restart local v20    # "nextPage":I
    goto :goto_8

    .line 1602
    .end local v8    # "cl_hot":Lcom/android/launcher2/CellLayout;
    .end local v11    # "clc_hot":Lcom/android/launcher2/CellLayoutChildren;
    .end local v16    # "newIcon_hot":Landroid/view/View;
    .end local v20    # "nextPage":I
    :sswitch_2
    if-eqz v12, :cond_1a

    .line 1603
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_19

    .line 1604
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1605
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1606
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 1609
    :cond_19
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isLargeTabletLayout()Z

    move-result v27

    if-nez v27, :cond_1b

    .line 1610
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 1611
    .restart local v11    # "clc_hot":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 1612
    .restart local v8    # "cl_hot":Lcom/android/launcher2/CellLayout;
    const/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    .line 1614
    .restart local v16    # "newIcon_hot":Landroid/view/View;
    if-eqz v16, :cond_1a

    .line 1615
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    .line 1616
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 1634
    .end local v8    # "cl_hot":Lcom/android/launcher2/CellLayout;
    .end local v11    # "clc_hot":Lcom/android/launcher2/CellLayoutChildren;
    .end local v16    # "newIcon_hot":Landroid/view/View;
    :cond_1a
    :goto_9
    const/16 v25, 0x1

    .line 1635
    goto/16 :goto_1

    .line 1619
    :cond_1b
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FocusHelper;->is12KEYNaviKeyFocus(Landroid/view/View;)Z

    move-result v27

    if-eqz v27, :cond_1c

    .line 1620
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 1623
    :cond_1c
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout;

    .line 1624
    .local v14, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v14}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    .line 1625
    .local v6, "children":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v14, v6, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v15

    .line 1626
    .local v15, "newIcon":Landroid/view/View;
    if-eqz v15, :cond_1d

    .line 1627
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    .line 1628
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_9

    .line 1630
    :cond_1d
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->requestFocus()Z

    goto :goto_9

    .line 1637
    .end local v6    # "children":Lcom/android/launcher2/CellLayoutChildren;
    .end local v14    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v15    # "newIcon":Landroid/view/View;
    :sswitch_3
    if-eqz v12, :cond_1f

    .line 1638
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_1e

    .line 1639
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1640
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1641
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 1643
    :cond_1e
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isLargeTabletLayout()Z

    move-result v27

    if-nez v27, :cond_1f

    .line 1644
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 1645
    .restart local v11    # "clc_hot":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 1646
    .restart local v8    # "cl_hot":Lcom/android/launcher2/CellLayout;
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    .line 1648
    .restart local v16    # "newIcon_hot":Landroid/view/View;
    if-eqz v16, :cond_1f

    .line 1649
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    .line 1650
    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 1654
    .end local v8    # "cl_hot":Lcom/android/launcher2/CellLayout;
    .end local v11    # "clc_hot":Lcom/android/launcher2/CellLayoutChildren;
    .end local v16    # "newIcon_hot":Landroid/view/View;
    :cond_1f
    const/16 v25, 0x1

    .line 1655
    goto/16 :goto_1

    .line 1657
    :sswitch_4
    sget-boolean v27, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/AllappsIcon;

    move/from16 v27, v0

    if-eqz v27, :cond_0

    const-string v27, "addapps"

    sget-object v28, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_20

    const-string v27, "add_widgets"

    sget-object v28, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_20

    const-string v27, "create_folder"

    sget-object v28, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 1659
    :cond_20
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->launchAllAppsIcon()V

    goto/16 :goto_1

    .line 1459
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x42 -> :sswitch_4
    .end sparse-switch
.end method

.method private static handleMenuAppGridIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 27
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 1019
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/CellLayoutChildren;

    .line 1020
    .local v20, "parent":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayoutMenu;

    .line 1021
    .local v9, "grandparent":Lcom/android/launcher2/CellLayoutMenu;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1022
    .local v14, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v7

    .line 1023
    .local v7, "countX":I
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutMenu;->getCountY()I

    move-result v8

    .line 1025
    .local v8, "countY":I
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/MenuAppsGrid;

    .line 1026
    .local v15, "menuGrid":Lcom/android/launcher2/MenuAppsGrid;
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v12

    .line 1027
    .local v12, "itemCount":I
    invoke-virtual {v15, v9}, Lcom/android/launcher2/MenuAppsGrid;->indexOfChild(Landroid/view/View;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/launcher2/MenuAppsGrid;->indexToPage(I)I

    move-result v19

    .line 1028
    .local v19, "pageIndex":I
    invoke-virtual {v15}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v18

    .line 1031
    .local v18, "pageCount":I
    iget v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v23, v0

    .line 1032
    .local v23, "x":I
    iget v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v24, v0

    .line 1033
    .local v24, "y":I
    mul-int v25, v24, v7

    add-int v11, v25, v23

    .line 1035
    .local v11, "iconIndex":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 1036
    .local v2, "action":I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v2, v0, :cond_1

    const/4 v10, 0x1

    .line 1037
    .local v10, "handleKeyEvent":Z
    :goto_0
    const/16 v16, 0x0

    .line 1040
    .local v16, "newParent":Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .line 1041
    .local v4, "child":Landroid/view/View;
    const/16 v22, 0x0

    .line 1042
    .local v22, "wasHandled":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 1044
    .local v6, "configuration":Landroid/content/res/Configuration;
    sparse-switch p1, :sswitch_data_0

    .line 1276
    :cond_0
    :goto_1
    return v22

    .line 1036
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "configuration":Landroid/content/res/Configuration;
    .end local v10    # "handleKeyEvent":Z
    .end local v16    # "newParent":Landroid/view/ViewGroup;
    .end local v22    # "wasHandled":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1046
    .restart local v4    # "child":Landroid/view/View;
    .restart local v6    # "configuration":Landroid/content/res/Configuration;
    .restart local v10    # "handleKeyEvent":Z
    .restart local v16    # "newParent":Landroid/view/ViewGroup;
    .restart local v22    # "wasHandled":Z
    :sswitch_0
    if-eqz v10, :cond_2

    .line 1048
    if-lez v11, :cond_3

    .line 1049
    add-int/lit8 v25, v11, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 1050
    if-eqz v4, :cond_2

    .line 1051
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1052
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1082
    :cond_2
    :goto_2
    const/16 v22, 0x1

    .line 1083
    goto :goto_1

    .line 1055
    :cond_3
    sget-boolean v25, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v25, :cond_2

    .line 1056
    if-lez v19, :cond_4

    .line 1057
    add-int/lit8 v25, v19, -0x1

    move/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    .line 1058
    if-eqz v16, :cond_2

    .line 1059
    add-int/lit8 v25, v19, -0x1

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->snapToPageFromFocusHelper(II)V

    move-object/from16 v25, v16

    .line 1060
    check-cast v25, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 1061
    if-eqz v4, :cond_2

    .line 1063
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1064
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 1067
    :cond_4
    sget-boolean v25, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v25, :cond_2

    .line 1068
    add-int/lit8 v25, v18, -0x1

    move/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    .line 1069
    if-eqz v16, :cond_2

    .line 1070
    add-int/lit8 v25, v18, -0x1

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->snapToPageFromFocusHelper(II)V

    move-object/from16 v25, v16

    .line 1071
    check-cast v25, Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 1072
    if-eqz v4, :cond_2

    .line 1074
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1075
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 1085
    :sswitch_1
    if-eqz v10, :cond_5

    .line 1087
    add-int/lit8 v25, v12, -0x1

    move/from16 v0, v25

    if-ge v11, v0, :cond_6

    .line 1088
    add-int/lit8 v25, v11, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 1089
    if-eqz v4, :cond_5

    .line 1091
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1092
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1122
    :cond_5
    :goto_3
    const/16 v22, 0x1

    .line 1123
    goto/16 :goto_1

    .line 1095
    :cond_6
    sget-boolean v25, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v25, :cond_5

    .line 1096
    add-int/lit8 v25, v18, -0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 1097
    add-int/lit8 v25, v19, 0x1

    move/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    .line 1098
    if-eqz v16, :cond_5

    .line 1099
    add-int/lit8 v25, v19, 0x1

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->snapToPageFromFocusHelper(II)V

    move-object/from16 v25, v16

    .line 1100
    check-cast v25, Lcom/android/launcher2/CellLayoutChildren;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 1101
    if-eqz v4, :cond_5

    .line 1103
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1104
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 1107
    :cond_7
    sget-boolean v25, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v25, :cond_5

    .line 1108
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    .line 1109
    if-eqz v16, :cond_5

    .line 1110
    const/16 v25, 0x0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->snapToPageFromFocusHelper(II)V

    move-object/from16 v25, v16

    .line 1111
    check-cast v25, Lcom/android/launcher2/CellLayoutChildren;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 1112
    if-eqz v4, :cond_5

    .line 1114
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1115
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 1125
    :sswitch_2
    if-eqz v10, :cond_8

    .line 1127
    if-lez v24, :cond_9

    .line 1128
    add-int/lit8 v25, v24, -0x1

    mul-int v25, v25, v7

    add-int v17, v25, v23

    .line 1129
    .local v17, "newiconIndex":I
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 1130
    if-eqz v4, :cond_8

    .line 1132
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1133
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1147
    .end local v17    # "newiconIndex":I
    :cond_8
    :goto_4
    const/16 v22, 0x1

    .line 1148
    goto/16 :goto_1

    .line 1135
    :cond_9
    if-eqz v15, :cond_8

    .line 1136
    invoke-virtual {v15}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v21

    .line 1137
    .local v21, "stateTitleBar":Landroid/view/ViewGroup;
    if-eqz v21, :cond_8

    .line 1138
    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 1139
    .local v5, "childCount":I
    if-lez v5, :cond_8

    .line 1140
    add-int/lit8 v25, v5, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1141
    .local v3, "activeTitleBar":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 1142
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    .line 1150
    .end local v3    # "activeTitleBar":Landroid/view/View;
    .end local v5    # "childCount":I
    .end local v21    # "stateTitleBar":Landroid/view/ViewGroup;
    :sswitch_3
    if-eqz v10, :cond_a

    .line 1152
    add-int/lit8 v25, v8, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 1153
    add-int/lit8 v25, v12, -0x1

    add-int/lit8 v26, v24, 0x1

    mul-int v26, v26, v7

    add-int v26, v26, v23

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1154
    .restart local v17    # "newiconIndex":I
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 1155
    if-eqz v4, :cond_a

    .line 1157
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1158
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1162
    .end local v17    # "newiconIndex":I
    :cond_a
    const/16 v22, 0x1

    .line 1163
    goto/16 :goto_1

    .line 1168
    :sswitch_4
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v25, v0

    if-eqz v25, :cond_b

    invoke-virtual {v15}, Lcom/android/launcher2/MenuAppsGrid;->isPageMoving()Z

    move-result v25

    if-eqz v25, :cond_b

    .line 1169
    const/16 v22, 0x1

    .line 1170
    goto/16 :goto_1

    .line 1173
    :cond_b
    iget v0, v6, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    iget v0, v6, Landroid/content/res/Configuration;->navigation:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 1176
    :cond_c
    move-object/from16 v0, v20

    invoke-static {v0, v11, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 1177
    if-nez v10, :cond_e

    if-eqz v4, :cond_e

    invoke-virtual {v15}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v25

    sget-object v26, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_e

    .line 1179
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/launcher2/MenuAppsGrid;->onClick(Landroid/view/View;)V

    .line 1180
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1186
    :cond_d
    :goto_5
    const/16 v22, 0x1

    .line 1187
    goto/16 :goto_1

    .line 1181
    :cond_e
    if-eqz v10, :cond_d

    if-eqz v4, :cond_d

    invoke-virtual {v15}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v25

    sget-object v26, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v25, v0

    if-eqz v25, :cond_d

    .line 1183
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/launcher2/MenuAppsGrid;->onClick(Landroid/view/View;)V

    .line 1184
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    .line 1189
    :sswitch_5
    if-eqz v10, :cond_f

    .line 1192
    if-lez v19, :cond_10

    .line 1193
    add-int/lit8 v25, v19, -0x1

    move/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    .line 1194
    if-eqz v16, :cond_f

    .line 1195
    add-int/lit8 v25, v19, -0x1

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    move-object/from16 v25, v16

    .line 1196
    check-cast v25, Lcom/android/launcher2/CellLayoutChildren;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 1197
    if-eqz v4, :cond_f

    .line 1199
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1200
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1212
    :cond_f
    :goto_6
    const/16 v22, 0x1

    .line 1213
    goto/16 :goto_1

    .line 1203
    :cond_10
    if-eqz v11, :cond_f

    .line 1204
    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 1205
    if-eqz v4, :cond_f

    .line 1207
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1208
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_6

    .line 1215
    :sswitch_6
    if-eqz v10, :cond_11

    .line 1218
    add-int/lit8 v25, v18, -0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_12

    .line 1219
    add-int/lit8 v25, v19, 0x1

    move/from16 v0, v25

    invoke-static {v15, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v16

    .line 1220
    if-eqz v16, :cond_11

    .line 1221
    add-int/lit8 v25, v19, 0x1

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    move-object/from16 v25, v16

    .line 1222
    check-cast v25, Lcom/android/launcher2/CellLayoutChildren;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 1223
    if-eqz v4, :cond_11

    .line 1225
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1226
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1241
    :cond_11
    :goto_7
    const/16 v22, 0x1

    .line 1242
    goto/16 :goto_1

    .line 1230
    :cond_12
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v25

    add-int/lit8 v13, v25, -0x1

    .line 1231
    .local v13, "lastIndex":I
    if-eq v11, v13, :cond_11

    .line 1232
    move-object/from16 v0, v20

    invoke-static {v0, v13, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 1233
    if-eqz v4, :cond_11

    .line 1235
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1236
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_7

    .line 1244
    .end local v13    # "lastIndex":I
    :sswitch_7
    if-eqz v10, :cond_13

    .line 1246
    if-eqz v11, :cond_13

    .line 1247
    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 1248
    if-eqz v4, :cond_13

    .line 1250
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1251
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1255
    :cond_13
    const/16 v22, 0x1

    .line 1256
    goto/16 :goto_1

    .line 1258
    :sswitch_8
    if-eqz v10, :cond_14

    .line 1260
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v25

    add-int/lit8 v13, v25, -0x1

    .line 1261
    .restart local v13    # "lastIndex":I
    if-eq v11, v13, :cond_14

    .line 1262
    move-object/from16 v0, v20

    invoke-static {v0, v13, v7}, Lcom/android/launcher2/FocusHelper;->getIconAtPosition(Lcom/android/launcher2/CellLayoutChildren;II)Landroid/view/View;

    move-result-object v4

    .line 1263
    if-eqz v4, :cond_14

    .line 1265
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 1266
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1271
    .end local v13    # "lastIndex":I
    :cond_14
    const/16 v22, 0x1

    .line 1272
    goto/16 :goto_1

    .line 1044
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static handlePagedViewWidgetKeyEvent(Lcom/android/launcher2/PagedViewWidget;ILandroid/view/KeyEvent;)Z
    .locals 25
    .param p0, "w"    # Lcom/android/launcher2/PagedViewWidget;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/launcher2/PagedViewGridLayout;

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 675
    const/16 v18, 0x0

    .line 888
    :goto_0
    return v18

    .line 677
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/PagedViewGridLayout;

    .line 678
    .local v15, "parent":Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v15}, Lcom/android/launcher2/PagedViewGridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/MenuWidgets;

    .line 679
    .local v10, "menuWidgets":Lcom/android/launcher2/PagedView;
    invoke-static {v10}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v16

    .line 680
    .local v16, "tabHost":Landroid/widget/TabHost;
    const v23, 0x1020013

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TabWidget;

    .local v17, "tabs":Landroid/widget/TabWidget;
    move-object/from16 v23, v16

    .line 681
    check-cast v23, Lcom/android/launcher2/MenuView;

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/MenuView;->getMenuOrMarketButton()Landroid/view/View;

    move-result-object v9

    .line 682
    .local v9, "menuOrMarket":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/launcher2/PagedViewGridLayout;->indexOfChild(Landroid/view/View;)I

    move-result v20

    .line 683
    .local v20, "widgetIndex":I
    invoke-virtual {v15}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v19

    .line 684
    .local v19, "widgetCount":I
    invoke-virtual {v10, v15}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v14

    .line 685
    .local v14, "pageIndex":I
    invoke-virtual {v10}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v13

    .line 686
    .local v13, "pageCount":I
    invoke-virtual {v15}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v3

    .line 687
    .local v3, "cellCountX":I
    invoke-virtual {v15}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountY()I

    move-result v4

    .line 688
    .local v4, "cellCountY":I
    rem-int v21, v20, v3

    .line 689
    .local v21, "x":I
    div-int v22, v20, v3

    .line 691
    .local v22, "y":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 692
    .local v2, "action":I
    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v2, v0, :cond_2

    const/4 v7, 0x1

    .line 693
    .local v7, "handleKeyEvent":Z
    :goto_1
    const/4 v11, 0x0

    .line 696
    .local v11, "newParent":Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .line 697
    .local v5, "child":Landroid/view/View;
    const/16 v18, 0x0

    .line 698
    .local v18, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 772
    :sswitch_0
    if-eqz v7, :cond_1

    .line 774
    if-lez v22, :cond_9

    .line 775
    add-int/lit8 v23, v22, -0x1

    mul-int v23, v23, v3

    add-int v12, v23, v21

    .line 776
    .local v12, "newWidgetIndex":I
    invoke-virtual {v15, v12}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 777
    if-eqz v5, :cond_1

    .line 779
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 780
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 797
    .end local v12    # "newWidgetIndex":I
    :cond_1
    :goto_2
    const/16 v18, 0x1

    .line 798
    goto :goto_0

    .line 692
    .end local v5    # "child":Landroid/view/View;
    .end local v7    # "handleKeyEvent":Z
    .end local v11    # "newParent":Landroid/view/ViewGroup;
    .end local v18    # "wasHandled":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 700
    .restart local v5    # "child":Landroid/view/View;
    .restart local v7    # "handleKeyEvent":Z
    .restart local v11    # "newParent":Landroid/view/ViewGroup;
    .restart local v18    # "wasHandled":Z
    :sswitch_1
    if-eqz v7, :cond_3

    .line 702
    if-lez v20, :cond_4

    .line 703
    add-int/lit8 v23, v20, -0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    .line 704
    add-int/lit8 v23, v20, -0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->playSoundEffect(I)V

    .line 733
    :cond_3
    :goto_3
    const/16 v18, 0x1

    .line 734
    goto/16 :goto_0

    .line 706
    :cond_4
    sget-boolean v23, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v23, :cond_3

    .line 707
    if-lez v14, :cond_5

    .line 708
    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    invoke-static {v10, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v11

    .line 709
    if-eqz v11, :cond_3

    .line 710
    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 711
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 712
    if-eqz v5, :cond_3

    .line 714
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 715
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 718
    :cond_5
    sget-boolean v23, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v23, :cond_3

    .line 719
    add-int/lit8 v23, v13, -0x1

    move/from16 v0, v23

    invoke-static {v10, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v11

    .line 720
    if-eqz v11, :cond_3

    .line 721
    add-int/lit8 v23, v13, -0x1

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 722
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 723
    if-eqz v5, :cond_3

    .line 725
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 726
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 736
    :sswitch_2
    if-eqz v7, :cond_6

    .line 738
    add-int/lit8 v23, v19, -0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    .line 739
    add-int/lit8 v23, v20, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    .line 740
    add-int/lit8 v23, v20, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->playSoundEffect(I)V

    .line 769
    :cond_6
    :goto_4
    const/16 v18, 0x1

    .line 770
    goto/16 :goto_0

    .line 742
    :cond_7
    sget-boolean v23, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v23, :cond_6

    .line 743
    add-int/lit8 v23, v13, -0x1

    move/from16 v0, v23

    if-ge v14, v0, :cond_8

    .line 744
    add-int/lit8 v23, v14, 0x1

    move/from16 v0, v23

    invoke-static {v10, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v11

    .line 745
    if-eqz v11, :cond_6

    .line 746
    add-int/lit8 v23, v14, 0x1

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 747
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 748
    if-eqz v5, :cond_6

    .line 750
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 751
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    .line 754
    :cond_8
    sget-boolean v23, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v23, :cond_6

    .line 755
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v10, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v11

    .line 756
    if-eqz v11, :cond_6

    .line 757
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 758
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 759
    if-eqz v5, :cond_6

    .line 761
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 762
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    .line 783
    :cond_9
    const v23, 0x7f0f00c6

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 784
    .local v8, "mSearchTitleBar":Landroid/view/ViewGroup;
    if-eqz v8, :cond_a

    .line 785
    const/16 v18, 0x0

    .line 786
    goto/16 :goto_0

    .line 788
    :cond_a
    if-eqz v9, :cond_b

    .line 789
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 790
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_2

    .line 792
    :cond_b
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TabWidget;->requestFocus()Z

    .line 793
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->playSoundEffect(I)V

    goto/16 :goto_2

    .line 800
    .end local v8    # "mSearchTitleBar":Landroid/view/ViewGroup;
    :sswitch_3
    if-eqz v7, :cond_c

    .line 802
    add-int/lit8 v23, v4, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    .line 803
    add-int/lit8 v23, v19, -0x1

    add-int/lit8 v24, v22, 0x1

    mul-int v24, v24, v3

    add-int v24, v24, v21

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 804
    .restart local v12    # "newWidgetIndex":I
    invoke-virtual {v15, v12}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 805
    if-eqz v5, :cond_c

    .line 807
    invoke-virtual {v5}, Landroid/view/View;->isFocused()Z

    move-result v23

    if-nez v23, :cond_c

    .line 809
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 810
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 815
    .end local v12    # "newWidgetIndex":I
    :cond_c
    const/16 v18, 0x1

    .line 816
    goto/16 :goto_0

    .line 819
    :sswitch_4
    if-eqz v7, :cond_d

    move-object v6, v10

    .line 821
    check-cast v6, Landroid/view/View$OnClickListener;

    .line 822
    .local v6, "clickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 824
    .end local v6    # "clickListener":Landroid/view/View$OnClickListener;
    :cond_d
    const/16 v18, 0x1

    .line 825
    goto/16 :goto_0

    .line 827
    :sswitch_5
    if-eqz v7, :cond_f

    .line 830
    if-lez v14, :cond_10

    .line 831
    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    invoke-static {v10, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v11

    .line 832
    if-eqz v11, :cond_e

    .line 833
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 838
    :cond_e
    :goto_5
    if-eqz v5, :cond_f

    .line 840
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 841
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 844
    :cond_f
    const/16 v18, 0x1

    .line 845
    goto/16 :goto_0

    .line 836
    :cond_10
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_5

    .line 847
    :sswitch_6
    if-eqz v7, :cond_12

    .line 850
    add-int/lit8 v23, v13, -0x1

    move/from16 v0, v23

    if-ge v14, v0, :cond_13

    .line 851
    add-int/lit8 v23, v14, 0x1

    move/from16 v0, v23

    invoke-static {v10, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v11

    .line 852
    if-eqz v11, :cond_11

    .line 853
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 858
    :cond_11
    :goto_6
    if-eqz v5, :cond_12

    .line 860
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 861
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 864
    :cond_12
    const/16 v18, 0x1

    .line 865
    goto/16 :goto_0

    .line 856
    :cond_13
    add-int/lit8 v23, v19, -0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_6

    .line 867
    :sswitch_7
    if-eqz v7, :cond_14

    .line 869
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 870
    if-eqz v5, :cond_14

    .line 872
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 873
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 876
    :cond_14
    const/16 v18, 0x1

    .line 877
    goto/16 :goto_0

    .line 879
    :sswitch_8
    if-eqz v7, :cond_15

    .line 881
    add-int/lit8 v23, v19, -0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->requestFocus()Z

    .line 882
    add-int/lit8 v23, v19, -0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->playSoundEffect(I)V

    .line 884
    :cond_15
    const/16 v18, 0x1

    .line 885
    goto/16 :goto_0

    .line 698
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method private static handleQuickAllappsIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 21
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;
    .param p3, "orientation"    # I

    .prologue
    .line 2811
    if-nez p0, :cond_0

    .line 2812
    const/16 v17, 0x1

    .line 2900
    :goto_0
    return v17

    .line 2813
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 2814
    .local v3, "allAppsIcon":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/QuickLaunch;

    .line 2815
    .local v15, "quickLaunch":Lcom/android/launcher2/QuickLaunch;
    invoke-virtual {v15}, Lcom/android/launcher2/QuickLaunch;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 2816
    .local v5, "frameLayout":Landroid/widget/FrameLayout;
    const v19, 0x7f0f0079

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/Workspace;

    .line 2817
    .local v18, "workspace":Lcom/android/launcher2/Workspace;
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 2819
    .local v7, "launcher":Landroid/view/ViewGroup;
    const v19, 0x7f0f0086

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/QuickLaunch;

    .line 2820
    .local v16, "quickLaunchCamera":Lcom/android/launcher2/QuickLaunch;
    if-nez v16, :cond_1

    .line 2821
    sget-object v19, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v16

    .line 2823
    :cond_1
    const/4 v14, 0x0

    .line 2825
    .local v14, "quickAppsButton":Landroid/view/View;
    invoke-virtual {v15}, Lcom/android/launcher2/QuickLaunch;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v14

    .line 2826
    const/4 v4, 0x0

    .line 2827
    .local v4, "cameraButton":Landroid/view/View;
    if-eqz v16, :cond_4

    .line 2828
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v4

    .line 2832
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v12

    .line 2833
    .local v12, "pageIndex":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 2834
    .local v8, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v11

    .line 2837
    .local v11, "pageCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 2838
    .local v2, "action":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v2, v0, :cond_5

    const/4 v6, 0x1

    .line 2839
    .local v6, "handleKeyEvent":Z
    :goto_2
    const/16 v17, 0x0

    .line 2841
    .local v17, "wasHandled":Z
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2876
    :pswitch_0
    if-eqz v6, :cond_3

    .line 2878
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_2

    .line 2879
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2880
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 2881
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v12

    .line 2883
    :cond_2
    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v13

    .line 2885
    .local v13, "parent":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v13}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v13, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v9

    .line 2887
    .local v9, "newIcon":Landroid/view/View;
    if-eqz v9, :cond_b

    const/16 v19, 0x2

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 2889
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 2894
    .end local v9    # "newIcon":Landroid/view/View;
    .end local v13    # "parent":Lcom/android/launcher2/CellLayoutChildren;
    :cond_3
    :goto_3
    const/16 v17, 0x1

    .line 2895
    goto/16 :goto_0

    .line 2830
    .end local v2    # "action":I
    .end local v6    # "handleKeyEvent":Z
    .end local v8    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v11    # "pageCount":I
    .end local v12    # "pageIndex":I
    .end local v17    # "wasHandled":Z
    :cond_4
    invoke-virtual {v15}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v4

    goto :goto_1

    .line 2838
    .restart local v2    # "action":I
    .restart local v8    # "layout":Lcom/android/launcher2/CellLayout;
    .restart local v11    # "pageCount":I
    .restart local v12    # "pageIndex":I
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 2844
    .restart local v6    # "handleKeyEvent":Z
    .restart local v17    # "wasHandled":Z
    :pswitch_1
    if-eqz v6, :cond_7

    .line 2846
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_6

    .line 2847
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2848
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 2849
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v12

    .line 2852
    :cond_6
    add-int/lit8 v19, v11, -0x1

    move/from16 v0, v19

    if-ge v12, v0, :cond_8

    .line 2853
    add-int/lit8 v10, v12, 0x1

    .line 2859
    .local v10, "nextPage":I
    :goto_4
    if-eq v10, v12, :cond_7

    .line 2860
    move-object/from16 v0, v18

    invoke-static {v0, v10}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v13

    .line 2862
    .restart local v13    # "parent":Lcom/android/launcher2/CellLayoutChildren;
    const/16 v19, -0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v13, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v9

    .line 2863
    .restart local v9    # "newIcon":Landroid/view/View;
    if-eqz v9, :cond_a

    .line 2864
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 2873
    .end local v9    # "newIcon":Landroid/view/View;
    .end local v10    # "nextPage":I
    .end local v13    # "parent":Lcom/android/launcher2/CellLayoutChildren;
    :cond_7
    :goto_5
    const/16 v17, 0x1

    .line 2874
    goto/16 :goto_0

    .line 2854
    :cond_8
    sget-boolean v19, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v19, :cond_9

    .line 2855
    const/4 v10, 0x0

    .restart local v10    # "nextPage":I
    goto :goto_4

    .line 2857
    .end local v10    # "nextPage":I
    :cond_9
    move v10, v12

    .restart local v10    # "nextPage":I
    goto :goto_4

    .line 2867
    .restart local v9    # "newIcon":Landroid/view/View;
    .restart local v13    # "parent":Lcom/android/launcher2/CellLayoutChildren;
    :cond_a
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2868
    if-eqz v15, :cond_7

    if-eqz v14, :cond_7

    .line 2869
    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 2890
    .end local v10    # "nextPage":I
    :cond_b
    if-eqz v4, :cond_3

    .line 2891
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 2841
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static handleQuickCameraIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 23
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;
    .param p3, "orientation"    # I

    .prologue
    .line 2711
    if-nez p0, :cond_0

    .line 2712
    const/16 v19, 0x1

    .line 2802
    :goto_0
    return v19

    .line 2713
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 2714
    .local v4, "cameraIconLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/QuickLaunch;

    .line 2715
    .local v10, "layoutParent":Lcom/android/launcher2/QuickLaunch;
    invoke-virtual {v10}, Lcom/android/launcher2/QuickLaunch;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 2716
    .local v6, "framelayout":Landroid/widget/FrameLayout;
    const v21, 0x7f0f0079

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/Workspace;

    .line 2717
    .local v20, "workspace":Lcom/android/launcher2/Workspace;
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 2719
    .local v8, "launcher":Landroid/view/ViewGroup;
    const v21, 0x7f0f0086

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/QuickLaunch;

    .line 2720
    .local v18, "quickLaunchCamera":Lcom/android/launcher2/QuickLaunch;
    const v21, 0x7f0f0085

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/QuickLaunch;

    .line 2721
    .local v17, "quickLaunch":Lcom/android/launcher2/QuickLaunch;
    if-nez v18, :cond_1

    .line 2722
    sget-object v21, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/HomeView;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v18

    .line 2723
    :cond_1
    if-nez v17, :cond_2

    .line 2724
    sget-object v21, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v17

    .line 2725
    :cond_2
    const/16 v16, 0x0

    .line 2726
    .local v16, "quickAppsButton":Landroid/view/View;
    if-eqz v17, :cond_3

    .line 2727
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/QuickLaunch;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v16

    .line 2728
    :cond_3
    const/4 v3, 0x0

    .line 2729
    .local v3, "cameraButton":Landroid/view/View;
    if-eqz v18, :cond_7

    .line 2730
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    .line 2734
    :cond_4
    :goto_1
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v13

    .line 2735
    .local v13, "pageIndex":I
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    .line 2736
    .local v9, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v12

    .line 2739
    .local v12, "pageCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 2740
    .local v2, "action":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v2, v0, :cond_8

    const/4 v7, 0x1

    .line 2741
    .local v7, "handleKeyEvent":Z
    :goto_2
    const/16 v19, 0x0

    .line 2743
    .local v19, "wasHandled":Z
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2745
    :pswitch_0
    if-eqz v7, :cond_6

    .line 2747
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->isFinished()Z

    move-result v21

    if-nez v21, :cond_5

    .line 2748
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2749
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 2750
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v13

    .line 2753
    :cond_5
    if-lez v13, :cond_9

    .line 2754
    add-int/lit8 v15, v13, -0x1

    .line 2760
    .local v15, "prevPage":I
    :goto_3
    if-eq v15, v13, :cond_6

    .line 2762
    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v14

    .line 2764
    .local v14, "parent":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v14}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v9, v14, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v11

    .line 2767
    .local v11, "newIcon":Landroid/view/View;
    if-eqz v11, :cond_b

    .line 2768
    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    .line 2777
    .end local v11    # "newIcon":Landroid/view/View;
    .end local v14    # "parent":Lcom/android/launcher2/CellLayoutChildren;
    .end local v15    # "prevPage":I
    :cond_6
    :goto_4
    const/16 v19, 0x1

    .line 2778
    goto/16 :goto_0

    .line 2731
    .end local v2    # "action":I
    .end local v7    # "handleKeyEvent":Z
    .end local v9    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v12    # "pageCount":I
    .end local v13    # "pageIndex":I
    .end local v19    # "wasHandled":Z
    :cond_7
    if-eqz v17, :cond_4

    .line 2732
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    goto :goto_1

    .line 2740
    .restart local v2    # "action":I
    .restart local v9    # "layout":Lcom/android/launcher2/CellLayout;
    .restart local v12    # "pageCount":I
    .restart local v13    # "pageIndex":I
    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    .line 2755
    .restart local v7    # "handleKeyEvent":Z
    .restart local v19    # "wasHandled":Z
    :cond_9
    sget-boolean v21, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v21, :cond_a

    .line 2756
    add-int/lit8 v15, v12, -0x1

    .restart local v15    # "prevPage":I
    goto :goto_3

    .line 2758
    .end local v15    # "prevPage":I
    :cond_a
    move v15, v13

    .restart local v15    # "prevPage":I
    goto :goto_3

    .line 2769
    .restart local v11    # "newIcon":Landroid/view/View;
    .restart local v14    # "parent":Lcom/android/launcher2/CellLayoutChildren;
    :cond_b
    if-eqz v3, :cond_6

    .line 2771
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2772
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 2780
    .end local v11    # "newIcon":Landroid/view/View;
    .end local v14    # "parent":Lcom/android/launcher2/CellLayoutChildren;
    .end local v15    # "prevPage":I
    :pswitch_1
    if-eqz v7, :cond_d

    .line 2782
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->isFinished()Z

    move-result v21

    if-nez v21, :cond_c

    .line 2783
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2784
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 2785
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v13

    .line 2787
    :cond_c
    move-object/from16 v0, v20

    invoke-static {v0, v13}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 2789
    .local v5, "cc":Lcom/android/launcher2/CellLayoutChildren;
    const/16 v21, -0x1

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v9, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v11

    .line 2790
    .restart local v11    # "newIcon":Landroid/view/View;
    if-eqz v11, :cond_e

    const/16 v21, 0x2

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 2792
    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    .line 2797
    .end local v5    # "cc":Lcom/android/launcher2/CellLayoutChildren;
    .end local v11    # "newIcon":Landroid/view/View;
    :cond_d
    :goto_5
    const/16 v19, 0x1

    .line 2798
    goto/16 :goto_0

    .line 2793
    .restart local v5    # "cc":Lcom/android/launcher2/CellLayoutChildren;
    .restart local v11    # "newIcon":Landroid/view/View;
    :cond_e
    if-eqz v16, :cond_d

    .line 2794
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 2743
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleTabKeyEvent(Lcom/android/launcher2/AccessibleTabView;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p0, "v"    # Lcom/android/launcher2/AccessibleTabView;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 1283
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v9

    if-nez v9, :cond_0

    move v7, v8

    .line 1335
    :goto_0
    return v7

    .line 1285
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FocusOnlyTabWidget;

    .line 1286
    .local v3, "parent":Lcom/android/launcher2/FocusOnlyTabWidget;
    invoke-static {v3}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    .line 1287
    .local v5, "tabHost":Landroid/widget/TabHost;
    const v9, 0x1020011

    invoke-virtual {v5, v9}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1289
    .local v1, "contents":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v4

    .line 1290
    .local v4, "tabCount":I
    invoke-virtual {v3, p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabIndex(Landroid/view/View;)I

    move-result v6

    .line 1292
    .local v6, "tabIndex":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1293
    .local v0, "action":I
    if-eq v0, v2, :cond_1

    .line 1294
    .local v2, "handleKeyEvent":Z
    :goto_1
    const/4 v7, 0x0

    .line 1295
    .local v7, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1320
    :sswitch_0
    const/4 v7, 0x1

    .line 1321
    goto :goto_0

    .end local v2    # "handleKeyEvent":Z
    .end local v7    # "wasHandled":Z
    :cond_1
    move v2, v8

    .line 1293
    goto :goto_1

    .line 1297
    .restart local v2    # "handleKeyEvent":Z
    .restart local v7    # "wasHandled":Z
    :sswitch_1
    if-eqz v2, :cond_2

    .line 1299
    if-lez v6, :cond_2

    .line 1300
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 1303
    :cond_2
    const/4 v7, 0x1

    .line 1304
    goto :goto_0

    .line 1306
    :sswitch_2
    if-eqz v2, :cond_3

    .line 1308
    add-int/lit8 v8, v4, -0x1

    if-ge v6, v8, :cond_4

    .line 1309
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 1316
    :cond_3
    :goto_2
    const/4 v7, 0x1

    .line 1317
    goto :goto_0

    .line 1311
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 1312
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 1323
    :sswitch_3
    if-eqz v2, :cond_5

    .line 1325
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 1326
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    .line 1328
    :cond_5
    const/4 v7, 0x1

    .line 1329
    goto :goto_0

    .line 1331
    :sswitch_4
    const/4 v7, 0x1

    .line 1332
    goto :goto_0

    .line 1295
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method private static handleTitleBarKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0f00a6

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/MenuAppsGrid;

    .line 353
    .local v6, "menuGrid":Lcom/android/launcher2/MenuAppsGrid;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 354
    .local v0, "action":I
    const/4 v8, 0x1

    if-eq v0, v8, :cond_0

    const/4 v5, 0x1

    .line 355
    .local v5, "handleKeyEvent":Z
    :goto_0
    const/4 v7, 0x0

    .line 356
    .local v7, "wasHandled":Z
    packed-switch p1, :pswitch_data_0

    .line 419
    :goto_1
    return v7

    .line 354
    .end local v5    # "handleKeyEvent":Z
    .end local v7    # "wasHandled":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 358
    .restart local v5    # "handleKeyEvent":Z
    .restart local v7    # "wasHandled":Z
    :pswitch_0
    if-eqz v5, :cond_1

    .line 359
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 360
    .local v1, "activeTitleBar":Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 363
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v8, v9, :cond_2

    .line 364
    const v8, 0x7f0f00ad

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 368
    .local v2, "backButton":Landroid/view/View;
    :goto_2
    const v8, 0x7f0f0076

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 369
    .local v4, "doneButton":Landroid/view/View;
    const v8, 0x7f0f00b3

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 371
    .local v3, "cancelButton":Landroid/view/View;
    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v4, :cond_3

    if-eqz v3, :cond_3

    .line 372
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 373
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 381
    .end local v1    # "activeTitleBar":Landroid/view/ViewGroup;
    .end local v2    # "backButton":Landroid/view/View;
    .end local v3    # "cancelButton":Landroid/view/View;
    .end local v4    # "doneButton":Landroid/view/View;
    :cond_1
    :goto_3
    const/4 v7, 0x1

    .line 382
    goto :goto_1

    .line 366
    .restart local v1    # "activeTitleBar":Landroid/view/ViewGroup;
    :cond_2
    const v8, 0x7f0f00af

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "backButton":Landroid/view/View;
    goto :goto_2

    .line 374
    .restart local v3    # "cancelButton":Landroid/view/View;
    .restart local v4    # "doneButton":Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v3, :cond_4

    if-eqz v2, :cond_4

    .line 375
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 376
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 377
    :cond_4
    if-eqz v2, :cond_1

    .line 378
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 384
    .end local v1    # "activeTitleBar":Landroid/view/ViewGroup;
    .end local v2    # "backButton":Landroid/view/View;
    .end local v3    # "cancelButton":Landroid/view/View;
    .end local v4    # "doneButton":Landroid/view/View;
    :pswitch_1
    if-eqz v5, :cond_5

    .line 385
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 386
    .restart local v1    # "activeTitleBar":Landroid/view/ViewGroup;
    if-eqz v1, :cond_5

    .line 388
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v8, v9, :cond_6

    .line 389
    const v8, 0x7f0f00ad

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 393
    .restart local v2    # "backButton":Landroid/view/View;
    :goto_4
    const v8, 0x7f0f0076

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 394
    .restart local v4    # "doneButton":Landroid/view/View;
    const v8, 0x7f0f00b3

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 396
    .restart local v3    # "cancelButton":Landroid/view/View;
    if-eqz v3, :cond_7

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v3, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 399
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 400
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 415
    .end local v1    # "activeTitleBar":Landroid/view/ViewGroup;
    .end local v2    # "backButton":Landroid/view/View;
    .end local v3    # "cancelButton":Landroid/view/View;
    .end local v4    # "doneButton":Landroid/view/View;
    :cond_5
    :goto_5
    const/4 v7, 0x1

    .line 416
    goto/16 :goto_1

    .line 391
    .restart local v1    # "activeTitleBar":Landroid/view/ViewGroup;
    :cond_6
    const v8, 0x7f0f00af

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "backButton":Landroid/view/View;
    goto :goto_4

    .line 401
    .restart local v3    # "cancelButton":Landroid/view/View;
    .restart local v4    # "doneButton":Landroid/view/View;
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v2, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 404
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 405
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    .line 406
    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v2, :cond_9

    if-eqz v3, :cond_9

    .line 409
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 410
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    .line 411
    :cond_9
    if-eqz v2, :cond_5

    .line 412
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleWidgetFolderPagedViewWidgetKeyEvent(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewWidget;ILandroid/view/KeyEvent;)Z
    .locals 16
    .param p0, "menuWidgets"    # Lcom/android/launcher2/MenuWidgets;
    .param p1, "w"    # Lcom/android/launcher2/PagedViewWidget;
    .param p2, "keyCode"    # I
    .param p3, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 898
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/widget/GridLayout;

    .line 899
    .local v8, "parent":Landroid/widget/GridLayout;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/widget/GridLayout;->indexOfChild(Landroid/view/View;)I

    move-result v11

    .line 900
    .local v11, "widgetIndex":I
    invoke-virtual {v8}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v10

    .line 901
    .local v10, "widgetCount":I
    invoke-virtual {v8}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v2

    .line 902
    .local v2, "cellCountX":I
    div-int/lit8 v14, v10, 0x2

    rem-int/lit8 v15, v10, 0x2

    add-int v3, v14, v15

    .line 903
    .local v3, "cellCountY":I
    rem-int v12, v11, v2

    .line 904
    .local v12, "x":I
    div-int v13, v11, v2

    .line 905
    .local v13, "y":I
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 906
    .local v1, "action":I
    const/4 v14, 0x1

    if-eq v1, v14, :cond_0

    const/4 v6, 0x1

    .line 909
    .local v6, "handleKeyEvent":Z
    :goto_0
    const/4 v4, 0x0

    .line 910
    .local v4, "child":Landroid/view/View;
    const/4 v9, 0x0

    .line 911
    .local v9, "wasHandled":Z
    sparse-switch p2, :sswitch_data_0

    .line 1012
    :goto_1
    return v9

    .line 906
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "handleKeyEvent":Z
    .end local v9    # "wasHandled":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 913
    .restart local v4    # "child":Landroid/view/View;
    .restart local v6    # "handleKeyEvent":Z
    .restart local v9    # "wasHandled":Z
    :sswitch_0
    if-eqz v6, :cond_1

    .line 915
    if-lez v11, :cond_1

    .line 916
    add-int/lit8 v14, v11, -0x1

    invoke-virtual {v8, v14}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    .line 917
    add-int/lit8 v14, v11, -0x1

    invoke-virtual {v8, v14}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->playSoundEffect(I)V

    .line 920
    :cond_1
    const/4 v9, 0x1

    .line 921
    goto :goto_1

    .line 923
    :sswitch_1
    if-eqz v6, :cond_2

    .line 925
    add-int/lit8 v14, v10, -0x1

    if-ge v11, v14, :cond_2

    .line 926
    add-int/lit8 v14, v11, 0x1

    invoke-virtual {v8, v14}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    .line 927
    add-int/lit8 v14, v11, 0x1

    invoke-virtual {v8, v14}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->playSoundEffect(I)V

    .line 930
    :cond_2
    const/4 v9, 0x1

    .line 931
    goto :goto_1

    .line 933
    :sswitch_2
    if-eqz v6, :cond_3

    .line 935
    if-lez v13, :cond_3

    .line 936
    add-int/lit8 v14, v13, -0x1

    mul-int/2addr v14, v2

    add-int v7, v14, v12

    .line 937
    .local v7, "newWidgetIndex":I
    invoke-virtual {v8, v7}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 938
    if-eqz v4, :cond_3

    .line 940
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 941
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/view/View;->playSoundEffect(I)V

    .line 945
    .end local v7    # "newWidgetIndex":I
    :cond_3
    const/4 v9, 0x1

    .line 946
    goto :goto_1

    .line 948
    :sswitch_3
    if-eqz v6, :cond_4

    .line 950
    add-int/lit8 v14, v3, -0x1

    if-ge v13, v14, :cond_4

    .line 951
    add-int/lit8 v14, v10, -0x1

    add-int/lit8 v15, v13, 0x1

    mul-int/2addr v15, v2

    add-int/2addr v15, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 952
    .restart local v7    # "newWidgetIndex":I
    invoke-virtual {v8, v7}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 953
    if-eqz v4, :cond_4

    .line 955
    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v14

    if-nez v14, :cond_4

    .line 957
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 958
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/view/View;->playSoundEffect(I)V

    .line 963
    .end local v7    # "newWidgetIndex":I
    :cond_4
    const/4 v9, 0x1

    .line 964
    goto :goto_1

    .line 967
    :sswitch_4
    if-eqz v6, :cond_5

    .line 969
    if-eqz p0, :cond_5

    .line 970
    move-object/from16 v5, p0

    .line 971
    .local v5, "clickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 974
    .end local v5    # "clickListener":Landroid/view/View$OnClickListener;
    :cond_5
    const/4 v9, 0x1

    .line 975
    goto :goto_1

    .line 977
    :sswitch_5
    if-eqz v6, :cond_6

    .line 981
    :cond_6
    const/4 v9, 0x1

    .line 982
    goto/16 :goto_1

    .line 984
    :sswitch_6
    if-eqz v6, :cond_7

    .line 988
    :cond_7
    const/4 v9, 0x1

    .line 989
    goto/16 :goto_1

    .line 991
    :sswitch_7
    if-eqz v6, :cond_8

    .line 993
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 994
    if-eqz v4, :cond_8

    .line 996
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 997
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/view/View;->playSoundEffect(I)V

    .line 1000
    :cond_8
    const/4 v9, 0x1

    .line 1001
    goto/16 :goto_1

    .line 1003
    :sswitch_8
    if-eqz v6, :cond_9

    .line 1005
    add-int/lit8 v14, v10, -0x1

    invoke-virtual {v8, v14}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    .line 1006
    add-int/lit8 v14, v10, -0x1

    invoke-virtual {v8, v14}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->playSoundEffect(I)V

    .line 1008
    :cond_9
    const/4 v9, 0x1

    .line 1009
    goto/16 :goto_1

    .line 911
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method private static handleWorkspaceGoogleSearchKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 21
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 2572
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v19

    if-nez v19, :cond_1

    .line 2573
    const/16 v16, 0x0

    .line 2703
    :cond_0
    :goto_0
    return v16

    .line 2575
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    .line 2576
    .local v15, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 2577
    .local v7, "launcher":Landroid/view/ViewGroup;
    const v19, 0x7f0f0079

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/Workspace;

    .line 2578
    .local v18, "workspace":Lcom/android/launcher2/Workspace;
    const v19, 0x7f0f0089

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 2579
    .local v10, "mSearchBar":Landroid/view/ViewGroup;
    const v19, 0x7f0f008a

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 2580
    .local v9, "mGoogleSearch":Landroid/view/View;
    const v19, 0x7f0f008b

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 2581
    .local v11, "mVoiceSearch":Landroid/view/View;
    const v19, 0x7f0f007b

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2582
    .local v6, "hotseat":Landroid/view/View;
    if-nez v6, :cond_2

    sget-object v19, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v6

    .line 2583
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v14

    .line 2584
    .local v14, "pageIndex":I
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v19

    add-int/lit8 v13, v19, -0x1

    .line 2586
    .local v13, "pageCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 2587
    .local v2, "action":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v2, v0, :cond_5

    const/4 v5, 0x1

    .line 2588
    .local v5, "handleKeyEvent":Z
    :goto_1
    const/16 v16, 0x0

    .line 2590
    .local v16, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2683
    :sswitch_0
    if-eqz v5, :cond_4

    .line 2684
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_3

    .line 2685
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2686
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 2687
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v14

    .line 2689
    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 2690
    .local v4, "cl":Lcom/android/launcher2/CellLayout;
    if-eqz v4, :cond_4

    .line 2691
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 2692
    .local v3, "cc":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v3, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v12

    .line 2693
    .local v12, "newIcon":Landroid/view/View;
    if-eqz v12, :cond_4

    .line 2694
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 2697
    .end local v3    # "cc":Lcom/android/launcher2/CellLayoutChildren;
    .end local v4    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v12    # "newIcon":Landroid/view/View;
    :cond_4
    const/16 v16, 0x1

    .line 2698
    goto/16 :goto_0

    .line 2587
    .end local v5    # "handleKeyEvent":Z
    .end local v16    # "wasHandled":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 2592
    .restart local v5    # "handleKeyEvent":Z
    .restart local v16    # "wasHandled":Z
    :sswitch_1
    if-eqz v5, :cond_0

    .line 2593
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 2594
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 2595
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 2597
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 2602
    :sswitch_2
    if-eqz v5, :cond_7

    .line 2604
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_6

    .line 2605
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2606
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 2607
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v14

    .line 2609
    :cond_6
    if-lez v14, :cond_8

    .line 2610
    add-int/lit8 v19, v14, -0x1

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 2616
    .local v17, "whichPage":I
    :goto_2
    move/from16 v0, v17

    if-eq v0, v14, :cond_7

    .line 2617
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 2619
    .local v8, "layout":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2620
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v15

    .line 2621
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v15, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v12

    .line 2623
    .restart local v12    # "newIcon":Landroid/view/View;
    if-eqz v12, :cond_a

    .line 2624
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 2631
    .end local v8    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v12    # "newIcon":Landroid/view/View;
    .end local v17    # "whichPage":I
    :cond_7
    :goto_3
    const/16 v16, 0x1

    .line 2632
    goto/16 :goto_0

    .line 2611
    :cond_8
    sget-boolean v19, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v19, :cond_9

    .line 2612
    move/from16 v17, v13

    .restart local v17    # "whichPage":I
    goto :goto_2

    .line 2614
    .end local v17    # "whichPage":I
    :cond_9
    move/from16 v17, v14

    .restart local v17    # "whichPage":I
    goto :goto_2

    .line 2626
    .restart local v8    # "layout":Lcom/android/launcher2/CellLayout;
    .restart local v12    # "newIcon":Landroid/view/View;
    :cond_a
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 2627
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 2635
    .end local v8    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v12    # "newIcon":Landroid/view/View;
    .end local v17    # "whichPage":I
    :sswitch_3
    if-eqz v5, :cond_b

    .line 2636
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    if-ne v0, v9, :cond_c

    .line 2637
    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    .line 2638
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 2646
    :cond_b
    :goto_4
    const/16 v16, 0x1

    .line 2647
    goto/16 :goto_0

    .line 2639
    :cond_c
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    if-ne v0, v11, :cond_b

    .line 2640
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 2641
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_4

    .line 2649
    :sswitch_4
    if-eqz v5, :cond_e

    .line 2650
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->isFinished()Z

    move-result v19

    if-nez v19, :cond_d

    .line 2651
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2652
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 2653
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v14

    .line 2655
    :cond_d
    if-ge v14, v13, :cond_f

    .line 2656
    add-int/lit8 v19, v14, 0x1

    move/from16 v0, v19

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 2662
    .restart local v17    # "whichPage":I
    :goto_5
    move/from16 v0, v17

    if-eq v0, v14, :cond_e

    .line 2663
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 2665
    .restart local v8    # "layout":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2666
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v15

    .line 2667
    const/16 v19, -0x1

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v15, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v12

    .line 2669
    .restart local v12    # "newIcon":Landroid/view/View;
    if-eqz v12, :cond_11

    .line 2670
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 2677
    .end local v8    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v12    # "newIcon":Landroid/view/View;
    .end local v17    # "whichPage":I
    :cond_e
    :goto_6
    const/16 v16, 0x1

    .line 2678
    goto/16 :goto_0

    .line 2657
    :cond_f
    sget-boolean v19, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v19, :cond_10

    .line 2658
    const/16 v17, 0x0

    .restart local v17    # "whichPage":I
    goto :goto_5

    .line 2660
    .end local v17    # "whichPage":I
    :cond_10
    move/from16 v17, v14

    .restart local v17    # "whichPage":I
    goto :goto_5

    .line 2672
    .restart local v8    # "layout":Lcom/android/launcher2/CellLayout;
    .restart local v12    # "newIcon":Landroid/view/View;
    :cond_11
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 2673
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_6

    .line 2680
    .end local v8    # "layout":Lcom/android/launcher2/CellLayout;
    .end local v12    # "newIcon":Landroid/view/View;
    .end local v17    # "whichPage":I
    :sswitch_5
    const/16 v16, 0x1

    .line 2681
    goto/16 :goto_0

    .line 2590
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_5
        0x15 -> :sswitch_1
        0x16 -> :sswitch_3
        0x3d -> :sswitch_3
        0x5c -> :sswitch_2
        0x5d -> :sswitch_4
    .end sparse-switch
.end method

.method private static handleWorkspaceIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 29
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;
    .param p3, "orientation"    # I

    .prologue
    .line 1788
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/launcher2/CellLayoutChildren;

    move/from16 v26, v0

    if-nez v26, :cond_2

    :cond_0
    const/16 v24, 0x1

    .line 1998
    :cond_1
    :goto_0
    return v24

    .line 1789
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/CellLayoutChildren;

    .line 1790
    .local v19, "parent":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayout;

    .line 1791
    .local v12, "layout":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/Workspace;

    .line 1792
    .local v25, "workspace":Lcom/android/launcher2/Workspace;
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    .line 1793
    .local v11, "launcher":Landroid/view/ViewGroup;
    const/4 v14, 0x0

    .line 1794
    .local v14, "mSearchWidget":Landroid/view/View;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 1795
    const v26, 0x7f0f0088

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 1796
    .local v13, "mHomeBottomBar":Landroid/view/ViewGroup;
    if-eqz v13, :cond_b

    const v26, 0x7f0f008a

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 1799
    .end local v13    # "mHomeBottomBar":Landroid/view/ViewGroup;
    :cond_3
    :goto_1
    const v26, 0x7f0f007b

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Hotseat;

    .line 1800
    .local v9, "hotseat":Lcom/android/launcher2/Hotseat;
    const v26, 0x7f0f0086

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/QuickLaunch;

    .line 1801
    .local v23, "quickLaunchCamera":Lcom/android/launcher2/QuickLaunch;
    const v26, 0x7f0f0085

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/QuickLaunch;

    .line 1802
    .local v22, "quickLaunch":Lcom/android/launcher2/QuickLaunch;
    if-nez v23, :cond_4

    .line 1803
    sget-object v26, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/HomeView;->getQuickLaunchCamera()Lcom/android/launcher2/QuickLaunch;

    move-result-object v23

    .line 1804
    :cond_4
    if-nez v22, :cond_5

    .line 1805
    sget-object v26, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/HomeView;->getQuickLaunch()Lcom/android/launcher2/QuickLaunch;

    move-result-object v22

    .line 1806
    :cond_5
    const/16 v21, 0x0

    .line 1807
    .local v21, "quickAppsButton":Landroid/view/View;
    if-eqz v22, :cond_6

    .line 1808
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/QuickLaunch;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v21

    .line 1809
    :cond_6
    const/4 v4, 0x0

    .line 1810
    .local v4, "cameraButton":Landroid/view/View;
    if-eqz v23, :cond_c

    .line 1811
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v4

    .line 1815
    :cond_7
    :goto_2
    sget-object v26, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    const v27, 0x7f0f0081

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1816
    .local v8, "homeSoftPhoneBtn":Landroid/view/View;
    sget-object v26, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    const v27, 0x7f0f0082

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1818
    .local v7, "homeSoftAppsBtn":Landroid/view/View;
    if-nez v9, :cond_8

    .line 1819
    sget-object v26, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v9

    .line 1821
    :cond_8
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v18

    .line 1822
    .local v18, "pageIndex":I
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v17

    .line 1825
    .local v17, "pageCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 1826
    .local v3, "action":I
    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v3, v0, :cond_d

    const/4 v6, 0x1

    .line 1827
    .local v6, "handleKeyEvent":Z
    :goto_3
    const/16 v24, 0x0

    .line 1830
    .local v24, "wasHandled":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 1832
    .local v5, "config":Landroid/content/res/Configuration;
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 1940
    :sswitch_0
    if-eqz v6, :cond_a

    .line 1941
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->isFinished()Z

    move-result v26

    if-nez v26, :cond_9

    .line 1942
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1943
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1944
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v18

    .line 1946
    :cond_9
    const/16 v26, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v26

    invoke-static {v12, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    .line 1947
    .local v15, "newIcon":Landroid/view/View;
    if-eqz v15, :cond_22

    .line 1948
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    .line 1949
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1957
    .end local v15    # "newIcon":Landroid/view/View;
    :cond_a
    :goto_4
    const/16 v24, 0x1

    .line 1958
    goto/16 :goto_0

    .line 1796
    .end local v3    # "action":I
    .end local v4    # "cameraButton":Landroid/view/View;
    .end local v5    # "config":Landroid/content/res/Configuration;
    .end local v6    # "handleKeyEvent":Z
    .end local v7    # "homeSoftAppsBtn":Landroid/view/View;
    .end local v8    # "homeSoftPhoneBtn":Landroid/view/View;
    .end local v9    # "hotseat":Lcom/android/launcher2/Hotseat;
    .end local v17    # "pageCount":I
    .end local v18    # "pageIndex":I
    .end local v21    # "quickAppsButton":Landroid/view/View;
    .end local v22    # "quickLaunch":Lcom/android/launcher2/QuickLaunch;
    .end local v23    # "quickLaunchCamera":Lcom/android/launcher2/QuickLaunch;
    .end local v24    # "wasHandled":Z
    .restart local v13    # "mHomeBottomBar":Landroid/view/ViewGroup;
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1812
    .end local v13    # "mHomeBottomBar":Landroid/view/ViewGroup;
    .restart local v4    # "cameraButton":Landroid/view/View;
    .restart local v9    # "hotseat":Lcom/android/launcher2/Hotseat;
    .restart local v21    # "quickAppsButton":Landroid/view/View;
    .restart local v22    # "quickLaunch":Lcom/android/launcher2/QuickLaunch;
    .restart local v23    # "quickLaunchCamera":Lcom/android/launcher2/QuickLaunch;
    :cond_c
    if-eqz v22, :cond_7

    .line 1813
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/QuickLaunch;->getCameraIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v4

    goto/16 :goto_2

    .line 1826
    .restart local v3    # "action":I
    .restart local v7    # "homeSoftAppsBtn":Landroid/view/View;
    .restart local v8    # "homeSoftPhoneBtn":Landroid/view/View;
    .restart local v17    # "pageCount":I
    .restart local v18    # "pageIndex":I
    :cond_d
    const/4 v6, 0x0

    goto :goto_3

    .line 1834
    .restart local v5    # "config":Landroid/content/res/Configuration;
    .restart local v6    # "handleKeyEvent":Z
    .restart local v24    # "wasHandled":Z
    :sswitch_1
    iget v0, v5, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 1836
    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/launcher2/Workspace;->setAllowLongPress(Z)V

    goto/16 :goto_0

    .line 1840
    :sswitch_2
    if-eqz v6, :cond_f

    .line 1841
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->isFinished()Z

    move-result v26

    if-nez v26, :cond_e

    .line 1842
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1843
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1844
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v18

    .line 1846
    :cond_e
    const/16 v26, -0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v26

    invoke-static {v12, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    .line 1847
    .restart local v15    # "newIcon":Landroid/view/View;
    if-eqz v15, :cond_10

    .line 1848
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    .line 1849
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1884
    .end local v15    # "newIcon":Landroid/view/View;
    :cond_f
    :goto_5
    const/16 v24, 0x1

    .line 1885
    goto/16 :goto_0

    .line 1850
    .restart local v15    # "newIcon":Landroid/view/View;
    :cond_10
    if-eqz v23, :cond_11

    if-eqz v4, :cond_11

    const/16 v26, 0x2

    move/from16 v0, p3

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    .line 1851
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 1853
    :cond_11
    if-lez v18, :cond_12

    .line 1854
    add-int/lit8 v20, v18, -0x1

    .line 1860
    .local v20, "prevPage":I
    :goto_6
    move/from16 v0, v20

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    .line 1861
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v19

    .line 1862
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v26

    const/16 v27, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v12, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v15

    .line 1864
    if-eqz v15, :cond_14

    .line 1865
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    .line 1866
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    .line 1855
    .end local v20    # "prevPage":I
    :cond_12
    sget-boolean v26, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v26, :cond_13

    .line 1856
    add-int/lit8 v20, v17, -0x1

    .restart local v20    # "prevPage":I
    goto :goto_6

    .line 1858
    .end local v20    # "prevPage":I
    :cond_13
    move/from16 v20, v18

    .restart local v20    # "prevPage":I
    goto :goto_6

    .line 1869
    :cond_14
    sget-boolean v26, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v26, :cond_15

    .line 1870
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1871
    :cond_15
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v26

    if-eqz v26, :cond_16

    .line 1872
    if-eqz v14, :cond_f

    .line 1873
    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    .line 1874
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_5

    .line 1876
    :cond_16
    if-eqz v9, :cond_f

    .line 1877
    invoke-virtual {v9}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    .line 1878
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/android/launcher2/Hotseat;->playSoundEffect(I)V

    goto :goto_5

    .line 1887
    .end local v15    # "newIcon":Landroid/view/View;
    .end local v20    # "prevPage":I
    :sswitch_3
    if-eqz v6, :cond_18

    .line 1888
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->isFinished()Z

    move-result v26

    if-nez v26, :cond_17

    .line 1889
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1890
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1891
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v18

    .line 1893
    :cond_17
    const/16 v26, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v26

    invoke-static {v12, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    .line 1894
    .restart local v15    # "newIcon":Landroid/view/View;
    if-eqz v15, :cond_19

    .line 1895
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    .line 1896
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1937
    .end local v15    # "newIcon":Landroid/view/View;
    :cond_18
    :goto_7
    const/16 v24, 0x1

    .line 1938
    goto/16 :goto_0

    .line 1897
    .restart local v15    # "newIcon":Landroid/view/View;
    :cond_19
    if-eqz v23, :cond_1a

    if-eqz v21, :cond_1a

    const/16 v26, 0x2

    move/from16 v0, p3

    move/from16 v1, v26

    if-ne v0, v1, :cond_1a

    .line 1898
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 1899
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_7

    .line 1901
    :cond_1a
    add-int/lit8 v26, v17, -0x1

    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_1b

    .line 1902
    add-int/lit8 v16, v18, 0x1

    .line 1907
    .local v16, "nextPage":I
    :goto_8
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_18

    .line 1908
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v19

    .line 1909
    const/16 v26, -0x1

    const/16 v27, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v12, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v15

    .line 1910
    if-eqz v15, :cond_1d

    .line 1911
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    .line 1912
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_7

    .line 1903
    .end local v16    # "nextPage":I
    :cond_1b
    sget-boolean v26, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v26, :cond_1c

    .line 1904
    const/16 v16, 0x0

    .restart local v16    # "nextPage":I
    goto :goto_8

    .line 1906
    .end local v16    # "nextPage":I
    :cond_1c
    move/from16 v16, v18

    .restart local v16    # "nextPage":I
    goto :goto_8

    .line 1915
    :cond_1d
    sget-boolean v26, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v26, :cond_1e

    .line 1916
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1918
    :cond_1e
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v26

    if-eqz v26, :cond_1f

    .line 1919
    if-eqz v14, :cond_18

    .line 1920
    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    .line 1921
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_7

    .line 1923
    :cond_1f
    if-eqz v9, :cond_18

    .line 1924
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FocusHelper;->is12KEYNaviKeyFocus(Landroid/view/View;)Z

    move-result v26

    if-eqz v26, :cond_21

    iget-object v0, v9, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    move-object/from16 v26, v0

    if-eqz v26, :cond_21

    .line 1925
    iget-object v0, v9, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/android/launcher2/CellLayoutHotseat;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    .line 1926
    .local v10, "hv":Landroid/view/View;
    if-eqz v10, :cond_20

    .line 1927
    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    .line 1931
    .end local v10    # "hv":Landroid/view/View;
    :cond_20
    :goto_9
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/android/launcher2/Hotseat;->playSoundEffect(I)V

    goto/16 :goto_7

    .line 1929
    :cond_21
    invoke-virtual {v9}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    goto :goto_9

    .line 1951
    .end local v16    # "nextPage":I
    :cond_22
    if-eqz v9, :cond_a

    const/16 v26, 0x2

    move/from16 v0, p3

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isLargeTabletLayout()Z

    move-result v26

    if-nez v26, :cond_a

    .line 1952
    invoke-virtual {v9}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    .line 1953
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/android/launcher2/Hotseat;->playSoundEffect(I)V

    goto/16 :goto_4

    .line 1960
    .end local v15    # "newIcon":Landroid/view/View;
    :sswitch_4
    if-eqz v6, :cond_24

    .line 1961
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->isFinished()Z

    move-result v26

    if-nez v26, :cond_23

    .line 1962
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1963
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1964
    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v18

    .line 1966
    :cond_23
    const/16 v26, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v26

    invoke-static {v12, v0, v1, v2}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v15

    .line 1967
    .restart local v15    # "newIcon":Landroid/view/View;
    if-eqz v15, :cond_25

    .line 1968
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    .line 1969
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 1993
    .end local v15    # "newIcon":Landroid/view/View;
    :cond_24
    :goto_a
    const/16 v24, 0x1

    .line 1994
    goto/16 :goto_0

    .line 1971
    .restart local v15    # "newIcon":Landroid/view/View;
    :cond_25
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FocusHelper;->is12KEYNaviKeyFocus(Landroid/view/View;)Z

    move-result v26

    if-eqz v26, :cond_26

    .line 1972
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1974
    :cond_26
    if-eqz v9, :cond_27

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v26

    if-nez v26, :cond_27

    .line 1975
    invoke-virtual {v9}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    .line 1976
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/android/launcher2/Hotseat;->playSoundEffect(I)V

    goto :goto_a

    .line 1977
    :cond_27
    if-eqz v14, :cond_28

    .line 1978
    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    .line 1979
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_a

    .line 1980
    :cond_28
    if-eqz v22, :cond_29

    if-eqz v21, :cond_29

    const/16 v26, 0x1

    move/from16 v0, p3

    move/from16 v1, v26

    if-ne v0, v1, :cond_29

    .line 1982
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 1983
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_a

    .line 1984
    :cond_29
    sget-boolean v26, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v26, :cond_2a

    if-eqz v8, :cond_2a

    .line 1985
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 1986
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_a

    .line 1987
    :cond_2a
    sget-boolean v26, Lcom/android/launcher2/Launcher;->is_TB:Z

    if-eqz v26, :cond_24

    if-eqz v7, :cond_24

    .line 1988
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1989
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_a

    .line 1832
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_4
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method static is12KEYNaviKeyFocus(Landroid/view/View;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 3123
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3125
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3126
    const/4 v1, 0x1

    .line 3129
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setup(Lcom/android/launcher2/HomeView;)V
    .locals 0
    .param p0, "home"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 290
    sput-object p0, Lcom/android/launcher2/FocusHelper;->sHomeView:Lcom/android/launcher2/HomeView;

    .line 291
    return-void
.end method
