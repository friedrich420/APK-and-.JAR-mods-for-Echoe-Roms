.class Lcom/android/server/usage/UsageStatsService$BinderService;
.super Landroid/app/usage/IUsageStatsManager$Stub;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    .prologue
    .line 388
    iput-object p1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/IUsageStatsManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/usage/UsageStatsService;
    .param p2, "x1"    # Lcom/android/server/usage/UsageStatsService$1;

    .prologue
    .line 388
    invoke-direct {p0, p1}, <init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 8
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 391
    iget-object v3, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x2b

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    .line 393
    .local v0, "mode":I
    const/4 v3, 0x3

    if-ne v0, v3, :cond_24

    .line 396
    iget-object v3, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_22

    .line 399
    :cond_21
    :goto_21
    return v1

    :cond_22
    move v1, v2

    .line 396
    goto :goto_21

    .line 399
    :cond_24
    if-eqz v0, :cond_21

    move v1, v2

    goto :goto_21
.end method


# virtual methods
.method public queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 19
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 426
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 427
    const/4 v3, 0x0

    .line 442
    :goto_9
    return-object v3

    .line 430
    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 431
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 433
    .local v10, "token":J
    :try_start_12
    iget-object v3, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    move v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryConfigurationStats(IIJJ)Ljava/util/List;

    move-result-object v2

    .line 436
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    if-eqz v2, :cond_27

    .line 437
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_2c

    .line 440
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9

    :cond_27
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 442
    const/4 v3, 0x0

    goto :goto_9

    .line 440
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    :catchall_2c
    move-exception v3

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 15
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 447
    invoke-direct {p0, p5}, hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 448
    const/4 v0, 0x0

    .line 456
    :goto_7
    return-object v0

    .line 451
    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 452
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 454
    .local v6, "token":J
    :try_start_10
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJ)Landroid/app/usage/UsageEvents;
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1c

    move-result-object v0

    .line 456
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    :catchall_1c
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryPpmInfo(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 17
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 486
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 488
    .local v8, "token":J
    :try_start_8
    iget-object v1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsService;->queryPpmInfo(IIJJ)Ljava/util/List;

    move-result-object v0

    .line 490
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v0, :cond_1c

    .line 491
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_21

    .line 494
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 496
    :goto_1b
    return-object v1

    .line 494
    :cond_1c
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 496
    const/4 v1, 0x0

    goto :goto_1b

    .line 494
    .end local v0    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :catchall_21
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public queryUsageStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 19
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 406
    const/4 v3, 0x0

    .line 420
    :goto_9
    return-object v3

    .line 409
    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 410
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 412
    .local v10, "token":J
    :try_start_12
    iget-object v3, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    move v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJ)Ljava/util/List;

    move-result-object v2

    .line 414
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v2, :cond_27

    .line 415
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_2c

    .line 418
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9

    :cond_27
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 420
    const/4 v3, 0x0

    goto :goto_9

    .line 418
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :catchall_2c
    move-exception v3

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public registerUsageStatsWatcher(Landroid/app/usage/IUsageStatsWatcher;)V
    .registers 5
    .param p1, "watcher"    # Landroid/app/usage/IUsageStatsWatcher;

    .prologue
    .line 462
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    # getter for: Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$300(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 465
    :try_start_13
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    # getter for: Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$300(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Landroid/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 466
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    # getter for: Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$300(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Landroid/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_30
    monitor-exit v1

    .line 469
    return-void

    .line 468
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public unregisterUsageStatsWatcher(Landroid/app/usage/IUsageStatsWatcher;)V
    .registers 5
    .param p1, "watcher"    # Landroid/app/usage/IUsageStatsWatcher;

    .prologue
    .line 473
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    # getter for: Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$300(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 476
    :try_start_13
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    # getter for: Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$300(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Landroid/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 477
    iget-object v0, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    # getter for: Lcom/android/server/usage/UsageStatsService;->mUsageStatsWatchers:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$300(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Landroid/app/usage/IUsageStatsWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_30
    monitor-exit v1

    .line 480
    return-void

    .line 479
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_32

    throw v0
.end method
