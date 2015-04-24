.class public Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final TAGS_ALLOWED_HOME:I = 0xf

.field private static final TAGS_ALLOWED_HOTSEAT:I = 0x7

.field private static final TAG_ALLOWED_APP:I = 0x1

.field private static final TAG_ALLOWED_FOLDER:I = 0x4

.field private static final TAG_ALLOWED_SHORTCUT:I = 0x2

.field private static final TAG_ALLOWED_WIDGET:I = 0x8

.field private static final TAG_APP:Ljava/lang/String; = "favorite"

.field private static final TAG_APPORDER:Ljava/lang/String; = "appOrder"

.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_CLOCK:Ljava/lang/String; = "clock"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_HOME:Ljava/lang/String; = "home"

.field private static final TAG_HOTSEAT:Ljava/lang/String; = "hotseat"

.field private static final TAG_PAGE_COUNT:Ljava/lang/String; = "PageCount"

.field private static final TAG_SACTIVITYWIDGET:Ljava/lang/String; = "sactivitywidget"

.field private static final TAG_SCREEN_INDEX:Ljava/lang/String; = "ScreenIndex"

.field private static final TAG_SEARCH:Ljava/lang/String; = "search"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"


# instance fields
.field private frontMenuApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private mFavoritesPath:Ljava/lang/String;

.field private mIsAttReady2GoEnable:Z

.field private mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

.field private mMaxFavoriteCPId:Ljava/util/concurrent/atomic/AtomicLong;

.field private mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

.field private mMaxSprintFolderId:Ljava/util/concurrent/atomic/AtomicLong;

.field private mOnlyLoadFrontApps:Z

.field private mParserRestore:Lorg/xmlpull/v1/XmlPullParser;

.field private mPreSecretPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSamsungActivityWidgetId:I

.field private mSurfaceWidgetId:I

