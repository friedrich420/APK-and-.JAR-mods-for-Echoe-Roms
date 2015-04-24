.class public Lcom/android/launcher2/UninstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UninstallShortcutReceiver.java"


# static fields
.field private static final ACTION_UNINSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.UNINSTALL_SHORTCUT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 38
    const-string v3, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string v3, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 43
    .local v12, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 44
    .local v16, "name":Ljava/lang/String;
    const-string v3, "duplicate"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 46
    .local v10, "duplicate":Z
    if-eqz v12, :cond_0

    if-eqz v16, :cond_0

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 48
    .local v2, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "intent"

    aput-object v6, v4, v5

    const-string v5, "title=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 52
    .local v9, "c":Landroid/database/Cursor;
    const-string v3, "intent"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 53
    .local v13, "intentIndex":I
    const-string v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 55
    .local v11, "idIndex":I
    new-instance v14, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    .local v14, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 60
    :try_start_1
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 61
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 62
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    if-nez v10, :cond_2

    .line 73
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 76
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    const/4 v15, 0x0

    .line 78
    .local v15, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/LauncherApplication;

    .line 79
    .local v8, "app":Lcom/android/launcher2/LauncherApplication;
    if-eqz v8, :cond_4

    .line 80
    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v15

    .line 82
    :cond_4
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v14, v3}, Lcom/android/launcher2/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/List;Z)V

    .line 83
    if-eqz v15, :cond_5

    .line 84
    invoke-virtual {v15}, Lcom/android/launcher2/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10001d

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 73
    .end local v8    # "app":Lcom/android/launcher2/LauncherApplication;
    .end local v15    # "launcher":Lcom/android/launcher2/Launcher;
    :catchall_0
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    .line 87
    .restart local v8    # "app":Lcom/android/launcher2/LauncherApplication;
    .restart local v15    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_5
    const v3, 0x7f10001d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 68
    .end local v8    # "app":Lcom/android/launcher2/LauncherApplication;
    .end local v15    # "launcher":Lcom/android/launcher2/Launcher;
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method
