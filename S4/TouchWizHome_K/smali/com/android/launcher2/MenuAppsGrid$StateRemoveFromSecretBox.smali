.class Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;
.super Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateRemoveFromSecretBox"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1

    .prologue
    .line 2388
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/MenuAppsGrid;
    .param p2, "x1"    # Lcom/android/launcher2/MenuAppsGrid$1;

    .prologue
    .line 2388
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method protected complete()V
    .locals 23

    .prologue
    .line 2391
    const-string v18, "SecretItem_TEST"

    const-string v19, "StateRemoveFromSecretBox complete"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    const/4 v2, 0x0

    .line 2394
    .local v2, "checked_item":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    .line 2395
    .local v6, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 2396
    .local v8, "mPM":Landroid/content/pm/PackageManager;
    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getSecretPageManager()Lcom/android/launcher2/SecretPageManager;

    move-result-object v15

    .line 2398
    .local v15, "spMgr":Lcom/android/launcher2/SecretPageManager;
    const/4 v1, 0x0

    .line 2399
    .local v1, "checkedItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    const/4 v7, 0x0

    .line 2400
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 2401
    .local v14, "secretMoveItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    const/4 v2, 0x0

    .line 2403
    const/4 v2, 0x0

    .line 2404
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;->hasCheckedItems()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 2405
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "checkedItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2406
    .restart local v1    # "checkedItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2408
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;->getCheckedItems()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppItem;

    .line 2409
    .local v5, "item":Lcom/android/launcher2/AppItem;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2410
    invoke-virtual {v5}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2411
    add-int/lit8 v2, v2, 0x1

    .line 2412
    goto :goto_0

    .line 2414
    .end local v5    # "item":Lcom/android/launcher2/AppItem;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2417
    .local v3, "hItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->getRealatedApps(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->access$4900(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 2419
    sget-object v18, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    .line 2420
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppItem;

    .line 2421
    .restart local v5    # "item":Lcom/android/launcher2/AppItem;
    invoke-virtual {v5}, Lcom/android/launcher2/AppItem;->removeSecretBox()V

    goto :goto_1

    .line 2424
    .end local v5    # "item":Lcom/android/launcher2/AppItem;
    :cond_1
    sget-object v18, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuAppModel;->getSecretItems()Ljava/util/List;

    move-result-object v13

    .line 2425
    .local v13, "secretItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    const/4 v10, 0x1

    .line 2426
    .local v10, "onlyRemainFolder":Z
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/AppItem;

    .line 2427
    .local v12, "sItem":Lcom/android/launcher2/AppItem;
    instance-of v0, v12, Lcom/android/launcher2/AppFolderItem;

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 2428
    const/4 v10, 0x0

    .line 2432
    .end local v12    # "sItem":Lcom/android/launcher2/AppItem;
    :cond_3
    if-eqz v10, :cond_4

    .line 2433
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/AppItem;

    .line 2434
    .restart local v12    # "sItem":Lcom/android/launcher2/AppItem;
    sget-object v18, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    check-cast v12, Lcom/android/launcher2/AppFolderItem;

    .end local v12    # "sItem":Lcom/android/launcher2/AppItem;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    .line 2435
    sget-object v18, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuAppModel;->editRemoveFolder()V

    goto :goto_2

    .line 2438
    :cond_4
    sget-object v18, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    .line 2440
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2442
    .local v11, "pkName":Ljava/lang/String;
    invoke-virtual {v15, v3, v11}, Lcom/android/launcher2/SecretPageManager;->getHomeViewItemListByPackageName(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_3

    .line 2445
    .end local v11    # "pkName":Ljava/lang/String;
    :cond_5
    iget-object v0, v6, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v17

    .line 2446
    .local v17, "workspace":Lcom/android/launcher2/Workspace;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/List;)V

    .line 2454
    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v9

    .line 2455
    .local v9, "mv":Lcom/android/launcher2/MenuView;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v7, v0}, Lcom/android/launcher2/MenuView;->setSecretAvailableWidgets(Ljava/util/List;Z)V

    .line 2456
    invoke-virtual {v9}, Lcom/android/launcher2/MenuView;->setSecretWidgetByFiltering()V

    .line 2457
    invoke-virtual {v9}, Lcom/android/launcher2/MenuView;->setDownloadIconEnabled()V

    .line 2458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v18, v0

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v18

    sget-object v19, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2460
    const/16 v16, 0x0

    .line 2462
    .local v16, "toast":Landroid/widget/Toast;
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_6

    .line 2463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f1000f7

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    .line 2466
    :goto_4
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 2471
    .end local v3    # "hItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "mv":Lcom/android/launcher2/MenuView;
    .end local v10    # "onlyRemainFolder":Z
    .end local v13    # "secretItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v16    # "toast":Landroid/widget/Toast;
    .end local v17    # "workspace":Lcom/android/launcher2/Workspace;
    :goto_5
    return-void

    .line 2465
    .restart local v3    # "hItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v9    # "mv":Lcom/android/launcher2/MenuView;
    .restart local v10    # "onlyRemainFolder":Z
    .restart local v13    # "secretItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .restart local v16    # "toast":Landroid/widget/Toast;
    .restart local v17    # "workspace":Lcom/android/launcher2/Workspace;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuAppsGrid;->getContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f1000f5

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    goto :goto_4

    .line 2469
    .end local v3    # "hItemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "mv":Lcom/android/launcher2/MenuView;
    .end local v10    # "onlyRemainFolder":Z
    .end local v13    # "secretItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v16    # "toast":Landroid/widget/Toast;
    .end local v17    # "workspace":Lcom/android/launcher2/Workspace;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFromSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v18, v0

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v18

    sget-object v19, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_5
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .param p2, "newState"    # Lcom/android/launcher2/MenuAppsGrid$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2485
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    .line 2486
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 2487
    return-void
.end method

.method public getAppsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2479
    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v0

    .line 2480
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    return-object v0
.end method
