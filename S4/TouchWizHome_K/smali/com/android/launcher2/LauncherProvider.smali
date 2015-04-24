.class public Lcom/android/launcher2/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherProvider$SqlArguments;,
        Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.launcher.settings"

.field static final CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

.field static final CSC_FILE_MAINMENU:Ljava/lang/String; = "/system/csc/default_application_order.xml"

.field static final CSC_FILE_WORKSPACE:Ljava/lang/String; = "/system/csc/default_workspace.xml"

.field private static final DATABASE_NAME:Ljava/lang/String; = "launcher.db"

.field private static final DATABASE_VERSION:I = 0xe

.field private static final DEBUGGABLE:Z

.field static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field public static final PREFS_HIDDENADD_HOMEFOLDERIDS:Ljava/lang/String; = "HomeFolderIds"

.field public static final PREFS_ISCSCLOAD:Ljava/lang/String; = "PrefsIsCSCLoad"

.field public static final PREFS_PREFESTIVAL:Ljava/lang/String; = "PrefsPreFestival"

.field public static final PREFS_PRESECRET:Ljava/lang/String; = "PrefsPreSecret"

.field static final TABLE_APPORDER:Ljava/lang/String; = "appOrder"

.field static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field static final TABLE_PUBLIC_PREFERENCES:Ljava/lang/String; = "prefs"

.field private static final TAG:Ljava/lang/String; = "LauncherProvider"

.field private static mApp:Lcom/android/launcher2/LauncherApplication;

.field private static mBasePathForRestore:Ljava/lang/String;

.field private static mIsRestoreHomeScreen:Z