.field private mWidgetTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 607
    const-string v0, "launcher.db"

    const/16 v1, 0xe

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 596
    iput-boolean v3, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsAttReady2GoEnable:Z

    .line 600
    iput-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mParserRestore:Lorg/xmlpull/v1/XmlPullParser;

    .line 601
    iput-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mWidgetTitle:Ljava/lang/String;

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mPreSecretPackageList:Ljava/util/ArrayList;

    .line 1746
    iput-boolean v3, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOnlyLoadFrontApps:Z

    .line 608
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LauncherProvider"

    const-string v1, "DATABASE_VERSION = 14"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 611
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 620
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_1

    .line 621
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getMaxFavoriteID(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_2

    .line 624
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "appOrder"

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 625
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 626
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "sprintFolder"

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 627
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createSprintFolderTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 629
    :cond_3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "sprintFolder"

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxSprintFolderId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 631
    :cond_4
    return-void
.end method

.method static synthetic access$502(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
    .param p1, "x1"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mParserRestore:Lorg/xmlpull/v1/XmlPullParser;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 554
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method private addAppFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2396
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v0

    .line 2397
    .local v0, "id":J
    const-string v2, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2398
    const-string v2, "appOrder"

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v3, p2}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 2399
    const-wide/16 v0, -0x1

    .line 2400
    :cond_0
    return-wide v0
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)J
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "pkgMgr"    # Landroid/content/pm/PackageManager;
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "className"    # Ljava/lang/String;

    .prologue
    .line 2306
    const-wide/16 v6, -0x1

    .line 2308
    .local v6, "id":J
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 2309
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    .local v2, "cn":Landroid/content/ComponentName;
    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 2320
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v6

    .line 2321
    const-string v9, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2322
    const-string v9, "componentName"

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2323
    const-string v9, "title"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    const-string v9, "appOrder"

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-static {p0, p1, v9, v10, v0}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gez v9, :cond_0

    .line 2333
    const-wide/16 v6, -0x1

    .line 2339
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_1
    return-wide v6

    .line 2315
    .restart local v2    # "cn":Landroid/content/ComponentName;
    :catch_0
    move-exception v4

    .line 2316
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p4, v9, v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2317
    .local v8, "packages":[Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    const/4 v9, 0x0

    aget-object v9, v8, v9

    move-object/from16 v0, p5

    invoke-direct {v3, v9, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2318
    .end local v2    # "cn":Landroid/content/ComponentName;
    .local v3, "cn":Landroid/content/ComponentName;
    const/4 v9, 0x0

    :try_start_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .restart local v5    # "info":Landroid/content/pm/ActivityInfo;
    move-object v2, v3

    .end local v3    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "cn":Landroid/content/ComponentName;
    goto :goto_0

    .line 2335
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    .end local v8    # "packages":[Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 2336
    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get ActivityInfo for : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2335
    .end local v2    # "cn":Landroid/content/ComponentName;
    .restart local v3    # "cn":Landroid/content/ComponentName;
    .restart local v8    # "packages":[Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "cn":Landroid/content/ComponentName;
    goto :goto_2
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "cn"    # Landroid/content/ComponentName;
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I

    .prologue
    .line 2513
    const/4 v0, 0x0

    .line 2514
    .local v0, "allocatedAppWidgets":Z
    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 2517
    .local v2, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    const/4 v1, -0x1

    .line 2519
    .local v1, "appWidgetId":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v4

    .line 2531
    .local v4, "genNewFavoritesId":J
    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 2532
    const-string v6, "itemType"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2533
    const-string v6, "spanX"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2534
    const-string v6, "spanY"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2535
    const-string v6, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2536
    const-string v6, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2538
    const/4 v6, 0x0

    invoke-static {p0, p1, p2, v6, p3}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2539
    const/4 v0, 0x1

    .line 2541
    const/4 v6, -0x1

    if-le v1, v6, :cond_0

    invoke-virtual {v2, v1, p4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2542
    const-string v6, "LauncherProvider"

    const-string v7, "Problem allocating appWidgetId; bindAppWidgetIdIfAllowed returned false"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2549
    .end local v4    # "genNewFavoritesId":J
    :cond_0
    :goto_0
    return v0

    .line 2544
    :catch_0
    move-exception v3

    .line 2545
    .local v3, "ex":Ljava/lang/RuntimeException;
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2546
    const-string v6, "LauncherProvider"

    const-string v7, "Problem allocating appWidgetId"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 17
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "className"    # Ljava/lang/String;
    .param p7, "spanX"    # I
    .param p8, "spanY"    # I

    .prologue
    .line 2467
    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    .line 2468
    :cond_0
    const/4 v2, 0x0

    .line 2508
    :goto_0
    return v2

    .line 2471
    :cond_1
    const/4 v15, 0x1

    .line 2472
    .local v15, "hasPackage":Z
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    .local v6, "cn":Landroid/content/ComponentName;
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2504
    :cond_2
    :goto_1
    if-eqz v15, :cond_3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p7

    move/from16 v8, p8

    .line 2505
    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v2

    goto :goto_0

    .line 2475
    :catch_0
    move-exception v12

    .line 2476
    .local v12, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2478
    .local v16, "packages":[Ljava/lang/String;
    new-instance v6, Landroid/content/ComponentName;

    .end local v6    # "cn":Landroid/content/ComponentName;
    const/4 v2, 0x0

    aget-object v2, v16, v2

    move-object/from16 v0, p6

    invoke-direct {v6, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2480
    .restart local v6    # "cn":Landroid/content/ComponentName;
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2481
    :catch_1
    move-exception v13

    .line 2484
    .local v13, "e1":Ljava/lang/Exception;
    :try_start_2
    # getter for: Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2485
    const-string v11, "com.sec.android.app.launcher"

    .line 2486
    .local v11, "dummyPackageName":Ljava/lang/String;
    const-string v10, "com.android.launcher2.WidgetReceiver"

    .line 2487
    .local v10, "dummyClassName":Ljava/lang/String;
    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v11, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2488
    .end local v6    # "cn":Landroid/content/ComponentName;
    .local v9, "cn":Landroid/content/ComponentName;
    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, p4

    invoke-virtual {v0, v9, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 2490
    const-string v2, "intent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2491
    const-string v2, "title"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mWidgetTitle:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v6, v9

    .end local v9    # "cn":Landroid/content/ComponentName;
    .restart local v6    # "cn":Landroid/content/ComponentName;
    goto :goto_1

    .line 2497
    .end local v10    # "dummyClassName":Ljava/lang/String;
    .end local v11    # "dummyPackageName":Ljava/lang/String;
    :catch_2
    move-exception v14

    .line 2498
    .local v14, "e2":Ljava/lang/Exception;
    :goto_2
    const/4 v15, 0x0

    goto :goto_1

    .line 2508
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "e1":Ljava/lang/Exception;
    .end local v14    # "e2":Ljava/lang/Exception;
    .end local v16    # "packages":[Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2497
    .end local v6    # "cn":Landroid/content/ComponentName;
    .restart local v9    # "cn":Landroid/content/ComponentName;
    .restart local v10    # "dummyClassName":Ljava/lang/String;
    .restart local v11    # "dummyPackageName":Ljava/lang/String;
    .restart local v12    # "e":Ljava/lang/Exception;
    .restart local v13    # "e1":Ljava/lang/Exception;
    .restart local v16    # "packages":[Ljava/lang/String;
    :catch_3
    move-exception v14

    move-object v6, v9

    .end local v9    # "cn":Landroid/content/ComponentName;
    .restart local v6    # "cn":Landroid/content/ComponentName;
    goto :goto_2
.end method

.method private addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x2

    .line 2459
    new-instance v4, Landroid/content/ComponentName;

    const-string v0, "com.android.alarmclock"

    const-string v1, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v4, "cn":Landroid/content/ComponentName;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    .line 2461
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method private addFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x1

    .line 2409
    const-string v2, "itemType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2410
    const-string v2, "spanX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2411
    const-string v2, "spanY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2412
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v0

    .line 2413
    .local v0, "id":J
    const-string v2, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2414
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2, p3}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 2415
    const-wide/16 v0, -0x1

    .line 2417
    .end local v0    # "id":J
    :cond_0
    return-wide v0
.end method

.method private addHomeShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "pkgMgr"    # Landroid/content/pm/PackageManager;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "pkgName"    # Ljava/lang/String;
    .param p7, "className"    # Ljava/lang/String;
    .param p8, "title"    # Ljava/lang/String;

    .prologue
    .line 2344
    const-wide/16 v6, -0x1

    .line 2346
    .local v6, "id":J
    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    .line 2347
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2351
    .local v2, "cn":Landroid/content/ComponentName;
    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 2358
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v6

    .line 2359
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2360
    const/high16 v9, 0x10200000

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2362
    const-string v9, "intent"

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    const-string v9, "title"

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    const-string v9, "itemType"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2365
    const-string v9, "spanX"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2366
    const-string v9, "spanY"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2367
    const-string v9, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2368
    const/4 v9, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {p0, p1, v0, v9, v1}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gez v9, :cond_0

    .line 2369
    const-wide/16 v6, -0x1

    .line 2392
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_1
    return-wide v6

    .line 2352
    .restart local v2    # "cn":Landroid/content/ComponentName;
    :catch_0
    move-exception v4

    .line 2353
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p6, v9, v10

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2355
    .local v8, "packages":[Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    const/4 v9, 0x0

    aget-object v9, v8, v9

    move-object/from16 v0, p7

    invoke-direct {v3, v9, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2356
    .end local v2    # "cn":Landroid/content/ComponentName;
    .local v3, "cn":Landroid/content/ComponentName;
    const/4 v9, 0x0

    :try_start_2
    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .restart local v5    # "info":Landroid/content/pm/ActivityInfo;
    move-object v2, v3

    .end local v3    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "cn":Landroid/content/ComponentName;
    goto/16 :goto_0

    .line 2370
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "info":Landroid/content/pm/ActivityInfo;
    .end local v8    # "packages":[Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 2371
    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to add Home app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    :cond_1
    # getter for: Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2376
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v6

    .line 2377
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2378
    const/high16 v9, 0x10200000

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2380
    const-string v9, "intent"

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    const-string v9, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, p8

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    const-string v9, "itemType"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2383
    const-string v9, "spanX"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2384
    const-string v9, "spanY"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2385
    const-string v9, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2386
    const/4 v9, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {p0, p1, v0, v9, v1}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gez v9, :cond_0

    .line 2387
    const-wide/16 v6, -0x1

    goto/16 :goto_1

    .line 2370
    .end local v2    # "cn":Landroid/content/ComponentName;
    .restart local v3    # "cn":Landroid/content/ComponentName;
    .restart local v8    # "packages":[Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "cn":Landroid/content/ComponentName;
    goto/16 :goto_2
.end method

.method private addSamsungActivityWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p5, "pkgName"    # Ljava/lang/String;
    .param p6, "cName"    # Ljava/lang/String;
    .param p7, "themeName"    # Ljava/lang/String;
    .param p8, "spanX"    # I
    .param p9, "spanY"    # I

    .prologue
    .line 2651
    const/4 v2, 0x0

    .line 2652
    .local v2, "rc":Z
    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    .line 2653
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p5, p6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    .local v0, "cn":Landroid/content/ComponentName;
    sget-object v3, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v3, v0, p7}, Lcom/android/launcher2/SamsungWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/launcher2/SamsungWidgetProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2655
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2656
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2657
    if-eqz p7, :cond_0

    .line 2658
    const-string v3, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v1, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2660
    :cond_0
    const-string v3, "intent"

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    const-string v3, "itemType"

    const/16 v4, 0x384

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2662
    const-string v3, "spanX"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2663
    const-string v3, "spanY"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2664
    const-string v3, "appWidgetId"

    iget v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSamsungActivityWidgetId:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSamsungActivityWidgetId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2665
    const-string v3, "_id"

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2666
    const/4 v3, 0x0

    invoke-static {p0, p1, p2, v3, p3}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    const/4 v2, 0x1

    .line 2669
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return v2

    .line 2666
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;II)Z
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I

    .prologue
    .line 2452
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v4

    .line 2453
    .local v4, "cn":Landroid/content/ComponentName;
    if-eqz v4, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    .line 2454
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v0

    .line 2455
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addSurfaceWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p5, "pkgName"    # Ljava/lang/String;
    .param p6, "cName"    # Ljava/lang/String;
    .param p7, "themeName"    # Ljava/lang/String;
    .param p8, "instance"    # Ljava/lang/String;
    .param p9, "spanX"    # I
    .param p10, "spanY"    # I

    .prologue
    .line 2687
    const/4 v2, 0x0

    .line 2688
    .local v2, "rc":Z
    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    .line 2689
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p5, p6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2690
    .local v0, "cn":Landroid/content/ComponentName;
    sget-object v3, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    invoke-virtual {v3, v0, p7}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2691
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2692
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2693
    if-eqz p7, :cond_0

    .line 2694
    const-string v3, "com.samsung.sec.android.SURFACE_WIDGET.themename"

    invoke-virtual {v1, v3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2696
    :cond_0
    if-eqz p8, :cond_2

    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2697
    const-string v3, "instance"

    invoke-static {p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2704
    :goto_0
    const-string v3, "intent"

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2705
    const-string v3, "itemType"

    const/16 v4, 0x385

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2706
    const-string v3, "spanX"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2707
    const-string v3, "spanY"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2708
    const-string v3, "_id"

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2709
    const-string v3, "appWidgetId"

    iget v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSurfaceWidgetId:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mSurfaceWidgetId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2710
    const/4 v3, 0x0

    invoke-static {p0, p1, p2, v3, p3}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2711
    const/4 v2, 0x1

    .line 2714
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return v2

    .line 2702
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v3, "instance"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private addToSprintFolderTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "isFeatured"    # Z

    .prologue
    .line 1710
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1711
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToSprintFolderTable :: pkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1714
    .local v1, "values":Landroid/content/ContentValues;
    if-eqz p4, :cond_1

    const/4 v0, 0x1

    .line 1715
    .local v0, "value":I
    :goto_0
    const-string v2, "packageName"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    const-string v2, "className"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    const-string v2, "isFeatured"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1718
    const-string v2, "sprintFolder"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1720
    return-void

    .line 1714
    .end local v0    # "value":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 24
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "a"    # Landroid/content/res/TypedArray;
    .param p5, "uri"    # Ljava/lang/String;
    .param p6, "titleId"    # Ljava/lang/String;
    .param p7, "imgId"    # Ljava/lang/String;

    .prologue
    .line 2553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 2555
    .local v16, "r":Landroid/content/res/Resources;
    const/4 v12, 0x0

    .line 2556
    .local v12, "iconResId":I
    const/16 v19, 0x0

    .line 2558
    .local v19, "titleResId":I
    if-eqz p4, :cond_0

    .line 2559
    const/16 v20, 0x7

    const/16 v21, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 2560
    const/16 v20, 0x8

    const/16 v21, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    .line 2566
    :cond_0
    if-eqz p4, :cond_1

    .line 2567
    const/16 v20, 0x9

    :try_start_0
    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p5

    .line 2569
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 2575
    .local v13, "intent":Landroid/content/Intent;
    if-eqz p4, :cond_5

    if-eqz v12, :cond_2

    if-nez v19, :cond_5

    .line 2576
    :cond_2
    const-string v20, "LauncherProvider"

    const-string v21, "Shortcut is missing title or icon resource ID"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    const-wide/16 v14, -0x1

    .line 2644
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_0
    return-wide v14

    .line 2570
    :catch_0
    move-exception v10

    .line 2571
    .local v10, "e":Ljava/net/URISyntaxException;
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v20

    if-eqz v20, :cond_4

    const-string v20, "LauncherProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Shortcut has malformed uri: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    :cond_4
    const-wide/16 v14, -0x1

    goto :goto_0

    .line 2580
    .end local v10    # "e":Ljava/net/URISyntaxException;
    .restart local v13    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v14

    .line 2581
    .local v14, "id":J
    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2582
    const-string v20, "intent"

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2583
    const-string v20, "itemType"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2584
    const-string v20, "spanX"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2585
    const-string v20, "spanY"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2586
    const-string v20, "_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2587
    if-eqz p4, :cond_6

    .line 2588
    const-string v20, "iconType"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2589
    const-string v20, "iconPackage"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2591
    const-string v20, "title"

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2592
    const-string v20, "iconResource"

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2641
    :goto_1
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    move-object/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gez v20, :cond_3

    .line 2642
    const-wide/16 v14, -0x1

    goto/16 :goto_0

    .line 2595
    :cond_6
    const-string v6, ""

    .line 2596
    .local v6, "appTitle":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2598
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .end local v6    # "appTitle":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 2599
    .restart local v6    # "appTitle":Ljava/lang/String;
    const-string v20, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2602
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_7

    if-nez v8, :cond_8

    .line 2605
    :cond_7
    # getter for: Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 2606
    if-nez v6, :cond_8

    .line 2607
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mWidgetTitle:Ljava/lang/String;

    .line 2608
    const-string v20, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2617
    :cond_8
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2618
    .local v17, "stream":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 2621
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    # getter for: Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v20

    if-eqz v20, :cond_b

    if-nez v8, :cond_b

    .line 2622
    # getter for: Lcom/android/launcher2/LauncherProvider;->mBasePathForRestore:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$300()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    # invokes: Lcom/android/launcher2/LauncherProvider;->getBitmapFromBackupPath(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherProvider;->access$400(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2623
    if-nez v7, :cond_9

    .line 2624
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    .line 2625
    .local v18, "sysRes":Landroid/content/res/Resources;
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 2626
    .local v9, "dm":Landroid/util/DisplayMetrics;
    iget v11, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2627
    .local v11, "iconDpi":I
    const/high16 v20, 0x10d0000

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object/from16 v20, v8

    .line 2628
    check-cast v20, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2635
    .end local v9    # "dm":Landroid/util/DisplayMetrics;
    .end local v11    # "iconDpi":I
    .end local v18    # "sysRes":Landroid/content/res/Resources;
    :cond_9
    :goto_2
    sget-object v20, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v21, 0x64

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v7, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2637
    const-string v20, "iconType"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2638
    const-string v20, "icon"

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v21

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 2612
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v17    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_a
    const-string v20, "LauncherProvider"

    const-string v21, "Shortcut is missing title or icon resource ID from csc resource"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    const-wide/16 v14, -0x1

    goto/16 :goto_0

    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v17    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_b
    move-object/from16 v20, v8

    .line 2632
    check-cast v20, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_2
.end method

.method private checkHomescreenArrangement(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1084
    const-string v15, "LauncherProvider"

    const-string v16, "checkHomescreenArrangement"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1086
    .local v6, "cnUpdates":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/content/ComponentName;>;"
    const/4 v12, 0x0

    .line 1087
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v13, 0x0

    .line 1089
    .local v13, "resParser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070006

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    .line 1090
    move-object v12, v13

    .line 1092
    :try_start_0
    const-string v15, "matched"

    invoke-static {v13, v15}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1093
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 1095
    .local v7, "depth":I
    invoke-static {v13}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 1100
    .local v4, "attrs":Landroid/util/AttributeSet;
    :cond_0
    :goto_0
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    .local v14, "type":I
    const/4 v15, 0x3

    if-ne v14, v15, :cond_1

    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v7, :cond_3

    :cond_1
    const/4 v15, 0x1

    if-eq v14, v15, :cond_3

    .line 1101
    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 1104
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1105
    .local v9, "name":Ljava/lang/String;
    const-string v15, "matchedapp"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1106
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v16, Lcom/sec/android/app/launcher/R$styleable;->DBUpgradeMatch:[I

    move-object/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1107
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1108
    .local v5, "beforeComponent":Ljava/lang/String;
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1109
    .local v3, "afterComponent":Ljava/lang/String;
    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    .line 1110
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    .line 1111
    .local v11, "oldCn":Landroid/content/ComponentName;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 1112
    .local v10, "newCn":Landroid/content/ComponentName;
    if-eqz v11, :cond_2

    if-eqz v10, :cond_2

    .line 1113
    const-string v15, "LauncherProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "oldCn = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", newcn="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-interface {v6, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    .end local v10    # "newCn":Landroid/content/ComponentName;
    .end local v11    # "oldCn":Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1120
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "afterComponent":Ljava/lang/String;
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "beforeComponent":Ljava/lang/String;
    .end local v7    # "depth":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v14    # "type":I
    :catch_0
    move-exception v8

    .line 1121
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1125
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    .line 1126
    const-string v15, "favorites"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v15}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->exchangeComponentFromApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Ljava/lang/String;)V

    .line 1128
    :cond_4
    return-void

    .line 1122
    :catch_1
    move-exception v8

    .line 1123
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v8, 0x0

    .line 784
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LauncherProvider"

    const-string v3, "converting database from an older format, but not onUpgrade"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_0
    const/4 v6, 0x0

    .line 787
    .local v6, "converted":Z
    const-string v2, "content://settings/old_favorites?notify=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 789
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 790
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 793
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 799
    :goto_0
    if-eqz v7, :cond_2

    .line 801
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 802
    invoke-direct {p0, p1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-lez v2, :cond_5

    const/4 v6, 0x1

    .line 805
    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 808
    if-eqz v6, :cond_2

    .line 809
    invoke-virtual {v0, v1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 813
    :cond_2
    if-eqz v6, :cond_4

    .line 815
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "LauncherProvider"

    const-string v3, "converted and now triggering widget upgrade"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 819
    :cond_4
    return v6

    .line 802
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 805
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 794
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 22
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v13

    .line 1480
    .local v13, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    const/4 v4, 0x3

    new-array v14, v4, [I

    fill-array-data v14, :array_0

    .line 1486
    .local v14, "bindSources":[I
    const-string v4, "itemType"

    invoke-static {v4, v14}, Lcom/android/launcher2/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v7

    .line 1488
    .local v7, "selectWhere":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1490
    .local v15, "c":Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1493
    :try_start_0
    const-string v5, "favorites"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v4

    const/4 v4, 0x1

    const-string v8, "itemType"

    aput-object v8, v6, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1496
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v5, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found upgrade cursor count="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v15, :cond_5

    const-string v4, "null"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_0
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 1499
    .local v21, "values":Landroid/content/ContentValues;
    :cond_1
    :goto_1
    if-eqz v15, :cond_a

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1500
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1501
    .local v18, "favoriteId":J
    const/4 v4, 0x1

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    .line 1505
    .local v17, "favoriteType":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v12

    .line 1507
    .local v12, "appWidgetId":I
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1508
    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allocated appWidgetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for favoriteId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :cond_2
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    .line 1512
    const-string v4, "itemType"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1513
    const-string v4, "appWidgetId"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1516
    const/16 v4, 0x3e9

    move/from16 v0, v17

    if-ne v0, v4, :cond_6

    .line 1517
    const-string v4, "spanX"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1518
    const-string v4, "spanY"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1524
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1525
    .local v20, "updateWhere":Ljava/lang/String;
    const-string v4, "favorites"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1527
    const/16 v4, 0x3e8

    move/from16 v0, v17

    if-ne v0, v4, :cond_8

    .line 1528
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.alarmclock"

    const-string v6, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v12, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1539
    .end local v12    # "appWidgetId":I
    .end local v20    # "updateWhere":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1540
    .local v16, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "LauncherProvider"

    const-string v5, "Problem allocating appWidgetId"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1545
    .end local v16    # "ex":Ljava/lang/RuntimeException;
    .end local v17    # "favoriteType":I
    .end local v18    # "favoriteId":J
    .end local v21    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v16

    .line 1546
    .local v16, "ex":Landroid/database/SQLException;
    :try_start_3
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "LauncherProvider"

    const-string v5, "Problem while allocating appWidgetIds for existing widgets"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1548
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1549
    if-eqz v15, :cond_4

    .line 1550
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1553
    .end local v16    # "ex":Landroid/database/SQLException;
    :cond_4
    :goto_3
    return-void

    .line 1496
    :cond_5
    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    goto/16 :goto_0

    .line 1520
    .restart local v12    # "appWidgetId":I
    .restart local v17    # "favoriteType":I
    .restart local v18    # "favoriteId":J
    .restart local v21    # "values":Landroid/content/ContentValues;
    :cond_6
    :try_start_5
    const-string v4, "spanX"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1521
    const-string v4, "spanY"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 1548
    .end local v12    # "appWidgetId":I
    .end local v17    # "favoriteType":I
    .end local v18    # "favoriteId":J
    .end local v21    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1549
    if-eqz v15, :cond_7

    .line 1550
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v4

    .line 1531
    .restart local v12    # "appWidgetId":I
    .restart local v17    # "favoriteType":I
    .restart local v18    # "favoriteId":J
    .restart local v20    # "updateWhere":Ljava/lang/String;
    .restart local v21    # "values":Landroid/content/ContentValues;
    :cond_8
    const/16 v4, 0x3ea

    move/from16 v0, v17

    if-ne v0, v4, :cond_9

    .line 1532
    :try_start_6
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.camera"

    const-string v6, "com.android.camera.PhotoAppWidgetProvider"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v12, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    goto/16 :goto_1

    .line 1535
    :cond_9
    const/16 v4, 0x3e9

    move/from16 v0, v17

    if-ne v0, v4, :cond_1

    .line 1536
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v13, v12, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1544
    .end local v12    # "appWidgetId":I
    .end local v17    # "favoriteType":I
    .end local v18    # "favoriteId":J
    .end local v20    # "updateWhere":Ljava/lang/String;
    :cond_a
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1548
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1549
    if-eqz v15, :cond_4

    .line 1550
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1480
    nop

    :array_0
    .array-data 4
        0x3e8
        0x3ea
        0x3e9
    .end array-data
.end method

.method private copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 28
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 823
    const-string v24, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 824
    .local v15, "idIndex":I
    const-string v24, "intent"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 825
    .local v16, "intentIndex":I
    const-string v24, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 826
    .local v21, "titleIndex":I
    const-string v24, "iconType"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 827
    .local v14, "iconTypeIndex":I
    const-string v24, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 828
    .local v11, "iconIndex":I
    const-string v24, "iconPackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 829
    .local v12, "iconPackageIndex":I
    const-string v24, "iconResource"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 830
    .local v13, "iconResourceIndex":I
    const-string v24, "container"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 831
    .local v8, "containerIndex":I
    const-string v24, "itemType"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 832
    .local v17, "itemTypeIndex":I
    const-string v24, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 833
    .local v20, "screenIndex":I
    const-string v24, "cellX"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 834
    .local v6, "cellXIndex":I
    const-string v24, "cellY"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 836
    .local v7, "cellYIndex":I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v19, v0

    .line 837
    .local v19, "rows":[Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 838
    .local v9, "i":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 839
    new-instance v23, Landroid/content/ContentValues;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/content/ContentValues;-><init>(I)V

    .line 840
    .local v23, "values":Landroid/content/ContentValues;
    const-string v24, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 841
    const-string v24, "intent"

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string v24, "title"

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const-string v24, "iconType"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 844
    const-string v24, "icon"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 845
    const-string v24, "iconPackage"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v24, "iconResource"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v24, "container"

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 848
    const-string v24, "itemType"

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 849
    const-string v24, "appWidgetId"

    const/16 v25, -0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 850
    const-string v24, "screen"

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 851
    const-string v24, "cellX"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    const-string v24, "cellY"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    aput-object v23, v19, v9

    move v9, v10

    .line 854
    .end local v10    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_0

    .line 856
    .end local v23    # "values":Landroid/content/ContentValues;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 857
    const/16 v22, 0x0

    .line 859
    .local v22, "total":I
    :try_start_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v18, v0

    .line 860
    .local v18, "numValues":I
    const/4 v9, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v9, v0, :cond_2

    .line 861
    const-string v24, "favorites"

    const/16 v25, 0x0

    aget-object v26, v19, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-gez v24, :cond_1

    .line 862
    const/16 v22, 0x0

    .line 868
    .end local v22    # "total":I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 871
    :goto_2
    return v22

    .line 864
    .restart local v22    # "total":I
    :cond_1
    add-int/lit8 v22, v22, 0x1

    .line 860
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 866
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 868
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    .end local v18    # "numValues":I
    :catchall_0
    move-exception v24

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v24
.end method

.method private createAppOrderTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 706
    const-string v0, "CREATE table appOrder (_id integer primary key,folderId integer not null default -1,screen integer not null default -1,cell integer not null default -1,hidden integer not null default 0,title text,componentName text,color integer not null default -1, secret integer not null default 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 718
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 719
    return-void
.end method

.method private createFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id INTEGER PRIMARY KEY,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "itemType INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "container INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "screen INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cellX INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cellY INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "spanX INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "spanY INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "title TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "intent TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "appWidgetId INTEGER NOT NULL DEFAULT -1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconType INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconPackage TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconResource TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconMovieUri TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icon BLOB,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "color INTEGER NOT NULL DEFAULT -1, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "secret INTEGER NOT NULL DEFAULT 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "festival INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method private createPublicPreferences(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 731
    const-string v7, "prefs"

    invoke-direct {p0, p1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 732
    # getter for: Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    const-string v8, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 733
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    .line 734
    .local v0, "csc":Lcom/sec/android/app/CscFeature;
    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 735
    .local v3, "res":Landroid/content/res/Resources;
    const v7, 0x7f0c0009

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 739
    .local v1, "maxCount":I
    const-string v7, "screencount"

    invoke-interface {v2, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 740
    .local v4, "screenCount":I
    if-lez v4, :cond_0

    if-le v4, v1, :cond_3

    .line 741
    :cond_0
    const-string v7, "CscFeature_Launcher_TotalPageCount"

    invoke-virtual {v0, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 743
    if-lez v4, :cond_1

    if-le v4, v1, :cond_3

    .line 744
    :cond_1
    const v7, 0x7f0c0007

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 745
    if-lez v4, :cond_2

    if-le v4, v1, :cond_3

    .line 746
    :cond_2
    move v4, v1

    .line 751
    :cond_3
    const-string v7, "homescreenindex"

    const/4 v8, -0x1

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 752
    .local v5, "screenIndex":I
    if-ltz v5, :cond_4

    if-lt v5, v4, :cond_7

    .line 753
    :cond_4
    const-string v7, "CscFeature_Launcher_DefaultPageNumber"

    invoke-virtual {v0, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 755
    if-ltz v5, :cond_5

    if-lt v5, v4, :cond_7

    .line 756
    :cond_5
    const v7, 0x7f0c000a

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 757
    if-ltz v5, :cond_6

    if-lt v5, v4, :cond_7

    .line 758
    :cond_6
    const/4 v5, 0x0

    .line 763
    :cond_7
    const-string v7, "CREATE TABLE IF NOT EXISTS prefs(key TEXT PRIMARY KEY,value INTEGER);"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 768
    const-string v7, "insert into prefs values(?, ?)"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 771
    .local v6, "statement":Landroid/database/sqlite/SQLiteStatement;
    const-string v7, "defaultScreen"

    invoke-virtual {v6, v10, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 772
    int-to-long v8, v5

    invoke-virtual {v6, v11, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 773
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 775
    const-string v7, "numScreens"

    invoke-virtual {v6, v10, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 776
    int-to-long v8, v4

    invoke-virtual {v6, v11, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 777
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 779
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 781
    .end local v0    # "csc":Lcom/sec/android/app/CscFeature;
    .end local v1    # "maxCount":I
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "screenCount":I
    .end local v5    # "screenIndex":I
    .end local v6    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :cond_8
    return-void
.end method

.method private createSprintFolderTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 722
    const-string v0, "CREATE table sprintFolder (_id integer primary key,packageName text,className text,isFeatured integer not null default 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 728
    return-void
.end method

.method private delAppFolder(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "folderId"    # J

    .prologue
    .line 2404
    const-string v0, "appOrder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private delFolder(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "folderId"    # J

    .prologue
    .line 2421
    const-string v0, "favorites"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 875
    const/4 v1, 0x0

    .line 876
    .local v1, "exists":Z
    const-string v4, "SELECT count(*) from sqlite_master where name=? and type=\'table\'"

    new-array v5, v2, [Ljava/lang/String;

    aput-object p2, v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 878
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 879
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 880
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    move v1, v2

    .line 882
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 884
    :cond_1
    return v1

    :cond_2
    move v1, v3

    .line 880
    goto :goto_0
.end method

.method private getMaxFavoriteID(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1431
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v2, "favorites"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1432
    .local v0, "favoriteId":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v2, "favorites"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1434
    .local v1, "otherFavoriteId":Ljava/util/concurrent/atomic/AtomicLong;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->intValue()I

    move-result v3

    if-le v2, v3, :cond_0

    .end local v0    # "favoriteId":Ljava/util/concurrent/atomic/AtomicLong;
    :goto_0
    return-object v0

    .restart local v0    # "favoriteId":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2438
    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 2439
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    .line 2440
    .local v4, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez v4, :cond_1

    move-object v2, v6

    .line 2448
    :cond_0
    :goto_0
    return-object v2

    .line 2441
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 2442
    .local v3, "providerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 2443
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 2444
    .local v2, "provider":Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2442
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "provider":Landroid/content/ComponentName;
    :cond_3
    move-object v2, v6

    .line 2448
    goto :goto_0
.end method

.method private getSearchWidgetProvider()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 2426
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 2428
    .local v1, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 2429
    .local v0, "searchComponent":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 2430
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_0
.end method

.method private getTablesList(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1238
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1239
    .local v2, "tablesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1240
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 1241
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1242
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1243
    .local v1, "name":Ljava/lang/String;
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTablesList()::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :cond_1
    const-string v3, "android_metadata"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1247
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1250
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1252
    :cond_3
    return-object v2
.end method

.method private initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;

    .prologue
    .line 1412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select ifnull(max(_id),0) from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1415
    .local v0, "c":Landroid/database/Cursor;
    const-wide/16 v2, -0x1

    .line 1416
    .local v2, "id":J
    if-eqz v0, :cond_1

    .line 1417
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1418
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1420
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1423
    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 1424
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: could not query max id from table "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1427
    :cond_2
    return-wide v2
.end method

.method private loadAppOrderContainer(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;JZ)I
    .locals 27
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "folderId"    # J
    .param p5, "isCSC"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1570
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadAppOrderContainer. folderId: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1572
    .local v4, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1574
    .local v5, "pkgMgr":Landroid/content/pm/PackageManager;
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v15

    .line 1575
    .local v15, "attrs":Landroid/util/AttributeSet;
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    .line 1576
    .local v23, "startDepth":I
    const/16 v16, 0x0

    .line 1577
    .local v16, "cell":I
    const/16 v20, 0x0

    .line 1580
    .local v20, "items":I
    const/4 v6, 0x0

    .line 1581
    .local v6, "pkgName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1582
    .local v7, "className":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1583
    .local v19, "isFrontPosition":Z
    const/16 v18, 0x0

    .line 1585
    .local v18, "hidden":Z
    :cond_1
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v26

    .local v26, "type":I
    const/4 v2, 0x3

    move/from16 v0, v26

    if-ne v0, v2, :cond_2

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v23

    if-le v2, v0, :cond_3

    .line 1587
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_4

    .line 1706
    :cond_3
    return v20

    .line 1590
    :cond_4
    const/4 v2, 0x2

    move/from16 v0, v26

    if-ne v0, v2, :cond_1

    .line 1593
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 1594
    .local v21, "name":Ljava/lang/String;
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadApplicationsContainer. Process tag: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :cond_5
    const/4 v8, 0x0

    .line 1597
    .local v8, "a":Landroid/content/res/TypedArray;
    const-string v22, ""

    .line 1599
    .local v22, "screen":Ljava/lang/String;
    if-eqz p5, :cond_7

    .line 1600
    const-string v6, ""

    .line 1601
    const-string v7, ""

    .line 1602
    const/4 v2, 0x0

    const-string v3, "screen"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1603
    const/16 v19, 0x0

    .line 1611
    :goto_1
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1613
    const-string v2, "favorite"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1617
    if-eqz p5, :cond_8

    .line 1618
    const/4 v2, 0x0

    const-string v3, "packageName"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1619
    const/4 v2, 0x0

    const-string v3, "className"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1620
    const/4 v2, 0x0

    const-string v3, "AppOrder_isFrontPosition"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    .line 1621
    const/4 v2, 0x0

    const-string v3, "hidden"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 1627
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOnlyLoadFrontApps:Z

    if-eqz v2, :cond_9

    .line 1628
    if-nez v18, :cond_6

    if-eqz v19, :cond_6

    if-eqz v7, :cond_6

    .line 1629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->frontMenuApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1701
    :cond_6
    :goto_3
    if-eqz v8, :cond_1

    .line 1702
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 1605
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/launcher/R$styleable;->AppOrder:[I

    invoke-virtual {v2, v15, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1606
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1607
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1608
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1609
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    goto :goto_1

    .line 1623
    :cond_8
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    .line 1624
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    goto :goto_2

    .line 1632
    :cond_9
    if-eqz v18, :cond_a

    .line 1633
    const-string v2, "hidden"

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1635
    :cond_a
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_c

    .line 1636
    const-string v2, "screen"

    move-object/from16 v0, v22

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    const-string v2, "cell"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 1644
    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-ltz v2, :cond_b

    .line 1645
    add-int/lit8 v20, v20, 0x1

    .line 1646
    add-int/lit8 v16, v16, 0x1

    .line 1650
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1651
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getSprintFolderID(Z)J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-nez v2, :cond_d

    .line 1652
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addToSprintFolderTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 1640
    :cond_c
    const-string v2, "folderId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1641
    const-string v2, "screen"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1653
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getSprintFolderID(Z)J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-nez v2, :cond_6

    .line 1654
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addToSprintFolderTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 1659
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOnlyLoadFrontApps:Z

    if-nez v2, :cond_15

    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_15

    const-string v2, "folder"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1660
    const/16 v24, 0x0

    .line 1661
    .local v24, "title":Ljava/lang/String;
    const/16 v25, -0x1

    .line 1662
    .local v25, "titleResId":I
    if-eqz p5, :cond_12

    .line 1663
    const/4 v2, 0x0

    const-string v3, "title"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1671
    :cond_f
    :goto_5
    const-string v2, "title"

    move-object/from16 v0, v24

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    const-string v2, "screen"

    move-object/from16 v0, v22

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    const-string v2, "cell"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 1675
    .local v12, "newFolderId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-eqz v2, :cond_6

    .line 1676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1677
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->setSprintFolderId(JZ)V

    .line 1681
    :cond_10
    :goto_6
    add-int/lit8 v20, v20, 0x1

    .line 1682
    add-int/lit8 v16, v16, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v14, p5

    .line 1683
    invoke-direct/range {v9 .. v14}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderContainer(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;JZ)I

    move-result v17

    .line 1684
    .local v17, "folderItemCount":I
    if-nez v17, :cond_11

    .line 1685
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1686
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v13}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->delAppFolder(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1687
    add-int/lit8 v20, v20, -0x1

    .line 1688
    add-int/lit8 v16, v16, -0x1

    .line 1694
    :cond_11
    :goto_7
    add-int v20, v20, v17

    goto/16 :goto_3

    .line 1665
    .end local v12    # "newFolderId":J
    .end local v17    # "folderItemCount":I
    :cond_12
    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    .line 1667
    const/4 v2, -0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_f

    .line 1668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_5

    .line 1678
    .restart local v12    # "newFolderId":J
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1679
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->setSprintFolderId(JZ)V

    goto :goto_6

    .line 1689
    .restart local v17    # "folderItemCount":I
    :cond_14
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1690
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to delete empty Appfolder. _id: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1699
    .end local v12    # "newFolderId":J
    .end local v17    # "folderItemCount":I
    .end local v24    # "title":Ljava/lang/String;
    .end local v25    # "titleResId":I
    :cond_15
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid tag <"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "> detected while parsing favorites at line "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private loadAppOrderDefaults(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 20
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1767
    const/4 v15, 0x0

    .line 1768
    .local v15, "items":I
    const-string v3, "LauncherProvider"

    const-string v4, "loadAppOrderDefaults."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    const/4 v2, 0x0

    .line 1772
    .local v2, "cscFile":Ljava/io/FileReader;
    const/4 v8, 0x0

    .line 1773
    .local v8, "isCSC":Z
    const/4 v5, 0x0

    .line 1774
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v10, Ljava/io/File;

    const-string v3, "/system/csc/default_application_order.xml"

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1782
    .local v10, "cscFileChk":Ljava/io/File;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v13

    .line 1783
    .local v13, "isKnoxMode":Z
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v14

    .line 1785
    .local v14, "isOwner":Z
    if-eqz v13, :cond_1

    .line 1786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v16

    .line 1787
    .local v16, "resParser":Landroid/content/res/XmlResourceParser;
    const-string v3, "appOrder"

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1788
    move-object/from16 v5, v16

    .line 1808
    .end local v16    # "resParser":Landroid/content/res/XmlResourceParser;
    :goto_0
    const-wide/16 v6, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderContainer(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;JZ)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    .line 1819
    if-eqz v2, :cond_0

    .line 1821
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 1826
    .end local v10    # "cscFileChk":Ljava/io/File;
    .end local v13    # "isKnoxMode":Z
    .end local v14    # "isOwner":Z
    :cond_0
    :goto_1
    return v15

    .line 1789
    .restart local v10    # "cscFileChk":Ljava/io/File;
    .restart local v13    # "isKnoxMode":Z
    .restart local v14    # "isOwner":Z
    :cond_1
    if-nez v14, :cond_2

    .line 1790
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v16

    .line 1791
    .restart local v16    # "resParser":Landroid/content/res/XmlResourceParser;
    const-string v3, "appOrder"

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1792
    move-object/from16 v5, v16

    .line 1793
    goto :goto_0

    .end local v16    # "resParser":Landroid/content/res/XmlResourceParser;
    :cond_2
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v18, 0x0

    cmp-long v3, v6, v18

    if-lez v3, :cond_3

    .line 1795
    new-instance v9, Ljava/io/FileReader;

    const-string v3, "/system/csc/default_application_order.xml"

    invoke-direct {v9, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1796
    .end local v2    # "cscFile":Ljava/io/FileReader;
    .local v9, "cscFile":Ljava/io/FileReader;
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v12

    .line 1797
    .local v12, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 1798
    invoke-virtual {v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 1799
    invoke-interface {v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1800
    const/4 v8, 0x1

    move-object v2, v9

    .line 1802
    .end local v9    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFile":Ljava/io/FileReader;
    goto :goto_0

    .line 1803
    .end local v12    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f070000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v16

    .line 1804
    .restart local v16    # "resParser":Landroid/content/res/XmlResourceParser;
    const-string v3, "appOrder"

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1805
    move-object/from16 v5, v16

    goto :goto_0

    .line 1810
    .end local v10    # "cscFileChk":Ljava/io/File;
    .end local v13    # "isKnoxMode":Z
    .end local v14    # "isOwner":Z
    .end local v16    # "resParser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v11

    .line 1811
    .local v11, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_5
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "LauncherProvider"

    const-string v4, "Got exception parsing applications."

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1819
    :cond_4
    if-eqz v2, :cond_0

    .line 1821
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 1822
    :catch_1
    move-exception v3

    goto :goto_1

    .line 1813
    .end local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v11

    .line 1814
    .local v11, "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "LauncherProvider"

    const-string v4, "Got exception parsing applications."

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1819
    :cond_5
    if-eqz v2, :cond_0

    .line 1821
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 1822
    :catch_3
    move-exception v3

    goto/16 :goto_1

    .line 1816
    .end local v11    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v11

    .line 1817
    .local v11, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_4
    :try_start_9
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "LauncherProvider"

    const-string v4, "Got exception parsing applications."

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1819
    :cond_6
    if-eqz v2, :cond_0

    .line 1821
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    .line 1822
    :catch_5
    move-exception v3

    goto/16 :goto_1

    .line 1819
    .end local v11    # "e":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v3

    :goto_5
    if-eqz v2, :cond_7

    .line 1821
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 1822
    :cond_7
    :goto_6
    throw v3

    .restart local v10    # "cscFileChk":Ljava/io/File;
    .restart local v13    # "isKnoxMode":Z
    .restart local v14    # "isOwner":Z
    :catch_6
    move-exception v3

    goto/16 :goto_1

    .end local v10    # "cscFileChk":Ljava/io/File;
    .end local v13    # "isKnoxMode":Z
    .end local v14    # "isOwner":Z
    :catch_7
    move-exception v4

    goto :goto_6

    .line 1819
    .end local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v9    # "cscFile":Ljava/io/FileReader;
    .restart local v10    # "cscFileChk":Ljava/io/File;
    .restart local v13    # "isKnoxMode":Z
    .restart local v14    # "isOwner":Z
    :catchall_1
    move-exception v3

    move-object v2, v9

    .end local v9    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFile":Ljava/io/FileReader;
    goto :goto_5

    .line 1816
    .end local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v9    # "cscFile":Ljava/io/FileReader;
    :catch_8
    move-exception v11

    move-object v2, v9

    .end local v9    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFile":Ljava/io/FileReader;
    goto :goto_4

    .line 1813
    .end local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v9    # "cscFile":Ljava/io/FileReader;
    :catch_9
    move-exception v11

    move-object v2, v9

    .end local v9    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFile":Ljava/io/FileReader;
    goto :goto_3

    .line 1810
    .end local v2    # "cscFile":Ljava/io/FileReader;
    .restart local v9    # "cscFile":Ljava/io/FileReader;
    :catch_a
    move-exception v11

    move-object v2, v9

    .end local v9    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFile":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private loadDynamicCscFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    .locals 22
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "hotseatOnly"    # Z

    .prologue
    .line 2065
    const/16 v16, 0x0

    .line 2066
    .local v16, "items":I
    const/4 v14, 0x0

    .line 2070
    .local v14, "fileReader":Ljava/io/FileReader;
    const/4 v9, 0x0

    .line 2071
    .local v9, "isCSC":Z
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v13

    .line 2073
    .local v13, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 2074
    const/4 v5, 0x0

    .line 2075
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v20, 0x0

    .line 2077
    .local v20, "resParser":Landroid/content/res/XmlResourceParser;
    new-instance v10, Ljava/io/File;

    const-string v2, "/data/data/com.samsung.snmc.dynamiccsc/files/default_workspace_dynamic_csc.xml"

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2079
    .local v10, "cscFileChk":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    .line 2080
    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2081
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .local v15, "fileReader":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 2082
    invoke-interface {v5, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2083
    const/4 v9, 0x1

    move-object v14, v15

    .line 2093
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    :goto_0
    :try_start_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    .line 2097
    .local v11, "depth":I
    :cond_0
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, "type":I
    const/4 v2, 0x3

    move/from16 v0, v21

    if-ne v0, v2, :cond_1

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-le v2, v11, :cond_2

    :cond_1
    const/4 v2, 0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_2

    .line 2099
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_5

    .line 2132
    :cond_2
    if-eqz v14, :cond_3

    .line 2134
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 2139
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "cscFileChk":Ljava/io/File;
    .end local v11    # "depth":I
    .end local v13    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v20    # "resParser":Landroid/content/res/XmlResourceParser;
    .end local v21    # "type":I
    :cond_3
    :goto_2
    return v16

    .line 2085
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "cscFileChk":Ljava/io/File;
    .restart local v13    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v20    # "resParser":Landroid/content/res/XmlResourceParser;
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 2086
    .local v18, "res":Landroid/content/res/Resources;
    const/16 v19, 0x0

    .line 2087
    .local v19, "resId":I
    const v19, 0x7f07000d

    .line 2088
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v20

    .line 2089
    const-string v2, "favorites"

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2090
    move-object/from16 v5, v20

    goto :goto_0

    .line 2102
    .end local v18    # "res":Landroid/content/res/Resources;
    .end local v19    # "resId":I
    .restart local v11    # "depth":I
    .restart local v21    # "type":I
    :cond_5
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_0

    .line 2106
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 2107
    .local v17, "name":Ljava/lang/String;
    const-string v2, "home"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2108
    if-nez p3, :cond_0

    .line 2109
    const-wide/16 v6, -0x64

    const/16 v8, 0xf

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ)I

    move-result v2

    add-int v16, v16, v2

    goto :goto_1

    .line 2115
    :cond_6
    const-string v2, "hotseat"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2116
    const-wide/16 v6, -0x65

    const/4 v8, 0x7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ)I

    move-result v2

    add-int v16, v16, v2

    goto :goto_1

    .line 2120
    :cond_7
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid tag <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> detected while parsing favorites at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 2125
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "cscFileChk":Ljava/io/File;
    .end local v11    # "depth":I
    .end local v13    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v17    # "name":Ljava/lang/String;
    .end local v20    # "resParser":Landroid/content/res/XmlResourceParser;
    .end local v21    # "type":I
    :catch_0
    move-exception v12

    .line 2126
    .local v12, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    :try_start_5
    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2132
    if-eqz v14, :cond_3

    .line 2134
    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 2135
    :catch_1
    move-exception v2

    goto/16 :goto_2

    .line 2127
    .end local v12    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v12

    .line 2128
    .local v12, "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2132
    if-eqz v14, :cond_3

    .line 2134
    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_2

    .line 2135
    :catch_3
    move-exception v2

    goto/16 :goto_2

    .line 2129
    .end local v12    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v12

    .line 2130
    .local v12, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_5
    :try_start_9
    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2132
    if-eqz v14, :cond_3

    .line 2134
    :try_start_a
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_2

    .line 2135
    :catch_5
    move-exception v2

    goto/16 :goto_2

    .line 2132
    .end local v12    # "e":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v2

    :goto_6
    if-eqz v14, :cond_8

    .line 2134
    :try_start_b
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 2135
    :cond_8
    :goto_7
    throw v2

    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "cscFileChk":Ljava/io/File;
    .restart local v11    # "depth":I
    .restart local v13    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v20    # "resParser":Landroid/content/res/XmlResourceParser;
    .restart local v21    # "type":I
    :catch_6
    move-exception v2

    goto/16 :goto_2

    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "cscFileChk":Ljava/io/File;
    .end local v11    # "depth":I
    .end local v13    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v20    # "resParser":Landroid/content/res/XmlResourceParser;
    .end local v21    # "type":I
    :catch_7
    move-exception v3

    goto :goto_7

    .line 2132
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "cscFileChk":Ljava/io/File;
    .restart local v13    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v20    # "resParser":Landroid/content/res/XmlResourceParser;
    :catchall_1
    move-exception v2

    move-object v14, v15

    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    goto :goto_6

    .line 2129
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :catch_8
    move-exception v12

    move-object v14, v15

    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    goto :goto_5

    .line 2127
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :catch_9
    move-exception v12

    move-object v14, v15

    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .line 2125
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :catch_a
    move-exception v12

    move-object v14, v15

    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    goto :goto_3
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    .locals 31
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "hotseatOnly"    # Z

    .prologue
    .line 2154
    const/16 v19, 0x0

    .line 2155
    .local v19, "items":I
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadFavorites table: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotseatOnly: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    :cond_0
    const/4 v14, 0x0

    .line 2159
    .local v14, "fileReader":Ljava/io/FileReader;
    const/4 v9, 0x0

    .line 2160
    .local v9, "isCSC":Z
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v13

    .line 2161
    .local v13, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 2162
    const/4 v5, 0x0

    .line 2163
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v26, 0x0

    .line 2164
    .local v26, "resParser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 2165
    .local v25, "res":Landroid/content/res/Resources;
    new-instance v10, Ljava/io/File;

    const-string v2, "/system/csc/default_workspace.xml"

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2167
    .local v10, "cscFileChk":Ljava/io/File;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v16

    .line 2168
    .local v16, "isKnoxMode":Z
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v17

    .line 2169
    .local v17, "isOwner":Z
    const/16 v18, 0x0

    .line 2172
    .local v18, "isReady2Go":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 2173
    .local v23, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.telephony"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v28

    .line 2186
    .local v28, "supportTelephony":Z
    # getter for: Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2187
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mParserRestore:Lorg/xmlpull/v1/XmlPullParser;

    .line 2188
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2189
    const/4 v9, 0x1

    .line 2190
    # getter for: Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2191
    # getter for: Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    .line 2192
    .local v24, "prefs":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PrefsIsCSCLoad"

    move-object/from16 v0, v24

    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2193
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2233
    .end local v24    # "prefs":Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    if-eqz v26, :cond_2

    .line 2235
    const-string v2, "favorites"

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2236
    move-object/from16 v5, v26

    .line 2239
    :cond_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    .line 2242
    .local v11, "depth":I
    :cond_3
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v29

    .local v29, "type":I
    const/4 v2, 0x3

    move/from16 v0, v29

    if-ne v0, v2, :cond_4

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-le v2, v11, :cond_5

    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v29

    if-eq v0, v2, :cond_5

    .line 2244
    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_11

    .line 2289
    :cond_5
    if-eqz v14, :cond_6

    .line 2291
    :try_start_1
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 2297
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "cscFileChk":Ljava/io/File;
    .end local v11    # "depth":I
    .end local v13    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v16    # "isKnoxMode":Z
    .end local v17    # "isOwner":Z
    .end local v18    # "isReady2Go":Z
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .end local v25    # "res":Landroid/content/res/Resources;
    .end local v26    # "resParser":Landroid/content/res/XmlResourceParser;
    .end local v28    # "supportTelephony":Z
    .end local v29    # "type":I
    :cond_6
    :goto_2
    # getter for: Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$200()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2298
    const/4 v2, 0x0

    # setter for: Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z
    invoke-static {v2}, Lcom/android/launcher2/LauncherProvider;->access$202(Z)Z

    :cond_7
    move/from16 v20, v19

    .line 2301
    .end local v19    # "items":I
    .local v20, "items":I
    :goto_3
    return v20

    .line 2196
    .end local v20    # "items":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "cscFileChk":Ljava/io/File;
    .restart local v13    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v16    # "isKnoxMode":Z
    .restart local v17    # "isOwner":Z
    .restart local v18    # "isReady2Go":Z
    .restart local v19    # "items":I
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v25    # "res":Landroid/content/res/Resources;
    .restart local v26    # "resParser":Landroid/content/res/XmlResourceParser;
    .restart local v28    # "supportTelephony":Z
    :cond_8
    if-eqz v16, :cond_9

    .line 2197
    const v2, 0x7f07000a

    :try_start_2
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v26

    goto :goto_0

    .line 2198
    :cond_9
    if-nez v17, :cond_a

    .line 2199
    const v2, 0x7f070009

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v26

    goto :goto_0

    .line 2200
    :cond_a
    if-eqz v18, :cond_e

    .line 2206
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mIsAttReady2GoEnable:Z

    .line 2207
    new-instance v30, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mFavoritesPath:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2208
    .local v30, "xmlFile":Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->length()J
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_d

    .line 2289
    :cond_b
    if-eqz v14, :cond_c

    .line 2291
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :cond_c
    :goto_4
    move/from16 v20, v19

    .line 2292
    .end local v19    # "items":I
    .restart local v20    # "items":I
    goto :goto_3

    .line 2211
    .end local v20    # "items":I
    .restart local v19    # "items":I
    :cond_d
    :try_start_4
    new-instance v15, Ljava/io/FileReader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mFavoritesPath:Ljava/lang/String;

    invoke-direct {v15, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2212
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .local v15, "fileReader":Ljava/io/FileReader;
    :try_start_5
    invoke-virtual {v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 2213
    invoke-interface {v5, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v14, v15

    .line 2215
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_0

    .end local v30    # "xmlFile":Ljava/io/File;
    :cond_e
    :try_start_6
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_f

    .line 2217
    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2218
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :try_start_7
    invoke-virtual {v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 2219
    invoke-interface {v5, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 2220
    const/4 v9, 0x1

    .line 2221
    # getter for: Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 2222
    # getter for: Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    .line 2223
    .restart local v24    # "prefs":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PrefsIsCSCLoad"

    move-object/from16 v0, v24

    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2224
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v14, v15

    .line 2225
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 2227
    .end local v24    # "prefs":Landroid/content/SharedPreferences$Editor;
    :cond_f
    if-nez v28, :cond_10

    .line 2228
    const v2, 0x7f07000c

    :try_start_8
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v26

    goto/16 :goto_0

    .line 2230
    :cond_10
    const v2, 0x7f070008

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v26

    goto/16 :goto_0

    .line 2247
    .restart local v11    # "depth":I
    .restart local v29    # "type":I
    :cond_11
    const/4 v2, 0x2

    move/from16 v0, v29

    if-ne v0, v2, :cond_3

    .line 2251
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 2252
    .local v21, "name":Ljava/lang/String;
    const-string v2, "home"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2253
    if-nez p3, :cond_3

    .line 2254
    const-wide/16 v6, -0x64

    const/16 v8, 0xf

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ)I

    move-result v2

    add-int v19, v19, v2

    goto/16 :goto_1

    .line 2256
    :cond_12
    const-string v2, "hotseat"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2257
    const-wide/16 v6, -0x65

    const/4 v8, 0x7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ)I

    move-result v2

    add-int v19, v19, v2

    goto/16 :goto_1

    .line 2260
    :cond_13
    const-string v2, "PageCount"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2261
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v29

    const/4 v2, 0x4

    move/from16 v0, v29

    if-ne v0, v2, :cond_3

    .line 2262
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 2263
    .local v22, "pageCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move/from16 v0, v22

    invoke-static {v2, v0, v3}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;IZ)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 2280
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "cscFileChk":Ljava/io/File;
    .end local v11    # "depth":I
    .end local v13    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v16    # "isKnoxMode":Z
    .end local v17    # "isOwner":Z
    .end local v18    # "isReady2Go":Z
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "pageCount":I
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .end local v25    # "res":Landroid/content/res/Resources;
    .end local v26    # "resParser":Landroid/content/res/XmlResourceParser;
    .end local v28    # "supportTelephony":Z
    .end local v29    # "type":I
    :catch_0
    move-exception v12

    .line 2281
    .local v12, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    :try_start_9
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2289
    :cond_14
    if-eqz v14, :cond_6

    .line 2291
    :try_start_a
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_2

    .line 2292
    :catch_1
    move-exception v2

    goto/16 :goto_2

    .line 2267
    .end local v12    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "cscFileChk":Ljava/io/File;
    .restart local v11    # "depth":I
    .restart local v13    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v16    # "isKnoxMode":Z
    .restart local v17    # "isOwner":Z
    .restart local v18    # "isReady2Go":Z
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v25    # "res":Landroid/content/res/Resources;
    .restart local v26    # "resParser":Landroid/content/res/XmlResourceParser;
    .restart local v28    # "supportTelephony":Z
    .restart local v29    # "type":I
    :cond_15
    :try_start_b
    const-string v2, "ScreenIndex"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2268
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v29

    const/4 v2, 0x4

    move/from16 v0, v29

    if-ne v0, v2, :cond_3

    .line 2269
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 2270
    .local v27, "screenIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move/from16 v0, v27

    invoke-static {v2, v0, v3}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;IZ)V
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 2283
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "cscFileChk":Ljava/io/File;
    .end local v11    # "depth":I
    .end local v13    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v16    # "isKnoxMode":Z
    .end local v17    # "isOwner":Z
    .end local v18    # "isReady2Go":Z
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .end local v25    # "res":Landroid/content/res/Resources;
    .end local v26    # "resParser":Landroid/content/res/XmlResourceParser;
    .end local v27    # "screenIndex":I
    .end local v28    # "supportTelephony":Z
    .end local v29    # "type":I
    :catch_2
    move-exception v12

    .line 2284
    .local v12, "e":Ljava/io/IOException;
    :goto_6
    :try_start_c
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2289
    :cond_16
    if-eqz v14, :cond_6

    .line 2291
    :try_start_d
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_2

    .line 2292
    :catch_3
    move-exception v2

    goto/16 :goto_2

    .line 2276
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "cscFileChk":Ljava/io/File;
    .restart local v11    # "depth":I
    .restart local v13    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v16    # "isKnoxMode":Z
    .restart local v17    # "isOwner":Z
    .restart local v18    # "isReady2Go":Z
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v25    # "res":Landroid/content/res/Resources;
    .restart local v26    # "resParser":Landroid/content/res/XmlResourceParser;
    .restart local v28    # "supportTelephony":Z
    .restart local v29    # "type":I
    :cond_17
    :try_start_e
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid tag <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> detected while parsing favorites at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 2286
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "cscFileChk":Ljava/io/File;
    .end local v11    # "depth":I
    .end local v13    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v16    # "isKnoxMode":Z
    .end local v17    # "isOwner":Z
    .end local v18    # "isReady2Go":Z
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .end local v25    # "res":Landroid/content/res/Resources;
    .end local v26    # "resParser":Landroid/content/res/XmlResourceParser;
    .end local v28    # "supportTelephony":Z
    .end local v29    # "type":I
    :catch_4
    move-exception v12

    .line 2287
    .local v12, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_7
    :try_start_f
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "LauncherProvider"

    const-string v3, "Got exception parsing favorites."

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 2289
    :cond_18
    if-eqz v14, :cond_6

    .line 2291
    :try_start_10
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_2

    .line 2292
    :catch_5
    move-exception v2

    goto/16 :goto_2

    .line 2289
    .end local v12    # "e":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v2

    :goto_8
    if-eqz v14, :cond_19

    .line 2291
    :try_start_11
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    .line 2292
    :cond_19
    :goto_9
    throw v2

    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "cscFileChk":Ljava/io/File;
    .restart local v13    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v16    # "isKnoxMode":Z
    .restart local v17    # "isOwner":Z
    .restart local v18    # "isReady2Go":Z
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v25    # "res":Landroid/content/res/Resources;
    .restart local v26    # "resParser":Landroid/content/res/XmlResourceParser;
    .restart local v28    # "supportTelephony":Z
    .restart local v30    # "xmlFile":Ljava/io/File;
    :catch_6
    move-exception v2

    goto/16 :goto_4

    .end local v30    # "xmlFile":Ljava/io/File;
    .restart local v11    # "depth":I
    .restart local v29    # "type":I
    :catch_7
    move-exception v2

    goto/16 :goto_2

    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "cscFileChk":Ljava/io/File;
    .end local v11    # "depth":I
    .end local v13    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v16    # "isKnoxMode":Z
    .end local v17    # "isOwner":Z
    .end local v18    # "isReady2Go":Z
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .end local v25    # "res":Landroid/content/res/Resources;
    .end local v26    # "resParser":Landroid/content/res/XmlResourceParser;
    .end local v28    # "supportTelephony":Z
    .end local v29    # "type":I
    :catch_8
    move-exception v3

    goto :goto_9

    .line 2289
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "cscFileChk":Ljava/io/File;
    .restart local v13    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v16    # "isKnoxMode":Z
    .restart local v17    # "isOwner":Z
    .restart local v18    # "isReady2Go":Z
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    .restart local v25    # "res":Landroid/content/res/Resources;
    .restart local v26    # "resParser":Landroid/content/res/XmlResourceParser;
    .restart local v28    # "supportTelephony":Z
    :catchall_1
    move-exception v2

    move-object v14, v15

    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    goto :goto_8

    .line 2286
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :catch_9
    move-exception v12

    move-object v14, v15

    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    goto :goto_7

    .line 2283
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :catch_a
    move-exception v12

    move-object v14, v15

    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    goto :goto_6

    .line 2280
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :catch_b
    move-exception v12

    move-object v14, v15

    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_5

    .end local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :cond_1a
    move-object v14, v15

    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_0
.end method

.method private loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ)I
    .locals 60
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "containerType"    # J
    .param p6, "allowedTags"    # I
    .param p7, "isCSC"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1843
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadFavoritesContainer. containerType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", allowedTags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    :cond_0
    new-instance v9, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v9, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1845
    .local v9, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1846
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1847
    .local v7, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1849
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v39

    .line 1850
    .local v39, "attrs":Landroid/util/AttributeSet;
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v53

    .line 1851
    .local v53, "startDepth":I
    const/16 v46, 0x0

    .line 1854
    .local v46, "items":I
    const/4 v10, 0x0

    .line 1855
    .local v10, "pkgName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1856
    .local v11, "className":Ljava/lang/String;
    const/16 v57, 0x0

    .line 1857
    .local v57, "x":Ljava/lang/String;
    const/16 v58, 0x0

    .line 1858
    .local v58, "y":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1859
    .local v18, "uri":Ljava/lang/String;
    const/16 v51, 0x0

    .line 1860
    .local v51, "spanX":Ljava/lang/String;
    const/16 v52, 0x0

    .line 1861
    .local v52, "spanY":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1862
    .local v12, "titleId":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1863
    .local v20, "imgId":Ljava/lang/String;
    const/16 v50, 0x0

    .line 1864
    .local v50, "secret":Ljava/lang/String;
    const/16 v41, 0x0

    .line 1865
    .local v41, "festival":Ljava/lang/String;
    const/16 v42, 0x0

    .line 1867
    .local v42, "folderIds":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v56

    .local v56, "type":I
    const/4 v4, 0x3

    move/from16 v0, v56

    if-ne v0, v4, :cond_2

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move/from16 v0, v53

    if-le v4, v0, :cond_3

    .line 1868
    :cond_2
    const/4 v4, 0x1

    move/from16 v0, v56

    if-ne v0, v4, :cond_5

    .line 2050
    :cond_3
    if-eqz v42, :cond_4

    .line 2051
    # getter for: Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    const-string v5, "com.sec.android.app.launcher.prefs"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v48

    .line 2052
    .local v48, "prefs":Landroid/content/SharedPreferences$Editor;
    const-string v4, "HomeFolderIds"

    move-object/from16 v0, v48

    move-object/from16 v1, v42

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2053
    invoke-interface/range {v48 .. v48}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2056
    .end local v48    # "prefs":Landroid/content/SharedPreferences$Editor;
    :cond_4
    return v46

    .line 1871
    :cond_5
    const/4 v4, 0x2

    move/from16 v0, v56

    if-ne v0, v4, :cond_1

    .line 1874
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v47

    .line 1875
    .local v47, "name":Ljava/lang/String;
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadFavoritesContainer. Process tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_6
    const-string v49, ""

    .line 1879
    .local v49, "screen":Ljava/lang/String;
    if-eqz p7, :cond_9

    .line 1880
    const/16 v17, 0x0

    .line 1881
    .local v17, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    const-string v5, "packageName"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1882
    const/4 v4, 0x0

    const-string v5, "className"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1883
    const/4 v4, 0x0

    const-string v5, "screen"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 1884
    const/4 v4, 0x0

    const-string v5, "x"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 1885
    const/4 v4, 0x0

    const-string v5, "y"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 1886
    const/4 v4, 0x0

    const-string v5, "secret"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1887
    const/4 v4, 0x0

    const-string v5, "festival"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1888
    const/4 v4, 0x0

    const-string v5, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mWidgetTitle:Ljava/lang/String;

    .line 1903
    :goto_1
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 1904
    const-string v4, "container"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1905
    const-string v4, "screen"

    move-object/from16 v0, v49

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    const-string v4, "cellX"

    move-object/from16 v0, v57

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    const-string v4, "cellY"

    move-object/from16 v0, v58

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    sget-boolean v4, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v4, :cond_7

    .line 1911
    const-string v5, "festival"

    if-nez v41, :cond_a

    const-string v4, "0"

    :goto_2
    invoke-virtual {v7, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    :cond_7
    and-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_b

    const-string v4, "favorite"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1914
    const/4 v4, 0x0

    const-string v5, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 1915
    invoke-direct/range {v4 .. v12}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addHomeShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v14, 0x0

    cmp-long v4, v4, v14

    if-ltz v4, :cond_8

    .line 1916
    add-int/lit8 v46, v46, 0x1

    .line 2046
    :cond_8
    :goto_3
    const/4 v4, 0x1

    move/from16 v0, p7

    if-eq v0, v4, :cond_1

    .line 2047
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 1891
    .end local v17    # "a":Landroid/content/res/TypedArray;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/android/app/launcher/R$styleable;->Favorite:[I

    move-object/from16 v0, v39

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 1892
    .restart local v17    # "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1893
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1894
    const/4 v4, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 1895
    const/4 v4, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 1896
    const/4 v4, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v58

    .line 1897
    const/16 v4, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 1898
    const/16 v4, 0xd

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v41

    goto/16 :goto_1

    :cond_a
    move-object/from16 v4, v41

    .line 1911
    goto :goto_2

    .line 1917
    :cond_b
    and-int/lit8 v4, p6, 0x2

    if-eqz v4, :cond_d

    const-string v4, "shortcut"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1918
    if-eqz p7, :cond_c

    .line 1919
    const/4 v4, 0x0

    const-string v5, "uri"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1920
    const/4 v4, 0x0

    const-string v5, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1921
    const/4 v4, 0x0

    const-string v5, "icon"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    :cond_c
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, v7

    move-object/from16 v19, v12

    .line 1924
    invoke-direct/range {v13 .. v20}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v14, 0x0

    cmp-long v4, v4, v14

    if-ltz v4, :cond_8

    .line 1925
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_3

    .line 1927
    :cond_d
    and-int/lit8 v4, p6, 0x8

    if-eqz v4, :cond_15

    const-string v4, "search"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1928
    const-string v51, "4"

    .line 1929
    const-string v52, "1"

    .line 1931
    if-eqz p7, :cond_13

    .line 1932
    const/4 v4, 0x0

    const-string v5, "spanX"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1933
    const/4 v4, 0x0

    const-string v5, "spanY"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 1940
    :cond_e
    :goto_4
    if-eqz v51, :cond_f

    const-string v4, "null"

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1941
    :cond_f
    const-string v51, "4"

    .line 1942
    :cond_10
    if-eqz v52, :cond_11

    const-string v4, "null"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1943
    :cond_11
    const-string v52, "1"

    .line 1945
    :cond_12
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v21, p0

    move-object/from16 v22, p1

    move-object/from16 v23, p2

    move-object/from16 v24, v7

    invoke-direct/range {v21 .. v26}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1946
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_3

    .line 1935
    :cond_13
    const/4 v4, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 1936
    const/4 v4, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 1937
    :cond_14
    const/4 v4, 0x6

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 1938
    const/4 v4, 0x6

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto :goto_4

    .line 1948
    :cond_15
    and-int/lit8 v4, p6, 0x8

    if-eqz v4, :cond_16

    const-string v4, "clock"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1949
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1950
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_3

    .line 1952
    :cond_16
    and-int/lit8 v4, p6, 0x8

    if-eqz v4, :cond_1c

    const-string v4, "appwidget"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1953
    if-eqz p7, :cond_1b

    .line 1954
    const/4 v4, 0x0

    const-string v5, "spanX"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1955
    const/4 v4, 0x0

    const-string v5, "spanY"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 1961
    :goto_5
    if-eqz v51, :cond_17

    const-string v4, "null"

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1962
    :cond_17
    const-string v51, "1"

    .line 1963
    :cond_18
    if-eqz v52, :cond_19

    const-string v4, "null"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1964
    :cond_19
    const-string v52, "1"

    .line 1965
    :cond_1a
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v21, p0

    move-object/from16 v22, p1

    move-object/from16 v23, p2

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    invoke-direct/range {v21 .. v29}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1966
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_3

    .line 1958
    :cond_1b
    const/4 v4, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 1959
    const/4 v4, 0x6

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto :goto_5

    .line 1968
    :cond_1c
    and-int/lit8 v4, p6, 0x4

    if-eqz v4, :cond_23

    const-string v4, "folder"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1969
    const/16 v54, 0x0

    .line 1970
    .local v54, "title":Ljava/lang/String;
    const/16 v55, -0x1

    .line 1971
    .local v55, "titleResId":I
    const/16 v45, 0x0

    .line 1973
    .local v45, "isHiddenAddButton":Z
    const/4 v4, 0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_1e

    .line 1974
    const/4 v4, 0x0

    const-string v5, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1975
    const/4 v4, 0x0

    const-string v5, "hideAddButton"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v45

    .line 1984
    :goto_6
    const-string v4, "title"

    move-object/from16 v0, v54

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v26

    .line 1986
    .local v26, "folderId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-ltz v4, :cond_8

    .line 1987
    add-int/lit8 v46, v46, 0x1

    .line 1989
    and-int/lit8 v28, p6, -0xd

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, p2

    move-object/from16 v25, p3

    move/from16 v29, p7

    :try_start_0
    invoke-direct/range {v22 .. v29}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ)I

    move-result v43

    .line 1992
    .local v43, "folderItemCount":I
    if-nez v43, :cond_21

    .line 1993
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->delFolder(Landroid/database/sqlite/SQLiteDatabase;J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_20

    .line 1994
    add-int/lit8 v46, v46, -0x1

    .line 2007
    :cond_1d
    :goto_7
    add-int v46, v46, v43

    goto/16 :goto_3

    .line 1977
    .end local v26    # "folderId":J
    .end local v43    # "folderItemCount":I
    :cond_1e
    const/16 v4, 0x8

    const/4 v5, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v55

    .line 1978
    const/4 v4, -0x1

    move/from16 v0, v55

    if-eq v0, v4, :cond_1f

    .line 1979
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v55

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 1981
    :cond_1f
    const/16 v4, 0xe

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v45

    goto :goto_6

    .line 1995
    .restart local v26    # "folderId":J
    .restart local v43    # "folderItemCount":I
    :cond_20
    :try_start_1
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1996
    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete empty folder. _id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 2009
    .end local v43    # "folderItemCount":I
    :catch_0
    move-exception v40

    .line 2010
    .local v40, "e":Ljava/io/IOException;
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2011
    const-string v4, "LauncherProvider"

    const-string v5, "Failed to load favorites"

    move-object/from16 v0, v40

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1999
    .end local v40    # "e":Ljava/io/IOException;
    .restart local v43    # "folderItemCount":I
    :cond_21
    if-eqz v45, :cond_1d

    .line 2000
    if-eqz v42, :cond_22

    .line 2001
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    goto :goto_7

    .line 2003
    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v42

    goto/16 :goto_7

    .line 2015
    .end local v26    # "folderId":J
    .end local v43    # "folderItemCount":I
    .end local v45    # "isHiddenAddButton":Z
    .end local v54    # "title":Ljava/lang/String;
    .end local v55    # "titleResId":I
    :cond_23
    and-int/lit8 v4, p6, 0x8

    if-eqz v4, :cond_2c

    const-string v4, "sactivitywidget"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2018
    if-eqz p7, :cond_2b

    .line 2019
    const/4 v4, 0x0

    const-string v5, "themeName"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 2020
    .local v35, "themeName":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "instance"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2021
    .local v44, "instance":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "spanX"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 2022
    const/4 v4, 0x0

    const-string v5, "spanY"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 2029
    :goto_8
    if-eqz v35, :cond_25

    .line 2030
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_24

    const-string v4, "null"

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 2031
    :cond_24
    const/16 v35, 0x0

    .line 2034
    :cond_25
    if-eqz v51, :cond_26

    const-string v4, "null"

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2035
    :cond_26
    const-string v51, "1"

    .line 2036
    :cond_27
    if-eqz v52, :cond_28

    const-string v4, "null"

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2037
    :cond_28
    const-string v52, "1"

    .line 2038
    :cond_29
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    move-object/from16 v30, p2

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v10

    move-object/from16 v34, v11

    invoke-direct/range {v28 .. v37}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addSamsungActivityWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 2039
    add-int/lit8 v46, v46, 0x1

    .line 2040
    :cond_2a
    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    move-object/from16 v30, p2

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v10

    move-object/from16 v34, v11

    move-object/from16 v36, v44

    invoke-direct/range {v28 .. v38}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addSurfaceWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2041
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_3

    .line 2024
    .end local v35    # "themeName":Ljava/lang/String;
    .end local v44    # "instance":Ljava/lang/String;
    :cond_2b
    const/16 v4, 0xa

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 2025
    .restart local v35    # "themeName":Ljava/lang/String;
    const/16 v4, 0xb

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 2026
    .restart local v44    # "instance":Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 2027
    const/4 v4, 0x6

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_8

    .line 2044
    .end local v35    # "themeName":Ljava/lang/String;
    .end local v44    # "instance":Ljava/lang/String;
    :cond_2c
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid tag <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> detected while parsing favorites at line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1328
    const-string v11, "LauncherProvider"

    const-string v12, "normalizing icons"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1331
    const/4 v1, 0x0

    .line 1332
    .local v1, "c":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 1334
    .local v10, "update":Landroid/database/sqlite/SQLiteStatement;
    const/4 v9, 0x0

    .line 1335
    .local v9, "logged":Z
    :try_start_0
    const-string v11, "UPDATE favorites SET icon=? WHERE _id=?"

    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 1338
    const-string v11, "SELECT _id, icon FROM favorites WHERE iconType=1"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1341
    if-eqz v1, :cond_9

    if-eqz v10, :cond_9

    .line 1342
    const-string v11, "_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1343
    .local v8, "idIndex":I
    const-string v11, "icon"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 1345
    .local v5, "iconIndex":I
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1346
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1347
    .local v6, "id":J
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1349
    .local v2, "data":[B
    const/4 v11, 0x0

    :try_start_1
    array-length v12, v2

    invoke-static {v2, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    iget-object v12, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/android/launcher2/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1352
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1353
    const/4 v11, 0x1

    invoke-virtual {v10, v11, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1354
    invoke-static {v0}, Lcom/android/launcher2/HomeItem;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 1355
    if-eqz v2, :cond_1

    .line 1356
    const/4 v11, 0x2

    invoke-virtual {v10, v11, v2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 1357
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1359
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1361
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 1362
    .local v3, "e":Ljava/lang/Exception;
    if-nez v9, :cond_3

    .line 1363
    :try_start_2
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1367
    :cond_2
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 1365
    :cond_3
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Also failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1374
    .end local v2    # "data":[B
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "iconIndex":I
    .end local v6    # "id":J
    .end local v8    # "idIndex":I
    :catch_1
    move-exception v4

    .line 1375
    .local v4, "ex":Landroid/database/SQLException;
    :try_start_3
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "LauncherProvider"

    const-string v12, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1377
    :cond_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1378
    if-eqz v10, :cond_5

    .line 1379
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1381
    :cond_5
    if-eqz v1, :cond_6

    .line 1382
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1385
    .end local v4    # "ex":Landroid/database/SQLException;
    :cond_6
    :goto_2
    return-void

    .line 1370
    .restart local v5    # "iconIndex":I
    .restart local v8    # "idIndex":I
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1377
    .end local v5    # "iconIndex":I
    .end local v8    # "idIndex":I
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1378
    if-eqz v10, :cond_8

    .line 1379
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1381
    :cond_8
    if-eqz v1, :cond_6

    .line 1382
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1372
    :cond_9
    :try_start_5
    const-string v11, "LauncherProvider"

    const-string v12, "Failed to create cursor while normalizing icons"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 1377
    :catchall_0
    move-exception v11

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1378
    if-eqz v10, :cond_a

    .line 1379
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1381
    :cond_a
    if-eqz v1, :cond_b

    .line 1382
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v11
.end method

.method private renamePrefsFile()V
    .locals 9

    .prologue
    .line 1213
    const-string v0, "com.android.launcher2.prefs"

    .line 1219
    .local v0, "PREFERENCES_NAME_V12":Ljava/lang/String;
    # getter for: Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1220
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 1221
    .local v6, "userId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/user/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/com.sec.android.app.launcher/shared_prefs/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "com.android.launcher2.prefs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1222
    .local v1, "knoxOldFilePath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/user/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/com.sec.android.app.launcher/shared_prefs/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1223
    .local v2, "knoxRenameFilePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1224
    .local v3, "oldFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1229
    .end local v1    # "knoxOldFilePath":Ljava/lang/String;
    .end local v2    # "knoxRenameFilePath":Ljava/lang/String;
    .end local v6    # "userId":I
    .local v4, "renameFile":Ljava/io/File;
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    .line 1230
    .local v5, "result":Z
    if-eqz v5, :cond_1

    .line 1231
    const-string v7, "LauncherProvider"

    const-string v8, "renamePrefsFile:: File renamed successfull !"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :goto_1
    return-void

    .line 1226
    .end local v3    # "oldFile":Ljava/io/File;
    .end local v4    # "renameFile":Ljava/io/File;
    .end local v5    # "result":Z
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/data/com.sec.android.app.launcher/shared_prefs/com.android.launcher2.prefs.xml"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1227
    .restart local v3    # "oldFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v7, "/data/data/com.sec.android.app.launcher/shared_prefs/com.sec.android.app.launcher.prefs.xml"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v4    # "renameFile":Ljava/io/File;
    goto :goto_0

    .line 1233
    .restart local v5    # "result":Z
    :cond_1
    const-string v7, "LauncherProvider"

    const-string v8, "renamePrefsFile:: File renamed operation failed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private resetCount()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 2673
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2674
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2675
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "homescreenindex"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2676
    const-string v2, "homescreenindex.simple"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2677
    const-string v2, "screencount"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2678
    const-string v2, "screencount.simple"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2679
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2680
    return-void
.end method

.method private sendAppWidgetResetNotify()V
    .locals 3

    .prologue
    .line 640
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 641
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 642
    return-void
.end method

.method private updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 25
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1256
    const/4 v12, 0x0

    .line 1257
    .local v12, "c":Landroid/database/Cursor;
    const-string v4, "itemType"

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v8, 0x1

    aput v8, v5, v6

    invoke-static {v4, v5}, Lcom/android/launcher2/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v7

    .line 1260
    .local v7, "selectWhere":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1263
    :try_start_0
    const-string v5, "favorites"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v4

    const/4 v4, 0x1

    const-string v8, "intent"

    aput-object v8, v6, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1266
    if-eqz v12, :cond_8

    .line 1267
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found upgrade cursor count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_0
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 1270
    .local v24, "values":Landroid/content/ContentValues;
    const-string v4, "_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1271
    .local v18, "idIndex":I
    const-string v4, "intent"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1273
    .local v20, "intentIndex":I
    :cond_1
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1274
    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1275
    .local v16, "favoriteId":J
    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v21

    .line 1276
    .local v21, "intentUri":Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 1278
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v21

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v19

    .line 1279
    .local v19, "intent":Landroid/content/Intent;
    const-string v4, "Home"

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    .line 1281
    .local v23, "uri":Landroid/net/Uri;
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1282
    .local v13, "data":Ljava/lang/String;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "content://contacts/people/"

    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "content://com.android.contacts/contacts/lookup/"

    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1286
    :cond_2
    new-instance v19, Landroid/content/Intent;

    .end local v19    # "intent":Landroid/content/Intent;
    const-string v4, "com.android.contacts.action.QUICK_CONTACT"

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1287
    .restart local v19    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x14200000

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1291
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1292
    const-string v4, "mode"

    const/4 v5, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1293
    const-string v5, "exclude_mimes"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1295
    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentValues;->clear()V

    .line 1296
    const-string v4, "intent"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1299
    .local v22, "updateWhere":Ljava/lang/String;
    const-string v4, "favorites"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1301
    .end local v13    # "data":Ljava/lang/String;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v22    # "updateWhere":Ljava/lang/String;
    .end local v23    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v15

    .line 1302
    .local v15, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1303
    const-string v4, "LauncherProvider"

    const-string v5, "Problem upgrading shortcut"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1314
    .end local v15    # "ex":Ljava/lang/RuntimeException;
    .end local v16    # "favoriteId":J
    .end local v18    # "idIndex":I
    .end local v20    # "intentIndex":I
    .end local v21    # "intentUri":Ljava/lang/String;
    .end local v24    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v15

    .line 1315
    .local v15, "ex":Landroid/database/SQLException;
    :try_start_3
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "LauncherProvider"

    const-string v5, "Problem while upgrading contacts"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1316
    :cond_3
    const/4 v4, 0x0

    .line 1318
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1319
    if-eqz v12, :cond_4

    .line 1320
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1324
    .end local v15    # "ex":Landroid/database/SQLException;
    :cond_4
    :goto_1
    return v4

    .line 1304
    .restart local v16    # "favoriteId":J
    .restart local v18    # "idIndex":I
    .restart local v20    # "intentIndex":I
    .restart local v21    # "intentUri":Ljava/lang/String;
    .restart local v24    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v14

    .line 1305
    .local v14, "e":Ljava/net/URISyntaxException;
    :try_start_4
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1306
    const-string v4, "LauncherProvider"

    const-string v5, "Problem upgrading shortcut"

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1318
    .end local v14    # "e":Ljava/net/URISyntaxException;
    .end local v16    # "favoriteId":J
    .end local v18    # "idIndex":I
    .end local v20    # "intentIndex":I
    .end local v21    # "intentUri":Ljava/lang/String;
    .end local v24    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1319
    if-eqz v12, :cond_5

    .line 1320
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4

    .line 1310
    .restart local v18    # "idIndex":I
    .restart local v20    # "intentIndex":I
    .restart local v24    # "values":Landroid/content/ContentValues;
    :cond_6
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1318
    .end local v18    # "idIndex":I
    .end local v20    # "intentIndex":I
    .end local v24    # "values":Landroid/content/ContentValues;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1319
    if-eqz v12, :cond_7

    .line 1320
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1324
    :cond_7
    const/4 v4, 0x1

    goto :goto_1

    .line 1312
    :cond_8
    :try_start_6
    const-string v4, "LauncherProvider"

    const-string v5, "Failed to create cursor for updateContactsShortcuts"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public exchangeComponentFromApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Ljava/lang/String;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1132
    .local p2, "cnUpdates":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/content/ComponentName;>;"
    const-string v7, "LauncherProvider"

    const-string v8, "exchangeComponentFromApp"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT _id,intent FROM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " WHERE intent IS NOT NULL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1135
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 1137
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPDATE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " SET intent=? WHERE _id=?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 1139
    .local v6, "update":Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1140
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1142
    .local v2, "id":J
    const/4 v7, 0x1

    :try_start_1
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 1143
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 1144
    .local v5, "oldCn":Landroid/content/ComponentName;
    if-eqz v5, :cond_0

    .line 1145
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1146
    .local v4, "newCn":Landroid/content/ComponentName;
    if-eqz v4, :cond_0

    .line 1147
    const/4 v7, 0x2

    invoke-virtual {v6, v7, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1148
    const/4 v7, 0x1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1149
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1152
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "newCn":Landroid/content/ComponentName;
    .end local v5    # "oldCn":Landroid/content/ComponentName;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 1156
    .end local v2    # "id":J
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1158
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1161
    .end local v6    # "update":Landroid/database/sqlite/SQLiteStatement;
    :cond_2
    return-void

    .line 1158
    :catchall_0
    move-exception v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v7
.end method

.method public generateNewAppOrderId()J
    .locals 2

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    .line 1398
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: mMaxAppOrderId was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewFavoritesId()J
    .locals 2

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    .line 1390
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: mMaxFavoriteId was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewSprintFolderId()J
    .locals 2

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxSprintFolderId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    .line 1406
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: mMaxSprintFolderId was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxSprintFolderId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSprintFolderID(Z)J
    .locals 8
    .param p1, "isFeatured"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 1735
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSprintFolderID :: isFeatured: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v4, "com.sec.android.app.launcher.prefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1737
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-wide/16 v0, -0x1

    .line 1738
    .local v0, "id":J
    if-eqz p1, :cond_1

    .line 1739
    const-string v3, "sprintFeaturedFolderID"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1743
    :goto_0
    return-wide v0

    .line 1741
    :cond_1
    const-string v3, "sprintFolderID"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public loadFrontAppOrder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1750
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->frontMenuApps:Ljava/util/ArrayList;

    .line 1751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOnlyLoadFrontApps:Z

    .line 1753
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderDefaults(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 1755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mOnlyLoadFrontApps:Z

    .line 1756
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->frontMenuApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-wide/16 v4, 0x0

    .line 646
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LauncherProvider"

    const-string v2, "creating new launcher database"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 650
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 651
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 655
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 656
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 658
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 659
    const-string v1, "favorites"

    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 660
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 661
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createSprintFolderTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 663
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 664
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createAppOrderTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 666
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 668
    const-string v1, "favorites"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    .line 670
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderDefaults(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 671
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 1165
    move v6, p2

    .line 1166
    .local v6, "version":I
    const-string v7, "LauncherProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDowngrade triggered :: oldVersion:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newVersion:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const/16 v7, 0xd

    if-ge p3, v7, :cond_0

    .line 1171
    const-string v0, "com.sec.android.app.launcher.prefs"

    .line 1174
    .local v0, "PREFERENCES_NAME_V13":Ljava/lang/String;
    # getter for: Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$100()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    const-string v8, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v7, v8}, Lcom/android/launcher2/LauncherApplication;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1175
    .local v2, "oldFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1178
    .end local v0    # "PREFERENCES_NAME_V13":Ljava/lang/String;
    .end local v2    # "oldFile":Ljava/io/File;
    :cond_0
    const/16 v7, 0xe

    if-eq v6, v7, :cond_7

    .line 1179
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getTablesList(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1180
    .local v5, "tablesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1181
    .local v4, "table":Ljava/lang/String;
    const-string v7, "favorites"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "appOrder"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "prefs"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DROP TABLE IF EXISTS "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1188
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "LauncherProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onDownGrade:: Dropping extra table:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1191
    .end local v4    # "table":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .line 1193
    .local v3, "reCreateDatabase":Z
    const-string v7, "favorites"

    invoke-direct {p0, p1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "appOrder"

    invoke-direct {p0, p1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1194
    :cond_3
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1195
    const-string v7, "LauncherProvider"

    const-string v8, "onDownGrade:: favorites/appOrder doesnot exist"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_4
    const/4 v3, 0x1

    .line 1198
    :cond_5
    if-eqz v3, :cond_7

    .line 1200
    const-string v7, "LauncherProvider"

    const-string v8, "Destroying all old data."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->resetCount()V

    .line 1202
    const-string v7, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1203
    const-string v7, "DROP TABLE IF EXISTS appOrder"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1204
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1205
    const-string v7, "DROP TABLE IF EXISTS prefs"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1206
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1209
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "reCreateDatabase":Z
    .end local v5    # "tablesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 889
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LauncherProvider"

    const-string v1, "onOpen triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createPublicPreferences(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 895
    :goto_0
    return-void

    .line 893
    :cond_1
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0xb

    const/16 v5, 0x9

    const/4 v4, 0x3

    .line 899
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LauncherProvider"

    const-string v3, "onUpgrade triggered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_0
    move v1, p2

    .line 902
    .local v1, "version":I
    if-ge v1, v4, :cond_1

    .line 904
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 907
    :try_start_0
    const-string v2, "ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 909
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    const/4 v1, 0x3

    .line 915
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 919
    :goto_0
    if-ne v1, v4, :cond_1

    .line 920
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 924
    :cond_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 925
    const/4 v1, 0x4

    .line 936
    :cond_2
    const/4 v2, 0x6

    if-ge v1, v2, :cond_3

    .line 938
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 940
    :try_start_1
    const-string v2, "UPDATE favorites SET screen=(screen + 1);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 946
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 950
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 951
    const/4 v1, 0x6

    .line 955
    :cond_3
    const/4 v2, 0x7

    if-ge v1, v2, :cond_4

    .line 957
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 958
    const/4 v1, 0x7

    .line 961
    :cond_4
    const/16 v2, 0x8

    if-ge v1, v2, :cond_5

    .line 965
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 966
    const/16 v1, 0x8

    .line 969
    :cond_5
    if-ge v1, v5, :cond_7

    .line 972
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v2, :cond_6

    .line 973
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getMaxFavoriteID(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 977
    :cond_6
    const-string v2, "favorites"

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    .line 978
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createAppOrderTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 979
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderDefaults(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 980
    const/16 v1, 0x9

    .line 982
    :cond_7
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v2

    const/16 v3, 0x258

    if-lt v2, v3, :cond_8

    if-eq v1, v5, :cond_9

    :cond_8
    if-ge v1, v6, :cond_9

    .line 983
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 986
    :try_start_2
    const-string v2, "ALTER TABLE favorites ADD COLUMN iconMovieUri TEXT"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 988
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 989
    const/16 v1, 0xb

    .line 994
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 998
    :cond_9
    :goto_2
    if-ne v1, v6, :cond_a

    .line 1000
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1002
    :try_start_3
    const-string v2, "ALTER TABLE favorites ADD COLUMN festival INTEGER"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1003
    const-string v2, "ALTER TABLE favorites ADD COLUMN color INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1004
    const-string v2, "ALTER TABLE favorites ADD COLUMN secret INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1005
    const-string v2, "ALTER TABLE appOrder ADD COLUMN color INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1006
    const-string v2, "ALTER TABLE appOrder ADD COLUMN secret INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1008
    const/16 v1, 0xe

    .line 1012
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1014
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->checkHomescreenArrangement(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1015
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->renamePrefsFile()V

    .line 1018
    :cond_a
    const/16 v2, 0xc

    if-ne v1, v2, :cond_b

    .line 1020
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1022
    :try_start_4
    const-string v2, "ALTER TABLE favorites ADD COLUMN festival INTEGER"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1023
    const-string v2, "ALTER TABLE favorites ADD COLUMN color INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1024
    const-string v2, "ALTER TABLE appOrder ADD COLUMN color INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1026
    const/16 v1, 0xe

    .line 1030
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1032
    :goto_4
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->checkHomescreenArrangement(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1033
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->renamePrefsFile()V

    .line 1036
    :cond_b
    const/16 v2, 0xd

    if-ge v1, v2, :cond_c

    .line 1038
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1041
    :try_start_5
    const-string v2, "ALTER TABLE favorites ADD COLUMN color INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1043
    const-string v2, "ALTER TABLE appOrder ADD COLUMN color INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1047
    const/16 v1, 0xd

    .line 1052
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1054
    :goto_5
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->checkHomescreenArrangement(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1055
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->renamePrefsFile()V

    .line 1058
    :cond_c
    if-ge v1, v7, :cond_d

    .line 1059
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1061
    :try_start_6
    const-string v2, "ALTER TABLE favorites ADD COLUMN secret INTEGER"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1062
    const-string v2, "ALTER TABLE favorites ADD COLUMN festival INTEGER"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1063
    const-string v2, "ALTER TABLE favorites ADD COLUMN pkgName TEXT"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1064
    const-string v2, "ALTER TABLE appOrder ADD COLUMN secret INTEGER"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 1066
    const/16 v1, 0xe

    .line 1070
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1074
    :cond_d
    :goto_6
    if-eq v1, v7, :cond_e

    .line 1075
    const-string v2, "LauncherProvider"

    const-string v3, "Destroying all old data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->resetCount()V

    .line 1077
    const-string v2, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1078
    const-string v2, "DROP TABLE IF EXISTS appOrder"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1081
    :cond_e
    return-void

    .line 911
    :catch_0
    move-exception v0

    .line 913
    .local v0, "ex":Landroid/database/SQLException;
    :try_start_7
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 915
    :cond_f
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 942
    :catch_1
    move-exception v0

    .line 944
    .restart local v0    # "ex":Landroid/database/SQLException;
    :try_start_8
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 946
    :cond_10
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_1
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 990
    :catch_2
    move-exception v0

    .line 992
    .restart local v0    # "ex":Landroid/database/SQLException;
    :try_start_9
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 994
    :cond_11
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_2

    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_2
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 1009
    :catch_3
    move-exception v0

    .line 1010
    .restart local v0    # "ex":Landroid/database/SQLException;
    :try_start_a
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1012
    :cond_12
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_3

    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_3
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 1027
    :catch_4
    move-exception v0

    .line 1028
    .restart local v0    # "ex":Landroid/database/SQLException;
    :try_start_b
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1030
    :cond_13
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_4

    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_4
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 1048
    :catch_5
    move-exception v0

    .line 1050
    .restart local v0    # "ex":Landroid/database/SQLException;
    :try_start_c
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 1052
    :cond_14
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_5

    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_5
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 1067
    :catch_6
    move-exception v0

    .line 1068
    .restart local v0    # "ex":Landroid/database/SQLException;
    :try_start_d
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 1070
    :cond_15
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_6

    .end local v0    # "ex":Landroid/database/SQLException;
    :catchall_6
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public setSprintFolderId(JZ)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "isFeatured"    # Z

    .prologue
    .line 1723
    # getter for: Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSprintFolderID :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , isFeatured : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1725
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1726
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p3, :cond_1

    .line 1727
    const-string v2, "sprintFeaturedFolderID"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1731
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1732
    return-void

    .line 1729
    :cond_1
    const-string v2, "sprintFolderID"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method switchToDynamicIfNecessary(I)Z
    .locals 6
    .param p1, "basicEasymode"    # I

    .prologue
    const/4 v5, 0x0

    .line 1455
    const-string v2, "DYNAMIC_CSC_J-TDD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchToDynamicIfNecessary basicEasymode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1457
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 1458
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1459
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.launcher2.settings/favorites"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1463
    :cond_0
    const-string v2, "favorites"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadDynamicCscFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    .line 1464
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 1465
    const/4 v0, 0x1

    .line 1470
    :cond_1
    return v0
.end method
