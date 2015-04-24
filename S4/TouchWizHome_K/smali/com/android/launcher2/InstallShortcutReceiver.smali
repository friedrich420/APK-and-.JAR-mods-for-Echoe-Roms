.class public Lcom/android/launcher2/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# static fields
.field public static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field public static final SHORTCUT_MIMETYPE:Ljava/lang/String; = "com.android.launcher/shortcut"

.field private static final mCoordinates:[I

.field private static mCountX:I

.field private static mCountY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private createPageAddShortcut(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 123
    const/4 v12, 0x0

    .line 124
    .local v12, "installed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    .line 125
    .local v2, "app":Lcom/android/launcher2/LauncherApplication;
    const/4 v15, 0x0

    .line 126
    .local v15, "launcher":Lcom/android/launcher2/Launcher;
    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v15

    .line 130
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v8

    .line 131
    .local v8, "pageCount":I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v3

    if-lt v8, v3, :cond_1

    move v13, v12

    .line 151
    .end local v12    # "installed":Z
    .local v13, "installed":I
    :goto_0
    return v13

    .line 137
    .end local v13    # "installed":I
    .restart local v12    # "installed":Z
    :cond_1
    const-string v3, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    .line 138
    .local v14, "intent":Landroid/content/Intent;
    if-eqz v14, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v14}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 139
    if-nez v15, :cond_3

    .line 140
    add-int/lit8 v3, v8, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    .line 148
    :goto_1
    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v3

    const-wide/16 v6, -0x64

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v3 .. v11}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/HomeShortcutItem;

    .line 149
    const/4 v12, 0x1

    :cond_2
    move v13, v12

    .line 151
    .restart local v13    # "installed":I
    goto :goto_0

    .line 142
    .end local v13    # "installed":I
    :cond_3
    sget-boolean v3, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v3, :cond_4

    .line 143
    iget-object v3, v15, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v8, v4}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    goto :goto_1

    .line 145
    :cond_4
    iget-object v3, v15, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->addPage()V

    goto :goto_1
.end method