# instance fields
.field protected mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    .line 114
    const-string v0, "content://com.sec.android.app.launcher.settings/appWidgetReset"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    .line 2879
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z

    .line 2880
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->mBasePathForRestore:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2748
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$100()Lcom/android/launcher2/LauncherApplication;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 81
    sput-boolean p0, Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/launcher2/LauncherProvider;->mBasePathForRestore:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/android/launcher2/LauncherProvider;->getBitmapFromBackupPath(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 2913
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2917
    :cond_1
    if-eq v0, v2, :cond_2

    .line 2918
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2921
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2922
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2925
    :cond_3
    return-void
.end method

.method static buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4
    .param p0, "column"    # Ljava/lang/String;
    .param p1, "values"    # [I

    .prologue
    .line 2738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2739
    .local v1, "selectWhere":Ljava/lang/StringBuilder;
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2740
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2741
    if-lez v0, :cond_0

    .line 2742
    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2739
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2745
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p0, "helper"    # Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "nullColumnHack"    # Ljava/lang/String;
    .param p4, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 470
    const-string v0, "_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to add item without specifying an id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getBitmapFromBackupPath(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "basePath"    # Ljava/lang/String;
    .param p1, "iconName"    # Ljava/lang/String;

    .prologue
    .line 2901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2902
    .local v1, "iconNameWithPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2903
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2906
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .restart local v0    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public LoadAttReady2GoDB(Ljava/lang/String;)I
    .locals 1
    .param p1, "favoritesPath"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 156
    .local v0, "item_inserted":I
    return v0
.end method

.method public addHomeFolderItems(JLcom/android/launcher2/HomeFolderItem;)V
    .locals 15
    .param p1, "container"    # J
    .param p3, "folderItem"    # Lcom/android/launcher2/HomeFolderItem;

    .prologue
    const/4 v9, 0x1

    .line 201
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 202
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x0

    .line 204
    .local v7, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v6, "INSERT into favorites (_id, itemType, container, screen, cellX, cellY, spanX, spanY, title, intent, iconType, secret, festival) values(?,?,?,?,?,?,?,?,?,?,?,?,?)"

    .line 207
    .local v6, "sql":Ljava/lang/String;
    const-string v8, "INSERT into favorites (_id, itemType, container, screen, cellX, cellY, spanX, spanY, title, intent, iconType, secret, festival) values(?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    .line 209
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 210
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v5

    .line 211
    .local v5, "itemCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_5

    .line 212
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeShortcutItem;

    .line 213
    .local v2, "appItem":Lcom/android/launcher2/HomeShortcutItem;
    if-eqz v2, :cond_1

    .line 214
    const/4 v8, 0x1

    iget-wide v10, v2, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 215
    iget-object v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v10, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v8, v10, :cond_0

    iget-object v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v10, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v8, v10, :cond_2

    .line 216
    :cond_0
    const/4 v8, 0x2

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 219
    :goto_1
    const/4 v8, 0x3

    move-wide/from16 v0, p1

    invoke-virtual {v7, v8, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 220
    const/4 v8, 0x4

    iget v10, v2, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    int-to-long v10, v10

    invoke-virtual {v7, v8, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 221
    const/4 v8, 0x5

    const-wide/16 v10, -0x1

    invoke-virtual {v7, v8, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 222
    const/4 v8, 0x6

    const-wide/16 v10, -0x1

    invoke-virtual {v7, v8, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 223
    const/4 v8, 0x7

    const-wide/16 v10, 0x1

    invoke-virtual {v7, v8, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 224
    const/16 v8, 0x8

    const-wide/16 v10, 0x1

    invoke-virtual {v7, v8, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 225
    const/16 v8, 0x9

    iget-object v10, v2, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 226
    const/16 v8, 0xa

    invoke-virtual {v2}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 228
    const/16 v8, 0xb

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 229
    const/16 v10, 0xc

    iget-boolean v8, v2, Lcom/android/launcher2/HomeShortcutItem;->mSecretItem:Z

    if-eqz v8, :cond_4

    move v8, v9

    :goto_2
    int-to-long v12, v8

    invoke-virtual {v7, v10, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 230
    const/16 v8, 0xd

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 232
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 211
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 218
    :cond_2
    const/4 v8, 0x2

    const-wide/16 v10, 0x1

    invoke-virtual {v7, v8, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 238
    .end local v2    # "appItem":Lcom/android/launcher2/HomeShortcutItem;
    .end local v4    # "i":I
    .end local v5    # "itemCount":I
    .end local v6    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_3

    .line 239
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 240
    :cond_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 229
    .restart local v2    # "appItem":Lcom/android/launcher2/HomeShortcutItem;
    .restart local v4    # "i":I
    .restart local v5    # "itemCount":I
    .restart local v6    # "sql":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 236
    .end local v2    # "appItem":Lcom/android/launcher2/HomeShortcutItem;
    :cond_5
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    if-eqz v7, :cond_6

    .line 239
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 240
    :cond_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 242
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 491
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 493
    .local v0, "args":Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 494
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 496
    :try_start_0
    array-length v3, p2

    .line 497
    .local v3, "numValues":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 498
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v2

    invoke-static {v4, v1, v5, v6, v7}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 499
    const/4 v4, 0x0

    .line 504
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 508
    :goto_1
    return v4

    .line 497
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 502
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 507
    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 508
    array-length v4, p2

    goto :goto_1

    .line 504
    .end local v2    # "i":I
    .end local v3    # "numValues":I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 513
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 515
    .local v0, "args":Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 516
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 517
    .local v1, "count":I
    if-lez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 518
    :cond_0
    return v1
.end method

.method public generateNewHomeId()J
    .locals 2

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewMenuId()J
    .locals 2

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewSprintFolderId()J
    .locals 2

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewSprintFolderId()J

    move-result-wide v0

    return-wide v0
.end method

.method getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
    .locals 2

    .prologue
    .line 2727
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    if-nez v0, :cond_0

    .line 2728
    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    .line 2730
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    return-object v0
.end method

.method public getScreenCount()I
    .locals 6

    .prologue
    .line 2825
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2826
    const/4 v4, -0x1

    .line 2847
    :goto_0
    return v4

    .line 2829
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2830
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 2831
    .local v0, "c":Landroid/database/Cursor;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v4

    int-to-long v2, v4

    .line 2834
    .local v2, "id":J
    :try_start_0
    const-string v4, "SELECT value FROM prefs WHERE key=\'numScreens\'"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2838
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2839
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 2842
    :cond_1
    if-eqz v0, :cond_2

    .line 2843
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2847
    :cond_2
    long-to-int v4, v2

    goto :goto_0

    .line 2842
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 2843
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4
.end method

.method public getScreenIndex()I
    .locals 7

    .prologue
    .line 2797
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v6, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v3, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2798
    const/4 v3, -0x1

    .line 2821
    :goto_0
    return v3

    .line 2801
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2802
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 2803
    .local v0, "c":Landroid/database/Cursor;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v3

    int-to-long v4, v3

    .line 2806
    .local v4, "id":J
    :try_start_0
    const-string v3, "SELECT value  FROM prefs WHERE key=\'defaultScreen\'"

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2810
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2811
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 2816
    :cond_1
    if-eqz v0, :cond_2

    .line 2817
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2821
    :cond_2
    :goto_1
    long-to-int v3, v4

    goto :goto_0

    .line 2813
    :catch_0
    move-exception v2

    .line 2814
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "LauncherProvider"

    const-string v6, "Could not get screen index from db"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2816
    if-eqz v0, :cond_2

    .line 2817
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2816
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 2817
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method public getShortcutInfo(Lcom/android/launcher2/HomeItem;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 10
    .param p1, "item"    # Lcom/android/launcher2/HomeItem;

    .prologue
    .line 2851
    new-instance v5, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v5}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    .line 2852
    .local v5, "shortcut":Lcom/android/launcher2/HomeShortcutItem;
    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2853
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 2855
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT title, icon  FROM favorites WHERE _id=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2858
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2859
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    .line 2860
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 2861
    .local v3, "image":[B
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2863
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    array-length v7, v3

    invoke-static {v3, v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2864
    const/4 v3, 0x0

    .line 2870
    .end local v3    # "image":[B
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    if-eqz v0, :cond_1

    .line 2871
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2873
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2875
    :goto_0
    return-object v5

    .line 2867
    :catch_0
    move-exception v2

    .line 2868
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "LauncherProvider"

    const-string v7, "Could not get icon from the database"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2870
    if-eqz v0, :cond_2

    .line 2871
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2873
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 2870
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_3

    .line 2871
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2873
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v6
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 129
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v2, v2}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    .local v0, "args":Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vnd.android.cursor.dir/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "type":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 134
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vnd.android.cursor.item/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "type":Ljava/lang/String;
    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 478
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 480
    .local v0, "args":Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 481
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    iget-object v6, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v5, v1, v6, v4, p2}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 482
    .local v2, "rowId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_0

    .line 486
    :goto_0
    return-object v4

    .line 484
    :cond_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 485
    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v4, p1

    .line 486
    goto :goto_0
.end method

.method public loadFrontApps()Ljava/util/ArrayList;
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
    .line 551
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFrontAppOrder()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public moveAppOrderModify(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 268
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 270
    .local v3, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v4, "UPDATE appOrder set screen=? where _id=?"

    .line 271
    .local v4, "updateString":Ljava/lang/String;
    const-string v5, "UPDATE appOrder set screen=? where _id=?"

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 273
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 274
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    .line 275
    .local v2, "item":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v5, 0x1

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 276
    const/4 v5, 0x2

    iget-wide v6, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 277
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 281
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .end local v4    # "updateString":Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_0

    .line 282
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 283
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 279
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "updateString":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    if-eqz v3, :cond_2

    .line 282
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 283
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 285
    return-void
.end method

.method public moveFavorites(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$FavoritePos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$FavoritePos;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 176
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 178
    .local v3, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v4, "UPDATE favorites set container=?,screen=?,cellX=?,cellY=?,secret=?,festival=? where _id=?"

    .line 179
    .local v4, "updateString":Ljava/lang/String;
    const-string v5, "UPDATE favorites set container=?,screen=?,cellX=?,cellY=?,secret=?,festival=? where _id=?"

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 181
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 182
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    .line 183
    .local v2, "item":Lcom/android/launcher2/LauncherSettings$FavoritePos;
    const/4 v5, 0x1

    iget-wide v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->container:J

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 184
    const/4 v5, 0x2

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->screen:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 185
    const/4 v5, 0x3

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellX:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 186
    const/4 v5, 0x4

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellY:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 187
    const/4 v5, 0x5

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->secret:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 188
    const/4 v5, 0x6

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->festival:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 189
    const/4 v5, 0x7

    iget-wide v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 190
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 194
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/android/launcher2/LauncherSettings$FavoritePos;
    .end local v4    # "updateString":Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_0

    .line 195
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 196
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 192
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "updateString":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    if-eqz v3, :cond_2

    .line 195
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 196
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 198
    return-void
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    .line 122
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    .line 123
    sget-object v0, Lcom/android/launcher2/LauncherProvider;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/LauncherApplication;->setLauncherProvider(Lcom/android/launcher2/LauncherProvider;)V

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 163
    new-instance v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 164
    .local v8, "args":Lcom/android/launcher2/LauncherProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 165
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 168
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 169
    .local v9, "result":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 171
    :cond_0
    return-object v9
.end method

.method public restoreHomeScreenDB(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "basePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2886
    const/4 v1, 0x0

    .line 2887
    .local v1, "item_inserted":I
    sput-object p2, Lcom/android/launcher2/LauncherProvider;->mBasePathForRestore:Ljava/lang/String;

    .line 2888
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/launcher2/LauncherProvider;->mIsRestoreHomeScreen:Z

    .line 2889
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    # setter for: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mParserRestore:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v2, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$502(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    .line 2890
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2891
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "favorites"

    invoke-virtual {v0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2892
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    const-string v3, "favorites"

    # invokes: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    invoke-static {v2, v0, v3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$600(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    move-result v1

    .line 2893
    if-nez v1, :cond_0

    .line 2895
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    const-string v3, "favorites"

    # invokes: Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    invoke-static {v2, v0, v3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->access$600(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    .line 2897
    :cond_0
    return v1
.end method

.method protected sendNotify(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 532
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "notify":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 536
    :cond_1
    return-void
.end method

.method switchToDynamicMode(I)Z
    .locals 1
    .param p1, "basicEasymode"    # I

    .prologue
    .line 2792
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->switchToDynamicIfNecessary(I)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 523
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 525
    .local v0, "args":Lcom/android/launcher2/LauncherProvider$SqlArguments;
    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 526
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 527
    .local v1, "count":I
    if-lez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 528
    :cond_0
    return v1
.end method

.method public updateAppItems(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 312
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 313
    .local v4, "insertFolder":Landroid/database/sqlite/SQLiteStatement;
    const/4 v8, 0x0

    .line 314
    .local v8, "updateFolder":Landroid/database/sqlite/SQLiteStatement;
    const/4 v9, 0x0

    .line 315
    .local v9, "updateTitle":Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x0

    .line 316
    .local v3, "insertApp":Landroid/database/sqlite/SQLiteStatement;
    const/4 v6, 0x0

    .line 317
    .local v6, "updateApp":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x0

    .line 318
    .local v1, "deleteItem":Landroid/database/sqlite/SQLiteStatement;
    const/4 v7, 0x0

    .line 320
    .local v7, "updateColor":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 321
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    .line 322
    .local v5, "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 324
    :pswitch_0
    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_0

    .line 325
    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder insert folder: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    if-nez v4, :cond_1

    .line 328
    const-string v10, "INSERT into appOrder (_id,screen,cell,title,secret,color) values(?,?,?,?,?,?)"

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 329
    :cond_1
    const/4 v10, 0x1

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v4, v10, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 330
    const/4 v10, 0x2

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v12, v11

    invoke-virtual {v4, v10, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 331
    const/4 v10, 0x3

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    int-to-long v12, v11

    invoke-virtual {v4, v10, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 332
    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    if-nez v10, :cond_9

    .line 333
    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 336
    :goto_1
    const/4 v12, 0x5

    iget-boolean v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    if-eqz v10, :cond_a

    const-wide/16 v10, 0x1

    :goto_2
    invoke-virtual {v4, v12, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 337
    const/4 v11, 0x6

    sget-boolean v10, Lcom/android/launcher2/LauncherApplication;->sIsFolderColorSupport:Z

    if-eqz v10, :cond_b

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->color:I

    :goto_3
    int-to-long v12, v10

    invoke-virtual {v4, v11, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 338
    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_2

    .line 339
    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder insert folder: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 451
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :catchall_0
    move-exception v10

    if-eqz v4, :cond_3

    .line 452
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 453
    :cond_3
    if-eqz v8, :cond_4

    .line 454
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 455
    :cond_4
    if-eqz v9, :cond_5

    .line 456
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 457
    :cond_5
    if-eqz v3, :cond_6

    .line 458
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 459
    :cond_6
    if-eqz v6, :cond_7

    .line 460
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 461
    :cond_7
    if-eqz v1, :cond_8

    .line 462
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 463
    :cond_8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v10

    .line 335
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_9
    const/4 v10, 0x4

    :try_start_1
    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 336
    :cond_a
    const-wide/16 v10, 0x0

    goto/16 :goto_2

    .line 337
    :cond_b
    const/4 v10, -0x1

    goto/16 :goto_3

    .line 345
    :pswitch_1
    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_c

    .line 346
    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder update folder: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_c
    if-nez v8, :cond_d

    .line 349
    const-string v10, "UPDATE appOrder set screen=?,cell=?,title=?,secret=? where _id=?"

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 350
    :cond_d
    const/4 v10, 0x1

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v12, v11

    invoke-virtual {v8, v10, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 351
    const/4 v10, 0x2

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    int-to-long v12, v11

    invoke-virtual {v8, v10, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 352
    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    if-nez v10, :cond_f

    .line 353
    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 356
    :goto_4
    const/4 v12, 0x4

    iget-boolean v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    if-eqz v10, :cond_10

    const-wide/16 v10, 0x1

    :goto_5
    invoke-virtual {v8, v12, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 358
    const/4 v10, 0x5

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v8, v10, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 359
    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_e

    .line 360
    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder update folder: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_e
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 355
    :cond_f
    const/4 v10, 0x3

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_4

    .line 356
    :cond_10
    const-wide/16 v10, 0x0

    goto :goto_5

    .line 366
    :pswitch_2
    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_11

    .line 367
    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder update title: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_11
    if-nez v9, :cond_12

    .line 369
    const-string v10, "UPDATE appOrder set title=? where _id=?"

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 371
    :cond_12
    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    if-nez v10, :cond_13

    .line 372
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 375
    :goto_6
    const/4 v10, 0x2

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v9, v10, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 376
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 374
    :cond_13
    const/4 v10, 0x1

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_6

    .line 379
    :pswitch_3
    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_14

    .line 380
    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder create app: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_14
    if-nez v3, :cond_15

    .line 386
    const-string v10, "INSERT into appOrder (_id,folderId,screen,cell,hidden,title,componentName,secret) values(?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 387
    :cond_15
    const/4 v10, 0x1

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v3, v10, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 388
    const/4 v10, 0x2

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v3, v10, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 389
    const/4 v10, 0x3

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v12, v11

    invoke-virtual {v3, v10, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 390
    const/4 v10, 0x4

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    int-to-long v12, v11

    invoke-virtual {v3, v10, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 391
    const/4 v12, 0x5

    iget-boolean v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    if-eqz v10, :cond_17

    const-wide/16 v10, 0x1

    :goto_7
    invoke-virtual {v3, v12, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 392
    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    if-nez v10, :cond_18

    .line 393
    const/4 v10, 0x6

    invoke-virtual {v3, v10}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 396
    :goto_8
    const/4 v10, 0x7

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 397
    const/16 v12, 0x8

    iget-boolean v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    if-eqz v10, :cond_19

    const-wide/16 v10, 0x1

    :goto_9
    invoke-virtual {v3, v12, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 398
    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_16

    .line 399
    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder create app: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_16
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 391
    :cond_17
    const-wide/16 v10, 0x0

    goto/16 :goto_7

    .line 395
    :cond_18
    const/4 v10, 0x6

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_8

    .line 397
    :cond_19
    const-wide/16 v10, 0x0

    goto :goto_9

    .line 405
    :pswitch_4
    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_1a

    .line 406
    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder update app: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_1a
    if-nez v6, :cond_1b

    .line 410
    const-string v10, "UPDATE appOrder set folderId=?,screen=?,cell=?,hidden=?,title=?,secret=? where _id=?"

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 412
    :cond_1b
    const/4 v10, 0x1

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v6, v10, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 413
    const/4 v10, 0x2

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    int-to-long v12, v11

    invoke-virtual {v6, v10, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 414
    const/4 v10, 0x3

    iget v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    int-to-long v12, v11

    invoke-virtual {v6, v10, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 415
    const/4 v12, 0x4

    iget-boolean v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    if-eqz v10, :cond_1d

    const-wide/16 v10, 0x1

    :goto_a
    invoke-virtual {v6, v12, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 416
    iget-object v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    if-nez v10, :cond_1e

    .line 417
    const/4 v10, 0x5

    invoke-virtual {v6, v10}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 420
    :goto_b
    const/4 v12, 0x6

    iget-boolean v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    if-eqz v10, :cond_1f

    const-wide/16 v10, 0x1

    :goto_c
    invoke-virtual {v6, v12, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 421
    const/4 v10, 0x7

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v6, v10, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 422
    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_1c

    .line 423
    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder update app: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->secret:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_1c
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 415
    :cond_1d
    const-wide/16 v10, 0x0

    goto/16 :goto_a

    .line 419
    :cond_1e
    const/4 v10, 0x5

    iget-object v11, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_b

    .line 420
    :cond_1f
    const-wide/16 v10, 0x0

    goto/16 :goto_c

    .line 429
    :pswitch_5
    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_20

    .line 430
    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder delete item: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_20
    if-nez v1, :cond_21

    .line 432
    const-string v10, "DELETE from appOrder where _id=?"

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 433
    :cond_21
    const/4 v10, 0x1

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v1, v10, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 434
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 437
    :pswitch_6
    sget-boolean v10, Lcom/android/launcher2/LauncherProvider;->DEBUGGABLE:Z

    if-eqz v10, :cond_22

    .line 438
    const-string v10, "LauncherProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appOrder update color: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->color:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_22
    if-nez v7, :cond_23

    .line 440
    const-string v10, "UPDATE appOrder set color=? where _id=?"

    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    .line 443
    :cond_23
    const/4 v11, 0x1

    sget-boolean v10, Lcom/android/launcher2/LauncherApplication;->sIsFolderColorSupport:Z

    if-eqz v10, :cond_24

    iget v10, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->color:I

    :goto_d
    int-to-long v12, v10

    invoke-virtual {v7, v11, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 444
    const/4 v10, 0x2

    iget-wide v12, v5, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-virtual {v7, v10, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 445
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 443
    :cond_24
    const/4 v10, -0x1

    goto :goto_d

    .line 449
    .end local v5    # "update":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_25
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    if-eqz v4, :cond_26

    .line 452
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 453
    :cond_26
    if-eqz v8, :cond_27

    .line 454
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 455
    :cond_27
    if-eqz v9, :cond_28

    .line 456
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 457
    :cond_28
    if-eqz v3, :cond_29

    .line 458
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 459
    :cond_29
    if-eqz v6, :cond_2a

    .line 460
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 461
    :cond_2a
    if-eqz v1, :cond_2b

    .line 462
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 463
    :cond_2b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 466
    return-void

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public updateScreenCount()V
    .locals 6

    .prologue
    .line 299
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 301
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "UPDATE prefs SET value=? WHERE key=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 303
    .local v1, "update":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 304
    const/4 v2, 0x2

    const-string v3, "numScreens"

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 305
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 306
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 308
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "update":Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    return-void
.end method

.method public updateScreenIdFavorites(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$FavoritePos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/LauncherSettings$FavoritePos;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 247
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 249
    .local v3, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v4, "UPDATE favorites set screen=? where _id=?"

    .line 250
    .local v4, "updateString":Ljava/lang/String;
    const-string v5, "UPDATE favorites set screen=? where _id=?"

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 252
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 253
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    .line 254
    .local v2, "item":Lcom/android/launcher2/LauncherSettings$FavoritePos;
    const/4 v5, 0x1

    iget v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->screen:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 255
    const/4 v5, 0x2

    iget-wide v6, v2, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 256
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 260
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/android/launcher2/LauncherSettings$FavoritePos;
    .end local v4    # "updateString":Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_0

    .line 261
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 262
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 258
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "updateString":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    if-eqz v3, :cond_2

    .line 261
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 262
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 264
    return-void
.end method

.method public updateScreenIndex()V
    .locals 6

    .prologue
    .line 287
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 289
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "UPDATE prefs SET value=? WHERE key=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 291
    .local v1, "update":Landroid/database/sqlite/SQLiteStatement;
    const/4 v2, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 292
    const/4 v2, 0x2

    const-string v3, "defaultScreen"

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 293
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 294
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 296
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "update":Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    return-void
.end method
