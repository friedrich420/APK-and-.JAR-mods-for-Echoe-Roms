.class Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUpdatedTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_AVAILABLE:I = 0x4

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_UNAVAILABLE:I = 0x5

.field public static final OP_UPDATE:I = 0x2


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "op"    # I
    .param p3, "packages"    # [Ljava/lang/String;

    .prologue
    .line 2445
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2446
    iput p2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    .line 2447
    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 2448
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 2453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2454
    .local v16, "packages":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v8, v0

    .line 2455
    .local v8, "N":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2456
    .local v6, "homeRemoved":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2457
    .local v7, "homeUpdated":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    packed-switch v2, :pswitch_data_0

    .line 2519
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 2520
    .local v9, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    const/16 v17, 0x0

    .line 2521
    .local v17, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    const/4 v13, 0x0

    .line 2522
    .local v13, "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    const/16 v19, 0x0

    .line 2524
    .local v19, "secreted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v2, v2, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v9, v2, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    .line 2526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    .line 2528
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v2, v2, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v0, v2, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 2530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    .line 2532
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v2, v2, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v13, v2, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    .line 2534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    .line 2538
    :cond_3
    if-nez v9, :cond_4

    if-eqz v17, :cond_5

    .line 2539
    :cond_4
    move-object v10, v9

    .line 2540
    .local v10, "addedFinal":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    move-object/from16 v18, v17

    .line 2541
    .local v18, "removedFinal":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v10, v1}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2549
    .end local v10    # "addedFinal":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v18    # "removedFinal":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_5
    if-eqz v13, :cond_6

    .line 2550
    move-object v14, v13

    .line 2551
    .local v14, "modifiedFinal":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2561
    .end local v14    # "modifiedFinal":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v2, v2, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    if-eqz v2, :cond_f

    .line 2606
    :goto_1
    return-void

    .line 2476
    .end local v9    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .end local v13    # "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .end local v17    # "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .end local v19    # "secreted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    :pswitch_0
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v8, :cond_9

    .line 2477
    sget-boolean v2, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v2, :cond_7

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMenuAppLoader.updatePackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v16, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    aget-object v3, v16, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PkgResCache;->removePackage(Ljava/lang/String;)V

    .line 2480
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2481
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    aget-object v3, v16, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PkgResCache;->removePackage(Ljava/lang/String;)V

    .line 2483
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    aget-object v3, v16, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppLoader;->updatePackage(Ljava/lang/String;)V

    .line 2484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/HomeLoader;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    aget-object v4, v16, v12

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher2/HomeLoader;->updatePackage(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 2476
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2486
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherModel;->hasLocaleChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground(Z)V

    goto/16 :goto_0

    .line 2491
    .end local v12    # "i":I
    :pswitch_1
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    if-ge v12, v8, :cond_0

    .line 2492
    sget-boolean v2, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v2, :cond_a

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMenuAppLoader.removePackage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v16, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    aget-object v3, v16, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PkgResCache;->removePackage(Ljava/lang/String;)V

    .line 2495
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 2496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    aget-object v3, v16, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PkgResCache;->removePackage(Ljava/lang/String;)V

    .line 2498
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    aget-object v3, v16, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppLoader;->removePackage(Ljava/lang/String;)V

    .line 2499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/HomeLoader;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    aget-object v4, v16, v12

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/launcher2/HomeLoader;->removePackage(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 2491
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2504
    .end local v12    # "i":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_e

    const/4 v5, 0x1

    .line 2505
    .local v5, "available":Z
    :goto_4
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    if-ge v12, v8, :cond_0

    .line 2506
    sget-boolean v2, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v2, :cond_c

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMenuAppLoader.updatePackageAvailability "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v16, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    aget-object v3, v16, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PkgResCache;->removePackage(Ljava/lang/String;)V

    .line 2509
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 2510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    aget-object v3, v16, v12

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PkgResCache;->removePackage(Ljava/lang/String;)V

    .line 2513
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    aget-object v3, v16, v12

    invoke-virtual {v2, v3, v5}, Lcom/android/launcher2/MenuAppLoader;->updatePackageAvailability(Ljava/lang/String;Z)V

    .line 2514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/HomeLoader;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    aget-object v4, v16, v12

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/HomeLoader;->updatePackageAvailability(Ljava/util/Map;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 2505
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 2504
    .end local v5    # "available":Z
    .end local v12    # "i":I
    :cond_e
    const/4 v5, 0x0

    goto :goto_4

    .line 2567
    .restart local v9    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .restart local v13    # "modified":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .restart local v17    # "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .restart local v19    # "secreted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v15, v2, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 2568
    .local v15, "origCallbacks":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/launcher2/LauncherModel$Callbacks;>;"
    if-eqz v15, :cond_10

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_11

    .line 2569
    :cond_10
    const-string v2, "Launcher.Model"

    const-string v3, "Nobody to tell about the app changes. Launcher is not running."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2572
    :cond_11
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 2573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15, v7}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/lang/ref/WeakReference;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2583
    :cond_12
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 2584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15, v6}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/lang/ref/WeakReference;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2594
    :cond_13
    if-nez v9, :cond_14

    if-nez v17, :cond_14

    if-eqz v13, :cond_15

    :cond_14
    const/4 v11, 0x1

    .line 2597
    .local v11, "appModelUpdated":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v3, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15, v11}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$5;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/lang/ref/WeakReference;Z)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 2594
    .end local v11    # "appModelUpdated":Z
    :cond_15
    const/4 v11, 0x0

    goto :goto_6

    .line 2457
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
