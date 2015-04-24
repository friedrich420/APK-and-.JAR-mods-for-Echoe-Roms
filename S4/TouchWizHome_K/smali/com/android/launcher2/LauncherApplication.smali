.class public Lcom/android/launcher2/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# static fields
.field public static final ACTION_DYNAMICCSC_MODE:Ljava/lang/String; = "com.android.launcher.action.DYNAMICCSC_MODE_CHANGE"

.field public static final APP_ID:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static DEVICE_NAME:Ljava/lang/String; = null

.field public static final FEATURE_NAME_ENTER_APPS_MENU:Ljava/lang/String; = "MENU"

.field public static final FEATURE_NAME_HOME_PAGE_COUNT:Ljava/lang/String; = "HOME"

.field public static final FEATURE_NAME_HOTSEAT_ADD:Ljava/lang/String; = "HSAD"

.field public static final FEATURE_NAME_HOTSEAT_DELETE:Ljava/lang/String; = "HSDT"

.field public static final FEATURE_NAME_WIDGET_ADD:Ljava/lang/String; = "WGAD"

.field public static final FEATURE_NAME_WIDGET_COUNT:Ljava/lang/String; = "WGCT"

.field public static final FEATURE_NAME_WIDGET_DELETE:Ljava/lang/String; = "WGDT"

.field static final PREFERENCES_SCREENCOUNT:Ljava/lang/String; = "screencount"

.field static final PREFERENCES_SCREENCOUNT_FESTIVAL:Ljava/lang/String; = "screencount.festival"

.field static final PREFERENCES_SCREENCOUNT_SECRET:Ljava/lang/String; = "screencount.secret"

.field static final PREFERENCES_SCREENINDEX:Ljava/lang/String; = "homescreenindex"

.field static final PREFERENCES_SCREENINDEX_FESTIVAL:Ljava/lang/String; = "homescreenindex.festival"

.field static final PREFERENCES_SCREENINDEX_SECRET:Ljava/lang/String; = "homescreenindex.secret"

.field static final PREFERENCES_SCREENMODE_FOR_FESTIVAL:Ljava/lang/String; = "screenmode.festival"

.field static final PREFERENCES_SCREENMODE_FOR_SECRET:Ljava/lang/String; = "screenmode.secret"

.field public static RemovablePreloadEnabled:I = 0x0

.field public static final SHOW_DEFAULT_WALLPAPER_KEY:Ljava/lang/String; = "SHOW_DEFAULT_WALLPAPER"

.field public static final SHOW_EMPTY_PAGE_MSG_KEY:Ljava/lang/String; = "SHOW_EMPTY_PAGE_MSG"

.field public static final SHOW_MAGAZINE_CLING_MSG_KEY:Ljava/lang/String; = "SHOW_MAGAZINE_CLING_MSG"

.field private static final TAG:Ljava/lang/String; = "LauncherApplication"

.field private static final mProductName:Ljava/lang/String;

.field public static sDNDBinding:Z

.field public static sDensityDpi:I

.field public static sFestivalPageLauncher:Z

.field private static sHasMenuKey:Z

.field private static sInst:Lcom/android/launcher2/LauncherApplication;

.field private static sIsAppsListAllowed:Z

.field private static sIsDeleteDropTargetTextRight:Z

.field private static sIsDeleteDropTargetTop:Z

.field public static sIsFolderColorSupport:Z

.field private static sIsLargeTabletLayout:Z

.field private static sIsScreenLarge:Z

.field private static sIsScreenSmall:Z

.field private static sIsTabletLayout:Z

.field public static sIsTheFisrt:Z

.field private static sIsUsingMoreLineinFolder:Z

.field private static sIsWidgetSearchTextColorLight:Z

.field private static sLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private static sLauncherProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherProvider;",
            ">;"
        }
    .end annotation
.end field

.field public static sMagazineLauncher:Z

.field private static sMaxFestivalScreenCount:I

.field private static sMaxScreenCount:I

.field private static sMaxSecretScreenCount:I

.field private static sMenuIconSize:I

.field private static sScreenCountFestival:I

.field private static sScreenCountNormal:I

.field private static sScreenCountSecret:I

