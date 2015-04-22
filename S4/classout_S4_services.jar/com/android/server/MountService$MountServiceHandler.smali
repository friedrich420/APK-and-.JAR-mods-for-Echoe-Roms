.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 515
    iput-object p1, p0, this$0:Lcom/android/server/MountService;

    .line 516
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mForceUnmounts:Ljava/util/ArrayList;

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, mUpdatingStatus:Z

    .line 517
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 27
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 521
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_31c

    .line 651
    :cond_9
    :goto_9
    return-void

    .line 523
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/MountService$UnmountCallBack;

    .line 524
    .local v19, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const-string v20, "MountService"

    const-string v21, "++ H_UNMOUNT_PM_ADDOBJ (%s)"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 531
    .end local v19    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :sswitch_3d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/MountService$UnmountCallBack;

    .line 532
    .restart local v19    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const-string v21, "MountService"

    const-string v22, "++ H_UNMOUNT_PM_UPDATE (%s)"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    if-eqz v19, :cond_f0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v20, v0

    :goto_5b
    aput-object v20, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    if-eqz v19, :cond_77

    move-object/from16 v0, p0

    iget-object v0, v0, mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_77
    const/4 v5, 0x0

    .line 539
    .local v5, "bFoundPath":Z
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    .line 540
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_84
    :try_start_84
    move-object/from16 v0, p0

    iget-object v0, v0, mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_c3

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/MountService$UnmountCallBack;

    .line 542
    .local v18, "tmp_ucb":Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/storage/StorageVolume;

    .line 543
    .local v17, "storage":Landroid/os/storage/StorageVolume;
    if-eqz v17, :cond_f4

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getActivitySecureContainer()Z

    move-result v20

    if-eqz v20, :cond_f4

    .line 544
    const/4 v5, 0x1

    .line 548
    .end local v17    # "storage":Landroid/os/storage/StorageVolume;
    .end local v18    # "tmp_ucb":Lcom/android/server/MountService$UnmountCallBack;
    :cond_c3
    monitor-exit v21
    :try_end_c4
    .catchall {:try_start_84 .. :try_end_c4} :catchall_f7

    .line 550
    if-eqz v5, :cond_fa

    .line 551
    move-object/from16 v0, p0

    iget-boolean v0, v0, mUpdatingStatus:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    .line 552
    const-string v20, "MountService"

    const-string v21, "Updating external media status on PackageManager"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mUpdatingStatus:Z

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto/16 :goto_9

    .line 532
    .end local v5    # "bFoundPath":Z
    .end local v9    # "i":I
    :cond_f0
    const-string v20, "null"

    goto/16 :goto_5b

    .line 540
    .restart local v5    # "bFoundPath":Z
    .restart local v9    # "i":I
    .restart local v17    # "storage":Landroid/os/storage/StorageVolume;
    .restart local v18    # "tmp_ucb":Lcom/android/server/MountService$UnmountCallBack;
    :cond_f4
    add-int/lit8 v9, v9, 0x1

    goto :goto_84

    .line 548
    .end local v17    # "storage":Landroid/os/storage/StorageVolume;
    .end local v18    # "tmp_ucb":Lcom/android/server/MountService$UnmountCallBack;
    :catchall_f7
    move-exception v20

    :try_start_f8
    monitor-exit v21
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_f7

    throw v20

    .line 557
    :cond_fa
    const-string v20, "MountService"

    const-string/jumbo v21, "skip update enternal media status"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    .line 563
    .end local v5    # "bFoundPath":Z
    .end local v9    # "i":I
    .end local v19    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :sswitch_127
    const-string v20, "MountService"

    const-string v21, "++ H_UNMOUNT_PM_DONE"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v20, "MountService"

    const-string v21, "Updated status. Processing requests"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, mUpdatingStatus:Z

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 567
    .local v13, "size":I
    new-array v14, v13, [I

    .line 568
    .local v14, "sizeArr":[I
    const/4 v15, 0x0

    .line 570
    .local v15, "sizeArrN":I
    const-string v20, "activity"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService;

    .line 572
    .local v4, "ams":Lcom/android/server/am/ActivityManagerService;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    move/from16 v16, v15

    .end local v15    # "sizeArrN":I
    .local v16, "sizeArrN":I
    :goto_155
    if-ge v9, v13, :cond_27d

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/MountService$UnmountCallBack;

    .line 574
    .restart local v19    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 575
    .local v11, "path":Ljava/lang/String;
    const-string v20, "MountService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "H_UNMOUNT_PM_DONE -> path : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", force = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v7, 0x0

    .line 577
    .local v7, "done":Z
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    move/from16 v20, v0

    if-nez v20, :cond_1ed

    .line 578
    const/4 v7, 0x1

    .line 594
    :cond_19d
    :goto_19d
    if-nez v7, :cond_23f

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_23f

    .line 596
    const-string v20, "MountService"

    const-string v21, "Retrying to kill storage users again"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v23, v0

    add-int/lit8 v24, v23, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    const-wide/16 v22, 0x1e

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move/from16 v15, v16

    .line 572
    .end local v16    # "sizeArrN":I
    .restart local v15    # "sizeArrN":I
    :goto_1e7
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v15

    .end local v15    # "sizeArrN":I
    .restart local v16    # "sizeArrN":I
    goto/16 :goto_155

    .line 580
    :cond_1ed
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v12

    .line 581
    .local v12, "pids":[I
    const-string v20, "MountService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "H_UNMOUNT_PM_DONE -> getStorageUsers : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v12

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    if-eqz v12, :cond_21b

    array-length v0, v12

    move/from16 v20, v0

    if-nez v20, :cond_21d

    .line 583
    :cond_21b
    const/4 v7, 0x1

    goto :goto_19d

    .line 586
    :cond_21d
    const-string/jumbo v20, "unmount media"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v12, v0, v1}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v12

    .line 589
    if-eqz v12, :cond_23c

    array-length v0, v12

    move/from16 v20, v0

    if-nez v20, :cond_19d

    .line 590
    :cond_23c
    const/4 v7, 0x1

    goto/16 :goto_19d

    .line 602
    .end local v12    # "pids":[I
    :cond_23f
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_254

    .line 603
    const-string v20, "MountService"

    const-string v21, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_254
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "sizeArrN":I
    .restart local v15    # "sizeArrN":I
    aput v9, v14, v16

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1e7

    .line 612
    .end local v7    # "done":Z
    .end local v11    # "path":Ljava/lang/String;
    .end local v15    # "sizeArrN":I
    .end local v19    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .restart local v16    # "sizeArrN":I
    :cond_27d
    add-int/lit8 v9, v16, -0x1

    :goto_27f
    if-ltz v9, :cond_9

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    aget v21, v14, v9

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 612
    add-int/lit8 v9, v9, -0x1

    goto :goto_27f

    .line 619
    .end local v4    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v9    # "i":I
    .end local v13    # "size":I
    .end local v14    # "sizeArr":[I
    .end local v16    # "sizeArrN":I
    :sswitch_28f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/MountService$UnmountCallBack;

    .line 620
    .restart local v19    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const-string v20, "MountService"

    const-string v21, "++ H_UNMOUNT_MS (%s)"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_9

    .line 626
    .end local v19    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :sswitch_2b9
    :try_start_2b9
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)V
    :try_end_2c2
    .catch Ljava/lang/Exception; {:try_start_2b9 .. :try_end_2c2} :catch_2c4

    goto/16 :goto_9

    .line 627
    :catch_2c4
    move-exception v8

    .line 628
    .local v8, "ex":Ljava/lang/Exception;
    const-string v20, "MountService"

    const-string v21, "Boot-time mount exception"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 633
    .end local v8    # "ex":Ljava/lang/Exception;
    :sswitch_2d2
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/MountService;->waitForReady()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)V

    .line 634
    const-string v20, "MountService"

    const-string v21, "Running fstrim idle maintenance"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :try_start_2e2
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v20

    const-string v21, "fstrim"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "dotrim"

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 639
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/android/server/EventLogTags;->writeFstrimStart(J)V
    :try_end_306
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2e2 .. :try_end_306} :catch_313

    .line 644
    :goto_306
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Runnable;

    .line 645
    .local v6, "callback":Ljava/lang/Runnable;
    if-eqz v6, :cond_9

    .line 646
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_9

    .line 640
    .end local v6    # "callback":Ljava/lang/Runnable;
    :catch_313
    move-exception v10

    .line 641
    .local v10, "ndce":Lcom/android/server/NativeDaemonConnectorException;
    const-string v20, "MountService"

    const-string v21, "Failed to run fstrim!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_306

    .line 521
    :sswitch_data_31c
    .sparse-switch
        0x1 -> :sswitch_3d
        0x2 -> :sswitch_127
        0x3 -> :sswitch_28f
        0x4 -> :sswitch_2b9
        0x5 -> :sswitch_2d2
        0x64 -> :sswitch_a
    .end sparse-switch
.end method
