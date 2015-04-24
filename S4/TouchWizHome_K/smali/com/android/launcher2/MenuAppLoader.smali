.class public Lcom/android/launcher2/MenuAppLoader;
.super Ljava/lang/Object;
.source "MenuAppLoader.java"


# static fields
.field private static final DEBUGGABLE:Z

.field private static final DEBUG_LOADER:Z = true

.field private static final DEFAULT_APP_COUNT:I = 0x32

.field private static final DEFAULT_FOLDER_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "MenuAppLoader"

.field public static nonUninstallableApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static nonUninstallableWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mAbortLoader:Z

.field private mAllItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadgeCache:Lcom/android/launcher2/BadgeCache;

.field private final mIsSafeMode:Z

.field private final mLauncherApp:Lcom/android/launcher2/LauncherApplication;

.field private final mPkgMgr:Landroid/content/pm/PackageManager;

.field private final mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/MenuAppLoader;->DEBUGGABLE:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableWidgets:Ljava/util/ArrayList;

    .line 61
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.agoda.mobile.consumer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.glu.bombshells_samsung"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.tecace.cameraace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.izsoft.canimalsabc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.glu.contractkiller2_samsung"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.NamcoBandaiGames.DoodleFit2.Samsung"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.glu.dragonslayer_samsung"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.hcom.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.oceanhouse_media.booklcjustmeandmymomlite_app"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.moleskine.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.itech.pdfreaderpro"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "air.com.adobe.pstouch.oem1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.namcobandaigames.rocketfox"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.sesame.apps.elmocalls.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.ea.tetrisfree_na"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.fuzzypeach.worldfactbook_tab"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.ikonet.vhb"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.itech.virtualofficepro"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.almond.kitty.spen"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "kr.co.rightbrain.RetailMode.Galaxy_TAB3_8_DCT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableWidgets:Ljava/util/ArrayList;

    const-string v1, "com.almond.kitty.spen"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableWidgets:Ljava/util/ArrayList;

    const-string v1, "com.tecace.cameraace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableWidgets:Ljava/util/ArrayList;

    const-string v1, "com.hcom.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V
    .locals 2
    .param p1, "context"    # Lcom/android/launcher2/LauncherApplication;
    .param p2, "pkgResCache"    # Lcom/android/launcher2/PkgResCache;
    .param p3, "badgeCache"    # Lcom/android/launcher2/BadgeCache;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    .line 112
    new-instance v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v0}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    .line 118
    iput-object p1, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    .line 119
    iput-object p2, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 120
    iput-object p3, p0, Lcom/android/launcher2/MenuAppLoader;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    .line 121
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 122
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppLoader;->mIsSafeMode:Z

    .line 123
    return-void
.end method