.field private static sScreenDensity:F

.field private static sScreenIndexNormal:I

.field private static sScreenModeForFestival:I

.field private static sScreenModeForSecret:I

.field public static final sSecretPageLauncher:Z


# instance fields
.field public SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE:Z

.field private busBooster:Landroid/os/DVFSHelper;

.field private cpuBooster:Landroid/os/DVFSHelper;

.field private cpuMaxBooster:Landroid/os/DVFSHelper;

.field private gpuBooster:Landroid/os/DVFSHelper;

.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field private mFactoryModeString:Ljava/lang/String;

.field private final mFavoritesObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIsFactoryMode:Z

.field private mMenuAppModel:Lcom/android/launcher2/MenuAppModel;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

.field private mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private final mSprintFolderObserver:Landroid/database/ContentObserver;

.field private mThemeLoader:Lcom/android/launcher2/ThemeLoader;

.field private sKnox:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    sput-boolean v3, Lcom/android/launcher2/LauncherApplication;->sIsFolderColorSupport:Z

    .line 80
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->mProductName:Ljava/lang/String;

    .line 149
    const-string v0, "ro.product.model"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->DEVICE_NAME:Ljava/lang/String;

    .line 157
    const-string v0, "ro.config.rm_preload_enabled"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/launcher2/LauncherApplication;->RemovablePreloadEnabled:I

    .line 161
    sput-boolean v2, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    .line 176
    sput-boolean v3, Lcom/android/launcher2/LauncherApplication;->sDNDBinding:Z

    .line 177
    sput v2, Lcom/android/launcher2/LauncherApplication;->sDensityDpi:I

    .line 179
    sput-boolean v2, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/LauncherApplication;->sKnox:I

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    .line 148
    iput-object v1, p0, Lcom/android/launcher2/LauncherApplication;->cpuBooster:Landroid/os/DVFSHelper;

    .line 150
    iput-object v1, p0, Lcom/android/launcher2/LauncherApplication;->busBooster:Landroid/os/DVFSHelper;

    .line 151
    iput-object v1, p0, Lcom/android/launcher2/LauncherApplication;->cpuMaxBooster:Landroid/os/DVFSHelper;

    .line 152
    iput-object v1, p0, Lcom/android/launcher2/LauncherApplication;->gpuBooster:Landroid/os/DVFSHelper;

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherApplication;->SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE:Z

    .line 546
    new-instance v0, Lcom/android/launcher2/LauncherApplication$1;

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/LauncherApplication$1;-><init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 556
    new-instance v0, Lcom/android/launcher2/LauncherApplication$2;

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/LauncherApplication$2;-><init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    .line 575
    new-instance v0, Lcom/android/launcher2/LauncherApplication$3;

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/LauncherApplication$3;-><init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mSprintFolderObserver:Landroid/database/ContentObserver;

    .line 188
    sput-object p0, Lcom/android/launcher2/LauncherApplication;->sInst:Lcom/android/launcher2/LauncherApplication;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/LauncherModel;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherApplication;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public static getFestivalScreenCount()I
    .locals 1

    .prologue
    .line 775
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    return v0
.end method

.method public static getHomeScreenIndex()I
    .locals 1

    .prologue
    .line 731
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    return v0
.end method

.method public static getInst()Lcom/android/launcher2/LauncherApplication;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sInst:Lcom/android/launcher2/LauncherApplication;

    return-object v0
.end method

.method public static getMaxFestivalScreenCount()I
    .locals 1

    .prologue
    .line 869
    sget v0, Lcom/android/launcher2/LauncherApplication;->sMaxFestivalScreenCount:I

    return v0
.end method

.method public static getMaxScreenCount()I
    .locals 1

    .prologue
    .line 847
    sget v0, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    return v0
.end method

.method public static getMaxSecretScreenCount()I
    .locals 1

    .prologue
    .line 851
    sget v0, Lcom/android/launcher2/LauncherApplication;->sMaxSecretScreenCount:I

    return v0
.end method

.method public static getScreenCount()I
    .locals 1

    .prologue
    .line 769
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    return v0
.end method

.method public static getScreenDensity()F
    .locals 1

    .prologue
    .line 662
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenDensity:F

    return v0
