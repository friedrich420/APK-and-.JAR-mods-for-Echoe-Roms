.class public Lcom/android/launcher2/LauncherProviderID;
.super Landroid/content/ContentProvider;
.source "LauncherProviderID.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.launcher.settings.id"

.field static final CONTENT_APPWIDGET_UNBIND_URI:Landroid/net/Uri;

.field private static final FAVORITES:Ljava/lang/String; = "favorites"

.field static final PARAMETER_INITID:Ljava/lang/String; = "initId"

.field private static final SPRINTFOLDER:Ljava/lang/String; = "sprintFolder"

.field static final SPRINTFOLDER_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "Launcher.LauncherProviderID"

.field static final WIDGET_CLS_NAME:Ljava/lang/String; = "widgetClsName"

.field static final WIDGET_PKG_NAME:Ljava/lang/String; = "widgetPkgName"


# instance fields
.field private mLauncherProvider:Lcom/android/launcher2/LauncherProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "content://com.sec.android.app.launcher.settings/sprintFolder?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherProviderID;->SPRINTFOLDER_URI:Landroid/net/Uri;

    .line 53
    const-string v0, "content://com.sec.android.app.launcher.settings.id/appWidgetUnbind"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherProviderID;->CONTENT_APPWIDGET_UNBIND_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getLauncherProvider()Lcom/android/launcher2/LauncherProvider;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/launcher2/LauncherProviderID;->mLauncherProvider:Lcom/android/launcher2/LauncherProvider;

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherProviderID;->mLauncherProvider:Lcom/android/launcher2/LauncherProvider;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProviderID;->mLauncherProvider:Lcom/android/launcher2/LauncherProvider;

    return-object v0
.end method