.method private static findEmptyCell(Landroid/content/Context;[II)Z
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xy"    # [I
    .param p2, "screen"    # I

    .prologue
    .line 169
    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    sget v3, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    .line 171
    .local v7, "occupied":[[Z
    const-wide/16 v2, -0x64

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v2, v3, v1}, Lcom/android/launcher2/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;JI)Ljava/util/ArrayList;

    move-result-object v13

    .line 173
    .local v13, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sAddedHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/HomeItem;

    .line 174
    .local v8, "addeditem":Lcom/android/launcher2/HomeItem;
    iget v2, v8, Lcom/android/launcher2/HomeItem;->mScreen:I

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 175
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    .end local v8    # "addeditem":Lcom/android/launcher2/HomeItem;
    :cond_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/HomeItem;

    .line 179
    .local v12, "item":Lcom/android/launcher2/HomeItem;
    iget v9, v12, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 180
    .local v9, "cellX":I
    iget v10, v12, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 181
    .local v10, "cellY":I
    iget v15, v12, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 182
    .local v15, "spanX":I
    iget v0, v12, Lcom/android/launcher2/HomeItem;->spanY:I

    move/from16 v16, v0

    .line 183
    .local v16, "spanY":I
    move/from16 v21, v9

    .local v21, "x":I
    :goto_1
    add-int v2, v9, v15

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 184
    move/from16 v22, v10

    .local v22, "y":I
    :goto_2
    add-int v2, v10, v16

    move/from16 v0, v22

    if-ge v0, v2, :cond_3

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    move/from16 v0, v22

    if-ge v0, v2, :cond_3

    .line 185
    aget-object v2, v7, v21

    const/4 v3, 0x1

    aput-boolean v3, v2, v22

    .line 184
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 183
    :cond_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 189
    .end local v9    # "cellX":I
    .end local v10    # "cellY":I
    .end local v12    # "item":Lcom/android/launcher2/HomeItem;
    .end local v15    # "spanX":I
    .end local v16    # "spanY":I
    .end local v21    # "x":I
    .end local v22    # "y":I
    :cond_4
    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 190
    .local v14, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "tempScreen"

    const/4 v3, -0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_6

    .line 191
    const-string v2, "tempCellX"

    const/4 v3, -0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 192
    .local v17, "tempCellX":I
    const-string v2, "tempCellY"

    const/4 v3, -0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 193
    .local v18, "tempCellY":I
    const-string v2, "tempSpanX"

    const/4 v3, -0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 194
    .local v19, "tempSpanX":I
    const-string v2, "tempSpanY"

    const/4 v3, -0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 195
    .local v20, "tempSpanY":I
    move/from16 v21, v17

    .restart local v21    # "x":I
    :goto_3
    add-int v2, v17, v19

    move/from16 v0, v21

    if-ge v0, v2, :cond_6

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_6

    .line 196
    move/from16 v22, v18

    .restart local v22    # "y":I
    :goto_4
    add-int v2, v18, v20

    move/from16 v0, v22

    if-ge v0, v2, :cond_5

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    move/from16 v0, v22

    if-ge v0, v2, :cond_5

    .line 197
    aget-object v2, v7, v21

    const/4 v3, 0x1

    aput-boolean v3, v2, v22

    .line 196
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 195
    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 201
    .end local v17    # "tempCellX":I
    .end local v18    # "tempCellY":I
    .end local v19    # "tempSpanX":I
    .end local v20    # "tempSpanY":I
    .end local v21    # "x":I
    .end local v22    # "y":I
    :cond_6
    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    sget v6, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v2

    return v2
.end method

.method private installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "screen"    # I

    .prologue
    const/4 v9, 0x1

    .line 155
    const/4 v10, 0x0

    .line 156
    .local v10, "installed":Z
    sget-object v1, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    invoke-static {p1, v1, p3}, Lcom/android/launcher2/InstallShortcutReceiver;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 158
    .local v0, "app":Lcom/android/launcher2/LauncherApplication;
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/content/Intent;

    .line 159
    .local v11, "intent":Landroid/content/Intent;
    if-eqz v11, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v11}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v1

    const-wide/16 v4, -0x64

    sget-object v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v3, 0x0

    aget v7, v2, v3

    sget-object v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    aget v8, v2, v9

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/HomeShortcutItem;

    .line 163
    :cond_0
    const/4 v10, 0x1

    .line 165
    .end local v0    # "app":Lcom/android/launcher2/LauncherApplication;
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_1
    return v10
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 49
    const-string v18, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 50
    .local v12, "name":Ljava/lang/String;
    const-string v18, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 51
    .local v8, "intent":Landroid/content/Intent;
    const-string v18, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    if-eqz v8, :cond_0

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    if-gtz v18, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_2

    .line 56
    const-string v18, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    :cond_2
    const/4 v10, 0x0

    .line 60
    .local v10, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    .line 61
    .local v3, "app":Lcom/android/launcher2/LauncherApplication;
    if-eqz v3, :cond_3

    .line 62
    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v10

    .line 67
    :cond_3
    const-string v18, "duplicate"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 68
    .local v5, "duplicate":Z
    if-nez v5, :cond_6

    move-object/from16 v0, p1

    invoke-static {v0, v12, v8}, Lcom/android/launcher2/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 69
    const v18, 0x7f10001e

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v12, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 104
    .local v11, "msg":Ljava/lang/String;
    :goto_1
    const-string v18, "DCM"

    invoke-static {}, Lcom/android/launcher2/Launcher;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string v18, "KDI"

    invoke-static {}, Lcom/android/launcher2/Launcher;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 105
    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 106
    .local v13, "pm":Landroid/content/pm/PackageManager;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v9, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v4, "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v9, v4, v0}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 111
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_0

    .line 115
    .end local v4    # "componentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v9    # "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    if-eqz v10, :cond_b

    .line 116
    invoke-virtual {v10}, Lcom/android/launcher2/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 71
    .end local v11    # "msg":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v15

    .line 77
    .local v15, "screen":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 78
    .local v14, "res":Landroid/content/res/Resources;
    const v18, 0x7f0c0021

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    sput v18, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    .line 79
    const v18, 0x7f0c0022

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    sput v18, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    .line 80
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v15}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v7

    .line 81
    .local v7, "installed":Z
    if-nez v7, :cond_9

    .line 82
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v16

    .line 85
    .local v16, "screenCount":I
    const/16 v17, 0x0

    .line 89
    .local v17, "startPage":I
    move/from16 v6, v17

    .local v6, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v6, v0, :cond_8

    if-nez v7, :cond_8

    .line 91
    if-eq v6, v15, :cond_7

    .line 92
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v7

    .line 89
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 94
    :cond_8
    if-nez v7, :cond_9

    .line 95
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher2/InstallShortcutReceiver;->createPageAddShortcut(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v7

    .line 97
    .end local v6    # "i":I
    .end local v16    # "screenCount":I
    .end local v17    # "startPage":I
    :cond_9
    if-eqz v7, :cond_a

    .line 98
    const v18, 0x7f10001c

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v12, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "msg":Ljava/lang/String;
    goto/16 :goto_1

    .line 100
    .end local v11    # "msg":Ljava/lang/String;
    :cond_a
    const v18, 0x7f10001b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "msg":Ljava/lang/String;
    goto/16 :goto_1

    .line 118
    .end local v7    # "installed":Z
    .end local v14    # "res":Landroid/content/res/Resources;
    .end local v15    # "screen":I
    :cond_b
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v11, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