.end method

.method public static getScreenModeForFestival()I
    .locals 1

    .prologue
    .line 865
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenModeForFestival:I

    return v0
.end method

.method public static getScreenModeForSecret()I
    .locals 1

    .prologue
    .line 842
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenModeForSecret:I

    return v0
.end method

.method public static getSecretScreenCount()I
    .locals 1

    .prologue
    .line 772
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenCountSecret:I

    return v0
.end method

.method public static getSmallestWidth()I
    .locals 1

    .prologue
    .line 666
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return v0
.end method

.method public static hasMenuKey()Z
    .locals 1

    .prologue
    .line 625
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sHasMenuKey:Z

    return v0
.end method

.method public static isAppsListAllowed()Z
    .locals 1

    .prologue
    .line 649
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsAppsListAllowed:Z

    return v0
.end method

.method public static isDeleteDropTargetTextRight()Z
    .locals 1

    .prologue
    .line 645
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsDeleteDropTargetTextRight:Z

    return v0
.end method

.method public static isDeleteDropTargetTop()Z
    .locals 1

    .prologue
    .line 641
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsDeleteDropTargetTop:Z

    return v0
.end method

.method private isFactoryMode()Z
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFactoryModeString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 457
    const-string v0, "/efs/FactoryApp/factorymode"

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherApplication;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFactoryModeString:Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFactoryModeString:Ljava/lang/String;

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherApplication;->mIsFactoryMode:Z

    .line 460
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherApplication;->mIsFactoryMode:Z

    return v0

    .line 458
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFactorySim()Z
    .locals 5

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 504
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const-string v0, "999999999999999"

    .line 505
    .local v0, "IMSI":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, "imsi":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "999999999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 507
    const/4 v3, 0x1

    .line 509
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isKioskModeEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 692
    const/4 v0, 0x0

    .line 694
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "isKioskModeEnabled"

    invoke-static {p0, v1}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 696
    const-string v1, "true"

    const-string v2, "isKioskModeEnabled"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    const/4 v1, 0x1

    .line 699
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLargeTabletLayout()Z
    .locals 1

    .prologue
    .line 658
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsLargeTabletLayout:Z

    return v0
.end method

