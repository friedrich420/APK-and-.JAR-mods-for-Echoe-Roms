.class public Lcom/android/launcher2/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherModel$12;,
        Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;,
        Lcom/android/launcher2/LauncherModel$LoaderTask;,
        Lcom/android/launcher2/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field public static final BACKUP_RESTORE_PREF_NAME:Ljava/lang/String; = "ExtraStuff"

.field protected static final DEBUGGABLE:Z

.field protected static final DEBUG_LOADERS:Z = true

.field protected static final ITEMS_CHUNK:I = 0x6

.field private static final TAG:Ljava/lang/String; = "Launcher.Model"

.field public static UseLauncherHighPriority:Z

.field static final sAddedHomeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field protected static sCellCountX:I

.field protected static sCellCountY:I

.field protected static final sDbIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation
.end field

.field protected static final sHomeFolders:Ljava/util/HashMap;
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

.field protected static final sHomeItemIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sHomeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field static final sSamsungWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/SamsungWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field static final sSurfaceWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/SurfaceWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sWorker:Landroid/os/Handler;

.field protected static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private isLauncherProviderLoaded:Z

.field protected volatile mAllAppsLoaded:Z

.field protected final mApp:Lcom/android/launcher2/LauncherApplication;

.field private final mAppsCanBeOnExternalStorage:Z

.field private final mBadgeCache:Lcom/android/launcher2/BadgeCache;

.field protected volatile mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mConfigMccWhenLoaded:I

.field private volatile mConfigMncWhenLoaded:I

.field protected mHandler:Lcom/android/launcher2/DeferredHandler;

.field private final mHomeLoader:Lcom/android/launcher2/HomeLoader;

.field private volatile mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field private volatile mLocaleWhenLoaded:Ljava/lang/String;

.field protected final mLock:Ljava/lang/Object;

.field protected final mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

.field protected final mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field protected volatile mRefreshRequired:Z

.field protected volatile mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    .line 105
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 107
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 109
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 111
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LAUNCHER_BOOT_HIGHPRIORITY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherModel;->UseLauncherHighPriority:Z

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sAddedHomeItems:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;)V
    .locals 2
    .param p1, "app"    # Lcom/android/launcher2/LauncherApplication;
    .param p2, "pkgResCache"    # Lcom/android/launcher2/PkgResCache;

    .prologue
    const/4 v0, 0x0

    .line 214
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 103
    new-instance v1, Lcom/android/launcher2/DeferredHandler;

    invoke-direct {v1}, Lcom/android/launcher2/DeferredHandler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    .line 115
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    .line 2384
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->isLauncherProviderLoaded:Z

    .line 215
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    .line 216
    new-instance v0, Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1}, Lcom/android/launcher2/BadgeCache;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    .line 217
    new-instance v0, Lcom/android/launcher2/HomeLoader;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher2/HomeLoader;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;

    .line 218
    new-instance v0, Lcom/android/launcher2/MenuAppLoader;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher2/MenuAppLoader;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    .line 219
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    .line 220
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 221
    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/PkgResCache;)V
    .locals 2
    .param p1, "app"    # Lcom/android/launcher2/LauncherApplication;
    .param p2, "pkgResCache"    # Lcom/android/launcher2/PkgResCache;
    .param p3, "pkgResCacheForMenu"    # Lcom/android/launcher2/PkgResCache;

    .prologue
    const/4 v0, 0x0

    .line 224
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 103
    new-instance v1, Lcom/android/launcher2/DeferredHandler;

    invoke-direct {v1}, Lcom/android/launcher2/DeferredHandler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    .line 115
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    .line 2384
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->isLauncherProviderLoaded:Z

    .line 225
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    .line 226
    new-instance v0, Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1}, Lcom/android/launcher2/BadgeCache;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    .line 227
    new-instance v0, Lcom/android/launcher2/HomeLoader;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher2/HomeLoader;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;

    .line 228
    new-instance v0, Lcom/android/launcher2/MenuAppLoader;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1, p3, v1}, Lcom/android/launcher2/MenuAppLoader;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    .line 229
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    .line 230
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 231
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$LoaderTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$LoaderTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;
    .param p1, "x1"    # Lcom/android/launcher2/LauncherModel$LoaderTask;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->isLauncherProviderLoaded:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->isLauncherProviderLoaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/HomeLoader;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/BadgeCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    return-object v0
.end method

.method private addHomeItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;)Z
    .locals 9
    .param p1, "mHomeView"    # Lcom/android/launcher2/HomeView;
    .param p2, "item"    # Lcom/android/launcher2/HomeItem;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 323
    const/4 v1, 0x1

    .line 324
    .local v1, "result":Z
    iget-wide v2, p2, Lcom/android/launcher2/HomeItem;->container:J

    iget v4, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 325
    .local v0, "cellHome":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    .line 326
    iget-wide v2, p2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move-object v2, v0

    .line 327
    check-cast v2, Lcom/android/launcher2/CellLayoutHotseat;

    iget v3, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v3, v2, Lcom/android/launcher2/CellLayoutHotseat;->mTargetCell:I

    move-object v2, v0

    .line 328
    check-cast v2, Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2, p2}, Lcom/android/launcher2/CellLayoutHotseat;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    .line 329
    check-cast v0, Lcom/android/launcher2/CellLayoutHotseat;

    .end local v0    # "cellHome":Lcom/android/launcher2/CellLayout;
    iput v6, v0, Lcom/android/launcher2/CellLayoutHotseat;->mTargetCell:I

    .line 338
    :cond_0
    :goto_0
    return v1

    .line 331
    .restart local v0    # "cellHome":Lcom/android/launcher2/CellLayout;
    :cond_1
    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget v3, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    aput v3, v2, v7

    .line 332
    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    iget v3, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    aput v3, v2, v8

    .line 333
    invoke-virtual {v0, p2}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    .line 334
    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    aput v6, v2, v7

    .line 335
    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    aput v6, v2, v8

    goto :goto_0
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher2/HomeItem;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I
    .param p7, "notify"    # Z

    .prologue
    .line 783
    iput-wide p2, p1, Lcom/android/launcher2/HomeItem;->container:J

    .line 784
    move/from16 v0, p4

    iput v0, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 785
    move/from16 v0, p5

    iput v0, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 786
    move/from16 v0, p6

    iput v0, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 789
    const-wide/16 v4, -0x65

    cmp-long v3, p2, v4

    if-nez v3, :cond_0

    if-gez p4, :cond_0

    instance-of v3, p0, Lcom/android/launcher2/Launcher;

    if-eqz v3, :cond_0

    move-object v3, p0

    .line 791
    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v3

    iput v3, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 792
    const/4 v3, -0x1

    iput v3, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 793
    const/4 v3, -0x1

    iput v3, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 796
    :cond_0
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 797
    .local v11, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 798
    .local v9, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1, v11}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 800
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    .line 801
    .local v2, "app":Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherProvider;->generateNewHomeId()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/launcher2/HomeItem;->mId:J

    .line 802
    const-string v3, "_id"

    iget-wide v4, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 803
    iget v3, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v4, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {p1, v11, v3, v4}, Lcom/android/launcher2/HomeItem;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    .line 805
    iget-object v3, p1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_1

    .line 806
    sget-object v4, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    iget-wide v6, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v3, p1

    check-cast v3, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    :cond_1
    iget-object v3, p1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_2

    iget-wide v4, p1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x64

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 811
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sAddedHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    :cond_2
    iget v3, p1, Lcom/android/launcher2/HomeItem;->mFestivalType:I

    if-lez v3, :cond_3

    .line 815
    const-string v3, "festival"

    iget v4, p1, Lcom/android/launcher2/HomeItem;->mFestivalType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 819
    :cond_3
    new-instance v10, Lcom/android/launcher2/LauncherModel$7;

    move/from16 v0, p7

    invoke-direct {v10, v9, v0, v11, p1}, Lcom/android/launcher2/LauncherModel$7;-><init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/android/launcher2/HomeItem;)V

    .line 857
    .local v10, "r":Ljava/lang/Runnable;
    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 858
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    const-string v4, "WGAD"

    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 859
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    const-string v4, "WGCT"

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherModel;->WidgetCount()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 863
    :cond_4
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 864
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    .line 869
    :goto_0
    return-void

    .line 866
    :cond_5
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v3, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static addItemToItemList(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher2/HomeItem;

    .prologue
    .line 873
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: HomeItem id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") passed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "addItemToDatabase already exists."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    .end local p1    # "item":Lcom/android/launcher2/HomeItem;
    :goto_0
    :pswitch_0
    return-void

    .line 878
    .restart local p1    # "item":Lcom/android/launcher2/HomeItem;
    :cond_0
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    sget-object v0, Lcom/android/launcher2/LauncherModel$12;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 881
    :pswitch_1
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    sget-object v0, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast p1, Lcom/android/launcher2/HomeFolderItem;

    .end local p1    # "item":Lcom/android/launcher2/HomeItem;
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 887
    .restart local p1    # "item":Lcom/android/launcher2/HomeItem;
    :pswitch_2
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher2/HomeWidgetItem;

    .end local p1    # "item":Lcom/android/launcher2/HomeItem;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 890
    .restart local p1    # "item":Lcom/android/launcher2/HomeItem;
    :pswitch_3
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher2/SamsungWidgetItem;

    .end local p1    # "item":Lcom/android/launcher2/HomeItem;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 893
    .restart local p1    # "item":Lcom/android/launcher2/HomeItem;
    :pswitch_4
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local p1    # "item":Lcom/android/launcher2/HomeItem;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 879
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher2/HomeItem;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I
    .param p7, "spanX"    # I
    .param p8, "spanY"    # I

    .prologue
    .line 459
    iget-wide v0, p1, Lcom/android/launcher2/HomeItem;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 461
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 466
    :goto_0
    return-void

    .line 464
    :cond_0
    const-string v9, "moveItemInDatabase"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIIILjava/lang/String;)V

    goto :goto_0