.method private handleWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 22
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 116
    const-string v19, "itemType"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 117
    .local v13, "itemType":I
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v13, v0, :cond_4

    const-string v19, "appWidgetId"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    const-string v19, "appWidgetId"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    const-string v19, "widgetPkgName"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 121
    const-string v19, "widgetPkgName"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 122
    .local v14, "pkg":Ljava/lang/String;
    const-string v19, "widgetClsName"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, "cls":Ljava/lang/String;
    const-string v19, "widgetPkgName"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 124
    const-string v19, "widgetClsName"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 125
    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v14, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .local v10, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    .line 128
    .local v8, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    const/4 v12, 0x0

    .line 129
    .local v12, "insert":Z
    invoke-virtual {v8}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v18

    .line 130
    .local v18, "wids":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/appwidget/AppWidgetProviderInfo;

    .line 131
    .local v15, "w":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v0, v15, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 132
    const/4 v12, 0x1

    goto :goto_0

    .line 136
    .end local v15    # "w":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    if-eqz v12, :cond_5

    .line 137
    new-instance v6, Landroid/appwidget/AppWidgetHost;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x400

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 138
    .local v6, "appWidgetHost":Landroid/appwidget/AppWidgetHost;
    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v7

    .line 140
    .local v7, "appWidgetId":I
    const-string v19, "appWidgetId"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v19

    const-string v20, "favorites"

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 146
    .local v16, "rowId":J
    const-wide/16 v20, 0x0

    cmp-long v19, v16, v20

    if-gtz v19, :cond_2

    .line 147
    const/16 v19, 0x0

    .line 159
    .end local v6    # "appWidgetHost":Landroid/appwidget/AppWidgetHost;
    .end local v7    # "appWidgetId":I
    .end local v8    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v9    # "cls":Ljava/lang/String;
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "insert":Z
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v16    # "rowId":J
    .end local v18    # "wids":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :goto_1
    return-object v19

    .line 149
    .restart local v6    # "appWidgetHost":Landroid/appwidget/AppWidgetHost;
    .restart local v7    # "appWidgetId":I
    .restart local v8    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .restart local v9    # "cls":Ljava/lang/String;
    .restart local v10    # "cn":Landroid/content/ComponentName;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "insert":Z
    .restart local v14    # "pkg":Ljava/lang/String;
    .restart local v16    # "rowId":J
    .restart local v18    # "wids":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_2
    invoke-virtual {v8, v7, v10}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 150
    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    move-object/from16 v19, p2

    .line 151
    goto :goto_1

    .line 153
    :cond_3
    const-string v19, "Launcher.LauncherProviderID"

    const-string v20, "Problem allocating appWidgetId"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v6    # "appWidgetHost":Landroid/appwidget/AppWidgetHost;
    .end local v7    # "appWidgetId":I
    .end local v8    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v9    # "cls":Ljava/lang/String;
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "insert":Z
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v16    # "rowId":J
    .end local v18    # "wids":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_4
    :goto_2
    const/16 v19, 0x0

    goto :goto_1

    .line 155
    .restart local v8    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .restart local v9    # "cls":Ljava/lang/String;
    .restart local v10    # "cn":Landroid/content/ComponentName;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "insert":Z
    .restart local v14    # "pkg":Ljava/lang/String;
    .restart local v18    # "wids":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_5
    const-string v19, "Launcher.LauncherProviderID"

    const-string v20, "No insertion for widget"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private initValues(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 163
    const-string v1, "initId"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "initId":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    :cond_0
    const-string v1, "_id"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 167
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const-string v4, "favorites"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    const-string v1, "Launcher.LauncherProviderID"

    const-string v4, "Generating a new ID: Favoriates"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherProvider;->generateNewHomeId()J

    move-result-wide v2

    .line 174
    .local v2, "newId":J
    :goto_0
    const-string v1, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 179
    .end local v2    # "newId":J
    :cond_1
    :goto_1
    return-void

    .line 171
    :cond_2
    const-string v1, "Launcher.LauncherProviderID"

    const-string v4, "Generating a new ID: sprintFolder"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherProvider;->generateNewSprintFolderId()J

    move-result-wide v2

    .restart local v2    # "newId":J
    goto :goto_0

    .line 177
    .end local v2    # "newId":J
    :cond_3
    const-string v1, "Launcher.LauncherProviderID"

    const-string v4, "Using old ID on insert"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    .line 185
    .local v1, "provider":Lcom/android/launcher2/LauncherProvider;
    sget-object v2, Lcom/android/launcher2/LauncherProviderID;->CONTENT_APPWIDGET_UNBIND_URI:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    const-string v2, "Launcher.LauncherProviderID"

    const-string v3, "Unbinding widget"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x400

    invoke-direct {v0, v2, v3}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 188
    .local v0, "awh":Landroid/appwidget/AppWidgetHost;
    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 189
    const/4 v2, 0x1

    .line 191
    .end local v0    # "awh":Landroid/appwidget/AppWidgetHost;
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher2/LauncherProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    .line 86
    .local v0, "provider":Lcom/android/launcher2/LauncherProvider;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/LauncherProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    .line 92
    .local v1, "provider":Lcom/android/launcher2/LauncherProvider;
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/LauncherProviderID;->initValues(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 93
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const-string v4, "favorites"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherProvider;->getDatabaseHelper()Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 95
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher2/LauncherProviderID;->handleWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 96
    .local v2, "wUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 112
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "wUri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 100
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "wUri":Landroid/net/Uri;
    :cond_0
    const-string v3, "widgetPkgName"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    const-string v3, "widgetPkgName"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 104
    :cond_1
    const-string v3, "widgetClsName"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    const-string v3, "widgetClsName"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 108
    :cond_2
    const-string v3, "Launcher.LauncherProviderID"

    const-string v4, "About to insert"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 112
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "wUri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/LauncherProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "sortBy"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    .local v0, "provider":Lcom/android/launcher2/LauncherProvider;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/LauncherProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    .line 80
    .local v0, "provider":Lcom/android/launcher2/LauncherProvider;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher2/LauncherProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