.method private createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;
    .locals 12
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 160
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 161
    .local v0, "activity":Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    .line 162
    .local v4, "item":Lcom/android/launcher2/AppItem;
    if-eqz v0, :cond_2

    .line 163
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 164
    .local v5, "pkgName":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v1, "cn":Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 166
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x81

    if-eqz v8, :cond_4

    move v3, v6

    .line 168
    .local v3, "isSystemApp":Z
    :goto_0
    sget-object v8, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableApps:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v9, "SM-T310X"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 169
    const/4 v3, 0x1

    .line 170
    :cond_0
    new-instance v4, Lcom/android/launcher2/AppItem;

    .end local v4    # "item":Lcom/android/launcher2/AppItem;
    invoke-direct {v4, v1, v3}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    .line 171
    .restart local v4    # "item":Lcom/android/launcher2/AppItem;
    iput-boolean v6, v4, Lcom/android/launcher2/AppItem;->mDirty:Z

    .line 177
    invoke-direct {p0, v4, p1, v1}, Lcom/android/launcher2/MenuAppLoader;->setTitleAndIcon(Lcom/android/launcher2/AppItem;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)V

    .line 178
    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuAppLoader;->setBadgeCount(Lcom/android/launcher2/AppItem;)V

    .line 179
    iget-boolean v8, v4, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v8, :cond_1

    .line 180
    :try_start_0
    iget-object v8, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-wide v8, v8, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v8, v4, Lcom/android/launcher2/AppItem;->mCreateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_1
    :goto_1
    sget-boolean v8, Lcom/android/launcher2/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v8, :cond_2

    .line 185
    const-string v8, "MenuAppLoader"

    const-string v9, "createApp title(%s) package(%s)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v4, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    aput-object v11, v10, v7

    aput-object v5, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v3    # "isSystemApp":Z
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    .line 189
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    iget-object v7, v4, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_3
    return-object v4

    .restart local v1    # "cn":Landroid/content/ComponentName;
    .restart local v5    # "pkgName":Ljava/lang/String;
    :cond_4
    move v3, v7

    .line 166
    goto :goto_0

    .line 181
    .restart local v3    # "isSystemApp":Z
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "MenuAppLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot find PackageInfo for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private createDbAppItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .locals 4
    .param p1, "item"    # Lcom/android/launcher2/AppItem;

    .prologue
    .line 200
    new-instance v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 201
    .local v0, "newApp":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_0

    .line 202
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 209
    :goto_0
    iget-wide v2, p1, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v2, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 210
    iget v1, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    .line 211
    iget v1, p1, Lcom/android/launcher2/AppItem;->mCell:I

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    .line 212
    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 213
    iget v1, p1, Lcom/android/launcher2/AppItem;->mColor:I

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->color:I

    .line 214
    iget-boolean v1, p1, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    iput-boolean v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    .line 215
    return-object v0

    .line 204
    :cond_0
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 205
    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v2, v1, Lcom/android/launcher2/AppFolderItem;->mId:J

    :goto_1
    iput-wide v2, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    .line 206
    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    .line 207
    iget-boolean v1, p1, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    goto :goto_0

    .line 205
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method private findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 230
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 233
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 236
    :cond_0
    return-object v0
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "className":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 245
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 246
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    const/4 v4, 0x1

    .line 250
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getOrCreateFolder(J)Lcom/android/launcher2/AppFolderItem;
    .locals 5
    .param p1, "folderId"    # J

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "folder":Lcom/android/launcher2/AppFolderItem;
    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 266
    .local v1, "item":Lcom/android/launcher2/AppItem;
    if-nez v1, :cond_1

    .line 267
    new-instance v0, Lcom/android/launcher2/AppFolderItem;

    .end local v0    # "folder":Lcom/android/launcher2/AppFolderItem;
    invoke-direct {v0}, Lcom/android/launcher2/AppFolderItem;-><init>()V

    .line 268
    .restart local v0    # "folder":Lcom/android/launcher2/AppFolderItem;
    iput-wide p1, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    .line 269
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher2/AppFolderItem;->mDirty:Z

    .line 270
    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher2/AppFolderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 271
    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_0
    :goto_0
    return-object v0

    .line 272
    :cond_1
    iget-object v2, v1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_0

    move-object v0, v1

    .line 273
    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    goto :goto_0
.end method