.method public static isMenuIconSizeChanged()Z
    .locals 1

    .prologue
    .line 736
    sget v0, Lcom/android/launcher2/LauncherApplication;->sMenuIconSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOwner()Z
    .locals 1

    .prologue
    .line 723
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPossibleAddToPersonal(Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 703
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isPossibleAddToPersonal(name) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v2, 0x0

    .line 705
    .local v2, "isPossible":Z
    const/4 v0, 0x0

    .line 708
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/LauncherApplication;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Landroid/os/PersonaManager;->isPossibleAddToPersonal(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 718
    :goto_0
    return v2

    .line 708
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 710
    :catch_0
    move-exception v1

    .line 711
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const-string v3, "LauncherApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not call android.os.PersonaManager."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 712
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v1

    .line 713
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    const-string v3, "LauncherApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not call isPossibleAddToPersonal."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 714
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :catch_2
    move-exception v1

    .line 715
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isScreenLarge()Z
    .locals 1

    .prologue
    .line 633
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsScreenLarge:Z

    return v0
.end method

.method public static isScreenSmall()Z
    .locals 1

    .prologue
    .line 629
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsScreenSmall:Z

    return v0
.end method

.method public static isTabletLayout()Z
    .locals 1

    .prologue
    .line 637
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsTabletLayout:Z

    return v0
.end method

.method public static isUsingMoreLineinFolder()Z
    .locals 1

    .prologue
    .line 911
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsUsingMoreLineinFolder:Z

    return v0
.end method

.method public static isWidgetSearchTextColorLight()Z
    .locals 1

    .prologue
    .line 653
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsWidgetSearchTextColorLight:Z

    return v0
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 469
    const-string v6, ""

    .line 470
    .local v6, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 471
    .local v0, "buf":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 473
    .local v4, "fr":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x1fa0

    invoke-direct {v1, v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 475
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 484
    if-eqz v5, :cond_0

    .line 485
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 486
    :cond_0
    if-eqz v1, :cond_1

    .line 487
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .line 493
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    if-nez v6, :cond_7

    .line 494
    const-string v6, ""

    .line 497
    :goto_1
    return-object v6

    .line 488
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 489
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "LauncherApplication"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .line 492
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_0

    .line 476
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 477
    .local v3, "ex":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v7, "LauncherApplication"

    const-string v8, "FileNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 484
    if-eqz v4, :cond_3

    .line 485
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 486
    :cond_3
    if-eqz v0, :cond_2

    .line 487
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 488
    :catch_2
    move-exception v2

    .line 489
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "LauncherApplication"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 479
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 480
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v7, "LauncherApplication"

    const-string v8, "IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 484
    if-eqz v4, :cond_4

    .line 485
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 486
    :cond_4
    if-eqz v0, :cond_2

    .line 487
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 488
    :catch_4
    move-exception v2

    .line 489
    const-string v7, "LauncherApplication"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 483
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 484
    :goto_4
    if-eqz v4, :cond_5

    .line 485
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 486
    :cond_5
    if-eqz v0, :cond_6

    .line 487
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 491
    :cond_6
    :goto_5
    throw v7

    .line 488
    :catch_5
    move-exception v2

    .line 489
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "LauncherApplication"

    const-string v9, "IOException close()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 496
    .end local v2    # "e":Ljava/io/IOException;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    goto :goto_1

    .line 483
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_4

    .line 479
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_3

    .line 476
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_9
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static setFestivalScreenCount(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenCount"    # I

    .prologue
    .line 819
    sget v2, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    if-eq v2, p1, :cond_0

    .line 820
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    .line 822
    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 823
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 824
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "screencount.festival"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 825
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 830
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static setHomeScreenIndex(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "homeScreenIndex"    # I

    .prologue
    .line 744
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;IZ)V

    .line 745
    return-void
.end method

.method public static setHomeScreenIndex(Landroid/content/Context;IZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "homeScreenIndex"    # I
    .param p2, "updatePrefsTable"    # Z

    .prologue
    .line 749
    sget v2, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-eq v2, p1, :cond_0

    .line 750
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 751
    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 752
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 753
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "homescreenindex"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 754
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 764
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static setScreenCount(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenCount"    # I

    .prologue
    .line 779
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;IZ)V

    .line 780
    return-void
.end method

.method public static setScreenCount(Landroid/content/Context;IZ)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenCount"    # I
    .param p2, "updatePrefsTable"    # Z

    .prologue
    .line 784
    sget v1, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-eq v1, p1, :cond_0

    .line 785
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    .line 786
    const-string v1, "com.sec.android.app.launcher.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 787
    .local v7, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 788
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "screencount"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 789
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 801
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    const-string v2, "HOME"

    const/4 v3, 0x0

    int-to-long v4, p1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 802
    return-void
.end method

.method public static setScreenModeForFestival(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenMode"    # I

    .prologue
    .line 856
    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 857
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 858
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "screenmode.festival"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 859
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 861
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenModeForFestival:I

    .line 862
    return-void
.end method

.method public static setScreenModeForSecret(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenMode"    # I

    .prologue
    .line 833
    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 834
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 835
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "screenmode.secret"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 836
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 838
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenModeForSecret:I

    .line 839
    return-void
.end method

.method public static setSecretScreenCount(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenCount"    # I

    .prologue
    .line 805
    sget v2, Lcom/android/launcher2/LauncherApplication;->sScreenCountSecret:I

    if-eq v2, p1, :cond_0

    .line 806
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenCountSecret:I

    .line 808
    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 809
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 810
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "screencount.secret"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 811
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 816
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method


# virtual methods
.method public checkFactoryMode()Z
    .locals 1

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/android/launcher2/LauncherApplication;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherApplication;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBinaryType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 517
    const-string v1, "ro.build.type"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "type":Ljava/lang/String;
    return-object v0
.end method

.method public getBusBoosterObject()Landroid/os/DVFSHelper;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->busBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method public getCpuBoosterObject()Landroid/os/DVFSHelper;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->cpuBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method public getCpuMaxBoosterObject()Landroid/os/DVFSHelper;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->cpuMaxBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method public getGpuBoosterObject()Landroid/os/DVFSHelper;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->gpuBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method getLauncher()Lcom/android/launcher2/Launcher;
    .locals 1

    .prologue
    .line 605
    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 606
    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 608
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getLauncherProvider()Lcom/android/launcher2/LauncherProvider;
    .locals 1

    .prologue
    .line 616
    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherProvider;

    return-object v0
.end method

.method getModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method getPkgResCache()Lcom/android/launcher2/PkgResCache;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    return-object v0
.end method

.method getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

    return-object v0
.end method

.method public getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-object v0
.end method

.method getThemeLoader()Lcom/android/launcher2/ThemeLoader;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mThemeLoader:Lcom/android/launcher2/ThemeLoader;

    return-object v0
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 7
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "value"    # J
    .param p5, "status"    # Z

    .prologue
    .line 949
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherApplication;->SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE:Z

    if-eqz v2, :cond_2

    .line 950
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 951
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.sec.android.app.launcher"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    if-eqz p2, :cond_0

    .line 954
    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-eqz v2, :cond_1

    .line 956
    const-string v2, "value"

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 958
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 960
    .local v0, "broadcastIntent":Landroid/content/Intent;
    if-eqz p5, :cond_3

    .line 961
    const-string v2, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 965
    :goto_0
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 967
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 969
    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 971
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_2
    return-void

    .line 963
    .restart local v0    # "broadcastIntent":Landroid/content/Intent;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    :cond_3
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public isKnoxMode()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 672
    iget v4, p0, Lcom/android/launcher2/LauncherApplication;->sKnox:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 673
    iput v3, p0, Lcom/android/launcher2/LauncherApplication;->sKnox:I

    .line 674
    const/4 v0, 0x0

    .line 676
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    const-string v4, "isKnoxMode"

    invoke-static {p0, v4}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 678
    const-string v4, "2.0"

    const-string v5, "version"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "true"

    const-string v5, "isKnoxMode"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 680
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/launcher2/LauncherApplication;->sKnox:I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 688
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/launcher2/LauncherApplication;->sKnox:I

    if-ne v4, v2, :cond_1

    :goto_1
    return v2

    .line 682
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 683
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const-string v4, "LauncherApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not call android.os.PersonaManager."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 684
    .end local v1    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v1

    .line 685
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    const-string v4, "LauncherApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not call getKnoxInfoForApp."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :cond_1
    move v2, v3

    .line 688
    goto :goto_1
.end method

.method public onCreate()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 193
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 196
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 197
    .local v6, "res":Landroid/content/res/Resources;
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v9

    if-nez v9, :cond_0

    const v9, 0x7f0b0002

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_14

    :cond_0
    move v9, v11

    :goto_0
    sput-boolean v9, Lcom/android/launcher2/LauncherApplication;->sHasMenuKey:Z

    .line 198
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v9, 0xf

    .line 199
    .local v8, "screenSize":I
    if-ne v8, v11, :cond_15

    move v9, v11

    :goto_1
    sput-boolean v9, Lcom/android/launcher2/LauncherApplication;->sIsScreenSmall:Z

    .line 200
    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    const/4 v9, 0x4

    if-ne v8, v9, :cond_16

    :cond_1
    move v9, v11

    :goto_2
    sput-boolean v9, Lcom/android/launcher2/LauncherApplication;->sIsScreenLarge:Z

    .line 202
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    sput v9, Lcom/android/launcher2/LauncherApplication;->sScreenDensity:F

    .line 203
    const v9, 0x7f0b0003

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    sput-boolean v9, Lcom/android/launcher2/LauncherApplication;->sIsTabletLayout:Z

    .line 204
    const v9, 0x7f0b0007

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    sput-boolean v9, Lcom/android/launcher2/LauncherApplication;->sIsDeleteDropTargetTop:Z

    .line 205
    const v9, 0x7f0b0008

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    sput-boolean v9, Lcom/android/launcher2/LauncherApplication;->sIsDeleteDropTargetTextRight:Z

    .line 206
    const v9, 0x7f0b0004

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    sput-boolean v9, Lcom/android/launcher2/LauncherApplication;->sIsAppsListAllowed:Z

    .line 207
    const v9, 0x7f0b0006

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    sput-boolean v9, Lcom/android/launcher2/LauncherApplication;->sIsWidgetSearchTextColorLight:Z

    .line 208
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v12, 0x320

    if-lt v9, v12, :cond_17

    move v9, v11

    :goto_3
    sput-boolean v9, Lcom/android/launcher2/LauncherApplication;->sIsLargeTabletLayout:Z

    .line 209
    const v9, 0x7f0b000f

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    sput-boolean v9, Lcom/android/launcher2/LauncherApplication;->sIsUsingMoreLineinFolder:Z

    .line 211
    new-instance v9, Lcom/android/launcher2/ThemeLoader;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/android/launcher2/ThemeLoader;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/launcher2/LauncherApplication;->mThemeLoader:Lcom/android/launcher2/ThemeLoader;

    .line 212
    const-string v9, "HERA"

    const-string v12, "ALTIUS"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lcom/android/launcher2/LauncherApplication;->mProductName:Ljava/lang/String;

    const-string v12, "jsglte"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 213
    :cond_2
    sput-boolean v11, Lcom/android/launcher2/LauncherApplication;->sMagazineLauncher:Z

    .line 216
    :cond_3
    sget-object v9, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iput-object v9, p0, Lcom/android/launcher2/LauncherApplication;->mMenuAppModel:Lcom/android/launcher2/MenuAppModel;

    .line 217
    iget-object v9, p0, Lcom/android/launcher2/LauncherApplication;->mMenuAppModel:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v9, p0}, Lcom/android/launcher2/MenuAppModel;->setLauncherApplication(Lcom/android/launcher2/LauncherApplication;)V

    .line 218
    new-instance v9, Lcom/android/launcher2/PkgResCache;

    invoke-direct {v9, p0}, Lcom/android/launcher2/PkgResCache;-><init>(Lcom/android/launcher2/LauncherApplication;)V

    iput-object v9, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 220
    const v9, 0x7f0b000d

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 221
    .local v4, "isMenuAppsIconSizeChanged":Z
    sput v10, Lcom/android/launcher2/LauncherApplication;->sMenuIconSize:I

    .line 222
    if-eqz v4, :cond_4

    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, "appIconSize":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0e029c

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    sput v9, Lcom/android/launcher2/LauncherApplication;->sMenuIconSize:I

    .line 226
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0e00c6

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    float-to-int v0, v9

    .line 230
    :goto_4
    sget v9, Lcom/android/launcher2/LauncherApplication;->sMenuIconSize:I

    if-ne v9, v0, :cond_4

    .line 231
    sput v10, Lcom/android/launcher2/LauncherApplication;->sMenuIconSize:I

    .line 237
    .end local v0    # "appIconSize":I
    :cond_4
    iget-object v9, p0, Lcom/android/launcher2/LauncherApplication;->mThemeLoader:Lcom/android/launcher2/ThemeLoader;

    invoke-virtual {v9}, Lcom/android/launcher2/ThemeLoader;->isSupportFestival()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 238
    sput-boolean v11, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    .line 258
    :cond_5
    sget-boolean v9, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v9, :cond_18

    .line 259
    new-instance v9, Lcom/android/launcher2/LauncherExModel;

    iget-object v12, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-direct {v9, p0, v12}, Lcom/android/launcher2/LauncherExModel;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;)V

    iput-object v9, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 260
    new-instance v3, Landroid/content/IntentFilter;

    const-string v9, "com.bst.action.PICKUP_FESTIVAL"

    invoke-direct {v3, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 261
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v9, "com.bst.action.PICKUP_COMMON"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v9, "com.sec.festival.FESTIVAL_SETTINGS_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v9, "com.sec.festival.FESTIVAL_HOME_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    iget-object v9, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v9, v3}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 277
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :goto_5
    sget-object v9, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iput-object v9, p0, Lcom/android/launcher2/LauncherApplication;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 278
    iget-object v9, p0, Lcom/android/launcher2/LauncherApplication;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-virtual {v9, p0}, Lcom/android/launcher2/WorkspaceSpanCalculator;->setLauncherApplication(Lcom/android/launcher2/LauncherApplication;)V

    .line 281
    new-instance v3, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 282
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v9, "android.intent.action.STK_TITLE_IS_LOADED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    const-string v9, "package"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 288
    iget-object v9, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v9, v3}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 290
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 291
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v12, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v9, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 296
    const-string v9, "com.sec.sprextension.FORCE_LAUNCHER_REFRESH"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    :cond_6
    iget-object v9, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v9, v3}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 309
    .local v7, "resolver":Landroid/content/ContentResolver;
    sget-object v9, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v12, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v9, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 314
    const-string v9, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v9, v10}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 315
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    .line 320
    .local v1, "csc":Lcom/sec/android/app/CscFeature;
    const v9, 0x7f0c0009

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sput v9, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    .line 328
    const-string v9, "screencount"

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    .line 329
    sget v9, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lez v9, :cond_7

    sget v9, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    sget v12, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v9, v12, :cond_b

    .line 330
    :cond_7
    const-string v9, "CscFeature_Launcher_TotalPageCount"

    invoke-virtual {v1, v9}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    .line 332
    sget v9, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lez v9, :cond_8

    sget v9, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    sget v12, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v9, v12, :cond_a

    .line 333
    :cond_8
    const v9, 0x7f0c0007

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sput v9, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    .line 334
    sget v9, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lez v9, :cond_9

    sget v9, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    sget v12, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v9, v12, :cond_a

    .line 335
    :cond_9
    sget v9, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    sput v9, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    .line 349
    :cond_a
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 350
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "screencount"

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    invoke-interface {v2, v9, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 351
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 360
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_b
    const-string v9, "homescreenindex"

    const/4 v12, -0x1

    invoke-interface {v5, v9, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 361
    sget v9, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-ltz v9, :cond_c

    sget v9, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lt v9, v12, :cond_10

    .line 362
    :cond_c
    const-string v9, "CscFeature_Launcher_DefaultPageNumber"

    invoke-virtual {v1, v9}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 363
    sget v9, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-ltz v9, :cond_d

    sget v9, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lt v9, v12, :cond_f

    .line 364
    :cond_d
    const v9, 0x7f0c000a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sput v9, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 365
    sget v9, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-ltz v9, :cond_e

    sget v9, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lt v9, v12, :cond_f

    .line 366
    :cond_e
    sput v10, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 371
    :cond_f
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 372
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "homescreenindex"

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    invoke-interface {v2, v9, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 373
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 395
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_10
    sget-boolean v9, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v9, :cond_12

    .line 396
    const v9, 0x7f0c000d

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sput v9, Lcom/android/launcher2/LauncherApplication;->sMaxFestivalScreenCount:I

    .line 398
    const-string v9, "screencount.festival"

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    .line 399
    const-string v9, "screenmode.festival"

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/android/launcher2/LauncherApplication;->sScreenModeForFestival:I

    .line 401
    sget v9, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    if-ltz v9, :cond_11

    sget v9, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    sget v12, Lcom/android/launcher2/LauncherApplication;->sMaxFestivalScreenCount:I

    if-le v9, v12, :cond_12

    .line 403
    :cond_11
    sput v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    .line 405
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 406
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "screencount.festival"

    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 407
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 424
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_12
    new-instance v9, Landroid/os/DVFSHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/16 v12, 0xc

    invoke-direct {v9, v10, v12}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/android/launcher2/LauncherApplication;->cpuBooster:Landroid/os/DVFSHelper;

    .line 425
    new-instance v9, Landroid/os/DVFSHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/16 v12, 0x13

    invoke-direct {v9, v10, v12}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/android/launcher2/LauncherApplication;->busBooster:Landroid/os/DVFSHelper;

    .line 426
    new-instance v9, Landroid/os/DVFSHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/16 v12, 0xe

    invoke-direct {v9, v10, v12}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/android/launcher2/LauncherApplication;->cpuMaxBooster:Landroid/os/DVFSHelper;

    .line 430
    new-instance v9, Landroid/os/DVFSHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/16 v12, 0x10

    invoke-direct {v9, v10, v12}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/android/launcher2/LauncherApplication;->gpuBooster:Landroid/os/DVFSHelper;

    .line 431
    iget-object v9, p0, Lcom/android/launcher2/LauncherApplication;->gpuBooster:Landroid/os/DVFSHelper;

    const-string v10, "Launcher_homemenu"

    invoke-virtual {v9, v10}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 434
    sget-object v9, Lcom/android/launcher2/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    iget-object v10, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v9, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 435
    iget-object v9, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherModel;->reloadBadges()V

    .line 437
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 438
    const-string v9, "LauncherApplication"

    const-string v10, "registerSprintFolderObserver"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget-object v9, Lcom/android/launcher2/LauncherProviderID;->SPRINTFOLDER_URI:Landroid/net/Uri;

    iget-object v10, p0, Lcom/android/launcher2/LauncherApplication;->mSprintFolderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v9, v11, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 444
    :cond_13
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/launcher2/LauncherApplication;->SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE:Z

    .line 445
    sput-boolean v11, Lcom/android/launcher2/LauncherApplication;->sIsTheFisrt:Z

    .line 446
    return-void

    .end local v1    # "csc":Lcom/sec/android/app/CscFeature;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "isMenuAppsIconSizeChanged":Z
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v7    # "resolver":Landroid/content/ContentResolver;
    .end local v8    # "screenSize":I
    :cond_14
    move v9, v10

    .line 197
    goto/16 :goto_0

    .restart local v8    # "screenSize":I
    :cond_15
    move v9, v10

    .line 199
    goto/16 :goto_1

    :cond_16
    move v9, v10

    .line 200
    goto/16 :goto_2

    :cond_17
    move v9, v10

    .line 208
    goto/16 :goto_3

    .line 270
    .restart local v4    # "isMenuAppsIconSizeChanged":Z
    :cond_18
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 271
    new-instance v9, Lcom/android/launcher2/PkgResCache;

    sget v12, Lcom/android/launcher2/LauncherApplication;->sMenuIconSize:I

    invoke-direct {v9, p0, v12}, Lcom/android/launcher2/PkgResCache;-><init>(Lcom/android/launcher2/LauncherApplication;I)V

    iput-object v9, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

    .line 272
    new-instance v9, Lcom/android/launcher2/LauncherModel;

    iget-object v12, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v13, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

    invoke-direct {v9, p0, v12, v13}, Lcom/android/launcher2/LauncherModel;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/PkgResCache;)V

    iput-object v9, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    goto/16 :goto_5

    .line 274
    :cond_19
    new-instance v9, Lcom/android/launcher2/LauncherModel;

    iget-object v12, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-direct {v9, p0, v12}, Lcom/android/launcher2/LauncherModel;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;)V

    iput-object v9, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    goto/16 :goto_5

    .line 227
    .restart local v0    # "appIconSize":I
    :catch_0
    move-exception v9

    goto/16 :goto_4
.end method

.method public onTerminate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 526
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 528
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 530
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 531
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 532
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 533
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    const-string v1, "LauncherApplication"

    const-string v2, "unregisterSprintFolderObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mSprintFolderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 537
    :cond_0
    iput-object v3, p0, Lcom/android/launcher2/LauncherApplication;->cpuBooster:Landroid/os/DVFSHelper;

    .line 538
    iput-object v3, p0, Lcom/android/launcher2/LauncherApplication;->busBooster:Landroid/os/DVFSHelper;

    .line 539
    iput-object v3, p0, Lcom/android/launcher2/LauncherApplication;->cpuMaxBooster:Landroid/os/DVFSHelper;

    .line 540
    iput-object v3, p0, Lcom/android/launcher2/LauncherApplication;->gpuBooster:Landroid/os/DVFSHelper;

    .line 541
    return-void
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/launcher2/Launcher;

    .prologue
    .line 601
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncher:Ljava/lang/ref/WeakReference;

    .line 602
    return-void
.end method

.method setLauncherProvider(Lcom/android/launcher2/LauncherProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/android/launcher2/LauncherProvider;

    .prologue
    .line 612
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    .line 613
    return-void
.end method

.method public updatePageCount()V
    .locals 0

    .prologue
    .line 877
    return-void
.end method