.end method

.method private changeHomeItem(Lcom/android/launcher2/HomeView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "mHomeView"    # Lcom/android/launcher2/HomeView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/HomeView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p2, "deleteHomeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    .local p3, "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 295
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 296
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/HomeItem;

    .line 297
    .local v9, "rItem":Lcom/android/launcher2/HomeItem;
    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 298
    .local v1, "aItem":Lcom/android/launcher2/HomeItem;
    invoke-direct {p0, p1, v9}, Lcom/android/launcher2/LauncherModel;->removeHomeItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 301
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/LauncherModel;->addHomeItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {p1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget v4, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v5, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v6, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 295
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 307
    .end local v1    # "aItem":Lcom/android/launcher2/HomeItem;
    .end local v8    # "i":I
    .end local v9    # "rItem":Lcom/android/launcher2/HomeItem;
    :cond_2
    return-void
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher2/HomeItem;

    .prologue
    const/4 v6, 0x0

    .line 1010
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1012
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v2, v3, v6}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v8

    .line 1014
    .local v8, "uriToDelete":Landroid/net/Uri;
    iget-object v1, p1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_0

    .line 1015
    sget-object v1, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    :cond_0
    new-instance v7, Lcom/android/launcher2/LauncherModel$9;

    invoke-direct {v7, p1, v0, v8}, Lcom/android/launcher2/LauncherModel$9;-><init>(Lcom/android/launcher2/HomeItem;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1055
    .local v7, "r":Ljava/lang/Runnable;
    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1056
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    const-string v2, "WGDT"

    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1057
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    const-string v2, "WGCT"

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherModel;->WidgetCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1061
    :cond_1
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1062
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 1066
    :goto_0
    return-void

    .line 1064
    :cond_2
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 931
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 933
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/launcher2/LauncherModel$8;

    invoke-direct {v1, p1, v0, p0, p2}, Lcom/android/launcher2/LauncherModel$8;-><init>(Ljava/util/List;Landroid/content/ContentResolver;Landroid/content/Context;Z)V

    .line 996
    .local v1, "r":Ljava/lang/Runnable;
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 997
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1001
    :goto_0
    return-void

    .line 999
    :cond_0
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private dynamicCscToggleEasyMode(ZZILandroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "dynamicModeSwitch"    # Z
    .param p2, "fromSettings"    # Z
    .param p3, "basicEasymode"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "theme_install_status"    # Ljava/lang/String;

    .prologue
    .line 2389
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dynamicCscToggleEasyMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fromSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    sget-object v7, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher2/LauncherModel$10;

    move-object v1, p0

    move v2, p3

    move v3, p2

    move v4, p1

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel$10;-><init>(Lcom/android/launcher2/LauncherModel;IZZLjava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2430
    return-void
.end method

.method private enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V
    .locals 1
    .param p1, "task"    # Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    .prologue
    .line 2380
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2381
    return-void
.end method

.method protected static findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;J)",
            "Lcom/android/launcher2/HomeFolderItem;"
        }
    .end annotation

    .prologue
    .line 3285
    .local p0, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    .line 3286
    .local v0, "folderInfo":Lcom/android/launcher2/HomeFolderItem;
    if-nez v0, :cond_0

    .line 3288
    new-instance v0, Lcom/android/launcher2/HomeFolderItem;

    .end local v0    # "folderInfo":Lcom/android/launcher2/HomeFolderItem;
    invoke-direct {v0}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    .line 3289
    .restart local v0    # "folderInfo":Lcom/android/launcher2/HomeFolderItem;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3291
    :cond_0
    return-object v0
.end method

.method static getCellCountX()I
    .locals 1

    .prologue
    .line 909
    sget v0, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    return v0
.end method

.method static getCellCountY()I
    .locals 1

    .prologue
    .line 913
    sget v0, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    return v0
.end method

.method static getCellLayoutChildId(JIIIII)I
    .locals 2
    .param p0, "container"    # J
    .param p2, "screen"    # I
    .param p3, "localCellX"    # I
    .param p4, "localCellY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I

    .prologue
    .line 904
    long-to-int v0, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v0}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "iconIndex"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 3131
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 3133
    .local v0, "data":[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3136
    :goto_0
    return-object v2

    .line 3135
    :catch_0
    move-exception v1

    .line 3136
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static getItemsInLocalCoordinates(Landroid/content/Context;JI)Ljava/util/ArrayList;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # J
    .param p3, "screen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 695
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 696
    .local v13, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 697
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "cellX"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "cellY"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "spanX"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "spanY"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "secret"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "festival"

    aput-object v6, v4, v5

    const-string v5, "container=? and screen=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 709
    .local v8, "c":Landroid/database/Cursor;
    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 710
    .local v9, "cellXIndex":I
    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 711
    .local v10, "cellYIndex":I
    const-string v3, "spanX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 712
    .local v15, "spanXIndex":I
    const-string v3, "spanY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 713
    .local v16, "spanYIndex":I
    const-string v3, "secret"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 716
    .local v14, "secretIndex":I
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 717
    new-instance v12, Lcom/android/launcher2/HomeItem;

    invoke-direct {v12}, Lcom/android/launcher2/HomeItem;-><init>()V

    .line 718
    .local v12, "item":Lcom/android/launcher2/HomeItem;
    move-wide/from16 v0, p1

    iput-wide v0, v12, Lcom/android/launcher2/HomeItem;->container:J

    .line 719
    move/from16 v0, p3

    iput v0, v12, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 720
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 721
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 722
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 723
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 724
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 725
    const/4 v3, 0x1

    iput-boolean v3, v12, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    .line 731
    :cond_0
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 733
    .end local v12    # "item":Lcom/android/launcher2/HomeItem;
    :catch_0
    move-exception v11

    .line 734
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 736
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 739
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v13

    .line 736
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private isKnoxShortcut(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2891
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2892
    .local v0, "componentName":Landroid/content/ComponentName;
    const-string v2, "shortcutIntent"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2894
    .local v1, "shortcutIntent":Ljava/lang/String;
    const-string v2, "com.samsung.knox.rcp.components"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.samsung.knox.rcp.components.KnoxShortcutActivity"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const-string v2, "persona_shortcut://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2899
    sget-boolean v2, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v2, :cond_0

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "knoxShortcut. will not remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    :cond_0
    const/4 v2, 0x1

    .line 2902
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static loadShortcutMovie(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher2/HomeShortcutItem;

    .prologue
    .line 2859
    iget-object v5, p1, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    .line 2860
    .local v5, "movieUri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 2862
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 2863
    .local v3, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x400

    invoke-direct {v6, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2865
    .local v6, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    :try_start_1
    new-array v1, v7, [B

    .line 2867
    .local v1, "buffer":[B
    if-eqz v3, :cond_2

    .line 2868
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "len":I
    if-ltz v4, :cond_2

    .line 2869
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2875
    .end local v1    # "buffer":[B
    .end local v4    # "len":I
    :catchall_0
    move-exception v7

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2877
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v6    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 2878
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-boolean v7, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v7, :cond_0

    const-string v7, "Launcher.Model"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open move Uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2884
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    iget-object v7, p1, Lcom/android/launcher2/HomeShortcutItem;->mIconMovie:Landroid/graphics/Movie;

    if-nez v7, :cond_1

    .line 2885
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    .line 2887
    :cond_1
    return-void

    .line 2872
    .restart local v1    # "buffer":[B
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 2873
    .local v0, "array":[B
    const/4 v7, 0x0

    array-length v8, v0

    invoke-static {v0, v7, v8}, Landroid/graphics/Movie;->decodeByteArray([BII)Landroid/graphics/Movie;

    move-result-object v7

    iput-object v7, p1, Lcom/android/launcher2/HomeShortcutItem;->mIconMovie:Landroid/graphics/Movie;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2875
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2879
    .end local v0    # "array":[B
    .end local v1    # "buffer":[B
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v6    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    .line 2880
    .local v2, "e":Ljava/io/IOException;
    sget-boolean v7, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v7, :cond_0

    const-string v7, "Launcher.Model"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException while accessing movie Uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIIILjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher2/HomeItem;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I
    .param p7, "spanX"    # I
    .param p8, "spanY"    # I
    .param p9, "callingFunction"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 517
    iput-wide p2, p1, Lcom/android/launcher2/HomeItem;->container:J

    .line 518
    iput p4, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 519
    iput p5, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 520
    iput p6, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 521
    iput p7, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 522
    iput p8, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 526
    const-wide/16 v2, -0x65

    cmp-long v1, p2, v2

    if-nez v1, :cond_0

    if-gez p4, :cond_0

    instance-of v1, p0, Lcom/android/launcher2/Launcher;

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 528
    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v1

    iput v1, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 529
    iput v4, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 530
    iput v4, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 533
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 534
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 535
    const-string v1, "cellX"

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 536
    const-string v1, "cellY"

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 537
    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    const-string v1, "spanX"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 539
    const-string v1, "spanY"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 542
    :cond_1
    const-string v1, "screen"

    iget v2, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 543
    const-string v2, "secret"

    iget-boolean v1, p1, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    const-string v1, "festival"

    iget v2, p1, Lcom/android/launcher2/HomeItem;->mFestivalType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 547
    invoke-static {p0, v0, p1, p9}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V

    .line 548
    return-void

    .line 543
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 588
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 589
    .local v4, "newPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherSettings$FavoritePos;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 590
    .local v2, "item":Lcom/android/launcher2/HomeItem;
    new-instance v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    invoke-direct {v3}, Lcom/android/launcher2/LauncherSettings$FavoritePos;-><init>()V

    .line 591
    .local v3, "itemPos":Lcom/android/launcher2/LauncherSettings$FavoritePos;
    iget-wide v6, v2, Lcom/android/launcher2/HomeItem;->mId:J

    iput-wide v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    .line 592
    iget-wide v6, v2, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->container:J

    .line 593
    iget v6, v2, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->screen:I

    .line 594
    iget v6, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellX:I

    .line 595
    iget v6, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellY:I

    .line 596
    iget-boolean v6, v2, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    iput v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->secret:I

    .line 597
    iget v6, v2, Lcom/android/launcher2/HomeItem;->mFestivalType:I

    iput v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->festival:I

    .line 599
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 596
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 601
    .end local v2    # "item":Lcom/android/launcher2/HomeItem;
    .end local v3    # "itemPos":Lcom/android/launcher2/LauncherSettings$FavoritePos;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 602
    .local v0, "app":Lcom/android/launcher2/LauncherApplication;
    new-instance v5, Lcom/android/launcher2/LauncherModel$5;

    invoke-direct {v5, v0, v4}, Lcom/android/launcher2/LauncherModel$5;-><init>(Lcom/android/launcher2/LauncherApplication;Ljava/util/ArrayList;)V

    .line 626
    .local v5, "r":Ljava/lang/Runnable;
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 627
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 630
    :goto_2
    return-void

    .line 629
    :cond_2
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method private removeHomeItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;)Z
    .locals 6
    .param p1, "mHomeView"    # Lcom/android/launcher2/HomeView;
    .param p2, "item"    # Lcom/android/launcher2/HomeItem;

    .prologue
    .line 310
    const/4 v1, 0x1

    .line 311
    .local v1, "result":Z
    iget-wide v2, p2, Lcom/android/launcher2/HomeItem;->container:J

    iget v4, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 312
    .local v0, "cellHome":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    .line 313
    iget-wide v2, p2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 314
    check-cast v0, Lcom/android/launcher2/CellLayoutHotseat;

    .end local v0    # "cellHome":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p2}, Lcom/android/launcher2/CellLayoutHotseat;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    .line 319
    :cond_0
    :goto_0
    return v1

    .line 316
    .restart local v0    # "cellHome":Lcom/android/launcher2/CellLayout;
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    goto :goto_0
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 678
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 679
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "title=? and intent=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 682
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 683
    .local v7, "result":Z
    if-eqz v6, :cond_0

    .line 684
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    .line 685
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 687
    :cond_0
    return v7
.end method

.method private startLoader(ZZ)V
    .locals 3
    .param p1, "isLaunching"    # Z
    .param p2, "forceRefresh"    # Z

    .prologue
    .line 1378
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLoader. isLaunching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; forceRefresh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1383
    if-eqz p2, :cond_0

    .line 1384
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1391
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->stopLoaderLocked()Z

    move-result v0

    or-int/2addr p1, v0

    .line 1392
    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/LauncherModel$LoaderTask;-><init>(Lcom/android/launcher2/LauncherModel;Z)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 1393
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 1394
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1396
    :cond_1
    monitor-exit v1

    .line 1397
    return-void

    .line 1396
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static updateAppItems(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 564
    .local p1, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    .line 566
    .local v0, "provider":Lcom/android/launcher2/LauncherProvider;
    new-instance v1, Lcom/android/launcher2/LauncherModel$4;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher2/LauncherModel$4;-><init>(Lcom/android/launcher2/LauncherProvider;Ljava/util/List;)V

    .line 573
    .local v1, "r":Ljava/lang/Runnable;
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 574
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 577
    :goto_0
    return-void

    .line 576
    :cond_0
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 642
    const-string v4, "container"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 643
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot change container field for item id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 646
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, p2, v4}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v3

    .line 647
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 649
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/launcher2/LauncherModel$6;

    invoke-direct {v2, v0, v3, p3}, Lcom/android/launcher2/LauncherModel$6;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 657
    .local v2, "r":Ljava/lang/Runnable;
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 658
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 661
    :goto_0
    return-void

    .line 660
    :cond_1
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/android/launcher2/HomeItem;

    .prologue
    .line 667
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 668
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p1, v0}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 669
    iget v1, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher2/HomeItem;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    .line 670
    const-string v1, "updateItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method private static updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "item"    # Lcom/android/launcher2/HomeItem;
    .param p3, "callingFunction"    # Ljava/lang/String;

    .prologue
    .line 470
    iget-wide v4, p2, Lcom/android/launcher2/HomeItem;->mId:J

    .line 472
    .local v4, "itemId":J
    const/4 v3, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    .line 473
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 475
    .local v1, "cr":Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/launcher2/LauncherModel$3;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel$3;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;JLcom/android/launcher2/HomeItem;Ljava/lang/String;)V

    .line 505
    .local v0, "r":Ljava/lang/Runnable;
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    if-ne v3, v6, :cond_0

    .line 506
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_0
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static updateWorkspaceLayoutCells(II)V
    .locals 0
    .param p0, "shortAxisCellCount"    # I
    .param p1, "longAxisCellCount"    # I

    .prologue
    .line 921
    sput p0, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    .line 922
    sput p1, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    .line 923
    return-void
.end method


# virtual methods
.method public ChangeCallapp(Lcom/android/launcher2/HomeView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "mHomeView"    # Lcom/android/launcher2/HomeView;
    .param p2, "oldItemPkg"    # Ljava/lang/String;
    .param p3, "oldItemCls"    # Ljava/lang/String;
    .param p4, "newItemPkg"    # Ljava/lang/String;
    .param p5, "newItemCls"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v2, "addHomeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v4, "deleteHomeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    const/4 v3, 0x0

    .line 254
    .local v3, "defaultHomeCheck":Z
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 255
    .local v8, "res":Landroid/content/res/Resources;
    const v10, 0x7f0b0009

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 258
    .local v9, "sHasHotseat":Z
    if-eqz v9, :cond_1

    .line 259
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    sget-object v10, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 260
    sget-object v10, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/HomeItem;

    .line 261
    .local v6, "mItem":Lcom/android/launcher2/HomeItem;
    iget-wide v10, v6, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v12, -0x65

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 265
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, p1, v6, v0, v1}, Lcom/android/launcher2/LauncherModel;->setCallAppItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher2/HomeItem;

    move-result-object v7

    .line 266
    .local v7, "newItem":Lcom/android/launcher2/HomeItem;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    const/4 v3, 0x1

    .line 259
    .end local v7    # "newItem":Lcom/android/launcher2/HomeItem;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 272
    .end local v5    # "i":I
    .end local v6    # "mItem":Lcom/android/launcher2/HomeItem;
    :cond_1
    const/4 v3, 0x1

    .line 275
    :cond_2
    if-eqz v3, :cond_3

    .line 276
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    sget-object v10, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_3

    .line 277
    sget-object v10, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/HomeItem;

    .line 278
    .restart local v6    # "mItem":Lcom/android/launcher2/HomeItem;
    iget-wide v10, v6, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v12, -0x64

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    iget v10, v6, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v11

    if-ne v10, v11, :cond_4

    invoke-virtual {v6}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v6}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v6}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 283
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, p1, v6, v0, v1}, Lcom/android/launcher2/LauncherModel;->setCallAppItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher2/HomeItem;

    move-result-object v7

    .line 284
    .restart local v7    # "newItem":Lcom/android/launcher2/HomeItem;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .end local v5    # "i":I
    .end local v6    # "mItem":Lcom/android/launcher2/HomeItem;
    .end local v7    # "newItem":Lcom/android/launcher2/HomeItem;
    :cond_3
    invoke-direct {p0, p1, v4, v2}, Lcom/android/launcher2/LauncherModel;->changeHomeItem(Lcom/android/launcher2/HomeView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 291
    return-void

    .line 276
    .restart local v5    # "i":I
    .restart local v6    # "mItem":Lcom/android/launcher2/HomeItem;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public ChangeTphoneMode(Lcom/android/launcher2/HomeView;)V
    .locals 12
    .param p1, "mHomeView"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 235
    const-string v2, "com.android.contacts"

    .line 236
    .local v2, "callItemPkg":Ljava/lang/String;
    const-string v3, "com.android.dialer.DialtactsActivity"

    .line 237
    .local v3, "callItemCls":Ljava/lang/String;
    const-string v4, "com.skt.prod.dialer"

    .line 238
    .local v4, "tcallItemPkg":Ljava/lang/String;
    const-string v5, "com.skt.prod.dialer.activities.main.MainActivity"

    .line 240
    .local v5, "tcallItemCls":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/launcher2/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "skt_phone20_settings"

    const/4 v6, 0x0

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    .line 241
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel;->ChangeCallapp(Lcom/android/launcher2/HomeView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "ChangeTphoneMode"

    const-string v1, "OEM -> T phone app"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return-void

    :cond_0
    move-object v6, p0

    move-object v7, p1

    move-object v8, v4

    move-object v9, v5

    move-object v10, v2

    move-object v11, v3

    .line 244
    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher2/LauncherModel;->ChangeCallapp(Lcom/android/launcher2/HomeView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v0, "ChangeTphoneMode"

    const-string v1, "T -> OEM phone app"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public HomeViewCount()I
    .locals 2

    .prologue
    .line 1320
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public WidgetCount()I
    .locals 2

    .prologue
    .line 1325
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/HomeShortcutItem;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "container"    # J
    .param p5, "screen"    # I
    .param p6, "cellX"    # I
    .param p7, "cellY"    # I
    .param p8, "notify"    # Z

    .prologue
    .line 3142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    .local v1, "info":Lcom/android/launcher2/HomeShortcutItem;
    move-object v0, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 3144
    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 3145
    return-object v1
.end method

.method public dumpState()V
    .locals 4

    .prologue
    .line 3342
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCallbacks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    const-string v1, "Launcher.Model"

    const-string v2, "mMainAppCache.added"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3344
    const-string v1, "Launcher.Model"

    const-string v2, "mMainAppCache.removed"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3345
    const-string v1, "Launcher.Model"

    const-string v2, "mMainAppCache.modified"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3348
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 3349
    .local v0, "loader":Lcom/android/launcher2/LauncherModel$LoaderTask;
    if-eqz v0, :cond_0

    .line 3350
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->dumpState()V

    .line 3354
    :goto_0
    return-void

    .line 3352
    :cond_0
    const-string v1, "Launcher.Model"

    const-string v2, "mLoaderTask=null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;J)",
            "Lcom/android/launcher2/HomeFolderItem;"
        }
    .end annotation

    .prologue
    .line 746
    .local p2, "folderList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 747
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id=? and itemType=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x1

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 753
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 754
    const-string v3, "title"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 755
    .local v14, "titleIndex":I
    const-string v3, "container"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 756
    .local v11, "containerIndex":I
    const-string v3, "screen"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 757
    .local v13, "screenIndex":I
    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 758
    .local v9, "cellXIndex":I
    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 760
    .local v10, "cellYIndex":I
    invoke-static/range {p2 .. p4}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v12

    .line 761
    .local v12, "folderInfo":Lcom/android/launcher2/HomeFolderItem;
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    .line 762
    move-wide/from16 v0, p3

    iput-wide v0, v12, Lcom/android/launcher2/HomeFolderItem;->mId:J

    .line 763
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, v12, Lcom/android/launcher2/HomeFolderItem;->container:J

    .line 764
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    .line 765
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    .line 766
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeFolderItem;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 774
    .end local v9    # "cellXIndex":I
    .end local v10    # "cellYIndex":I
    .end local v11    # "containerIndex":I
    .end local v12    # "folderInfo":Lcom/android/launcher2/HomeFolderItem;
    .end local v13    # "screenIndex":I
    .end local v14    # "titleIndex":I
    :goto_0
    return-object v12

    .line 771
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 774
    const/4 v12, 0x0

    goto :goto_0

    .line 771
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 8
    .param p1, "manager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    .line 2614
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;III)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v0

    return-object v0
.end method

.method getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;III)Lcom/android/launcher2/HomeShortcutItem;
    .locals 14
    .param p1, "manager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "iconIndex"    # I
    .param p6, "titleIndex"    # I
    .param p7, "secretIndex"    # I

    .prologue
    .line 2625
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 2626
    .local v3, "componentName":Landroid/content/ComponentName;
    if-nez v3, :cond_1

    .line 2627
    const/4 v6, 0x0

    .line 2696
    :cond_0
    :goto_0
    return-object v6

    .line 2632
    :cond_1
    const/4 v6, 0x0

    .line 2633
    .local v6, "info":Lcom/android/launcher2/HomeShortcutItem;
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 2647
    .local v10, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v10, :cond_7

    .line 2649
    :try_start_0
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 2653
    .local v9, "pkgName":Ljava/lang/String;
    const/16 v12, 0x2000

    invoke-virtual {p1, v9, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 2655
    .local v8, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2656
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_2

    iget v12, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x40000

    and-int/2addr v12, v13

    if-eqz v12, :cond_2

    .line 2660
    new-instance v7, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v12, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v7, v12}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2661
    .end local v6    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .local v7, "info":Lcom/android/launcher2/HomeShortcutItem;
    if-nez p4, :cond_5

    const/4 v12, 0x0

    :goto_1
    :try_start_1
    iput-object v12, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2662
    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v12}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 2683
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .end local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "pkgName":Ljava/lang/String;
    .restart local v6    # "info":Lcom/android/launcher2/HomeShortcutItem;
    :cond_2
    :goto_2
    if-eqz v6, :cond_0

    .line 2685
    iget-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v12, :cond_3

    .line 2686
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2687
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    .line 2690
    :cond_3
    iget-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v12, :cond_4

    .line 2691
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2694
    :cond_4
    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-virtual {v12, v3}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v12

    iput v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    goto :goto_0

    .line 2661
    .end local v6    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .restart local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v9    # "pkgName":Ljava/lang/String;
    :cond_5
    :try_start_2
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v12

    goto :goto_1

    .line 2664
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .end local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "pkgName":Ljava/lang/String;
    .restart local v6    # "info":Lcom/android/launcher2/HomeShortcutItem;
    :catch_0
    move-exception v5

    .line 2668
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    sget-boolean v12, Lcom/android/launcher2/Launcher;->isHomescreenRestoring:Z

    if-eqz v12, :cond_2

    .line 2669
    new-instance v6, Lcom/android/launcher2/HomeShortcutItem;

    .end local v6    # "info":Lcom/android/launcher2/HomeShortcutItem;
    sget-object v12, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v6, v12}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 2670
    .restart local v6    # "info":Lcom/android/launcher2/HomeShortcutItem;
    if-nez p4, :cond_6

    const/4 v12, 0x0

    :goto_4
    iput-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2671
    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v12}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020108

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2672
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v4, v12}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 2670
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    .line 2677
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_7
    new-instance v6, Lcom/android/launcher2/HomeShortcutItem;

    .end local v6    # "info":Lcom/android/launcher2/HomeShortcutItem;
    sget-object v12, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v6, v12}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 2678
    .restart local v6    # "info":Lcom/android/launcher2/HomeShortcutItem;
    new-instance v11, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v11}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 2679
    .local v11, "titleAndIcon":Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v12, v11, v10}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ResolveInfo;)V

    .line 2680
    iget-object v12, v11, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2681
    iget-object v12, v11, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v12, v6, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    goto :goto_2

    .line 2664
    .end local v6    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .end local v11    # "titleAndIcon":Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .restart local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v9    # "pkgName":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v6, v7

    .end local v7    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .restart local v6    # "info":Lcom/android/launcher2/HomeShortcutItem;
    goto :goto_3