.method private setBadgeCount(Lcom/android/launcher2/AppItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/AppItem;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/AppItem;->mBadgeCount:I

    .line 545
    return-void
.end method

.method private setTitleAndIcon(Lcom/android/launcher2/AppItem;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/AppItem;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ResolveInfo;)V

    .line 560
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    iput v0, p1, Lcom/android/launcher2/AppItem;->mIconResId:I

    .line 561
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    iput v0, p1, Lcom/android/launcher2/AppItem;->mTitleResId:I

    .line 563
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v0}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 565
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    .line 567
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateOrCreateApp(Landroid/content/ComponentName;JJIIZLjava/lang/String;IZ)Lcom/android/launcher2/AppItem;
    .locals 20
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "id"    # J
    .param p4, "folderId"    # J
    .param p6, "screen"    # I
    .param p7, "cell"    # I
    .param p8, "hidden"    # Z
    .param p9, "title"    # Ljava/lang/String;
    .param p10, "color"    # I
    .param p11, "secret"    # Z

    .prologue
    .line 608
    const/4 v10, 0x0

    .line 609
    .local v10, "item":Lcom/android/launcher2/AppItem;
    if-eqz p1, :cond_3

    .line 610
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "item":Lcom/android/launcher2/AppItem;
    check-cast v10, Lcom/android/launcher2/AppItem;

    .line 611
    .restart local v10    # "item":Lcom/android/launcher2/AppItem;
    if-nez v10, :cond_1

    .line 615
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 619
    .local v13, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/16 v15, 0x2000

    invoke-virtual {v14, v13, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 621
    .local v12, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 622
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_1

    .line 624
    iget v14, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_4

    const/4 v9, 0x1

    .line 625
    .local v9, "isSystemApp":Z
    :goto_0
    iget v14, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v15, 0x40000

    and-int/2addr v14, v15

    if-eqz v14, :cond_5

    const/4 v6, 0x1

    .line 626
    .local v6, "externalInstalled":Z
    :goto_1
    if-nez v9, :cond_6

    if-nez v6, :cond_6

    iget v14, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v15, 0x800000

    and-int/2addr v14, v15

    if-eqz v14, :cond_6

    const/4 v8, 0x1

    .line 629
    .local v8, "internalInstalled":Z
    :goto_2
    if-eqz v6, :cond_7

    .line 635
    new-instance v11, Lcom/android/launcher2/AppItem;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v14}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    .end local v10    # "item":Lcom/android/launcher2/AppItem;
    .local v11, "item":Lcom/android/launcher2/AppItem;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v14}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v14

    iput-object v14, v11, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 637
    iget-wide v14, v12, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v14, v11, Lcom/android/launcher2/AppItem;->mCreateTime:J

    .line 638
    const/4 v14, 0x1

    iput-boolean v14, v11, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    .line 639
    move-object/from16 v0, p9

    iput-object v0, v11, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    .line 640
    move/from16 v0, p10

    iput v0, v11, Lcom/android/launcher2/AppItem;->mColor:I

    .line 641
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v14, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    move/from16 v0, p11

    iput-boolean v0, v11, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    .line 643
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher2/MenuAppLoader;->setBadgeCount(Lcom/android/launcher2/AppItem;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v11

    .line 659
    .end local v11    # "item":Lcom/android/launcher2/AppItem;
    .restart local v10    # "item":Lcom/android/launcher2/AppItem;
    :cond_0
    :goto_3
    :try_start_2
    sget-boolean v14, Lcom/android/launcher2/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v14, :cond_1

    .line 660
    const-string v14, "MenuAppLoader"

    const-string v15, "title(%s) pkgName(%s) appInfo.flags(%d) "

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p9, v16, v17

    const/16 v17, 0x1

    aput-object v13, v16, v17

    const/16 v17, 0x2

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 671
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "externalInstalled":Z
    .end local v8    # "internalInstalled":Z
    .end local v9    # "isSystemApp":Z
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v13    # "pkgName":Ljava/lang/String;
    :cond_1
    :goto_4
    if-eqz v10, :cond_3

    iget-wide v14, v10, Lcom/android/launcher2/AppItem;->mId:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    .line 672
    move-wide/from16 v0, p2

    iput-wide v0, v10, Lcom/android/launcher2/AppItem;->mId:J

    .line 673
    move/from16 v0, p6

    iput v0, v10, Lcom/android/launcher2/AppItem;->mScreen:I

    .line 674
    move/from16 v0, p7

    iput v0, v10, Lcom/android/launcher2/AppItem;->mCell:I

    .line 675
    move/from16 v0, p8

    iput-boolean v0, v10, Lcom/android/launcher2/AppItem;->mHidden:Z

    .line 676
    const/4 v14, 0x0

    iput-boolean v14, v10, Lcom/android/launcher2/AppItem;->mDirty:Z

    .line 677
    move/from16 v0, p11

    iput-boolean v0, v10, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    .line 681
    const-wide/16 v14, -0x1

    cmp-long v14, p4, v14

    if-eqz v14, :cond_2

    .line 682
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuAppLoader;->getOrCreateFolder(J)Lcom/android/launcher2/AppFolderItem;

    move-result-object v7

    .line 683
    .local v7, "folder":Lcom/android/launcher2/AppFolderItem;
    if-eqz v7, :cond_8

    .line 684
    invoke-virtual {v7, v10}, Lcom/android/launcher2/AppFolderItem;->loadItem(Lcom/android/launcher2/AppItem;)V

    .line 697
    .end local v7    # "folder":Lcom/android/launcher2/AppFolderItem;
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppItem;

    .line 698
    .local v5, "dupItem":Lcom/android/launcher2/AppItem;
    if-eqz v5, :cond_3

    iget-object v14, v5, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v15, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v14, v15, :cond_3

    .line 699
    check-cast v5, Lcom/android/launcher2/AppFolderItem;

    .end local v5    # "dupItem":Lcom/android/launcher2/AppItem;
    invoke-virtual {v5}, Lcom/android/launcher2/AppFolderItem;->destroy()V

    .line 703
    :cond_3
    return-object v10

    .line 624
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v13    # "pkgName":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 625
    .restart local v9    # "isSystemApp":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 626
    .restart local v6    # "externalInstalled":Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 645
    .restart local v8    # "internalInstalled":Z
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/MenuAppLoader;->mIsSafeMode:Z

    if-eqz v14, :cond_0

    if-eqz v8, :cond_0

    .line 648
    new-instance v11, Lcom/android/launcher2/AppItem;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v14}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 649
    .end local v10    # "item":Lcom/android/launcher2/AppItem;
    .restart local v11    # "item":Lcom/android/launcher2/AppItem;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v14}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v14

    iput-object v14, v11, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 650
    iget-wide v14, v12, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v14, v11, Lcom/android/launcher2/AppItem;->mCreateTime:J

    .line 651
    const/4 v14, 0x1

    iput-boolean v14, v11, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    .line 652
    move-object/from16 v0, p9

    iput-object v0, v11, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    .line 653
    move/from16 v0, p10

    iput v0, v11, Lcom/android/launcher2/AppItem;->mColor:I

    .line 654
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v14, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher2/MenuAppLoader;->setBadgeCount(Lcom/android/launcher2/AppItem;)V

    .line 656
    move/from16 v0, p11

    iput-boolean v0, v11, Lcom/android/launcher2/AppItem;->mSecretItem:Z
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v10, v11

    .end local v11    # "item":Lcom/android/launcher2/AppItem;
    .restart local v10    # "item":Lcom/android/launcher2/AppItem;
    goto/16 :goto_3

    .line 686
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "externalInstalled":Z
    .end local v8    # "internalInstalled":Z
    .end local v9    # "isSystemApp":Z
    .end local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v13    # "pkgName":Ljava/lang/String;
    .restart local v7    # "folder":Lcom/android/launcher2/AppFolderItem;
    :cond_8
    const/4 v14, 0x1

    iput-boolean v14, v10, Lcom/android/launcher2/AppItem;->mDirty:Z

    .line 687
    const/4 v14, -0x1

    iput v14, v10, Lcom/android/launcher2/AppItem;->mScreen:I

    .line 688
    const/4 v14, -0x1

    iput v14, v10, Lcom/android/launcher2/AppItem;->mCell:I

    goto :goto_5

    .line 663
    .end local v7    # "folder":Lcom/android/launcher2/AppFolderItem;
    :catch_0
    move-exception v14

    goto/16 :goto_4

    .end local v10    # "item":Lcom/android/launcher2/AppItem;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "externalInstalled":Z
    .restart local v8    # "internalInstalled":Z
    .restart local v9    # "isSystemApp":Z
    .restart local v11    # "item":Lcom/android/launcher2/AppItem;
    .restart local v12    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v13    # "pkgName":Ljava/lang/String;
    :catch_1
    move-exception v14

    move-object v10, v11

    .end local v11    # "item":Lcom/android/launcher2/AppItem;
    .restart local v10    # "item":Lcom/android/launcher2/AppItem;
    goto/16 :goto_4
