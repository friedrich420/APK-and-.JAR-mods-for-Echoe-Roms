.class public Lcom/android/launcher2/BindWidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BindWidgetReceiver.java"


# static fields
.field public static final ACTION_BIND_WIDGET:Ljava/lang/String; = "com.android.launcher.action.BIND_WIDGET"

.field public static final ACTION_BIND_WIDGET_COMPLETE:Ljava/lang/String; = "com.android.launcher.action.BIND_WIDGET_COMPLETE"

.field public static final ACTION_UNBIND_WIDGET:Ljava/lang/String; = "com.android.launcher.action.UNBIND_WIDGET"

.field public static final EXTRA_COMPONENT:Ljava/lang/String; = "componentName"

.field public static final EXTRA_SPANX:Ljava/lang/String; = "spanX"

.field public static final EXTRA_SPANY:Ljava/lang/String; = "spanY"

.field public static final EXTRA_WIDGET_NAME:Ljava/lang/String; = "widgetName"

.field private static final TAG:Ljava/lang/String; = "Launcher.BindWidgetReceiver"

.field private static final mCoordinates:[I

.field private static mCountX:I

.field private static mCountY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher2/BindWidgetReceiver;->mCoordinates:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private bindWidget(Landroid/content/Context;Landroid/content/Intent;IZ)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "screen"    # I
    .param p4, "isSecretItem"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 283
    const/4 v1, 0x0

    .line 285
    .local v1, "binded":Z
    const-string v6, "componentName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 286
    .local v2, "cn":Landroid/content/ComponentName;
    const/4 v6, 0x2

    new-array v5, v6, [I

    const-string v6, "spanX"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v8

    const-string v6, "spanX"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v9

    .line 288
    .local v5, "spanXY":[I
    sget-object v6, Lcom/android/launcher2/BindWidgetReceiver;->mCoordinates:[I

    invoke-static {p1, v6, p3, v5}, Lcom/android/launcher2/BindWidgetReceiver;->findEmptyCell(Landroid/content/Context;[II[I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 290
    .local v0, "app":Lcom/android/launcher2/LauncherApplication;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v4

    .line 292
    .local v4, "launcher":Lcom/android/launcher2/Launcher;
    :goto_0
    if-eqz v4, :cond_0

    iget-object v6, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v6, :cond_0

    .line 293
    new-instance v3, Lcom/android/launcher2/HomeWidgetItem;

    invoke-direct {v3, v2, v7}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/content/ComponentName;I)V

    .line 295
    .local v3, "item":Lcom/android/launcher2/HomeWidgetItem;
    invoke-virtual {v3, p3}, Lcom/android/launcher2/HomeWidgetItem;->setPosition(I)V

    .line 296
    sget-object v6, Lcom/android/launcher2/BindWidgetReceiver;->mCoordinates:[I

    aget v6, v6, v8

    iput v6, v3, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    .line 297
    sget-object v6, Lcom/android/launcher2/BindWidgetReceiver;->mCoordinates:[I

    aget v6, v6, v9

    iput v6, v3, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    .line 298
    aget v6, v5, v8

    iput v6, v3, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    .line 299
    aget v6, v5, v9

    iput v6, v3, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    .line 300
    const-wide/16 v6, -0x64

    iput-wide v6, v3, Lcom/android/launcher2/HomeWidgetItem;->container:J

    .line 301
    iput-boolean p4, v3, Lcom/android/launcher2/HomeWidgetItem;->mSecretItem:Z

    .line 303
    iget-object v6, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6, v3}, Lcom/android/launcher2/HomeView;->addWidgetFromIntent(Lcom/android/launcher2/HomeWidgetItem;)V

    .line 305
    const/4 v1, 0x1

    .line 309
    .end local v0    # "app":Lcom/android/launcher2/LauncherApplication;
    .end local v3    # "item":Lcom/android/launcher2/HomeWidgetItem;
    .end local v4    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_0
    return v1

    .line 290
    .restart local v0    # "app":Lcom/android/launcher2/LauncherApplication;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static findEmptyCell(Landroid/content/Context;[II[I)Z
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xy"    # [I
    .param p2, "screen"    # I
    .param p3, "spanXY"    # [I

    .prologue
    .line 314
    sget v2, Lcom/android/launcher2/BindWidgetReceiver;->mCountX:I

    sget v3, Lcom/android/launcher2/BindWidgetReceiver;->mCountY:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    .line 316
    .local v7, "occupied":[[Z
    const-wide/16 v2, -0x64

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v2, v3, v1}, Lcom/android/launcher2/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;JI)Ljava/util/ArrayList;

    move-result-object v12

    .line 319
    .local v12, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/HomeItem;

    .line 320
    .local v11, "item":Lcom/android/launcher2/HomeItem;
    iget v8, v11, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 321
    .local v8, "cellX":I
    iget v9, v11, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 322
    .local v9, "cellY":I
    iget v14, v11, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 323
    .local v14, "spanX":I
    iget v15, v11, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 324
    .local v15, "spanY":I
    move/from16 v20, v8

    .local v20, "x":I
    :goto_0
    add-int v2, v8, v14

    move/from16 v0, v20

    if-ge v0, v2, :cond_0

    sget v2, Lcom/android/launcher2/BindWidgetReceiver;->mCountX:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_0

    .line 325
    move/from16 v21, v9

    .local v21, "y":I
    :goto_1
    add-int v2, v9, v15

    move/from16 v0, v21

    if-ge v0, v2, :cond_1

    sget v2, Lcom/android/launcher2/BindWidgetReceiver;->mCountY:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_1

    .line 326
    aget-object v2, v7, v20

    const/4 v3, 0x1

    aput-boolean v3, v2, v21

    .line 325
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 324
    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 331
    .end local v8    # "cellX":I
    .end local v9    # "cellY":I
    .end local v11    # "item":Lcom/android/launcher2/HomeItem;
    .end local v14    # "spanX":I
    .end local v15    # "spanY":I
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_2
    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 332
    .local v13, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "tempScreen"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_4

    .line 333
    const-string v2, "tempCellX"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 334
    .local v16, "tempCellX":I
    const-string v2, "tempCellY"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 335
    .local v17, "tempCellY":I
    const-string v2, "tempSpanX"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 336
    .local v18, "tempSpanX":I
    const-string v2, "tempSpanY"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 337
    .local v19, "tempSpanY":I
    move/from16 v20, v16

    .restart local v20    # "x":I
    :goto_2
    add-int v2, v16, v18

    move/from16 v0, v20

    if-ge v0, v2, :cond_4

    sget v2, Lcom/android/launcher2/BindWidgetReceiver;->mCountX:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_4

    .line 338
    move/from16 v21, v17

    .restart local v21    # "y":I
    :goto_3
    add-int v2, v17, v19

    move/from16 v0, v21

    if-ge v0, v2, :cond_3

    sget v2, Lcom/android/launcher2/BindWidgetReceiver;->mCountY:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_3

    .line 339
    aget-object v2, v7, v20

    const/4 v3, 0x1

    aput-boolean v3, v2, v21

    .line 338
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 337
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 346
    .end local v16    # "tempCellX":I
    .end local v17    # "tempCellY":I
    .end local v18    # "tempSpanX":I
    .end local v19    # "tempSpanY":I
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_4
    const/4 v2, 0x0

    aget v3, p3, v2

    const/4 v2, 0x1

    aget v4, p3, v2

    sget v5, Lcom/android/launcher2/BindWidgetReceiver;->mCountX:I

    sget v6, Lcom/android/launcher2/BindWidgetReceiver;->mCountY:I

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public bindWidget(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 145
    const-string v23, "componentName"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 146
    .local v6, "cn":Landroid/content/ComponentName;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v23, 0x0

    const-string v24, "spanX"

    const/16 v25, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    aput v24, v20, v23

    const/16 v23, 0x1

    const-string v24, "spanX"

    const/16 v25, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    aput v24, v20, v23

    .line 148
    .local v20, "spanXY":[I
    if-eqz v6, :cond_0

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_0

    const/16 v23, 0x0

    aget v23, v20, v23

    if-lez v23, :cond_0

    const/16 v23, 0x1

    aget v23, v20, v23

    if-gtz v23, :cond_5

    .line 149
    :cond_0
    if-eqz v6, :cond_1

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    :cond_1
    const-string v23, "Launcher.BindWidgetReceiver"

    const-string v24, "ComponentName is null or empty"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_2
    const/16 v23, 0x0

    aget v23, v20, v23

    if-lez v23, :cond_3

    const/16 v23, 0x1

    aget v23, v20, v23

    if-gtz v23, :cond_4

    :cond_3
    const-string v23, "Launcher.BindWidgetReceiver"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Span ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget v25, v20, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x1

    aget v25, v20, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_4
    :goto_0
    return-void

    .line 154
    :cond_5
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 156
    .local v14, "pkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 157
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const/16 v19, 0x0

    .line 161
    .local v19, "secretList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v19, :cond_b

    const/4 v10, 0x0

    .line 164
    .local v10, "isSecretItem":Z
    :goto_1
    const/4 v11, 0x0

    .line 165
    .local v11, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/LauncherApplication;

    .line 166
    .local v4, "app":Lcom/android/launcher2/LauncherApplication;
    if-eqz v4, :cond_6

    .line 167
    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v11

    .line 170
    :cond_6
    const/16 v17, 0x0

    .line 171
    .local v17, "screen":I
    const/4 v7, 0x0

    .line 172
    .local v7, "hv":Lcom/android/launcher2/HomeView;
    const/16 v22, 0x0

    .line 174
    .local v22, "ws":Lcom/android/launcher2/Workspace;
    if-eqz v11, :cond_7

    .line 175
    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v7

    .line 176
    if-eqz v7, :cond_7

    .line 177
    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v22

    .line 182
    :cond_7
    if-eqz v7, :cond_8

    if-eqz v22, :cond_8

    .line 183
    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v17

    .line 198
    sget-boolean v23, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v23, :cond_8

    sget-boolean v23, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v23, :cond_8

    .line 199
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 201
    .local v5, "cl":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 206
    const/16 v17, 0x0

    .line 211
    .end local v5    # "cl":Lcom/android/launcher2/CellLayout;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 212
    .local v16, "res":Landroid/content/res/Resources;
    const v23, 0x7f0c0021

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v23

    sput v23, Lcom/android/launcher2/BindWidgetReceiver;->mCountX:I

    .line 213
    const v23, 0x7f0c0022

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v23

    sput v23, Lcom/android/launcher2/BindWidgetReceiver;->mCountY:I

    .line 214
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/android/launcher2/BindWidgetReceiver;->bindWidget(Landroid/content/Context;Landroid/content/Intent;IZ)Z

    move-result v9

    .line 215
    .local v9, "installed":Z
    if-nez v9, :cond_e

    if-eqz v7, :cond_e

    if-eqz v22, :cond_e

    .line 217
    const/16 v21, 0x0

    .line 218
    .local v21, "startScreen":I
    const/16 v18, 0x0

    .line 220
    .local v18, "screenCount":I
    if-eqz v10, :cond_c

    .line 221
    const/16 v21, 0x0

    .line 222
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v18

    .line 230
    :goto_2
    move/from16 v8, v21

    .local v8, "i":I
    :goto_3
    move/from16 v0, v18

    if-ge v8, v0, :cond_d

    if-nez v9, :cond_d

    .line 231
    move/from16 v0, v17

    if-eq v8, v0, :cond_9

    .line 232
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v8, v10}, Lcom/android/launcher2/BindWidgetReceiver;->bindWidget(Landroid/content/Context;Landroid/content/Intent;IZ)Z

    move-result v9

    .line 234
    :cond_9
    if-eqz v9, :cond_a

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v23

    move/from16 v0, v23

    if-eq v8, v0, :cond_a

    .line 235
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 230
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 161
    .end local v4    # "app":Lcom/android/launcher2/LauncherApplication;
    .end local v7    # "hv":Lcom/android/launcher2/HomeView;
    .end local v8    # "i":I
    .end local v9    # "installed":Z
    .end local v10    # "isSecretItem":Z
    .end local v11    # "launcher":Lcom/android/launcher2/Launcher;
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v17    # "screen":I
    .end local v18    # "screenCount":I
    .end local v21    # "startScreen":I
    .end local v22    # "ws":Lcom/android/launcher2/Workspace;
    :cond_b
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    goto/16 :goto_1

    .line 225
    .restart local v4    # "app":Lcom/android/launcher2/LauncherApplication;
    .restart local v7    # "hv":Lcom/android/launcher2/HomeView;
    .restart local v9    # "installed":Z
    .restart local v10    # "isSecretItem":Z
    .restart local v11    # "launcher":Lcom/android/launcher2/Launcher;
    .restart local v16    # "res":Landroid/content/res/Resources;
    .restart local v17    # "screen":I
    .restart local v18    # "screenCount":I
    .restart local v21    # "startScreen":I
    .restart local v22    # "ws":Lcom/android/launcher2/Workspace;
    :cond_c
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v21

    .line 226
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v18

    goto :goto_2

    .line 240
    .restart local v8    # "i":I
    :cond_d
    if-nez v9, :cond_e

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v23

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_e

    .line 241
    if-eqz v7, :cond_e

    if-eqz v22, :cond_e

    .line 242
    if-eqz v10, :cond_f

    .line 243
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v23

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_e

    .line 244
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v23

    add-int/lit8 v13, v23, 0x1

    .line 245
    .local v13, "newPage":I
    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13, v10}, Lcom/android/launcher2/BindWidgetReceiver;->bindWidget(Landroid/content/Context;Landroid/content/Intent;IZ)Z

    move-result v9

    .line 247
    if-eqz v9, :cond_e

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 271
    .end local v8    # "i":I
    .end local v13    # "newPage":I
    .end local v18    # "screenCount":I
    .end local v21    # "startScreen":I
    :cond_e
    :goto_4
    if-nez v9, :cond_4

    .line 272
    const v23, 0x7f10001a

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 273
    .local v12, "msg":Ljava/lang/String;
    if-eqz v11, :cond_11

    .line 274
    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v12, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 250
    .end local v12    # "msg":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v18    # "screenCount":I
    .restart local v21    # "startScreen":I
    :cond_f
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v23

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_e

    .line 251
    sget-boolean v23, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v23, :cond_10

    sget-boolean v23, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v23, :cond_10

    .line 252
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v23

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v24

    sub-int v13, v23, v24

    .line 253
    .restart local v13    # "newPage":I
    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    .line 254
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13, v10}, Lcom/android/launcher2/BindWidgetReceiver;->bindWidget(Landroid/content/Context;Landroid/content/Intent;IZ)Z

    move-result v9

    .line 256
    if-eqz v9, :cond_e

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_4

    .line 258
    .end local v13    # "newPage":I
    :cond_10
    invoke-virtual {v7}, Lcom/android/launcher2/HomeView;->addPage()V

    .line 259
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v23

    add-int/lit8 v13, v23, -0x1

    .line 260
    .restart local v13    # "newPage":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13, v10}, Lcom/android/launcher2/BindWidgetReceiver;->bindWidget(Landroid/content/Context;Landroid/content/Intent;IZ)Z

    move-result v9

    .line 262
    if-eqz v9, :cond_e

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_4

    .line 276
    .end local v8    # "i":I
    .end local v13    # "newPage":I
    .end local v18    # "screenCount":I
    .end local v21    # "startScreen":I
    .restart local v12    # "msg":Ljava/lang/String;
    :cond_11
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v12, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 64
    if-eqz p2, :cond_0

    const-string v0, "com.android.launcher.action.BIND_WIDGET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.launcher.action.UNBIND_WIDGET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string v0, "com.android.launcher.action.BIND_WIDGET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/BindWidgetReceiver;->bindWidget(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "com.android.launcher.action.UNBIND_WIDGET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/BindWidgetReceiver;->unBindWidget(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public unBindWidget(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 72
    const-string v3, "appWidgetId"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 73
    .local v12, "appWidgetId":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v10, "appList":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz v12, :cond_6

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 77
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "screen"

    aput-object v6, v4, v5

    const-string v5, "appWidgetId=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 81
    .local v14, "c":Landroid/database/Cursor;
    if-eqz v14, :cond_6

    .line 83
    const-string v3, "_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 84
    .local v19, "idIndex":I
    const-string v3, "screen"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 86
    .local v24, "screenIndex":I
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v23, v0

    .line 88
    .local v23, "param":[I
    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v23, v3

    .line 89
    const/4 v3, 0x1

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v23, v3

    .line 90
    move-object/from16 v0, v23

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    .end local v23    # "param":[I
    :cond_0
    if-eqz v14, :cond_1

    .line 94
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 95
    const/4 v14, 0x0

    .line 98
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 99
    const/16 v22, 0x0

    .line 100
    .local v22, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/LauncherApplication;

    .line 101
    .local v9, "app":Lcom/android/launcher2/LauncherApplication;
    if-eqz v9, :cond_2

    .line 102
    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v22

    .line 104
    :cond_2
    const/16 v17, 0x0

    .line 105
    .local v17, "hv":Lcom/android/launcher2/HomeView;
    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v17

    .line 107
    :cond_3
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_6

    .line 108
    move/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [I

    .line 112
    .local v21, "info":[I
    const-wide/16 v4, -0x64

    const/4 v3, 0x1

    aget v3, v21, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 115
    .local v15, "cl":Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    invoke-virtual {v15}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->allItems()Ljava/util/List;

    move-result-object v8

    .line 117
    .local v8, "allItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    const/16 v20, 0x0

    .local v20, "idx":I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_5

    .line 118
    move/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/BaseItem;

    .line 119
    .local v13, "bi":Lcom/android/launcher2/BaseItem;
    instance-of v3, v13, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v3, :cond_4

    iget-wide v4, v13, Lcom/android/launcher2/BaseItem;->mId:J

    const/4 v3, 0x0

    aget v3, v21, v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 121
    invoke-virtual {v15, v13}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-object v3, v13

    .line 123
    check-cast v3, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    move-object/from16 v16, v13

    .line 125
    check-cast v16, Lcom/android/launcher2/HomeWidgetItem;

    .line 126
    .local v16, "homeWidgetItem":Lcom/android/launcher2/HomeWidgetItem;
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v11

    .line 127
    .local v11, "appWidgetHost":Lcom/android/launcher2/LauncherAppWidgetHost;
    if-eqz v11, :cond_4

    .line 128
    new-instance v3, Lcom/android/launcher2/BindWidgetReceiver$1;

    const-string v4, "Unbind widget from BindWidgetReceiver"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v4, v11, v1}, Lcom/android/launcher2/BindWidgetReceiver$1;-><init>(Lcom/android/launcher2/BindWidgetReceiver;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {v3}, Lcom/android/launcher2/BindWidgetReceiver$1;->start()V

    .line 117
    .end local v11    # "appWidgetHost":Lcom/android/launcher2/LauncherAppWidgetHost;
    .end local v16    # "homeWidgetItem":Lcom/android/launcher2/HomeWidgetItem;
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 107
    .end local v13    # "bi":Lcom/android/launcher2/BaseItem;
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 142
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "allItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/BaseItem;>;"
    .end local v9    # "app":Lcom/android/launcher2/LauncherApplication;
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v15    # "cl":Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    .end local v17    # "hv":Lcom/android/launcher2/HomeView;
    .end local v18    # "i":I
    .end local v19    # "idIndex":I
    .end local v20    # "idx":I
    .end local v21    # "info":[I
    .end local v22    # "launcher":Lcom/android/launcher2/Launcher;
    .end local v24    # "screenIndex":I
    :cond_6
    return-void
.end method