.end method

.method protected getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 33
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "iconTypeIndex"    # I
    .param p4, "iconPackageIndex"    # I
    .param p5, "iconResourceIndex"    # I
    .param p6, "iconIndex"    # I
    .param p7, "titleIndex"    # I
    .param p8, "manager"    # Landroid/content/pm/PackageManager;
    .param p9, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2706
    const/4 v12, 0x0

    .line 2707
    .local v12, "icon":Landroid/graphics/Bitmap;
    const/16 v29, 0x0

    .line 2712
    .local v29, "title":Ljava/lang/String;
    invoke-virtual/range {p9 .. p9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 2713
    .local v8, "cn":Landroid/content/ComponentName;
    if-eqz v8, :cond_a

    .line 2714
    const/16 v30, 0x0

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v26

    .line 2715
    .local v26, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v26, :cond_7

    .line 2716
    const/16 v17, 0x0

    .line 2717
    .local v17, "isAppShortcut":Z
    const/16 v18, 0x0

    .line 2718
    .local v18, "isExternalApp":Z
    const/4 v15, 0x0

    .line 2720
    .local v15, "info":Lcom/android/launcher2/HomeShortcutItem;
    invoke-virtual/range {p9 .. p9}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    .line 2721
    .local v7, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v7, :cond_1

    .line 2722
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2723
    .local v6, "cat":Ljava/lang/String;
    const-string v30, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 2724
    invoke-virtual/range {p9 .. p9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 2725
    .local v4, "action":Ljava/lang/String;
    const-string v30, "android.intent.action.MAIN"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 2726
    const/16 v17, 0x1

    .line 2727
    sget-boolean v30, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v30, :cond_1

    const-string v30, "Launcher.Model"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "getShortcutInfo resolveInfo == null but not yet ready cn="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    .end local v4    # "action":Ljava/lang/String;
    .end local v6    # "cat":Ljava/lang/String;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v17, :cond_2

    .line 2736
    :try_start_0
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 2740
    .local v24, "pkgName":Ljava/lang/String;
    const/16 v30, 0x2000

    move-object/from16 v0, p8

    move-object/from16 v1, v24

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v23

    .line 2742
    .local v23, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v23, :cond_2

    .line 2743
    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2744
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_2

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v30, v0

    const/high16 v31, 0x40000

    and-int v30, v30, v31

    if-eqz v30, :cond_2

    .line 2748
    new-instance v16, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v30, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2749
    .end local v15    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .local v16, "info":Lcom/android/launcher2/HomeShortcutItem;
    if-nez p1, :cond_4

    const/16 v30, 0x0

    :goto_0
    :try_start_1
    move-object/from16 v0, v30

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2751
    const/16 v18, 0x1

    move-object/from16 v15, v16

    .line 2770
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .end local v23    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v24    # "pkgName":Ljava/lang/String;
    .restart local v15    # "info":Lcom/android/launcher2/HomeShortcutItem;
    :cond_2
    :goto_1
    if-eqz v18, :cond_6

    .line 2855
    .end local v7    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .end local v17    # "isAppShortcut":Z
    .end local v18    # "isExternalApp":Z
    .end local v26    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    :goto_2
    return-object v15

    .line 2749
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .restart local v17    # "isAppShortcut":Z
    .restart local v18    # "isExternalApp":Z
    .restart local v23    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v24    # "pkgName":Ljava/lang/String;
    .restart local v26    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v30

    goto :goto_0

    .line 2754
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .end local v23    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v24    # "pkgName":Ljava/lang/String;
    .restart local v15    # "info":Lcom/android/launcher2/HomeShortcutItem;
    :catch_0
    move-exception v10

    .line 2758
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    sget-boolean v30, Lcom/android/launcher2/Launcher;->isHomescreenRestoring:Z

    if-eqz v30, :cond_2

    .line 2759
    new-instance v15, Lcom/android/launcher2/HomeShortcutItem;

    .end local v15    # "info":Lcom/android/launcher2/HomeShortcutItem;
    sget-object v30, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v30

    invoke-direct {v15, v0}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 2760
    .restart local v15    # "info":Lcom/android/launcher2/HomeShortcutItem;
    if-nez p1, :cond_5

    const/16 v30, 0x0

    :goto_4
    move-object/from16 v0, v30

    iput-object v0, v15, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f020108

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 2762
    .local v9, "d":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v9, v0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v15, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2763
    const/16 v18, 0x1

    goto :goto_1

    .line 2760
    .end local v9    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto :goto_4

    .line 2773
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    const/4 v15, 0x0

    goto :goto_2

    .line 2779
    .end local v7    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .end local v17    # "isAppShortcut":Z
    .end local v18    # "isExternalApp":Z
    :cond_7
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    const-string v31, "com.android.email"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_9

    const-string v30, "com.android.settings.SHORTCUT"

    move-object/from16 v0, p9

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_8

    const-string v30, "android.intent.category.LAUNCHER"

    move-object/from16 v0, p9

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_9

    .line 2782
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PkgResCache;->getTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v29

    .line 2784
    :cond_9
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    const-string v31, "com.sec.android.app.latin.launcher.stk"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 2785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PkgResCache;->getTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v29

    .line 2788
    .end local v26    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_a
    new-instance v15, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v15}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    .line 2790
    .restart local v15    # "info":Lcom/android/launcher2/HomeShortcutItem;
    if-nez v29, :cond_b

    .line 2791
    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 2793
    :cond_b
    move-object/from16 v0, v29

    iput-object v0, v15, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2795
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2796
    .local v13, "iconType":I
    packed-switch v13, :pswitch_data_0

    .line 2831
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 2832
    const/16 v30, 0x1

    move/from16 v0, v30

    iput-boolean v0, v15, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    .line 2833
    const/16 v30, 0x0

    move/from16 v0, v30

    iput-boolean v0, v15, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 2837
    :cond_c
    :goto_5
    sget-boolean v30, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v30, :cond_e

    .line 2838
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v20

    .line 2839
    .local v20, "loader":Lcom/android/launcher2/ThemeLoader;
    new-instance v25, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    .line 2840
    .local v25, "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    if-nez v8, :cond_12

    const/16 v19, 0x1

    .line 2841
    .local v19, "isWidgetShortcut":Z
    :goto_6
    if-eqz v25, :cond_d

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/android/launcher2/AvailableWidgetListProvider;->isShortcutWidget(Ljava/lang/String;)Z

    move-result v19

    .line 2843
    :cond_d
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v30

    if-nez v30, :cond_e

    if-nez v19, :cond_e

    .line 2844
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/launcher2/ThemeLoader;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 2847
    .end local v19    # "isWidgetShortcut":Z
    .end local v20    # "loader":Lcom/android/launcher2/ThemeLoader;
    .end local v25    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    :cond_e
    invoke-virtual {v15, v12}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2849
    const-string v30, "iconMovieUri"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2850
    .local v21, "movieUri":Ljava/lang/String;
    if-eqz v21, :cond_3

    .line 2851
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v30

    iput-object v0, v15, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    .line 2852
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/launcher2/LauncherModel;->loadShortcutMovie(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;)V

    goto/16 :goto_2

    .line 2798
    .end local v21    # "movieUri":Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2799
    .local v22, "packageName":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 2800
    .local v27, "resourceName":Ljava/lang/String;
    const/16 v30, 0x0

    move/from16 v0, v30

    iput-boolean v0, v15, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 2803
    :try_start_2
    move-object/from16 v0, p8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v28

    .line 2804
    .local v28, "resources":Landroid/content/res/Resources;
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 2805
    .local v14, "id":I
    if-eqz v14, :cond_f

    .line 2806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v12

    .line 2811
    .end local v14    # "id":I
    .end local v28    # "resources":Landroid/content/res/Resources;
    :cond_f
    :goto_7
    if-nez v12, :cond_10

    .line 2812
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 2815
    :cond_10
    if-nez v12, :cond_c

    .line 2816
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 2817
    const/16 v30, 0x1

    move/from16 v0, v30

    iput-boolean v0, v15, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_5

    .line 2821
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v27    # "resourceName":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 2822
    if-nez v12, :cond_11

    .line 2823
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 2824
    const/16 v30, 0x0

    move/from16 v0, v30

    iput-boolean v0, v15, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 2825
    const/16 v30, 0x1

    move/from16 v0, v30

    iput-boolean v0, v15, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_5

    .line 2827
    :cond_11
    const/16 v30, 0x1

    move/from16 v0, v30

    iput-boolean v0, v15, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    goto/16 :goto_5

    .line 2840
    .restart local v20    # "loader":Lcom/android/launcher2/ThemeLoader;
    .restart local v25    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 2807
    .end local v20    # "loader":Lcom/android/launcher2/ThemeLoader;
    .end local v25    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    .restart local v22    # "packageName":Ljava/lang/String;
    .restart local v27    # "resourceName":Ljava/lang/String;
    :catch_1
    move-exception v30

    goto :goto_7

    .line 2754
    .end local v13    # "iconType":I
    .end local v15    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v27    # "resourceName":Ljava/lang/String;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .restart local v17    # "isAppShortcut":Z
    .restart local v18    # "isExternalApp":Z
    .restart local v23    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v24    # "pkgName":Ljava/lang/String;
    .restart local v26    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_2
    move-exception v10

    move-object/from16 v15, v16

    .end local v16    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .restart local v15    # "info":Lcom/android/launcher2/HomeShortcutItem;
    goto/16 :goto_3

    .line 2796
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getShortcutInfoExtra(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;
    .locals 15
    .param p1, "manager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "iconIndex"    # I
    .param p6, "titleIndex"    # I

    .prologue
    .line 2907
    const-string v12, "Launcher.Model"

    const-string v13, "getShortcutInfo"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 2910
    .local v3, "componentName":Landroid/content/ComponentName;
    sget-boolean v12, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v12, :cond_0

    .line 2911
    const-string v12, "Launcher.Model"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getShortcutInfo componentName="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    :cond_0
    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 2913
    .local v9, "rInfo":Landroid/content/pm/ResolveInfo;
    sget-boolean v12, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v12, :cond_1

    .line 2914
    const-string v12, "Launcher.Model"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getShortcutInfo rInfo="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    :cond_1
    if-nez v9, :cond_5

    .line 2918
    if-nez v3, :cond_2

    .line 2919
    const/4 v4, 0x0

    .line 3002
    :goto_0
    return-object v4

    .line 2921
    :cond_2
    const/4 v11, 0x0

    .line 2923
    .local v11, "unmounted":Z
    :try_start_0
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x2000

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v13, 0x40000

    and-int/2addr v12, v13

    if-eqz v12, :cond_4

    const/4 v11, 0x1

    .line 2929
    :goto_1
    sget-boolean v12, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v12, :cond_3

    .line 2930
    const-string v12, "Launcher.Model"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getShortcutInfo unmounted="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    :cond_3
    if-nez v11, :cond_5

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherModel;->isKnoxShortcut(Landroid/content/Intent;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 2932
    const/4 v4, 0x0

    goto :goto_0

    .line 2923
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 2938
    .end local v11    # "unmounted":Z
    :cond_5
    new-instance v4, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v12, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v4, v12}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 2939
    .local v4, "info":Lcom/android/launcher2/HomeShortcutItem;
    if-nez v9, :cond_11

    const/4 v12, 0x0

    :goto_2
    iput-object v12, v4, Lcom/android/launcher2/HomeShortcutItem;->packageName:Ljava/lang/String;

    .line 2940
    new-instance v10, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v10}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 2941
    .local v10, "titleAndIcon":Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v0, p2

    invoke-virtual {v12, v10, v0}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V

    .line 2945
    sget-boolean v12, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v12, :cond_6

    .line 2946
    const-string v12, "Launcher.Model"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "info.mTitle = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    :cond_6
    iget-object v12, v4, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v12, :cond_8

    .line 2949
    if-eqz p4, :cond_8

    .line 2950
    move-object/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v4, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2952
    sget-boolean v12, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v12, :cond_8

    .line 2953
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v6

    .line 2954
    .local v6, "loader":Lcom/android/launcher2/ThemeLoader;
    new-instance v8, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    .line 2955
    .local v8, "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    if-nez v3, :cond_12

    const/4 v5, 0x1

    .line 2956
    .local v5, "isWidgetShortcut":Z
    :goto_3
    if-eqz v8, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Lcom/android/launcher2/AvailableWidgetListProvider;->isShortcutWidget(Ljava/lang/String;)Z

    move-result v5

    .line 2958
    :cond_7
    invoke-virtual {v6}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v12

    if-nez v12, :cond_8

    if-nez v5, :cond_8

    .line 2959
    iget-object v12, v4, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v12}, Lcom/android/launcher2/ThemeLoader;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v4, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2964
    .end local v5    # "isWidgetShortcut":Z
    .end local v6    # "loader":Lcom/android/launcher2/ThemeLoader;
    .end local v8    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    :cond_8
    iget-object v12, v4, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v12, :cond_9

    .line 2965
    iget-object v12, v10, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v12, v4, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2968
    :cond_9
    iget-object v12, v4, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v12, :cond_a

    .line 2969
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v12

    iput-object v12, v4, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2970
    const/4 v12, 0x1

    iput-boolean v12, v4, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    .line 2975
    :cond_a
    iget-object v12, v4, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v12, :cond_c

    .line 2976
    if-eqz p4, :cond_c

    .line 2977
    sget-boolean v12, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v12, :cond_b

    .line 2978
    const-string v12, "Launcher.Model"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "info.mTitle from DB = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    :cond_b
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2983
    :cond_c
    iget-object v12, v4, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v12, :cond_d

    .line 2984
    iget-object v12, v10, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v12, v4, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2987
    :cond_d
    iget-object v12, v4, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v12, :cond_f

    .line 2988
    sget-boolean v12, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v12, :cond_e

    .line 2989
    const-string v12, "Launcher.Model"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "info.mTitle from PM = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    :cond_e
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2993
    :cond_f
    if-eqz p4, :cond_10

    .line 2994
    const-string v12, "iconMovieUri"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2996
    .local v7, "movieUri":Ljava/lang/String;
    if-eqz v7, :cond_10

    .line 2997
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    iput-object v12, v4, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    .line 2998
    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/android/launcher2/LauncherModel;->loadShortcutMovie(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;)V

    .line 3001
    .end local v7    # "movieUri":Ljava/lang/String;
    :cond_10
    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-virtual {v12, v3}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v12

    iput v12, v4, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    goto/16 :goto_0

    .line 2939
    .end local v10    # "titleAndIcon":Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    :cond_11
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto/16 :goto_2

    .line 2955
    .restart local v6    # "loader":Lcom/android/launcher2/ThemeLoader;
    .restart local v8    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    .restart local v10    # "titleAndIcon":Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 2925
    .end local v4    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .end local v6    # "loader":Lcom/android/launcher2/ThemeLoader;
    .end local v8    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    .end local v10    # "titleAndIcon":Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    .restart local v11    # "unmounted":Z
    :catch_0
    move-exception v12

    goto/16 :goto_1