.end method

.method private updateOrCreateFolder(JIILjava/lang/String;IZ)Lcom/android/launcher2/AppFolderItem;
    .locals 5
    .param p1, "folderId"    # J
    .param p3, "screen"    # I
    .param p4, "cell"    # I
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "color"    # I
    .param p7, "secret"    # Z

    .prologue
    .line 719
    const/4 v0, 0x0

    .line 720
    .local v0, "folder":Lcom/android/launcher2/AppFolderItem;
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 721
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppLoader;->getOrCreateFolder(J)Lcom/android/launcher2/AppFolderItem;

    move-result-object v0

    .line 722
    if-eqz v0, :cond_0

    .line 723
    iput p3, v0, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    .line 724
    iput p4, v0, Lcom/android/launcher2/AppFolderItem;->mCell:I

    .line 725
    iput-object p5, v0, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    .line 726
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/AppFolderItem;->mDirty:Z

    .line 727
    iput p6, v0, Lcom/android/launcher2/AppFolderItem;->mColor:I

    .line 728
    iput-boolean p7, v0, Lcom/android/launcher2/AppFolderItem;->mSecretItem:Z

    .line 731
    :cond_0
    return-object v0
.end method

.method private updatePackageActivities(Ljava/lang/String;Ljava/util/List;)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v12, 0x0

    .line 755
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .local v1, "appMods":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v8

    .line 757
    .local v8, "provider":Lcom/android/launcher2/LauncherProvider;
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher2/AppItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 758
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AppItem;

    .line 759
    .local v6, "item":Lcom/android/launcher2/AppItem;
    iget-object v2, v6, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    .line 760
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 761
    invoke-static {p2, v2}, Lcom/android/launcher2/MenuAppLoader;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 762
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 765
    new-instance v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 766
    .local v0, "appMod":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v9, 0x5

    iput v9, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 767
    iget-wide v10, v6, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v10, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 768
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 774
    .end local v0    # "appMod":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v6    # "item":Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 775
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .restart local v2    # "cn":Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AppItem;

    .line 778
    .restart local v6    # "item":Lcom/android/launcher2/AppItem;
    if-nez v6, :cond_3

    .line 779
    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuAppLoader;->createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;

    move-result-object v6

    .line 780
    if-eqz v6, :cond_2

    .line 781
    invoke-virtual {v8}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/launcher2/AppItem;->mId:J

    .line 782
    iput-boolean v12, v6, Lcom/android/launcher2/AppItem;->mDirty:Z

    .line 783
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    invoke-direct {p0, v6}, Lcom/android/launcher2/MenuAppLoader;->createDbAppItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 791
    :cond_3
    iget-object v7, v6, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    .line 792
    .local v7, "origTitle":Ljava/lang/String;
    invoke-direct {p0, v6, v4, v2}, Lcom/android/launcher2/MenuAppLoader;->setTitleAndIcon(Lcom/android/launcher2/AppItem;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)V

    .line 793
    const/4 v9, 0x0

    iput-object v9, v6, Lcom/android/launcher2/AppItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 794
    iput-boolean v12, v6, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    .line 795
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    iget-object v9, v6, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 797
    new-instance v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 798
    .restart local v0    # "appMod":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v9, 0x2

    iput v9, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 799
    iget-wide v10, v6, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v10, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 800
    iget-object v9, v6, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iput-object v9, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 801
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 805
    .end local v0    # "appMod":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "item":Lcom/android/launcher2/AppItem;
    .end local v7    # "origTitle":Ljava/lang/String;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 806
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v9, v1}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 807
    :cond_5
    return-void
