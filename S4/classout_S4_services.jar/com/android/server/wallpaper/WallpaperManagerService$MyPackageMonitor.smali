.class Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 2

    .prologue
    .line 395
    iput-object p1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method doPackagesChangedLocked(ZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 13
    .param p1, "doit"    # Z
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 482
    const/4 v1, 0x0

    .line 483
    .local v1, "changed":Z
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_3b

    .line 484
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 486
    .local v0, "change":I
    if-eq v0, v9, :cond_17

    if-ne v0, v8, :cond_3b

    .line 488
    :cond_17
    const/4 v1, 0x1

    .line 489
    if-eqz p1, :cond_3b

    .line 490
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper uninstalled, removing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v3, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v6, v4, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 496
    .end local v0    # "change":I
    :cond_3b
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_4f

    .line 497
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 499
    .restart local v0    # "change":I
    if-eq v0, v9, :cond_4d

    if-ne v0, v8, :cond_4f

    .line 501
    :cond_4d
    iput-object v7, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 504
    .end local v0    # "change":I
    :cond_4f
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_6d

    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, isPackageModified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 507
    :try_start_5f
    iget-object v3, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_6d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5f .. :try_end_6d} :catch_8c

    .line 515
    :cond_6d
    :goto_6d
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_8b

    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, isPackageModified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 518
    :try_start_7d
    iget-object v3, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_8b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7d .. :try_end_8b} :catch_af

    .line 524
    :cond_8b
    :goto_8b
    return v1

    .line 509
    :catch_8c
    move-exception v2

    .line 510
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper component gone, removing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v3, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v6, v4, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    goto :goto_6d

    .line 520
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_af
    move-exception v2

    .line 521
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v7, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    goto :goto_8b
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .prologue
    .line 454
    iget-object v3, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "changed":Z
    :try_start_6
    iget-object v3, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0}, getChangingUserId()I

    move-result v5

    if-eq v3, v5, :cond_13

    .line 457
    const/4 v3, 0x0

    monitor-exit v4

    .line 464
    :goto_12
    return v3

    .line 459
    :cond_13
    iget-object v3, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget-object v5, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 460
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v2, :cond_28

    .line 461
    invoke-virtual {p0, p4, v2}, doPackagesChangedLocked(ZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v1

    .line 462
    .local v1, "res":Z
    or-int/2addr v0, v1

    .line 464
    .end local v1    # "res":Z
    :cond_28
    monitor-exit v4

    move v3, v0

    goto :goto_12

    .line 465
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_2b
    move-exception v3

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2b

    throw v3
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 421
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 422
    :try_start_5
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0}, getChangingUserId()I

    move-result v3

    if-eq v1, v3, :cond_11

    .line 423
    monitor-exit v2

    .line 434
    :goto_10
    return-void

    .line 425
    :cond_11
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget-object v3, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 426
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_3a

    .line 427
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_31

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 429
    :cond_31
    monitor-exit v2

    goto :goto_10

    .line 433
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_33
    move-exception v1

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_33

    throw v1

    .line 431
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_36
    const/4 v1, 0x1

    :try_start_37
    invoke-virtual {p0, v1, v0}, doPackagesChangedLocked(ZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    .line 433
    :cond_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_33

    goto :goto_10
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 398
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 399
    :try_start_5
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0}, getChangingUserId()I

    move-result v2

    if-eq v0, v2, :cond_11

    .line 400
    monitor-exit v6

    .line 417
    :goto_10
    return-void

    .line 402
    :cond_11
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget-object v2, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 403
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v4, :cond_56

    .line 404
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_56

    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    .line 407
    iget-object v1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 408
    .local v1, "comp":Landroid/content/ComponentName;
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 409
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 411
    const-string v0, "WallpaperManagerService"

    const-string v2, "Wallpaper no longer available; reverting to default"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v2, 0x0

    iget v3, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 416
    .end local v1    # "comp":Landroid/content/ComponentName;
    :cond_56
    monitor-exit v6

    goto :goto_10

    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_58
    move-exception v0

    monitor-exit v6
    :try_end_5a
    .catchall {:try_start_5 .. :try_end_5a} :catchall_58

    throw v0
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 438
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 439
    :try_start_5
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0}, getChangingUserId()I

    move-result v3

    if-eq v1, v3, :cond_11

    .line 440
    monitor-exit v2

    .line 450
    :goto_10
    return-void

    .line 442
    :cond_11
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget-object v3, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 443
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_34

    .line 444
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_34

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 446
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    .line 449
    :cond_34
    monitor-exit v2

    goto :goto_10

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public onSomePackagesChanged()V
    .registers 5

    .prologue
    .line 470
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 471
    :try_start_5
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0}, getChangingUserId()I

    move-result v3

    if-eq v1, v3, :cond_11

    .line 472
    monitor-exit v2

    .line 479
    :goto_10
    return-void

    .line 474
    :cond_11
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget-object v3, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 475
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_25

    .line 476
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, doPackagesChangedLocked(ZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    .line 478
    :cond_25
    monitor-exit v2

    goto :goto_10

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw v1
.end method