.end method

.method protected getShortcutInfoExtra(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IIIII)Lcom/android/launcher2/HomeShortcutItem;
    .locals 18
    .param p1, "manager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "iconTypeIndex"    # I
    .param p6, "iconPackageIndex"    # I
    .param p7, "iconResourceIndex"    # I
    .param p8, "iconIndex"    # I
    .param p9, "titleIndex"    # I

    .prologue
    .line 3008
    const-string v15, "Launcher.Model"

    const-string v16, "getShortcutInfo"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 3010
    .local v4, "componentName":Landroid/content/ComponentName;
    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_0

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getShortcutInfo componentName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 3012
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_1

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getShortcutInfo rInfo="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    :cond_1
    if-nez v10, :cond_5

    .line 3016
    if-nez v4, :cond_2

    .line 3017
    const/4 v7, 0x0

    .line 3122
    :goto_0
    return-object v7

    .line 3019
    :cond_2
    const/4 v14, 0x0

    .line 3021
    .local v14, "unmounted":Z
    :try_start_0
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2000

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/high16 v16, 0x40000

    and-int v15, v15, v16

    if-eqz v15, :cond_4

    const/4 v14, 0x1

    .line 3029
    :goto_1
    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_3

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getShortcutInfo unmounted="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    :cond_3
    if-nez v14, :cond_5

    .line 3031
    const/4 v7, 0x0

    goto :goto_0

    .line 3021
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 3037
    .end local v14    # "unmounted":Z
    :cond_5
    new-instance v7, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v7}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    .line 3038
    .local v7, "info":Lcom/android/launcher2/HomeShortcutItem;
    new-instance v13, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v13}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 3039
    .local v13, "titleAndIcon":Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v0, p2

    invoke-virtual {v15, v13, v0}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V

    .line 3043
    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_6

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "info.mTitle = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    :cond_6
    invoke-interface/range {p4 .. p5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 3046
    .local v5, "iconType":I
    packed-switch v5, :pswitch_data_0

    .line 3087
    iget-object v15, v13, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 3088
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_7

    .line 3089
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 3090
    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    .line 3091
    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 3099
    :cond_7
    :goto_2
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v15, :cond_9

    .line 3101
    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_8

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "info.mTitle from DB = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    :cond_8
    move-object/from16 v0, p4

    move/from16 v1, p9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 3106
    :cond_9
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v15, :cond_a

    .line 3107
    iget-object v15, v13, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 3110
    :cond_a
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v15, :cond_c

    .line 3111
    sget-boolean v15, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_b

    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "info.mTitle from PM = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    :cond_b
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 3115
    :cond_c
    const-string v15, "iconMovieUri"

    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3116
    .local v8, "movieUri":Ljava/lang/String;
    if-eqz v8, :cond_d

    .line 3117
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    .line 3118
    move-object/from16 v0, p3

    invoke-static {v0, v7}, Lcom/android/launcher2/LauncherModel;->loadShortcutMovie(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;)V

    .line 3121
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-virtual {v15, v4}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v15

    iput v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    goto/16 :goto_0

    .line 3048
    .end local v8    # "movieUri":Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3049
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, p4

    move/from16 v1, p7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3050
    .local v11, "resourceName":Ljava/lang/String;
    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 3053
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v12

    .line 3054
    .local v12, "resources":Landroid/content/res/Resources;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v11, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 3055
    .local v6, "id":I
    if-eqz v6, :cond_e

    .line 3056
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v15, v12, v6, v11}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3061
    .end local v6    # "id":I
    .end local v12    # "resources":Landroid/content/res/Resources;
    :cond_e
    :goto_3
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_f

    .line 3062
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p8

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 3064
    :cond_f
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_10

    .line 3065
    iget-object v15, v13, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 3068
    :cond_10
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_7

    .line 3069
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 3070
    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_2

    .line 3074
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v11    # "resourceName":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p8

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 3075
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_11

    .line 3076
    iget-object v15, v13, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 3078
    :cond_11
    iget-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v15, :cond_12

    .line 3079
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 3080
    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 3081
    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_2

    .line 3083
    :cond_12
    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    goto/16 :goto_2

    .line 3057
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v11    # "resourceName":Ljava/lang/String;
    :catch_0
    move-exception v15

    goto :goto_3

    .line 3025
    .end local v5    # "iconType":I
    .end local v7    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v11    # "resourceName":Ljava/lang/String;
    .end local v13    # "titleAndIcon":Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    .restart local v14    # "unmounted":Z
    :catch_1
    move-exception v15

    goto/16 :goto_1

    .line 3046
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasLocaleChanged()Z
    .locals 2

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 388
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->hasLocaleChangedLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected hasLocaleChangedLocked()Z
    .locals 5

    .prologue
    .line 401
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 402
    .local v1, "config":Landroid/content/res/Configuration;
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    iget v3, v1, Landroid/content/res/Configuration;->mcc:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    iget v3, v1, Landroid/content/res/Configuration;->mnc:I

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 407
    .local v0, "changed":Z
    :goto_0
    sget-boolean v2, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    .line 408
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mWorkspaceLoaded:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mAllAppsLoaded:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hasLocaleChangedLocked. mcc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; mnc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; return: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_1
    return v0

    .line 402
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "fallbackIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3149
    const-string v20, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 3150
    .local v13, "intent":Landroid/content/Intent;
    const-string v20, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3151
    .local v16, "name":Ljava/lang/String;
    const-string v20, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 3153
    .local v3, "bitmap":Landroid/os/Parcelable;
    const/4 v9, 0x0

    .line 3154
    .local v9, "icon":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 3155
    .local v5, "customIcon":Z
    const/4 v10, 0x0

    .line 3157
    .local v10, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    instance-of v0, v3, Landroid/graphics/Bitmap;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 3158
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 3159
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    check-cast v3, Landroid/graphics/Bitmap;

    .end local v3    # "bitmap":Landroid/os/Parcelable;
    move-object/from16 v0, v20

    invoke-direct {v6, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 3160
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p1

    invoke-static {v6, v0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 3164
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    const/4 v5, 0x1

    .line 3182
    :cond_0
    :goto_1
    new-instance v12, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v12}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    .line 3185
    .local v12, "info":Lcom/android/launcher2/HomeShortcutItem;
    sget-boolean v20, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v20, :cond_1

    .line 3186
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_1

    if-eqz v9, :cond_1

    .line 3187
    invoke-virtual {v12, v9}, Lcom/android/launcher2/HomeShortcutItem;->setCustomIcon(Landroid/graphics/Bitmap;)V

    .line 3191
    :cond_1
    if-nez v9, :cond_2

    .line 3192
    if-eqz p3, :cond_a

    .line 3193
    move-object/from16 v9, p3

    .line 3200
    :cond_2
    :goto_2
    sget-boolean v20, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v20, :cond_4

    .line 3201
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v15

    .line 3202
    .local v15, "loader":Lcom/android/launcher2/ThemeLoader;
    new-instance v18, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    .line 3203
    .local v18, "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    const/4 v14, 0x0

    .line 3205
    .local v14, "isWidgetShortcut":Z
    if-eqz v13, :cond_3

    if-eqz v18, :cond_3

    .line 3206
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 3207
    .local v4, "cn":Landroid/content/ComponentName;
    if-nez v4, :cond_b

    const/4 v14, 0x1

    .line 3208
    :goto_3
    const-string v20, "Launcher.Model"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "infoFromShortcutIntent isWidgetShortcut : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    .end local v4    # "cn":Landroid/content/ComponentName;
    :cond_3
    invoke-virtual {v15}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v20

    if-nez v20, :cond_4

    if-nez v14, :cond_4

    .line 3212
    invoke-virtual {v15, v9}, Lcom/android/launcher2/ThemeLoader;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 3216
    .end local v14    # "isWidgetShortcut":Z
    .end local v15    # "loader":Lcom/android/launcher2/ThemeLoader;
    .end local v18    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    :cond_4
    invoke-virtual {v12, v9}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 3218
    const-string v20, "photoUri"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    .line 3219
    iget-object v0, v12, Lcom/android/launcher2/HomeShortcutItem;->mIconMovieUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 3220
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/launcher2/LauncherModel;->loadShortcutMovie(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;)V

    .line 3222
    :cond_5
    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 3223
    iput-object v13, v12, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 3224
    iput-boolean v5, v12, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 3225
    iput-object v10, v12, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 3226
    sget-boolean v20, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v20, :cond_6

    .line 3227
    const-string v20, "Launcher.Model"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "title: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", intent: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", customIcon: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", iconResource: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    :cond_6
    if-eqz v13, :cond_7

    .line 3231
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 3232
    .restart local v4    # "cn":Landroid/content/ComponentName;
    if-eqz v4, :cond_7

    .line 3233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v20

    move/from16 v0, v20

    iput v0, v12, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    .line 3236
    .end local v4    # "cn":Landroid/content/ComponentName;
    :cond_7
    return-object v12

    .line 3162
    .end local v12    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .restart local v3    # "bitmap":Landroid/os/Parcelable;
    :cond_8
    check-cast v3, Landroid/graphics/Bitmap;

    .end local v3    # "bitmap":Landroid/os/Parcelable;
    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_0

    .line 3166
    .restart local v3    # "bitmap":Landroid/os/Parcelable;
    :cond_9
    const-string v20, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    .line 3167
    .local v8, "extra":Landroid/os/Parcelable;
    if-eqz v8, :cond_0

    instance-of v0, v8, Landroid/content/Intent$ShortcutIconResource;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 3169
    :try_start_0
    move-object v0, v8

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v10, v0

    .line 3170
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 3171
    .local v17, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v0, v10, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v19

    .line 3173
    .local v19, "resources":Landroid/content/res/Resources;
    iget-object v0, v10, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 3174
    .local v11, "id":I
    if-eqz v11, :cond_0

    .line 3175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v20, v0

    iget-object v0, v10, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto/16 :goto_1

    .line 3176
    .end local v11    # "id":I
    .end local v17    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v19    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v7

    .line 3177
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v20, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v20, :cond_0

    const-string v20, "Launcher.Model"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Could not load shortcut icon: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3195
    .end local v3    # "bitmap":Landroid/os/Parcelable;
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "extra":Landroid/os/Parcelable;
    .restart local v12    # "info":Lcom/android/launcher2/HomeShortcutItem;
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 3196
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v12, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_2

    .line 3207
    .restart local v4    # "cn":Landroid/content/ComponentName;
    .restart local v14    # "isWidgetShortcut":Z
    .restart local v15    # "loader":Lcom/android/launcher2/ThemeLoader;
    .restart local v18    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    :cond_b
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/android/launcher2/AvailableWidgetListProvider;->isShortcutWidget(Ljava/lang/String;)Z

    move-result v14

    goto/16 :goto_3
.end method

.method public initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 3
    .param p1, "callbacks"    # Lcom/android/launcher2/LauncherModel$Callbacks;

    .prologue
    .line 1079
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1080
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 1081
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->hasLocaleChangedLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->onLocaleChanged()V

    .line 1084
    const-string v0, "Launcher.Model"

    const-string v2, "MenuAppModel.onLocaleChanged called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_0
    monitor-exit v1

    .line 1087
    return-void

    .line 1086
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 40
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1097
    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 1101
    .local v11, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1104
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v26

    .line 1105
    .local v26, "packageName":Ljava/lang/String;
    if-eqz v26, :cond_3

    const-string v3, "sstream.app"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1316
    .end local v26    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1107
    .restart local v26    # "packageName":Ljava/lang/String;
    :cond_3
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    .line 1109
    .local v30, "replacing":Z
    const/16 v25, 0x0

    .line 1111
    .local v25, "op":I
    if-eqz v26, :cond_2

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1116
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1117
    const/16 v25, 0x2

    .line 1193
    :cond_4
    :goto_1
    if-eqz v25, :cond_2

    .line 1194
    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v26, v4, v5

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v3, v0, v1, v4}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    .line 1195
    sget-object v24, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    .line 1196
    .local v24, "mgr":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->clearWidgets()V

    .line 1201
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 1202
    .local v33, "swCount":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_2

    .line 1203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1206
    const-string v3, "Launcher.Model"

    const-string v4, "onreceive : Launcher Loader is running. Skip updating surface widgets"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1118
    .end local v21    # "i":I
    .end local v24    # "mgr":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .end local v33    # "swCount":I
    :cond_5
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1119
    if-nez v30, :cond_4

    .line 1120
    const/16 v25, 0x3

    goto :goto_1

    .line 1124
    :cond_6
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1125
    if-nez v30, :cond_d

    .line 1128
    const-string v3, "ExtraStuff"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    .line 1130
    .local v28, "pref2":Landroid/content/SharedPreferences;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1131
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 1134
    .local v12, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "container=? and intent like ? "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v38, -0x64

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    aput-object v38, v6, v7

    const/4 v7, 0x1

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const/16 v39, 0x25

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    aput-object v38, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1138
    const/16 v31, -0x1

    .line 1139
    .local v31, "screen":I
    :cond_7
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1140
    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "replace"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1141
    const-string v3, "screen"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 1143
    const-string v3, "itemType"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 1144
    .local v35, "type":I
    const/4 v3, 0x4

    move/from16 v0, v35

    if-eq v0, v3, :cond_8

    const/16 v3, 0x384

    move/from16 v0, v35

    if-eq v0, v3, :cond_8

    const/16 v3, 0x385

    move/from16 v0, v35

    if-ne v0, v3, :cond_7

    .line 1145
    :cond_8
    const-string v3, "_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1146
    .local v22, "id":I
    const-string v3, "appWidgetId"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1147
    .local v29, "previousAppwidgetId":I
    const-string v3, "spanX"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1148
    .local v8, "SpanX":I
    const-string v3, "spanY"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1149
    .local v9, "SpanY":I
    const-string v3, "cellX"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1150
    .local v14, "cellX":I
    const-string v3, "cellY"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1151
    .local v15, "cellY":I
    const-string v3, "intent"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1153
    .local v17, "compName":Ljava/lang/String;
    const-string v3, ":"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 1154
    .local v32, "str_array":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v16, v32, v3

    .line 1156
    .local v16, "clsName":Ljava/lang/String;
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 1157
    .local v23, "intentor":Landroid/content/Intent;
    const-string v3, "com.android.launcher.action.INSTALL_WIDGET"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1158
    const-string v3, "replace"

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1159
    const-string v3, "package"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1160
    const-string v3, "class"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    const-string v3, "type"

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1162
    const-string v3, "cellX"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1163
    const-string v3, "cellY"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1164
    const-string v3, "spanX"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1165
    const-string v3, "spanY"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1166
    const-string v3, "screen"

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1168
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v37

    .line 1170
    .local v37, "widgetUpdateIntent":Landroid/app/PendingIntent;
    :try_start_1
    invoke-virtual/range {v37 .. v37}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1174
    :goto_4
    :try_start_2
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 1183
    .end local v8    # "SpanX":I
    .end local v9    # "SpanY":I
    .end local v14    # "cellX":I
    .end local v15    # "cellY":I
    .end local v16    # "clsName":Ljava/lang/String;
    .end local v17    # "compName":Ljava/lang/String;
    .end local v22    # "id":I
    .end local v23    # "intentor":Landroid/content/Intent;
    .end local v29    # "previousAppwidgetId":I
    .end local v31    # "screen":I
    .end local v32    # "str_array":[Ljava/lang/String;
    .end local v35    # "type":I
    .end local v37    # "widgetUpdateIntent":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v3

    .line 1171
    .restart local v8    # "SpanX":I
    .restart local v9    # "SpanY":I
    .restart local v14    # "cellX":I
    .restart local v15    # "cellY":I
    .restart local v16    # "clsName":Ljava/lang/String;
    .restart local v17    # "compName":Ljava/lang/String;
    .restart local v22    # "id":I
    .restart local v23    # "intentor":Landroid/content/Intent;
    .restart local v29    # "previousAppwidgetId":I
    .restart local v31    # "screen":I
    .restart local v32    # "str_array":[Ljava/lang/String;
    .restart local v35    # "type":I
    .restart local v37    # "widgetUpdateIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v18

    .line 1172
    .local v18, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_3
    const-string v3, "Launcher.Model"

    const-string v4, "widget reinstall error. "

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1177
    .end local v8    # "SpanX":I
    .end local v9    # "SpanY":I
    .end local v14    # "cellX":I
    .end local v15    # "cellY":I
    .end local v16    # "clsName":Ljava/lang/String;
    .end local v17    # "compName":Ljava/lang/String;
    .end local v18    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v22    # "id":I
    .end local v23    # "intentor":Landroid/content/Intent;
    .end local v29    # "previousAppwidgetId":I
    .end local v32    # "str_array":[Ljava/lang/String;
    .end local v35    # "type":I
    .end local v37    # "widgetUpdateIntent":Landroid/app/PendingIntent;
    :cond_a
    const/4 v3, -0x1

    move/from16 v0, v31

    if-eq v0, v3, :cond_b

    .line 1178
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/LauncherModel;->setRefreshRequired(Z)V

    .line 1179
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1183
    :cond_b
    if-eqz v12, :cond_c

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1187
    :cond_c
    const/16 v25, 0x1

    .line 1188
    goto/16 :goto_1

    .line 1189
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v28    # "pref2":Landroid/content/SharedPreferences;
    .end local v31    # "screen":I
    :cond_d
    const/16 v25, 0x2

    goto/16 :goto_1

    .line 1209
    .restart local v21    # "i":I
    .restart local v24    # "mgr":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .restart local v33    # "swCount":I
    :cond_e
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 1210
    .local v36, "widget":Lcom/android/launcher2/SurfaceWidgetItem;
    invoke-virtual/range {v36 .. v36}, Lcom/android/launcher2/SurfaceWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lcom/android/launcher2/SurfaceWidgetItem;->getThemName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v34

    .line 1211
    .local v34, "swpinfo":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    if-eqz v34, :cond_f

    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-eqz v3, :cond_f

    .line 1212
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-object/from16 v0, v34

    iget v4, v0, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I

    iput v4, v3, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I

    .line 1202
    :cond_f
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 1217
    .end local v21    # "i":I
    .end local v24    # "mgr":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .end local v25    # "op":I
    .end local v26    # "packageName":Ljava/lang/String;
    .end local v30    # "replacing":Z
    .end local v33    # "swCount":I
    .end local v34    # "swpinfo":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .end local v36    # "widget":Lcom/android/launcher2/SurfaceWidgetItem;
    :cond_10
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1218
    const-string v3, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1219
    .local v27, "packages":[Ljava/lang/String;
    if-eqz v27, :cond_2

    .line 1223
    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v3, v0, v4, v1}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto/16 :goto_0

    .line 1224
    .end local v27    # "packages":[Ljava/lang/String;
    :cond_11
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1225
    const-string v3, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1226
    .restart local v27    # "packages":[Ljava/lang/String;
    if-eqz v27, :cond_2

    .line 1230
    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v3, v0, v4, v1}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto/16 :goto_0

    .line 1232
    .end local v27    # "packages":[Ljava/lang/String;
    :cond_12
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1235
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->hasLocaleChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1236
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    goto/16 :goto_0

    .line 1238
    :cond_13
    const-string v3, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1240
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    .line 1241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1242
    .local v13, "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v13, :cond_2

    .line 1243
    invoke-interface {v13}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindSearchablesChanged()V

    goto/16 :goto_0

    .line 1247
    .end local v13    # "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_15
    const-string v3, "com.android.launcher.action.DYNAMICCSC_MODE_CHANGE"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1263
    :cond_16
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "com.sec.sprextension.FORCE_LAUNCHER_REFRESH"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1265
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    goto/16 :goto_0

    .line 1268
    :cond_17
    const-string v3, "android.intent.action.STK_TITLE_IS_LOADED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1269
    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v3, :cond_18

    const-string v3, "Launcher.Model"

    const-string v4, "STK Refresh : intent recieved by launcher model"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_18
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_FixedStkMenu"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v20

    .line 1271
    .local v20, "fstFeatureOn":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Launcher_FixedStkTitleAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1272
    .local v19, "fixedStkTitle":Ljava/lang/String;
    const-string v3, "gsm.STK_SETUP_MENU"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1274
    .local v10, "StkTitlefromSIM":Ljava/lang/String;
    if-eqz v19, :cond_19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_19

    const-string v3, "NoSIM%"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1279
    :cond_19
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1284
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v26

    .line 1285
    .restart local v26    # "packageName":Ljava/lang/String;
    if-eqz v26, :cond_2

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1290
    const/16 v25, 0x2

    .line 1291
    .restart local v25    # "op":I
    if-eqz v20, :cond_1a

    .line 1292
    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v26, v4, v5

    const/4 v5, 0x1

    const-string v6, "com.sec.android.app.latin.launcher.stk"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v3, v0, v1, v4}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    .line 1295
    :goto_5
    sget-object v24, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    .line 1296
    .restart local v24    # "mgr":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->clearWidgets()V

    goto/16 :goto_0

    .line 1294
    .end local v24    # "mgr":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    :cond_1a
    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v26, v4, v5

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v3, v0, v1, v4}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_5
.end method