.end method


# virtual methods
.method public abortLoader()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    .line 131
    return-void
.end method

.method public addPackage(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppLoader;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 138
    .local v3, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .local v4, "newApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v5

    .line 140
    .local v5, "provider":Lcom/android/launcher2/LauncherProvider;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 141
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuAppLoader;->createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;

    move-result-object v2

    .line 142
    .local v2, "item":Lcom/android/launcher2/AppItem;
    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/launcher2/AppItem;->mId:J

    .line 144
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/launcher2/AppItem;->mDirty:Z

    .line 145
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppLoader;->createDbAppItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "item":Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 150
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v6, v4}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 151
    :cond_2
    return-void
.end method

.method public loadAllItems(Z)Ljava/util/Map;
    .locals 61
    .param p1, "isSecret"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    sget-boolean v5, Lcom/android/launcher2/MenuAppLoader;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    const-string v5, "MenuAppLoader"

    const-string v6, "loadAllItems"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v46

    .line 287
    .local v46, "t0":J
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    .line 289
    new-instance v5, Ljava/util/HashMap;

    const/16 v6, 0x3c

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    .line 290
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 291
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 292
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 293
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 296
    new-instance v42, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    move-object/from16 v0, v42

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v42, "mainIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 300
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    const/16 v27, 0x0

    .line 301
    .local v27, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v27

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v48

    .line 322
    .local v48, "t1":J
    if-nez v27, :cond_1

    .line 323
    const/16 v18, 0x0

    .line 466
    :goto_0
    return-object v18

    .line 325
    :cond_1
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .local v38, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/pm/ResolveInfo;

    .line 326
    .local v40, "info":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-eqz v5, :cond_4

    .line 333
    .end local v40    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v50

    .line 336
    .local v50, "t2":J
    sget-object v5, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 338
    .local v28, "c":Landroid/database/Cursor;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v52

    .line 341
    .local v52, "t3":J
    :try_start_0
    const-string v5, "_id"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 342
    .local v39, "idIndex":I
    const-string v5, "folderId"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 343
    .local v36, "folderIdIndex":I
    const-string v5, "screen"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 344
    .local v44, "screenIndex":I
    const-string v5, "cell"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 345
    .local v29, "cellIndex":I
    const-string v5, "hidden"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 346
    .local v37, "hiddenIndex":I
    const-string v5, "title"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v58

    .line 347
    .local v58, "titleIndex":I
    const-string v5, "componentName"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 348
    .local v32, "componentNameIndex":I
    const-string v5, "color"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 349
    .local v30, "colorIndex":I
    const-string v5, "secret"

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 350
    .local v45, "secretIndex":I
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v35, "delApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-nez v5, :cond_a

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 353
    const/16 v41, 0x0

    .line 354
    .local v41, "item":Lcom/android/launcher2/AppItem;
    move-object/from16 v0, v28

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 355
    .local v8, "id":J
    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 356
    .local v10, "folderId":J
    move-object/from16 v0, v28

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 357
    .local v12, "screen":I
    invoke-interface/range {v28 .. v29}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 358
    .local v13, "cell":I
    move-object/from16 v0, v28

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v14, 0x1

    .line 359
    .local v14, "hidden":Z
    :goto_3
    move-object/from16 v0, v28

    move/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 360
    .local v15, "title":Ljava/lang/String;
    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 361
    .local v31, "component":Ljava/lang/String;
    sget-boolean v5, Lcom/android/launcher2/LauncherApplication;->sIsFolderColorSupport:Z

    if-eqz v5, :cond_7

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 362
    .local v16, "color":I
    :goto_4
    move-object/from16 v0, v28

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_8

    const/16 v17, 0x1

    .line 363
    .local v17, "secret":Z
    :goto_5
    if-eqz v31, :cond_9

    .line 364
    invoke-static/range {v31 .. v31}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .local v7, "cn":Landroid/content/ComponentName;
    move-object/from16 v6, p0

    .line 366
    invoke-direct/range {v6 .. v17}, Lcom/android/launcher2/MenuAppLoader;->updateOrCreateApp(Landroid/content/ComponentName;JJIIZLjava/lang/String;IZ)Lcom/android/launcher2/AppItem;

    move-result-object v41

    .line 367
    if-nez v41, :cond_3

    .line 369
    new-instance v34, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct/range {v34 .. v34}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 370
    .local v34, "delApp":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v5, 0x5

    move-object/from16 v0, v34

    iput v5, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 371
    move-object/from16 v0, v34

    iput-wide v8, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 372
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 385
    .end local v7    # "cn":Landroid/content/ComponentName;
    .end local v8    # "id":J
    .end local v10    # "folderId":J
    .end local v12    # "screen":I
    .end local v13    # "cell":I
    .end local v14    # "hidden":Z
    .end local v15    # "title":Ljava/lang/String;
    .end local v16    # "color":I
    .end local v17    # "secret":Z
    .end local v29    # "cellIndex":I
    .end local v30    # "colorIndex":I
    .end local v31    # "component":Ljava/lang/String;
    .end local v32    # "componentNameIndex":I
    .end local v34    # "delApp":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .end local v35    # "delApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    .end local v36    # "folderIdIndex":I
    .end local v37    # "hiddenIndex":I
    .end local v39    # "idIndex":I
    .end local v41    # "item":Lcom/android/launcher2/AppItem;
    .end local v44    # "screenIndex":I
    .end local v45    # "secretIndex":I
    .end local v58    # "titleIndex":I
    :catchall_0
    move-exception v5

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    throw v5

    .line 328
    .end local v28    # "c":Landroid/database/Cursor;
    .end local v50    # "t2":J
    .end local v52    # "t3":J
    .restart local v40    # "info":Landroid/content/pm/ResolveInfo;
    :cond_4
    move-object/from16 v0, v40

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "sstream.app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 329
    const-string v5, "MenuAppLoader"

    const-string v6, "remove from apps (SStream App)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 331
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuAppLoader;->createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;

    goto/16 :goto_1

    .line 358
    .end local v40    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "id":J
    .restart local v10    # "folderId":J
    .restart local v12    # "screen":I
    .restart local v13    # "cell":I
    .restart local v28    # "c":Landroid/database/Cursor;
    .restart local v29    # "cellIndex":I
    .restart local v30    # "colorIndex":I
    .restart local v32    # "componentNameIndex":I
    .restart local v35    # "delApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    .restart local v36    # "folderIdIndex":I
    .restart local v37    # "hiddenIndex":I
    .restart local v39    # "idIndex":I
    .restart local v41    # "item":Lcom/android/launcher2/AppItem;
    .restart local v44    # "screenIndex":I
    .restart local v45    # "secretIndex":I
    .restart local v50    # "t2":J
    .restart local v52    # "t3":J
    .restart local v58    # "titleIndex":I
    :cond_6
    const/4 v14, 0x0

    goto :goto_3

    .line 361
    .restart local v14    # "hidden":Z
    .restart local v15    # "title":Ljava/lang/String;
    .restart local v31    # "component":Ljava/lang/String;
    :cond_7
    const/16 v16, -0x1

    goto :goto_4

    .line 362
    .restart local v16    # "color":I
    :cond_8
    const/16 v17, 0x0

    goto :goto_5

    .restart local v17    # "secret":Z
    :cond_9
    move-object/from16 v19, p0

    move-wide/from16 v20, v8

    move/from16 v22, v12

    move/from16 v23, v13

    move-object/from16 v24, v15

    move/from16 v25, v16

    move/from16 v26, v17

    .line 377
    :try_start_1
    invoke-direct/range {v19 .. v26}, Lcom/android/launcher2/MenuAppLoader;->updateOrCreateFolder(JIILjava/lang/String;IZ)Lcom/android/launcher2/AppFolderItem;

    goto/16 :goto_2

    .line 381
    .end local v8    # "id":J
    .end local v10    # "folderId":J
    .end local v12    # "screen":I
    .end local v13    # "cell":I
    .end local v14    # "hidden":Z
    .end local v15    # "title":Ljava/lang/String;
    .end local v16    # "color":I
    .end local v17    # "secret":Z
    .end local v31    # "component":Ljava/lang/String;
    .end local v41    # "item":Lcom/android/launcher2/AppItem;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/MenuAppLoader;->mIsSafeMode:Z

    if-nez v5, :cond_b

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 382
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v0, v35

    invoke-static {v5, v0}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    :cond_b
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v54

    .line 389
    .local v54, "t4":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    move-object/from16 v18, v0

    .line 390
    .local v18, "allItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-eqz v5, :cond_d

    .line 391
    const/16 v18, 0x0

    .line 456
    :cond_c
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v56

    .line 458
    .local v56, "t5":J
    const-string v5, "MenuAppLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "loadAllItems; aborted: "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v5, "MenuAppLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "    Query PkgMgr for all main intents: "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v20, v48, v46

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v5, "MenuAppLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "    Create AppItem for all main intents: "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v20, v50, v48

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v19, " / "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v20, v50, v46

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v5, "MenuAppLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "    Query AppOrder database table: "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v20, v52, v50

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v19, " / "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v20, v52, v46

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string v5, "MenuAppLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "    Merge AppOrder and PkgMgr data: "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v20, v54, v52

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v19, " / "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v20, v54, v46

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v5, "MenuAppLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "    Normalize items and update DB: "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v20, v56, v54

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v19, " / "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v20, v56, v46

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    goto/16 :goto_0

    .line 400
    .end local v56    # "t5":J
    :cond_d
    new-instance v33, Ljava/util/HashSet;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashSet;-><init>()V

    .line 401
    .local v33, "created":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/launcher2/AppItem;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_e
    :goto_7
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/launcher2/AppItem;

    .line 402
    .restart local v41    # "item":Lcom/android/launcher2/AppItem;
    move-object/from16 v0, v41

    iget-boolean v5, v0, Lcom/android/launcher2/AppItem;->mDirty:Z

    if-eqz v5, :cond_e

    move-object/from16 v0, v41

    iget-object v5, v0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_e

    .line 403
    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 411
    .end local v41    # "item":Lcom/android/launcher2/AppItem;
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v43

    .line 412
    .local v43, "provider":Lcom/android/launcher2/LauncherProvider;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_10
    :goto_8
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/launcher2/AppItem;

    .line 413
    .restart local v41    # "item":Lcom/android/launcher2/AppItem;
    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/android/launcher2/AppItem;->mId:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v5, v20, v22

    if-nez v5, :cond_10

    if-eqz v43, :cond_10

    .line 414
    invoke-virtual/range {v43 .. v43}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/launcher2/AppItem;->mId:J

    .line 415
    const/4 v5, 0x1

    move-object/from16 v0, v41

    iput-boolean v5, v0, Lcom/android/launcher2/AppItem;->mDirty:Z

    .line 416
    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/android/launcher2/AppItem;->mId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 423
    .end local v41    # "item":Lcom/android/launcher2/AppItem;
    :cond_11
    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    sget-object v6, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v6, v1}, Lcom/android/launcher2/MenuAppModel;->normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;

    .line 427
    new-instance v60, Ljava/util/ArrayList;

    invoke-direct/range {v60 .. v60}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v60, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_12
    :goto_9
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/launcher2/AppItem;

    .line 429
    .restart local v41    # "item":Lcom/android/launcher2/AppItem;
    move-object/from16 v0, v41

    iget-boolean v5, v0, Lcom/android/launcher2/AppItem;->mDirty:Z

    if-eqz v5, :cond_12

    .line 430
    new-instance v59, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct/range {v59 .. v59}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 431
    .local v59, "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 432
    move-object/from16 v0, v41

    iget-object v5, v0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_13

    .line 433
    const/4 v5, 0x0

    move-object/from16 v0, v59

    iput v5, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 442
    :goto_a
    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/android/launcher2/AppItem;->mId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v59

    iput-wide v0, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 443
    move-object/from16 v0, v41

    iget-object v5, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v5, :cond_16

    move-object/from16 v0, v41

    iget-object v5, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v0, v5, Lcom/android/launcher2/AppFolderItem;->mId:J

    move-wide/from16 v20, v0

    :goto_b
    move-wide/from16 v0, v20

    move-object/from16 v2, v59

    iput-wide v0, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    .line 444
    move-object/from16 v0, v41

    iget v5, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    move-object/from16 v0, v59

    iput v5, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    .line 445
    move-object/from16 v0, v41

    iget v5, v0, Lcom/android/launcher2/AppItem;->mCell:I

    move-object/from16 v0, v59

    iput v5, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    .line 446
    move-object/from16 v0, v41

    iget-boolean v5, v0, Lcom/android/launcher2/AppItem;->mHidden:Z

    move-object/from16 v0, v59

    iput-boolean v5, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    .line 447
    move-object/from16 v0, v41

    iget-object v5, v0, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v59

    iput-object v5, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 448
    move-object/from16 v0, v41

    iget-boolean v5, v0, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    move-object/from16 v0, v59

    iput-boolean v5, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    .line 449
    const/4 v5, 0x0

    move-object/from16 v0, v41

    iput-boolean v5, v0, Lcom/android/launcher2/AppItem;->mDirty:Z

    .line 450
    move-object/from16 v0, v60

    move-object/from16 v1, v59

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 435
    :cond_13
    const/4 v5, 0x3

    move-object/from16 v0, v59

    iput v5, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 436
    move-object/from16 v0, v41

    iget-object v5, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v0, v59

    iput-object v5, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    goto :goto_a

    .line 439
    :cond_14
    move-object/from16 v0, v41

    iget-object v5, v0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_15

    const/4 v5, 0x4

    :goto_c
    move-object/from16 v0, v59

    iput v5, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    goto :goto_a

    :cond_15
    const/4 v5, 0x1

    goto :goto_c

    .line 443
    :cond_16
    const-wide/16 v20, -0x1

    goto :goto_b

    .line 453
    .end local v41    # "item":Lcom/android/launcher2/AppItem;
    .end local v59    # "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_17
    invoke-interface/range {v60 .. v60}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 454
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v0, v60

    invoke-static {v5, v0}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    goto/16 :goto_6
