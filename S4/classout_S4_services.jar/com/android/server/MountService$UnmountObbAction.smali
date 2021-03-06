.class Lcom/android/server/MountService$UnmountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountObbAction"
.end annotation


# instance fields
.field private final mForceUnmount:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V
    .registers 4
    .param p2, "obbState"    # Lcom/android/server/MountService$ObbState;
    .param p3, "force"    # Z

    .prologue
    .line 3470
    iput-object p1, p0, this$0:Lcom/android/server/MountService;

    .line 3471
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 3472
    iput-boolean p3, p0, mForceUnmount:Z

    .line 3473
    return-void
.end method


# virtual methods
.method public handleError()V
    .registers 2

    .prologue
    .line 3536
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, sendNewStatusOrIgnore(I)V

    .line 3537
    return-void
.end method

.method public handleExecute()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    .line 3477
    iget-object v7, p0, this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->waitForReady()V
    invoke-static {v7}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)V

    .line 3478
    iget-object v7, p0, this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->warnOnNotMounted()V
    invoke-static {v7}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;)V

    .line 3480
    invoke-virtual {p0}, getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v5

    .line 3483
    .local v5, "obbInfo":Landroid/content/res/ObbInfo;
    iget-object v7, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v8

    monitor-enter v8

    .line 3484
    :try_start_16
    iget-object v7, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v7

    iget-object v9, p0, mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v9, v9, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/MountService$ObbState;

    .line 3485
    .local v4, "existingState":Lcom/android/server/MountService$ObbState;
    monitor-exit v8
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_2f

    .line 3487
    if-nez v4, :cond_32

    .line 3488
    const/16 v7, 0x17

    invoke-virtual {p0, v7}, sendNewStatusOrIgnore(I)V

    .line 3532
    :goto_2e
    return-void

    .line 3485
    .end local v4    # "existingState":Lcom/android/server/MountService$ObbState;
    :catchall_2f
    move-exception v7

    :try_start_30
    monitor-exit v8
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v7

    .line 3492
    .restart local v4    # "existingState":Lcom/android/server/MountService$ObbState;
    :cond_32
    iget v7, v4, Lcom/android/server/MountService$ObbState;->ownerGid:I

    iget-object v8, p0, mObbState:Lcom/android/server/MountService$ObbState;

    iget v8, v8, Lcom/android/server/MountService$ObbState;->ownerGid:I

    if-eq v7, v8, :cond_6c

    .line 3493
    const-string v7, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission denied attempting to unmount OBB "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (owned by GID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/MountService$ObbState;->ownerGid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    const/16 v7, 0x19

    invoke-virtual {p0, v7}, sendNewStatusOrIgnore(I)V

    goto :goto_2e

    .line 3499
    :cond_6c
    const/4 v6, 0x0

    .line 3501
    .local v6, "rc":I
    :try_start_6d
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v7, "obb"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "unmount"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v10, v10, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-direct {v0, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3502
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    iget-boolean v7, p0, mForceUnmount:Z

    if-eqz v7, :cond_8d

    .line 3503
    const-string v7, "force"

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3505
    :cond_8d
    iget-object v7, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v7}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_96
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6d .. :try_end_96} :catch_a9

    .line 3522
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_96
    if-nez v6, :cond_c2

    .line 3523
    iget-object v7, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v8

    monitor-enter v8

    .line 3524
    :try_start_9f
    iget-object v7, p0, this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    invoke-static {v7, v4}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 3525
    monitor-exit v8
    :try_end_a5
    .catchall {:try_start_9f .. :try_end_a5} :catchall_bf

    .line 3527
    invoke-virtual {p0, v11}, sendNewStatusOrIgnore(I)V

    goto :goto_2e

    .line 3506
    :catch_a9
    move-exception v2

    .line 3508
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    :try_start_aa
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_ad
    .catch Ljava/lang/NullPointerException; {:try_start_aa .. :try_end_ad} :catch_bc

    move-result v1

    .line 3509
    .local v1, "code":I
    const/16 v7, 0x195

    if-ne v1, v7, :cond_b4

    .line 3510
    const/4 v6, -0x7

    goto :goto_96

    .line 3511
    :cond_b4
    const/16 v7, 0x196

    if-ne v1, v7, :cond_ba

    .line 3513
    const/4 v6, 0x0

    goto :goto_96

    .line 3515
    :cond_ba
    const/4 v6, -0x1

    goto :goto_96

    .line 3517
    .end local v1    # "code":I
    :catch_bc
    move-exception v3

    .line 3518
    .local v3, "ex":Ljava/lang/NullPointerException;
    const/4 v6, -0x1

    goto :goto_96

    .line 3525
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catchall_bf
    move-exception v7

    :try_start_c0
    monitor-exit v8
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw v7

    .line 3529
    :cond_c2
    const-string v7, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not unmount OBB: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    const/16 v7, 0x16

    invoke-virtual {p0, v7}, sendNewStatusOrIgnore(I)V

    goto/16 :goto_2e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3542
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "UnmountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3543
    iget-object v1, p0, mObbState:Lcom/android/server/MountService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3544
    const-string v1, ",force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3545
    iget-boolean v1, p0, mForceUnmount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3546
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3547
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