.method protected queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z
    .locals 2
    .param p2, "info"    # Lcom/android/launcher2/HomeShortcutItem;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "iconIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;",
            "Lcom/android/launcher2/HomeShortcutItem;",
            "Landroid/database/Cursor;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p1, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;[B>;"
    const/4 v0, 0x0

    .line 3242
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    if-nez v1, :cond_1

    .line 3255
    :cond_0
    :goto_0
    return v0

    .line 3251
    :cond_1
    iget-boolean v1, p2, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    if-nez v1, :cond_0

    iget-boolean v1, p2, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    if-nez v1, :cond_0

    .line 3252
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3253
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reloadBadges()V
    .locals 3

    .prologue
    .line 3302
    const-string v1, "Launcher.Model"

    const-string v2, "reloadBadges entered."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3303
    new-instance v0, Lcom/android/launcher2/LauncherModel$11;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherModel$11;-><init>(Lcom/android/launcher2/LauncherModel;)V

    .line 3334
    .local v0, "r":Ljava/lang/Runnable;
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 3335
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3339
    :goto_0
    return-void

    .line 3337
    :cond_0
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setCallAppItem(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeItem;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher2/HomeItem;
    .locals 6
    .param p1, "mHomeView"    # Lcom/android/launcher2/HomeView;
    .param p2, "mItem"    # Lcom/android/launcher2/HomeItem;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "cls"    # Ljava/lang/String;

    .prologue
    .line 342
    new-instance v1, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v4, p2, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v1, v4}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 343
    .local v1, "item":Lcom/android/launcher2/HomeShortcutItem;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 344
    .local v2, "resolveInfo":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .local v0, "cpName":Landroid/content/ComponentName;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10200000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 350
    new-instance v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v3}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 351
    .local v3, "titleAndIcon":Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    invoke-virtual {p1}, Lcom/android/launcher2/HomeView;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V

    .line 352
    iget-object v4, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 353
    iget-object v4, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 354
    iput-object v2, v1, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 355
    iget-wide v4, p2, Lcom/android/launcher2/HomeItem;->mId:J

    iput-wide v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    .line 356
    iget v4, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v4, v1, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    .line 357
    iget v4, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v4, v1, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    .line 358
    iget v4, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v4, v1, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    .line 359
    iget-wide v4, p2, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v4, v1, Lcom/android/launcher2/HomeShortcutItem;->container:J

    .line 360
    return-object v1