.end method

.method refreshAllApps()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 475
    .local v4, "t0":J
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v9, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iput-boolean v11, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    .line 477
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 478
    .local v2, "item":Lcom/android/launcher2/AppItem;
    iget v12, v2, Lcom/android/launcher2/AppItem;->mIconResId:I

    if-nez v12, :cond_1

    iget v12, v2, Lcom/android/launcher2/AppItem;->mTitleResId:I

    if-eqz v12, :cond_2

    .line 479
    :cond_1
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v13, v2, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object v13, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 480
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v13, v2, Lcom/android/launcher2/AppItem;->mIconResId:I

    iput v13, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    .line 481
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v3, v2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iput-object v3, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    .line 482
    .local v3, "prevTitle":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v13, v2, Lcom/android/launcher2/AppItem;->mTitleResId:I

    iput v13, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    .line 483
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v13, v2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v14, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher2/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    .line 484
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v12, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v12, v2, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 485
    const/4 v12, 0x0

    iput-object v12, v2, Lcom/android/launcher2/AppItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 486
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v12, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v12, v2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    .line 488
    if-eqz v3, :cond_6

    .line 489
    iget-object v12, v2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    move v0, v10

    .line 493
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 494
    new-instance v8, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v8}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 495
    .local v8, "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v12, 0x2

    iput v12, v8, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 496
    iget-wide v12, v2, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v12, v8, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 497
    iget-object v12, v2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iput-object v12, v8, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 498
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    .end local v0    # "changed":Z
    .end local v3    # "prevTitle":Ljava/lang/String;
    .end local v8    # "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_2
    iget-boolean v12, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-eqz v12, :cond_0

    .line 504
    .end local v2    # "item":Lcom/android/launcher2/AppItem;
    :cond_3
    iget-boolean v10, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-nez v10, :cond_4

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 505
    iget-object v10, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v10, v9}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 508
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 509
    .local v6, "t1":J
    const-string v10, "MenuAppLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "refreshAllApps; aborted: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", refresh time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v6, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void

    .end local v6    # "t1":J
    .restart local v2    # "item":Lcom/android/launcher2/AppItem;
    .restart local v3    # "prevTitle":Ljava/lang/String;
    :cond_5
    move v0, v11

    .line 489
    goto :goto_0

    .line 491
    :cond_6
    iget-object v12, v2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v12, :cond_7

    move v0, v10

    .restart local v0    # "changed":Z
    :goto_1
    goto :goto_0

    .end local v0    # "changed":Z
    :cond_7
    move v0, v11

    goto :goto_1
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 521
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v2, "delApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher2/AppItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 523
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppItem;

    .line 524
    .local v4, "item":Lcom/android/launcher2/AppItem;
    iget-object v0, v4, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    .line 525
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 526
    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 529
    new-instance v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v1}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 530
    .local v1, "delApp":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v5, 0x5

    iput v5, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 531
    iget-wide v6, v4, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v6, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 532
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 535
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "delApp":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .end local v4    # "item":Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 536
    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v5, v2}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 537
    :cond_2
    return-void