.end method

.method protected setLocaleLocked()V
    .locals 4

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 425
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    .line 426
    iget v1, v0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    .line 427
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    .line 428
    sget-boolean v1, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 429
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLocaleLocked. mcc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; mnc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    return-void
.end method

.method public setRefreshRequired(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 3359
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    .line 3360
    return-void
.end method

.method public startLoader()V
    .locals 2

    .prologue
    .line 1373
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/LauncherModel;->startLoader(ZZ)V

    .line 1374
    return-void
.end method

.method public startLoader(Z)V
    .locals 0
    .param p1, "isSecret"    # Z

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->startLoader()V

    .line 1400
    return-void
.end method

.method public startLoaderFromBackground(Z)V
    .locals 3
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 1342
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1343
    .local v0, "cb":Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1344
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/LauncherModel;->startLoader(ZZ)V

    .line 1355
    :goto_1
    return-void

    .line 1342
    .end local v0    # "cb":Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v0, v1

    goto :goto_0

    .line 1346
    .restart local v0    # "cb":Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1347
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->stopLoaderLocked()Z

    .line 1350
    if-eqz p1, :cond_2

    .line 1351
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    .line 1353
    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopLoader()V
    .locals 2

    .prologue
    .line 1403
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1404
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 1405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    .line 1406
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->stopLocked()V

    .line 1408
    :cond_0
    monitor-exit v1

    .line 1409
    return-void

    .line 1408
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected stopLoaderLocked()Z
    .locals 3

    .prologue
    .line 1360
    const/4 v0, 0x0

    .line 1361
    .local v0, "isLaunching":Z
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 1362
    .local v1, "oldTask":Lcom/android/launcher2/LauncherModel$LoaderTask;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 1363
    if-eqz v1, :cond_1

    .line 1364
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1365
    const/4 v0, 0x1

    .line 1367
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->stopLocked()V

    .line 1369
    :cond_1
    return v0
.end method

.method public unbindAllHomeItems()V
    .locals 2

    .prologue
    .line 371
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$1;-><init>(Lcom/android/launcher2/LauncherModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 377
    return-void
.end method

.method unbindAllHomeItemsOnMainThread()V
    .locals 3

    .prologue
    .line 441
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 442
    .local v0, "allHomeItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v2, Lcom/android/launcher2/LauncherModel$2;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/LauncherModel$2;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 450
    return-void
.end method

.method protected updateHiddenAddButtonInHomeFolder(Ljava/util/Map;)V
    .locals 10
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
    .line 3364
    .local p1, "homeFolders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    iget-object v7, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    const-string v8, "com.sec.android.app.launcher.prefs"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3365
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "HomeFolderIds"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3367
    .local v2, "folderIds":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 3368
    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3369
    .local v1, "folderId":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_1

    .line 3370
    aget-object v7, v1, v3

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 3371
    .local v4, "id":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3372
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    .line 3373
    .local v0, "folder":Lcom/android/launcher2/HomeFolderItem;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/launcher2/HomeFolderItem;->setHiddenAddButton(Z)V

    .line 3369
    .end local v0    # "folder":Lcom/android/launcher2/HomeFolderItem;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3377
    .end local v1    # "folderId":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "id":J
    :cond_1
    return-void
.end method

.method protected updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher2/HomeShortcutItem;
    .param p3, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 3259
    const/4 v2, 0x0

    .line 3261
    .local v2, "needSave":Z
    if-eqz p3, :cond_3

    .line 3262
    const/4 v5, 0x0

    :try_start_0
    array-length v6, p3

    invoke-static {p3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3263
    .local v3, "saved":Landroid/graphics/Bitmap;
    iget-object v1, p2, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 3264
    .local v1, "loaded":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    const/4 v2, 0x1

    .line 3271
    .end local v1    # "loaded":Landroid/graphics/Bitmap;
    .end local v3    # "saved":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v2, :cond_1

    .line 3272
    sget-boolean v4, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "going to save icon bitmap for info="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3275
    :cond_0
    invoke-static {p1, p2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 3277
    :cond_1
    return-void

    .restart local v1    # "loaded":Landroid/graphics/Bitmap;
    .restart local v3    # "saved":Landroid/graphics/Bitmap;
    :cond_2
    move v2, v4

    .line 3264
    goto :goto_0

    .line 3266
    .end local v1    # "loaded":Landroid/graphics/Bitmap;
    .end local v3    # "saved":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 3268
    :catch_0
    move-exception v0

    .line 3269
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_0
.end method