.end method

.method updateBadgeCounts(Ljava/util/Map;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    .local p1, "badgeCounts":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 576
    .local v4, "updated":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 577
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 578
    .local v0, "appItem":Lcom/android/launcher2/AppItem;
    if-eqz v0, :cond_0

    .line 579
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 580
    .local v3, "newCount":I
    iget v5, v0, Lcom/android/launcher2/AppItem;->mBadgeCount:I

    if-eq v5, v3, :cond_0

    .line 581
    iput v3, v0, Lcom/android/launcher2/AppItem;->mBadgeCount:I

    .line 582
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 586
    .end local v0    # "appItem":Lcom/android/launcher2/AppItem;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    .end local v3    # "newCount":I
    :cond_1
    return-object v4
.end method

.method public updatePackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppLoader;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 739
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppLoader;->removePackage(Ljava/lang/String;)V

    .line 744
    :goto_0
    return-void

    .line 742
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppLoader;->updatePackageActivities(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method updatePackageAvailability(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "available"    # Z

    .prologue
    .line 817
    if-eqz p2, :cond_1

    .line 818
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppLoader;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 819
    .local v2, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 820
    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/MenuAppLoader;->updatePackageActivities(Ljava/lang/String;Ljava/util/List;)V

    .line 834
    .end local v2    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    return-void

    .line 824
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 825
    .local v1, "item":Lcom/android/launcher2/AppItem;
    iget-boolean v3, v1, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 827
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    .line 828
    iget-object v3, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v3}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 829
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/launcher2/AppItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 830
    iget-object v3, p0, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
